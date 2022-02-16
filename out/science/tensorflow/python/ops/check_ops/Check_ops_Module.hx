/* This file is generated, do not edit! */
package tensorflow.python.ops.check_ops;
@:pythonImport("tensorflow.python.ops.check_ops") extern class Check_ops_Module {
	static public var NUMERIC_TYPES : Dynamic;
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
		Assert `x` has a rank that satisfies a given condition.
		
		Args:
		  x:  Numeric `Tensor`.
		  rank:  Scalar `Tensor`.
		  static_condition:   A python function that takes `[actual_rank, given_rank]`
		    and returns `True` if the condition is satisfied, `False` otherwise.
		  dynamic_condition:  An `op` that takes [actual_rank, given_rank] and return
		    `True` if the condition is satisfied, `False` otherwise.
		  data:  The tensors to print out if the condition is false.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		
		Returns:
		  Op raising `InvalidArgumentError` if `x` fails dynamic_condition.
		
		Raises:
		  ValueError:  If static checks determine `x` fails static_condition.
	**/
	static public function _assert_rank_condition(x:Dynamic, rank:Dynamic, static_condition:Dynamic, dynamic_condition:Dynamic, data:Dynamic, summarize:Dynamic):Dynamic;
	/**
		Assert `x` has a rank that satisfies a given condition.
		
		Args:
		  x:  Numeric `Tensor`.
		  ranks:  Scalar `Tensor`.
		  static_condition:   A python function that takes
		    `[actual_rank, given_ranks]` and returns `True` if the condition is
		    satisfied, `False` otherwise.
		  dynamic_condition:  An `op` that takes [actual_rank, given_ranks]
		    and return `True` if the condition is satisfied, `False` otherwise.
		  data:  The tensors to print out if the condition is false.  Defaults to
		    error message and first few entries of `x`.
		  summarize: Print this many entries of each tensor.
		
		Returns:
		  Op raising `InvalidArgumentError` if `x` fails dynamic_condition.
		
		Raises:
		  ValueError:  If static checks determine `x` fails static_condition.
	**/
	static public function _assert_ranks_condition(x:Dynamic, ranks:Dynamic, static_condition:Dynamic, dynamic_condition:Dynamic, data:Dynamic, summarize:Dynamic):Dynamic;
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
		Raises a InvalidArgumentError with as much information as possible.
	**/
	static public function _assert_static(condition:Dynamic, data:Dynamic):Dynamic;
	/**
		Generic binary elementwise assertion.
		
		Implements the behavior described in _binary_assert_doc() above.
		Args:
		  sym: Mathematical symbol for the test to apply to pairs of tensor elements,
		    i.e. "=="
		  opname: Name of the assert op in the public API, i.e. "assert_equal"
		  op_func: Function that, if passed the two Tensor inputs to the assertion (x
		    and y), will return the test to be passed to reduce_all() i.e.
		  static_func: Function that, if passed numpy ndarray versions of the two
		    inputs to the assertion, will return a Boolean ndarray with containing
		    True in all positions where the assertion PASSES.
		    i.e. np.equal for assert_equal()
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to the value of
		    `opname`.
		
		Returns:
		  See docstring template in _binary_assert_doc().
	**/
	static public function _binary_assert(sym:Dynamic, opname:Dynamic, op_func:Dynamic, static_func:Dynamic, x:Dynamic, y:Dynamic, data:Dynamic, summarize:Dynamic, message:Dynamic, name:Dynamic):Dynamic;
	/**
		Common docstring for most of the v1 assert_* ops that compare two tensors element-wise.
		
		Args:
		  sym: Binary operation symbol, i.e. "=="
		  test_var: a string that represents the variable in the right-hand side of
		    binary operator of the test case
		
		Returns:
		  Decorator that adds the appropriate docstring to the function for
		symbol `sym`.
	**/
	static public function _binary_assert_doc(sym:Dynamic, test_var:Dynamic):Dynamic;
	/**
		Gets the dimension sizes of a tensor `x`.
		
		If a size can be determined statically it is returned as an integer,
		otherwise as a tensor.
		
		If `x` is a scalar it is treated as rank 1 size 1.
		
		Args:
		  x: A `Tensor`.
		
		Returns:
		  Dimension sizes.
	**/
	static public function _dimension_sizes(x:Dynamic):Dynamic;
	static public function _dynamic_rank_in(actual_rank:Dynamic, given_ranks:Dynamic):Dynamic;
	static public function _ensure_shape_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gets the difference x[1:] - x[:-1].
	**/
	static public function _get_diff_for_monotonic_comparison(x:Dynamic):Dynamic;
	static public function _has_known_value(dimension_size:Dynamic):Dynamic;
	static public function _is_symbol_for_any_size(symbol:Dynamic):Dynamic;
	/**
		Subroutine of _binary_assert that generates the components of the default error message when running in eager mode.
		
		Args:
		  sym: Mathematical symbol for the test to apply to pairs of tensor elements,
		    i.e. "=="
		  x: First input to the assertion after applying `convert_to_tensor()`
		  y: Second input to the assertion
		  summarize: Value of the "summarize" parameter to the original assert_* call;
		    tells how many elements of each tensor to print.
		  test_op: TensorFlow op that returns a Boolean tensor with True in each
		    position where the assertion is satisfied.
		
		Returns:
		  List of tensors and scalars that, when stringified and concatenated,
		  will produce the error message string.
	**/
	static public function _make_assert_msg_data(sym:Dynamic, x:Dynamic, y:Dynamic, summarize:Dynamic, test_op:Dynamic):Dynamic;
	static public function _maybe_constant_value_string(t:Dynamic):Dynamic;
	static public function _message_prefix(message:Dynamic):Dynamic;
	/**
		Format a data item for use in an error message in eager mode.
		
		Args:
		  data_item: One of the items in the "data" argument to an assert_* function.
		    Can be a Tensor or a scalar value.
		  summarize: How many elements to retain of each tensor-valued entry in data.
		
		Returns:
		  An appropriate string representation of data_item
	**/
	static public function _pretty_print(data_item:Dynamic, summarize:Dynamic):Dynamic;
	/**
		Returns a string containing tensor's shape and dtype.
	**/
	static public function _shape_and_dtype_str(tensor:Dynamic):Dynamic;
	static public function _static_rank_in(actual_rank:Dynamic, given_ranks:Dynamic):Dynamic;
	static public function _symbolic_dimension_sizes(symbolic_shape:Dynamic):Dynamic;
	/**
		Common docstring for assert_* ops that evaluate a unary predicate over every element of a tensor.
		
		Args:
		  sym: Mathematical symbol for the check performed on each element, i.e. "> 0"
		  sym_name: English-language name for the op described by sym
		
		Returns:
		  Decorator that adds the appropriate docstring to the function for symbol
		  `sym`.
	**/
	static public function _unary_assert_doc(sym:Dynamic, sym_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Assert the condition `x == y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] == y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
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
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x == y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_equal(a, b,
		...     message='"a == b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[1, 2]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([1, 2], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_equal(a, b, message=
		...   '"a == b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x == y` holds element-wise.
		
		This Op checks that `x[i] == y[i]` holds for every pair of (possibly
		broadcast) elements of `x` and `y`. If both `x` and `y` are empty, this is
		trivially satisfied.
		
		If `x` and `y` are not equal, `message`, as well as the first `summarize`
		entries of `x` and `y` are printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to "assert_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x == y` is False. This can be
		    used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x == y` is False. The check can be performed immediately during eager
		    execution or if `x` and `y` are statically known.
	**/
	static public function assert_equal_v2(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] > y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_greater(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
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
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x > y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_greater` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_greater` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_greater(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_greater(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_greater(a, b,
		...     message='"a > b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[0, 1]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([0, 1], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_greater(a, b, message=
		...   '"a > b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_greater(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] >= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_greater_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_greater_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x >= y` is False.
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x >= y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_greater_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_greater_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_greater_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_greater_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_greater_equal(a, b,
		...     message='"a >= b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[1, 0]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([1, 0], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_greater_equal(a, b, message=
		...   '"a >= b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_greater_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= y` holds element-wise.
		
		This Op checks that `x[i] >= y[i]` holds for every pair of (possibly
		broadcast) elements of `x` and `y`. If both `x` and `y` are empty, this is
		trivially satisfied.
		
		If `x` is not greater or equal to `y` element-wise, `message`, as well as the
		first `summarize` entries of `x` and `y` are printed, and
		`InvalidArgumentError` is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to
		  "assert_greater_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x >= y` is False. This can be
		    used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x >= y` is False. The check can be performed immediately during eager
		    execution or if `x` and `y` are statically known.
	**/
	static public function assert_greater_equal_v2(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > y` holds element-wise.
		
		This Op checks that `x[i] > y[i]` holds for every pair of (possibly
		broadcast) elements of `x` and `y`. If both `x` and `y` are empty, this is
		trivially satisfied.
		
		If `x` is not greater than `y` element-wise, `message`, as well as the first
		`summarize` entries of `x` and `y` are printed, and `InvalidArgumentError` is
		raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to "assert_greater".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x > y` is False. This can be
		    used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x > y` is False. The check can be performed immediately during eager
		    execution or if `x` and `y` are statically known.
	**/
	static public function assert_greater_v2(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that `x` is of integer dtype.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_integer(x)]):
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
		Assert that `x` is of integer dtype.
		
		If `x` has a non-integer type, `message`, as well as the dtype of `x` are
		printed, and `InvalidArgumentError` is raised.
		
		This can always be checked statically, so this method returns nothing.
		
		Args:
		  x: A `Tensor`.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional). Defaults to "assert_integer".
		
		Raises:
		  TypeError:  If `x.dtype` is not a non-quantized integer type.
	**/
	static public function assert_integer_v2(x:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] < y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_less(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
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
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x < y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_less` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_less` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_less(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_less(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_less(a, b,
		...     message='"a < b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[2, 3]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([2, 3], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_less(a, b, message=
		...   '"a < b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_less(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] <= y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_less_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_less_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x <= y` is False.
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x <= y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_less_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_less_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_less_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_less_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_less_equal(a, b,
		...     message='"a <= b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[1, 3]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([1, 3], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_less_equal(a, b, message=
		...   '"a <= b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_less_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= y` holds element-wise.
		
		This Op checks that `x[i] <= y[i]` holds for every pair of (possibly
		broadcast) elements of `x` and `y`. If both `x` and `y` are empty, this is
		trivially satisfied.
		
		If `x` is not less or equal than `y` element-wise, `message`, as well as the
		first `summarize` entries of `x` and `y` are printed, and
		`InvalidArgumentError` is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional). Defaults to "assert_less_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x <= y` is False. This can be
		    used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x <= y` is False. The check can be performed immediately during eager
		    execution or if `x` and `y` are statically known.
	**/
	static public function assert_less_equal_v2(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < y` holds element-wise.
		
		This Op checks that `x[i] < y[i]` holds for every pair of (possibly
		broadcast) elements of `x` and `y`. If both `x` and `y` are empty, this is
		trivially satisfied.
		
		If `x` is not less than `y` element-wise, `message`, as well as the first
		`summarize` entries of `x` and `y` are printed, and `InvalidArgumentError` is
		raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to "assert_less".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x < y` is False.
		  This can be used with `tf.control_dependencies` inside of `tf.function`s
		  to block followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x < y` is False. The check can be performed immediately during eager
		    execution or if `x` and `y` are statically known.
	**/
	static public function assert_less_v2(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x` and `y` are close element-wise.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_near(x, y)]):
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
		Similar to `numpy.testing.assert_allclose`, except tolerance depends on data
		type. This is due to the fact that `TensorFlow` is often used with `32bit`,
		`64bit`, and even `16bit` data.
		@end_compatibility
	**/
	static public function assert_near(x:Dynamic, y:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x` and `y` are close element-wise.
		
		This Op checks that `x[i] - y[i] < atol + rtol * tf.abs(y[i])` holds for every
		pair of (possibly broadcast) elements of `x` and `y`. If both `x` and `y` are
		empty, this is trivially satisfied.
		
		If any elements of `x` and `y` are not close, `message`, as well as the first
		`summarize` entries of `x` and `y` are printed, and `InvalidArgumentError`
		is raised.
		
		The default `atol` and `rtol` is `10 * eps`, where `eps` is the smallest
		representable positive number such that `1 + eps != 1`.  This is about
		`1.2e-6` in `32bit`, `2.22e-15` in `64bit`, and `0.00977` in `16bit`.
		See `numpy.finfo`.
		
		Args:
		  x: Float or complex `Tensor`.
		  y: Float or complex `Tensor`, same dtype as and broadcastable to `x`.
		  rtol:  `Tensor`.  Same `dtype` as, and broadcastable to, `x`.
		    The relative tolerance.  Default is `10 * eps`.
		  atol:  `Tensor`.  Same `dtype` as, and broadcastable to, `x`.
		    The absolute tolerance.  Default is `10 * eps`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to "assert_near".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x` and `y` are not close enough.
		    This can be used with `tf.control_dependencies` inside of `tf.function`s
		    to block followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x != y` is False for any pair of elements in `x` and `y`. The check can
		    be performed immediately during eager execution or if `x` and `y` are
		    statically known.
		
		@compatibility(numpy)
		Similar to `numpy.testing.assert_allclose`, except tolerance depends on data
		type. This is due to the fact that `TensorFlow` is often used with `32bit`,
		`64bit`, and even `16bit` data.
		@end_compatibility
	**/
	static public function assert_near_v2(x:Dynamic, y:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_negative(x, y)]):
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
		  Op that raises `InvalidArgumentError` if `x < 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x < 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
	**/
	static public function assert_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x < 0` holds element-wise.
		
		This Op checks that `x[i] < 0` holds for every element of `x`. If `x` is
		empty, this is trivially satisfied.
		
		If `x` is not negative everywhere, `message`, as well as the first `summarize`
		entries of `x` are printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to "assert_negative".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all negative. This can be
		    used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x[i] < 0` is False. The check can be performed immediately during eager
		    execution or if `x` is statically known.
	**/
	static public function assert_negative_v2(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_non_negative(x, y)]):
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
		  name: A name for this operation (optional).  Defaults to "assert_non_negative".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x >= 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x >= 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
	**/
	static public function assert_non_negative(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x >= 0` holds element-wise.
		
		This Op checks that `x[i] >= 0` holds for every element of `x`. If `x` is
		empty, this is trivially satisfied.
		
		If `x` is not >= 0 everywhere, `message`, as well as the first `summarize`
		entries of `x` are printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to
		    "assert_non_negative".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all non-negative. This can
		    be used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x[i] >= 0` is False. The check can be performed immediately during eager
		    execution or if `x` is statically known.
	**/
	static public function assert_non_negative_v2(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_non_positive(x, y)]):
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
		  name: A name for this operation (optional).  Defaults to "assert_non_positive".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x <= 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x <= 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
	**/
	static public function assert_non_positive(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x <= 0` holds element-wise.
		
		This Op checks that `x[i] <= 0` holds for every element of `x`. If `x` is
		empty, this is trivially satisfied.
		
		If `x` is not <= 0 everywhere, `message`, as well as the first `summarize`
		entries of `x` are printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).  Defaults to
		    "assert_non_positive".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all non-positive. This can
		    be used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x[i] <= 0` is False. The check can be performed immediately during eager
		    execution or if `x` is statically known.
	**/
	static public function assert_non_positive_v2(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x != y` holds element-wise.
		
		This condition holds if for every pair of (possibly broadcast) elements
		`x[i]`, `y[i]`, we have `x[i] != y[i]`.
		If both `x` and `y` are empty, this is trivially satisfied.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_none_equal(x, y)]):
		  output = tf.reduce_sum(x)
		```
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  data:  The tensors to print out if the condition is False.  Defaults to
		    error message and first few entries of `x`, `y`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_none_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x != y` is False.
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x != y` is False. The check can be performed immediately during
		    eager execution or if `x` and `y` are statically known.
		
		@compatibility(TF2)
		`tf.compat.v1.assert_none_equal` is compatible with eager execution and
		`tf.function`.
		Please use `tf.debugging.assert_none_equal` instead when migrating to TF2. Apart
		from `data`, all arguments are supported with the same argument name.
		
		If you want to ensure the assert statements run before the
		potentially-invalid computation, please use `tf.control_dependencies`,
		as tf.function auto-control dependencies are insufficient for assert
		statements.
		
		#### Structural Mapping to Native TF2
		
		Before:
		
		```python
		tf.compat.v1.assert_none_equal(
		  x=x, y=y, data=data, summarize=summarize,
		  message=message, name=name)
		```
		
		After:
		
		```python
		tf.debugging.assert_none_equal(
		  x=x, y=y, message=message,
		  summarize=summarize, name=name)
		```
		
		#### TF1 & TF2 Usage Example
		
		TF1:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   a = tf.compat.v1.placeholder(tf.float32, [2])
		...   b = tf.compat.v1.placeholder(tf.float32, [2])
		...   result = tf.compat.v1.assert_none_equal(a, b,
		...     message='"a != b" does not hold for the given inputs')
		...   with tf.compat.v1.control_dependencies([result]):
		...     sum_node = a + b
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> val = sess.run(sum_node, feed_dict={a: [1, 2], b:[2, 1]})
		
		
		TF2:
		
		>>> a = tf.Variable([1, 2], dtype=tf.float32)
		>>> b = tf.Variable([2, 1], dtype=tf.float32)
		>>> assert_op = tf.debugging.assert_none_equal(a, b, message=
		...   '"a != b" does not hold for the given inputs')
		>>> # When working with tf.control_dependencies
		>>> with tf.control_dependencies([assert_op]):
		...   val = a + b
		
		@end_compatibility
	**/
	static public function assert_none_equal(x:Dynamic, y:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x != y` holds for all elements.
		
		This Op checks that `x[i] != y[i]` holds for every pair of (possibly
		broadcast) elements of `x` and `y`. If both `x` and `y` are empty, this is
		trivially satisfied.
		
		If any elements of `x` and `y` are equal, `message`, as well as the first
		`summarize` entries of `x` and `y` are printed, and `InvalidArgumentError`
		is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  y:  Numeric `Tensor`, same dtype as and broadcastable to `x`.
		  summarize: Print this many entries of each tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to
		  "assert_none_equal".
		
		Returns:
		  Op that raises `InvalidArgumentError` if `x != y` is ever False. This can
		    be used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x != y` is False for any pair of elements in `x` and `y`. The check can
		    be performed immediately during eager execution or if `x` and `y` are
		    statically known.
	**/
	static public function assert_none_equal_v2(x:Dynamic, y:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > 0` holds element-wise.
		
		When running in graph mode, you should add a dependency on this operation
		to ensure that it runs. Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.debugging.assert_positive(x, y)]):
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
		  Op that raises `InvalidArgumentError` if `x > 0` is False.
		  @compatibility(eager)
		    returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x > 0` is False. The check can be performed immediately during
		    eager execution or if `x` is statically known.
	**/
	static public function assert_positive(x:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert the condition `x > 0` holds element-wise.
		
		This Op checks that `x[i] > 0` holds for every element of `x`. If `x` is
		empty, this is trivially satisfied.
		
		If `x` is not positive everywhere, `message`, as well as the first `summarize`
		entries of `x` are printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x:  Numeric `Tensor`.
		  message: A string to prefix to the default message.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional). Defaults to "assert_positive".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` is all positive. This can be
		    used with `tf.control_dependencies` inside of `tf.function`s to block
		    followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x[i] > 0` is False. The check can be performed immediately during eager
		    execution or if `x` is statically known.
	**/
	static public function assert_positive_v2(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
		with tf.control_dependencies([tf.compat.v1.assert_rank(x, 2)]):
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
		with tf.control_dependencies([tf.compat.v1.assert_rank_at_least(x, 2)]):
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
		Assert that `x` has rank of at least `rank`.
		
		This Op checks that the rank of `x` is greater or equal to `rank`.
		
		If `x` has a rank lower than `rank`, `message`, as well as the shape of `x`
		are printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x: `Tensor`.
		  rank: Scalar integer `Tensor`.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to
		    "assert_rank_at_least".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` has specified rank or higher.
		  If static checks determine `x` has correct rank, a `no_op` is returned.
		  This can be used with `tf.control_dependencies` inside of `tf.function`s
		  to block followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: `x` does not have rank at least `rank`, but the rank
		    cannot be statically determined.
		  ValueError: If static checks determine `x` has mismatched rank.
	**/
	static public function assert_rank_at_least_v2(x:Dynamic, rank:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert `x` has rank in `ranks`.
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.compat.v1.assert_rank_in(x, (2, 4))]):
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
		Assert that `x` has a rank in `ranks`.
		
		This Op checks that the rank of `x` is in `ranks`.
		
		If `x` has a different rank, `message`, as well as the shape of `x` are
		printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x: `Tensor`.
		  ranks: `Iterable` of scalar `Tensor` objects.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional). Defaults to "assert_rank_in".
		
		Returns:
		  Op raising `InvalidArgumentError` unless rank of `x` is in `ranks`.
		  If static checks determine `x` has matching rank, a `no_op` is returned.
		  This can be used with `tf.control_dependencies` inside of `tf.function`s
		  to block followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: `x` does not have rank in `ranks`, but the rank cannot
		    be statically determined.
		  ValueError: If static checks determine `x` has mismatched rank.
	**/
	static public function assert_rank_in_v2(x:Dynamic, ranks:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert that `x` has rank equal to `rank`.
		
		This Op checks that the rank of `x` is equal to `rank`.
		
		If `x` has a different rank, `message`, as well as the shape of `x` are
		printed, and `InvalidArgumentError` is raised.
		
		Args:
		  x: `Tensor`.
		  rank: Scalar integer `Tensor`.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional). Defaults to
		    "assert_rank".
		
		Returns:
		  Op raising `InvalidArgumentError` unless `x` has specified rank.
		  If static checks determine `x` has correct rank, a `no_op` is returned.
		  This can be used with `tf.control_dependencies` inside of `tf.function`s
		  to block followup computation until the check has executed.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  InvalidArgumentError: if the check can be performed immediately and
		    `x` does not have rank `rank`. The check can be performed immediately
		    during eager execution or if the shape of `x` is statically known.
	**/
	static public function assert_rank_v2(x:Dynamic, rank:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
		Asserts that the given `tensor` is a scalar (i.e. zero-dimensional).
		
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
		Asserts that the given `tensor` is a scalar.
		
		This function raises `ValueError` unless it can be certain that the given
		`tensor` is a scalar. `ValueError` is also raised if the shape of `tensor` is
		unknown.
		
		This is always checked statically, so this method returns nothing.
		
		Args:
		  tensor: A `Tensor`.
		  message: A string to prefix to the default message.
		  name:  A name for this operation. Defaults to "assert_scalar"
		
		Raises:
		  ValueError: If the tensor is not scalar (rank 0), or if its shape is
		    unknown.
	**/
	static public function assert_scalar_v2(tensor:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert tensor shapes and dimension size relationships between tensors.
		
		This Op checks that a collection of tensors shape relationships
		satisfies given constraints.
		
		Example:
		
		>>> n = 10
		>>> q = 3
		>>> d = 7
		>>> x = tf.zeros([n,q])
		>>> y = tf.ones([n,d])
		>>> param = tf.Variable([1.0, 2.0, 3.0])
		>>> scalar = 1.0
		>>> tf.debugging.assert_shapes([
		...  (x, ('N', 'Q')),
		...  (y, ('N', 'D')),
		...  (param, ('Q',)),
		...  (scalar, ()),
		... ])
		
		>>> tf.debugging.assert_shapes([
		...   (x, ('N', 'D')),
		...   (y, ('N', 'D'))
		... ])
		Traceback (most recent call last):
		...
		ValueError: ...
		
		Example of adding a dependency to an operation:
		
		```python
		with tf.control_dependencies([tf.assert_shapes(shapes)]):
		  output = tf.matmul(x, y, transpose_a=True)
		```
		
		If `x`, `y`, `param` or `scalar` does not have a shape that satisfies
		all specified constraints, `message`, as well as the first `summarize` entries
		of the first encountered violating tensor are printed, and
		`InvalidArgumentError` is raised.
		
		Size entries in the specified shapes are checked against other entries by
		their __hash__, except:
		  - a size entry is interpreted as an explicit size if it can be parsed as an
		    integer primitive.
		  - a size entry is interpreted as *any* size if it is None or '.'.
		
		If the first entry of a shape is `...` (type `Ellipsis`) or '*' that indicates
		a variable number of outer dimensions of unspecified size, i.e. the constraint
		applies to the inner-most dimensions only.
		
		Scalar tensors and specified shapes of length zero (excluding the 'inner-most'
		prefix) are both treated as having a single dimension of size one.
		
		Args:
		  shapes: A list of (`Tensor`, `shape`) tuples, wherein `shape` is the
		    expected shape of `Tensor`. See the example code above. The `shape` must
		    be an iterable. Each element of the iterable can be either a concrete
		    integer value or a string that abstractly represents the dimension.
		    For example,
		      - `('N', 'Q')` specifies a 2D shape wherein the first and second
		        dimensions of shape may or may not be equal.
		      - `('N', 'N', 'Q')` specifies a 3D shape wherein the first and second
		        dimensions are equal.
		      - `(1, 'N')` specifies a 2D shape wherein the first dimension is
		        exactly 1 and the second dimension can be any value.
		    Note that the abstract dimension letters take effect across different
		    tuple elements of the list. For example,
		    `tf.debugging.assert_shapes([(x, ('N', 'A')), (y, ('N', 'B'))]` asserts
		    that both `x` and `y` are rank-2 tensors and their first dimensions are
		    equal (`N`).
		    `shape` can also be a `tf.TensorShape`.
		  data: The tensors to print out if the condition is False.  Defaults to error
		    message and first few entries of the violating tensor.
		  summarize: Print this many entries of the tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_shapes".
		
		Returns:
		  Op raising `InvalidArgumentError` unless all shape constraints are
		  satisfied.
		  If static checks determine all constraints are satisfied, a `no_op` is
		  returned.
		
		Raises:
		  ValueError:  If static checks determine any shape constraint is violated.
	**/
	static public function assert_shapes(shapes:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assert tensor shapes and dimension size relationships between tensors.
		
		This Op checks that a collection of tensors shape relationships
		satisfies given constraints.
		
		Example:
		
		>>> n = 10
		>>> q = 3
		>>> d = 7
		>>> x = tf.zeros([n,q])
		>>> y = tf.ones([n,d])
		>>> param = tf.Variable([1.0, 2.0, 3.0])
		>>> scalar = 1.0
		>>> tf.debugging.assert_shapes([
		...  (x, ('N', 'Q')),
		...  (y, ('N', 'D')),
		...  (param, ('Q',)),
		...  (scalar, ()),
		... ])
		
		>>> tf.debugging.assert_shapes([
		...   (x, ('N', 'D')),
		...   (y, ('N', 'D'))
		... ])
		Traceback (most recent call last):
		...
		ValueError: ...
		
		If `x`, `y`, `param` or `scalar` does not have a shape that satisfies
		all specified constraints, `message`, as well as the first `summarize` entries
		of the first encountered violating tensor are printed, and
		`InvalidArgumentError` is raised.
		
		Size entries in the specified shapes are checked against other entries by
		their __hash__, except:
		  - a size entry is interpreted as an explicit size if it can be parsed as an
		    integer primitive.
		  - a size entry is interpreted as *any* size if it is None or '.'.
		
		If the first entry of a shape is `...` (type `Ellipsis`) or '*' that indicates
		a variable number of outer dimensions of unspecified size, i.e. the constraint
		applies to the inner-most dimensions only.
		
		Scalar tensors and specified shapes of length zero (excluding the 'inner-most'
		prefix) are both treated as having a single dimension of size one.
		
		Args:
		  shapes: dictionary with (`Tensor` to shape) items, or a list of
		    (`Tensor`, shape) tuples. A shape must be an iterable.
		  data: The tensors to print out if the condition is False.  Defaults to error
		    message and first few entries of the violating tensor.
		  summarize: Print this many entries of the tensor.
		  message: A string to prefix to the default message.
		  name: A name for this operation (optional).  Defaults to "assert_shapes".
		
		Raises:
		  ValueError:  If static checks determine any shape constraint is violated.
	**/
	static public function assert_shapes_v2(shapes:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Statically asserts that the given `Tensor` is of the specified type.
		
		Args:
		  tensor: A `Tensor` or `SparseTensor`.
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
		Asserts that the given `Tensor` is of the specified type.
		
		This can always be checked statically, so this method returns nothing.
		
		Example:
		
		>>> a = tf.Variable(1.0)
		>>> tf.debugging.assert_type(a, tf_type= tf.float32)
		
		>>> b = tf.constant(21)
		>>> tf.debugging.assert_type(b, tf_type=tf.bool)
		Traceback (most recent call last):
		...
		TypeError: ...
		
		>>> c = tf.SparseTensor(indices=[[0, 0], [1, 2]], values=[1, 2],
		...  dense_shape=[3, 4])
		>>> tf.debugging.assert_type(c, tf_type= tf.int32)
		
		Args:
		  tensor: A `Tensor`, `SparseTensor` or `tf.Variable .
		  tf_type: A tensorflow type (`dtypes.float32`, `tf.int64`, `dtypes.bool`,
		    etc).
		  message: A string to prefix to the default message.
		  name:  A name for this operation. Defaults to "assert_type"
		
		Raises:
		  TypeError: If the tensor's data type doesn't match `tf_type`.
	**/
	static public function assert_type_v2(tensor:Dynamic, tf_type:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Updates the shape of a tensor and checks at runtime that the shape holds.
		
		When executed, this operation asserts that the input tensor `x`'s shape
		is compatible with the `shape` argument.
		See `tf.TensorShape.is_compatible_with` for details.
		
		>>> x = tf.constant([[1, 2, 3],
		...                  [4, 5, 6]])
		>>> x = tf.ensure_shape(x, [2, 3])
		
		Use `None` for unknown dimensions:
		
		>>> x = tf.ensure_shape(x, [None, 3])
		>>> x = tf.ensure_shape(x, [2, None])
		
		If the tensor's shape is not compatible with the `shape` argument, an error
		is raised:
		
		>>> x = tf.ensure_shape(x, [5])
		Traceback (most recent call last):
		...
		tf.errors.InvalidArgumentError: Shape of tensor dummy_input [3] is not
		  compatible with expected shape [5]. [Op:EnsureShape]
		
		During graph construction (typically tracing a `tf.function`),
		`tf.ensure_shape` updates the static-shape of the **result** tensor by
		merging the two shapes. See `tf.TensorShape.merge_with` for details.
		
		This is most useful when **you** know a shape that can't be determined
		statically by TensorFlow.
		
		The following trivial `tf.function` prints the input tensor's
		static-shape before and after `ensure_shape` is applied.
		
		>>> @tf.function
		... def f(tensor):
		...   print("Static-shape before:", tensor.shape)
		...   tensor = tf.ensure_shape(tensor, [None, 3])
		...   print("Static-shape after:", tensor.shape)
		...   return tensor
		
		This lets you see the effect of `tf.ensure_shape` when the function is traced:
		>>> cf = f.get_concrete_function(tf.TensorSpec([None, None]))
		Static-shape before: (None, None)
		Static-shape after: (None, 3)
		
		>>> cf(tf.zeros([3, 3])) # Passes
		>>> cf(tf.constant([1, 2, 3])) # fails
		Traceback (most recent call last):
		...
		InvalidArgumentError:  Shape of tensor x [3] is not compatible with expected shape [3,3].
		
		The above example raises `tf.errors.InvalidArgumentError`, because `x`'s
		shape, `(3,)`, is not compatible with the `shape` argument, `(None, 3)`
		
		Inside a `tf.function` or `v1.Graph` context it checks both the buildtime and
		runtime shapes. This is stricter than `tf.Tensor.set_shape` which only
		checks the buildtime shape.
		
		Note: This differs from `tf.Tensor.set_shape` in that it sets the static shape
		of the resulting tensor and enforces it at runtime, raising an error if the
		tensor's runtime shape is incompatible with the specified shape.
		`tf.Tensor.set_shape` sets the static shape of the tensor without enforcing it
		at runtime, which may result in inconsistencies between the statically-known
		shape of tensors and the runtime value of tensors.
		
		For example, of loading images of a known size:
		
		>>> @tf.function
		... def decode_image(png):
		...   image = tf.image.decode_png(png, channels=3)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", image.shape)
		...   image = tf.ensure_shape(image,[28, 28, 3])
		...   print("Final shape: ", image.shape)
		...   return image
		
		When tracing a function, no ops are being executed, shapes may be unknown.
		See the [Concrete Functions Guide](https://www.tensorflow.org/guide/concrete_function)
		for details.
		
		>>> concrete_decode = decode_image.get_concrete_function(
		...     tf.TensorSpec([], dtype=tf.string))
		Initial shape:  (None, None, 3)
		Final shape:  (28, 28, 3)
		
		>>> image = tf.random.uniform(maxval=255, shape=[28, 28, 3], dtype=tf.int32)
		>>> image = tf.cast(image,tf.uint8)
		>>> png = tf.image.encode_png(image)
		>>> image2 = concrete_decode(png)
		>>> print(image2.shape)
		(28, 28, 3)
		
		>>> image = tf.concat([image,image], axis=0)
		>>> print(image.shape)
		(56, 28, 3)
		>>> png = tf.image.encode_png(image)
		>>> image2 = concrete_decode(png)
		Traceback (most recent call last):
		...
		tf.errors.InvalidArgumentError:  Shape of tensor DecodePng [56,28,3] is not
		  compatible with expected shape [28,28,3].
		
		Caution: if you don't use the result of `tf.ensure_shape` the check may not
		run.
		
		>>> @tf.function
		... def bad_decode_image(png):
		...   image = tf.image.decode_png(png, channels=3)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", image.shape)
		...   # BAD: forgot to use the returned tensor.
		...   tf.ensure_shape(image,[28, 28, 3])
		...   print("Final shape: ", image.shape)
		...   return image
		
		>>> image = bad_decode_image(png)
		Initial shape:  (None, None, 3)
		Final shape:  (None, None, 3)
		>>> print(image.shape)
		(56, 28, 3)
		
		Args:
		  x: A `Tensor`.
		  shape: A `TensorShape` representing the shape of this tensor, a
		    `TensorShapeProto`, a list, a tuple, or None.
		  name: A name for this operation (optional). Defaults to "EnsureShape".
		
		Returns:
		  A `Tensor`. Has the same type and contents as `x`.
		
		Raises:
		  tf.errors.InvalidArgumentError: If `shape` is incompatible with the shape
		  of `x`.
	**/
	static public function ensure_shape(x:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is non-decreasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is non-decreasing if for every adjacent pair we have `x[i] <= x[i+1]`.
		If `x` has less than two elements, it is trivially non-decreasing.
		
		See also:  `is_strictly_increasing`
		
		>>> x1 = tf.constant([1.0, 1.0, 3.0])
		>>> tf.math.is_non_decreasing(x1)
		<tf.Tensor: shape=(), dtype=bool, numpy=True>
		>>> x2 = tf.constant([3.0, 1.0, 2.0])
		>>> tf.math.is_non_decreasing(x2)
		<tf.Tensor: shape=(), dtype=bool, numpy=False>
		
		Args:
		  x: Numeric `Tensor`.
		  name: A name for this operation (optional).  Defaults to "is_non_decreasing"
		
		Returns:
		  Boolean `Tensor`, equal to `True` iff `x` is non-decreasing.
		
		Raises:
		  TypeError: if `x` is not a numeric tensor.
	**/
	static public function is_non_decreasing(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `True` if the elements of `tensor` are numbers.
		
		Specifically, returns `True` if the dtype of `tensor` is one of the following:
		
		* `tf.float32`
		* `tf.float64`
		* `tf.int8`
		* `tf.int16`
		* `tf.int32`
		* `tf.int64`
		* `tf.uint8`
		* `tf.qint8`
		* `tf.qint32`
		* `tf.quint8`
		* `tf.complex64`
		
		Returns `False` if `tensor` is of a non-numeric type or if `tensor` is not
		a `tf.Tensor` object.
	**/
	static public function is_numeric_tensor(tensor:Dynamic):Dynamic;
	/**
		Returns `True` if `x` is strictly increasing.
		
		Elements of `x` are compared in row-major order.  The tensor `[x[0],...]`
		is strictly increasing if for every adjacent pair we have `x[i] < x[i+1]`.
		If `x` has less than two elements, it is trivially strictly increasing.
		
		See also:  `is_non_decreasing`
		
		>>> x1 = tf.constant([1.0, 2.0, 3.0])
		>>> tf.math.is_strictly_increasing(x1)
		<tf.Tensor: shape=(), dtype=bool, numpy=True>
		>>> x2 = tf.constant([3.0, 1.0, 2.0])
		>>> tf.math.is_strictly_increasing(x2)
		<tf.Tensor: shape=(), dtype=bool, numpy=False>
		
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}