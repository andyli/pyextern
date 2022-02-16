/* This file is generated, do not edit! */
package tensorflow.debugging;
@:pythonImport("tensorflow.debugging") extern class Debugging_Module {
	/**
		Asserts that the given condition is true.
		
		If `condition` evaluates to false, print the list of tensors in `data`.
		`summarize` determines how many entries of the tensors to print.
		
		Args:
		  condition: The condition to evaluate.
		  data: The tensors to print out when condition is false.
		  summarize: Print this many entries of each tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  assert_op: An `Operation` that, when executed, raises a
		  `tf.errors.InvalidArgumentError` if `condition` is not true.
		  @compatibility(eager)
		  returns None
		  @end_compatibility
		
		Raises:
		  @compatibility(TF1)
		  When in TF V1 mode (that is, outside `tf.function`) Assert needs a control
		  dependency on the output to ensure the assertion executes:
		
		```python
		# Ensure maximum element of x is smaller or equal to 1
		assert_op = tf.Assert(tf.less_equal(tf.reduce_max(x), 1.), [x])
		with tf.control_dependencies([assert_op]):
		  ... code using x ...
		```
		
		  @end_compatibility
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
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
		  x: Tensor to check.
		  message: Message to log on failure.
		  name: A name for this operation (optional).
		
		Returns:
		  Same tensor as `x`.
	**/
	static public function assert_all_finite(x:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_equal(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_greater(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_greater_equal(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_integer(x:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_less(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_less_equal(x:Dynamic, y:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_near(x:Dynamic, y:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_negative(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_non_negative(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_non_positive(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_none_equal(x:Dynamic, y:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_positive(x:Dynamic, ?message:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_rank(x:Dynamic, rank:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_rank_at_least(x:Dynamic, rank:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_rank_in(x:Dynamic, ranks:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
		
		This is always checked statically, so this method returns nothing.
		
		Args:
		  tensor: A `Tensor`.
		  message: A string to prefix to the default message.
		  name:  A name for this operation. Defaults to "assert_scalar"
		
		Raises:
		  ValueError: If the tensor is not scalar (rank 0), or if its shape is
		    unknown.
	**/
	static public function assert_scalar(tensor:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_shapes(shapes:Dynamic, ?data:Dynamic, ?summarize:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function assert_type(tensor:Dynamic, tf_type:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN and Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, returns the input
		tensor.
		
		Example usage:
		
		``` python
		a = tf.Variable(1.0)
		tf.debugging.check_numerics(a, message='')
		
		b = tf.Variable(np.nan)
		try:
		  tf.debugging.check_numerics(b, message='Checking b')
		except Exception as e:
		  assert "Checking b : Tensor had NaN values" in e.message
		
		c = tf.Variable(np.inf)
		try:
		  tf.debugging.check_numerics(c, message='Checking c')
		except Exception as e:
		  assert "Checking c : Tensor had Inf values" in e.message
		```
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Disable the eager/graph unified numerics checking mechanism.
		
		This method can be used after a call to `tf.debugging.enable_check_numerics()`
		to disable the numerics-checking mechanism that catches infinity and NaN
		values output by ops executed eagerly or in tf.function-compiled graphs.
		
		This method is idempotent. Calling it multiple times has the same effect
		as calling it once.
		
		This method takes effect only on the thread in which it is called.
	**/
	static public function disable_check_numerics():Dynamic;
	/**
		Disable filtering out TensorFlow-internal frames in exception stack traces.
		
		Raw TensorFlow stack traces involve many internal frames, which can be
		challenging to read through, while not being actionable for end users.
		By default, TensorFlow filters internal frames in most exceptions that it
		raises, to keep stack traces short, readable, and focused on what's
		actionable for end users (their own code).
		
		Calling `tf.debugging.disable_traceback_filtering` disables this filtering
		mechanism, meaning that TensorFlow exceptions stack traces will include
		all frames, in particular TensorFlow-internal ones.
		
		**If you are debugging a TensorFlow-internal issue, you need to call
		`tf.debugging.disable_traceback_filtering`**.
		To re-enable traceback filtering afterwards, you can call
		`tf.debugging.enable_traceback_filtering()`.
	**/
	static public function disable_traceback_filtering():Dynamic;
	/**
		Enable tensor numerics checking in an eager/graph unified fashion.
		
		The numerics checking mechanism will cause any TensorFlow eager execution or
		graph execution to error out as soon as an op's output tensor contains
		infinity or NaN.
		
		This method is idempotent. Calling it multiple times has the same effect
		as calling it once.
		
		This method takes effect only on the thread in which it is called.
		
		When a op's float-type output tensor contains any Infinity or NaN, an
		`tf.errors.InvalidArgumentError` will be thrown, with an error message that
		reveals the following information:
		  - The type of the op that generated the tensor with bad numerics.
		  - Data type (dtype) of the tensor.
		  - Shape of the tensor (to the extent known at the time of eager execution
		    or graph construction).
		  - Name of the containing graph (if available).
		  - (Graph mode only): The stack trace of the intra-graph op's creation,
		    with a stack-height limit and a path-length limit for visual clarity.
		    The stack frames that belong to the user's code (as opposed to
		    tensorflow's internal code) are highlighted with a text arrow ("->").
		  - (Eager mode only): How many of the offending tensor's elements are
		    `Infinity` and `NaN`, respectively.
		
		Once enabled, the check-numerics mechanism can be disabled by using
		`tf.debugging.disable_check_numerics()`.
		
		Example usage:
		
		1. Catching infinity during the execution of a `tf.function` graph:
		
		   ```py
		   import tensorflow as tf
		
		   tf.debugging.enable_check_numerics()
		
		   @tf.function
		   def square_log_x_plus_1(x):
		     v = tf.math.log(x + 1)
		     return tf.math.square(v)
		
		   x = -1.0
		
		   # When the following line runs, a function graph will be compiled
		   # from the Python function `square_log_x_plus_1()`. Due to the
		   # `enable_check_numerics()` call above, the graph will contain
		   # numerics checking ops that will run during the function graph's
		   # execution. The function call generates an -infinity when the Log
		   # (logarithm) op operates on the output tensor of the Add op.
		   # The program errors out at this line, printing an error message.
		   y = square_log_x_plus_1(x)
		   z = -y
		  ```
		
		2. Catching NaN during eager execution:
		
		   ```py
		   import numpy as np
		   import tensorflow as tf
		
		   tf.debugging.enable_check_numerics()
		
		   x = np.array([[0.0, -1.0], [4.0, 3.0]])
		
		   # The following line executes the Sqrt op eagerly. Due to the negative
		   # element in the input array, a NaN is generated. Due to the
		   # `enable_check_numerics()` call above, the program errors immediately
		   # at this line, printing an error message.
		   y = tf.math.sqrt(x)
		   z = tf.matmul(y, y)
		   ```
		
		NOTE: If your code is running on TPUs, be sure to call
		`tf.config.set_soft_device_placement(True)` before calling
		`tf.debugging.enable_check_numerics()` as this API uses automatic outside
		compilation on TPUs. For example:
		
		```py
		tf.config.set_soft_device_placement(True)
		tf.debugging.enable_check_numerics()
		
		resolver = tf.distribute.cluster_resolver.TPUClusterResolver(tpu='')
		strategy = tf.distribute.TPUStrategy(resolver)
		with strategy.scope():
		  # ...
		```
		
		Args:
		  stack_height_limit: Limit to the height of the printed stack trace.
		    Applicable only to ops in `tf.function`s (graphs).
		  path_length_limit: Limit to the file path included in the printed stack
		    trace. Applicable only to ops in `tf.function`s (graphs).
	**/
	static public function enable_check_numerics(?stack_height_limit:Dynamic, ?path_length_limit:Dynamic):Dynamic;
	/**
		Enable filtering out TensorFlow-internal frames in exception stack traces.
		
		Raw TensorFlow stack traces involve many internal frames, which can be
		challenging to read through, while not being actionable for end users.
		By default, TensorFlow filters internal frames in most exceptions that it
		raises, to keep stack traces short, readable, and focused on what's
		actionable for end users (their own code).
		
		If you have previously disabled traceback filtering via
		`tf.debugging.disable_traceback_filtering()`, you can re-enable it via
		`tf.debugging.enable_traceback_filtering()`.
		
		Raises:
		  RuntimeError: If Python version is not at least 3.7.
	**/
	static public function enable_traceback_filtering():Dynamic;
	/**
		Get if device placements are logged.
		
		Returns:
		  If device placements are logged.
	**/
	static public function get_log_device_placement():Dynamic;
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
		Check whether traceback filtering is currently enabled.
		
		See also `tf.debugging.enable_traceback_filtering()` and
		`tf.debugging.disable_traceback_filtering()`. Note that filtering out
		internal frames from the tracebacks of exceptions raised by TensorFlow code
		is the default behavior.
		
		Returns:
		  True if traceback filtering is enabled
		  (e.g. if `tf.debugging.enable_traceback_filtering()` was called),
		  and False otherwise (e.g. if `tf.debugging.disable_traceback_filtering()`
		  was called).
	**/
	static public function is_traceback_filtering_enabled():Dynamic;
	/**
		Turns logging for device placement decisions on or off.
		
		Operations execute on a particular device, producing and consuming tensors on
		that device. This may change the performance of the operation or require
		TensorFlow to copy data to or from an accelerator, so knowing where operations
		execute is useful for debugging performance issues.
		
		For more advanced profiling, use the [TensorFlow
		profiler](https://www.tensorflow.org/guide/profiler).
		
		Device placement for operations is typically controlled by a `tf.device`
		scope, but there are exceptions, for example operations on a `tf.Variable`
		which follow the initial placement of the variable. Turning off soft device
		placement (with `tf.config.set_soft_device_placement`) provides more explicit
		control.
		
		>>> tf.debugging.set_log_device_placement(True)
		>>> tf.ones([])
		>>> # [...] op Fill in device /job:localhost/replica:0/task:0/device:GPU:0
		>>> with tf.device("CPU"):
		...  tf.ones([])
		>>> # [...] op Fill in device /job:localhost/replica:0/task:0/device:CPU:0
		>>> tf.debugging.set_log_device_placement(False)
		
		Turning on `tf.debugging.set_log_device_placement` also logs the placement of
		ops inside `tf.function` when the function is called.
		
		Args:
		  enabled: Whether to enabled device placement logging.
	**/
	static public function set_log_device_placement(enabled:Dynamic):Dynamic;
}