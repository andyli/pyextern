/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v2;
@:pythonImport("tensorflow.compat.v1.compat.v2") extern class V2_Module {
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
	static public var __compiler_version__ : Dynamic;
	static public var __cxx11_abi_flag__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __git_version__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __monolithic_build__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _absolute_import : Dynamic;
	static public var _division : Dynamic;
	static public var _estimator_module : Dynamic;
	static public var _keras_module : Dynamic;
	static public var _keras_package : Dynamic;
	static public var _module_dir : Dynamic;
	static public var _print_function : Dynamic;
	/**
		Computes the absolute value of a tensor.
		
		Given a tensor of integer or floating-point values, this operation returns a
		tensor of the same type, where each element contains the absolute value of the
		corresponding element in the input.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float32` or `float64` that is the absolute value of each element in `x`. For
		a complex number \\(a + bj\\), its absolute value is computed as
		\\(\sqrt{a^2 + b^2}\\).
		
		For example:
		
		>>> # real number
		>>> x = tf.constant([-2.25, 3.25])
		>>> tf.abs(x)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([2.25, 3.25], dtype=float32)>
		
		>>> # complex number
		>>> x = tf.constant([[-2.25 + 4.75j], [-3.25 + 5.75j]])
		>>> tf.abs(x)
		<tf.Tensor: shape=(2, 1), dtype=float64, numpy=
		array([[5.25594901],
		       [6.60492241]])>
		
		Args:
		  x: A `Tensor` or `SparseTensor` of type `float16`, `float32`, `float64`,
		    `int32`, `int64`, `complex64` or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` of the same size, type and sparsity as `x`,
		    with absolute values. Note, for `complex64` or `complex128` input, the
		    returned `Tensor` will be of type `float32` or `float64`, respectively.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.abs(x.values, ...), x.dense_shape)`
	**/
	static public function abs(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes acos of x element-wise.
		
		Provided an input tensor, the `tf.math.acos` operation
		returns the inverse cosine of each element of the tensor.
		If `y = tf.math.cos(x)` then, `x = tf.math.acos(y)`.
		
		Input range is `[-1, 1]` and the output has a range of `[0, pi]`.
		
		For example:
		
		>>> x = tf.constant([1.0, -0.5, 3.4, 0.2, 0.0, -2], dtype = tf.float32)
		>>> tf.math.acos(x)
		<tf.Tensor: shape=(6,), dtype=float32,
		numpy= array([0. , 2.0943952, nan, 1.3694383, 1.5707964, nan],
		dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`,
		    `complex64`, `complex128`, `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as x.
	**/
	static public function acos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic cosine of x element-wise.
		
		Given an input tensor, the function computes inverse hyperbolic cosine of every element.
		Input range is `[1, inf]`. It returns `nan` if the input lies outside the range.
		
		```python
		x = tf.constant([-2, -0.5, 1, 1.2, 200, 10000, float("inf")])
		tf.math.acosh(x) ==> [nan nan 0. 0.62236255 5.9914584 9.903487 inf]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function acosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		Example usages below.
		
		Add a scalar and a list:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = 1
		>>> tf.add(x, y)
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([2, 3, 4, 5, 6],
		dtype=int32)>
		
		Note that binary `+` operator can be used instead:
		
		>>> x = tf.convert_to_tensor([1, 2, 3, 4, 5])
		>>> y = tf.convert_to_tensor(1)
		>>> x + y
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([2, 3, 4, 5, 6],
		dtype=int32)>
		
		Add a tensor and a list of same shape:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = tf.constant([1, 2, 3, 4, 5])
		>>> tf.add(x, y)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 2,  4,  6,  8, 10], dtype=int32)>
		
		**Warning**: If one of the inputs (`x` or `y`) is a tensor and the other is a
		non-tensor, the non-tensor input will adopt (or get casted to) the data type
		of the tensor input. This can potentially cause unwanted overflow or underflow
		conversion.
		
		For example,
		
		>>> x = tf.constant([1, 2], dtype=tf.int8)
		>>> y = [2**7 + 1, 2**7 + 2]
		>>> tf.add(x, y)
		<tf.Tensor: shape=(2,), dtype=int8, numpy=array([-126, -124], dtype=int8)>
		
		When adding two input values of different shapes, `Add` follows NumPy
		broadcasting rules. The two input array shapes are compared element-wise.
		Starting with the trailing dimensions, the two dimensions either have to be
		equal or one of them needs to be `1`.
		
		For example,
		
		>>> x = np.ones(6).reshape(1, 2, 1, 3)
		>>> y = np.ones(6).reshape(2, 1, 3, 1)
		>>> tf.add(x, y).shape.as_list()
		[2, 2, 3, 3]
		
		Another example with two arrays of different dimension.
		
		>>> x = np.ones([1, 2, 1, 4])
		>>> y = np.ones([3, 4])
		>>> tf.add(x, y).shape.as_list()
		[1, 2, 3, 4]
		
		The reduction version of this elementwise operation is `tf.math.reduce_sum`
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: bfloat16, half,
		    float32, float64, uint8, int8, int16, int32, int64, complex64, complex128,
		    string.
		  y: A `tf.Tensor`. Must have the same type as x.
		  name: A name for the operation (optional)
	**/
	static public function add(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds all input tensors element-wise.
		
		`tf.math.add_n` performs the same operation as `tf.math.accumulate_n`.
		
		This op does not [broadcast](
		https://docs.scipy.org/doc/numpy-1.13.0/user/basics.broadcasting.html)
		its inputs. If you need broadcasting, use `tf.math.add` (or the `+` operator)
		instead.
		
		For example:
		
		>>> a = tf.constant([[3, 5], [4, 8]])
		>>> b = tf.constant([[1, 6], [2, 9]])
		>>> tf.math.add_n([a, b, a])
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[ 7, 16],
		       [10, 25]], dtype=int32)>
		
		Args:
		  inputs: A list of `tf.Tensor` or `tf.IndexedSlices` objects, each with the
		    same shape and type. `tf.IndexedSlices` objects will be converted into
		    dense tensors prior to adding.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of the same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function add_n(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across axes of a tensor.
		
		In case of identity returns the smallest index.
		
		For example:
		
		>>> A = tf.constant([2, 20, 30, 3, 6])
		>>> tf.math.argmax(A)  # A[2] is maximum in tensor A
		<tf.Tensor: shape=(), dtype=int64, numpy=2>
		>>> B = tf.constant([[2, 20, 30, 3, 6], [3, 11, 16, 1, 8],
		...                  [14, 45, 23, 5, 27]])
		>>> tf.math.argmax(B, 0)
		<tf.Tensor: shape=(5,), dtype=int64, numpy=array([2, 2, 0, 2, 2])>
		>>> tf.math.argmax(B, 1)
		<tf.Tensor: shape=(3,), dtype=int64, numpy=array([2, 2, 1])>
		>>> C = tf.constant([0, 0, 0, 0])
		>>> tf.math.argmax(C) # Returns smallest index in case of ties
		<tf.Tensor: shape=(), dtype=int64, numpy=0>
		
		Args:
		  input: A `Tensor`.
		  axis: An integer, the axis to reduce across. Default to 0.
		  output_type: An optional output dtype (`tf.int32` or `tf.int64`). Defaults
		    to `tf.int64`.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function argmax(input:Dynamic, ?axis:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across axes of a tensor.
		
		Returns the smallest index in case of ties.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`,
		    `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`,
		    `uint64`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `-rank(input), rank(input))`.
		    Describes which axis of the input Tensor to reduce across. For vectors,
		    use axis = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to
		    `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
		
		Usage:
		```python
		import tensorflow as tf
		a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		b = tf.math.argmin(input = a)
		c = tf.keras.backend.eval(b)
		# c = 0
		# here a[0] = 1 which is the smallest element of a across axis 0
		```
	**/
	static public function argmin(input:Dynamic, ?axis:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the indices of a tensor that give its sorted order along an axis.
		
		>>> values = [1, 10, 26.9, 2.8, 166.32, 62.3]
		>>> sort_order = tf.argsort(values)
		>>> sort_order.numpy()
		array([0, 3, 1, 2, 5, 4], dtype=int32)
		
		For a 1D tensor:
		
		>>> sorted = tf.gather(values, sort_order)
		>>> assert tf.reduce_all(sorted == tf.sort(values))
		
		For higher dimensions, the output has the same shape as
		`values`, but along the given axis, values represent the index of the sorted
		element in that slice of the tensor at the given position.
		
		>>> mat = [[30,20,10],
		...        [20,10,30],
		...        [10,30,20]]
		>>> indices = tf.argsort(mat)
		>>> indices.numpy()
		array([[2, 1, 0],
		       [1, 0, 2],
		       [0, 2, 1]], dtype=int32)
		
		If `axis=-1` these indices can be used to apply a sort using `tf.gather`:
		
		>>> tf.gather(mat, indices, batch_dims=-1).numpy()
		array([[10, 20, 30],
		       [10, 20, 30],
		       [10, 20, 30]], dtype=int32)
		
		See also:
		
		  * `tf.sort`: Sort along an axis.
		  * `tf.math.top_k`: A partial sort that returns a fixed number of top values
		    and corresponding indices.
		
		Args:
		  values: 1-D or higher **numeric** `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		    axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		    `'DESCENDING'`).
		  stable: If True, equal elements in the original tensor will not be
		    re-ordered in the returned order. Unstable sort is not yet implemented,
		    but will eventually be the default for performance reasons. If you require
		    a stable order, pass `stable=True` for forwards compatibility.
		  name: Optional name for the operation.
		
		Returns:
		  An int32 `Tensor` with the same shape as `values`. The indices that would
		      sort each slice of the given `values` along the given `axis`.
		
		Raises:
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
		  tf.errors.InvalidArgumentError: If the `values.dtype` is not a `float` or
		      `int` type.
	**/
	static public function argsort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?stable:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the given `type_value` to a `DType`.
		
		Note: `DType` values are interned. When passed a new `DType` object,
		`as_dtype` always returns the interned value.
		
		Args:
		  type_value: A value that can be converted to a `tf.DType` object. This may
		    currently be a `tf.DType` object, a [`DataType`
		    enum](https://www.tensorflow.org/code/tensorflow/core/framework/types.proto),
		      a string type name, or a [`numpy.dtype`](https://numpy.org/doc/stable/reference/generated/numpy.dtype.html).
		
		Returns:
		  A `DType` corresponding to `type_value`.
		
		Raises:
		  TypeError: If `type_value` cannot be converted to a `DType`.
	**/
	static public function as_dtype(type_value:Dynamic):Dynamic;
	/**
		Converts each entry in the given tensor to strings.
		
		Supports many numeric types and boolean.
		
		For Unicode, see the
		[https://www.tensorflow.org/tutorials/representation/unicode](Working with Unicode text)
		tutorial.
		
		Examples:
		
		>>> tf.strings.as_string([3, 2])
		<tf.Tensor: shape=(2,), dtype=string, numpy=array([b'3', b'2'], dtype=object)>
		>>> tf.strings.as_string([3.1415926, 2.71828], precision=2).numpy()
		array([b'3.14', b'2.72'], dtype=object)
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `complex64`, `complex128`, `bool`, `variant`.
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
		Computes the trignometric inverse sine of x element-wise.
		
		The `tf.math.asin` operation returns the inverse of `tf.math.sin`, such that
		if `y = tf.math.sin(x)` then, `x = tf.math.asin(y)`.
		
		**Note**: The output of `tf.math.asin` will lie within the invertible range
		of sine, i.e [-pi/2, pi/2].
		
		For example:
		
		```python
		# Note: [1.047, 0.785] ~= [(pi/3), (pi/4)]
		x = tf.constant([1.047, 0.785])
		y = tf.math.sin(x) # [0.8659266, 0.7068252]
		
		tf.math.asin(y) # [1.047, 0.785] = x
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic sine of x element-wise.
		
		  Given an input tensor, this function computes inverse hyperbolic sine
		  for every element in the tensor. Both input and output has a range of
		  `[-inf, inf]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -2, -0.5, 1, 1.2, 200, 10000, float("inf")])
		  tf.math.asinh(x) ==> [-inf -1.4436355 -0.4812118 0.8813736 1.0159732 5.991471 9.903487 inf]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asinh(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes the trignometric inverse tangent of x element-wise.
		
		The `tf.math.atan` operation returns the inverse of `tf.math.tan`, such that
		if `y = tf.math.tan(x)` then, `x = tf.math.atan(y)`.
		
		**Note**: The output of `tf.math.atan` will lie within the invertible range
		of tan, i.e (-pi/2, pi/2).
		
		For example:
		
		```python
		# Note: [1.047, 0.785] ~= [(pi/3), (pi/4)]
		x = tf.constant([1.047, 0.785])
		y = tf.math.tan(x) # [1.731261, 0.99920404]
		
		tf.math.atan(y) # [1.047, 0.785] = x
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes arctangent of `y/x` element-wise, respecting signs of the arguments.
		
		This is the angle \\( \theta \in [-\pi, \pi] \\) such that
		\\[ x = r \cos(\theta) \\]
		and
		\\[ y = r \sin(\theta) \\]
		where \\(r = \sqrt{x^2 + y^2} \\).
		
		For example:
		
		>>> x = [1., 1.]
		>>> y = [1., -1.]
		>>> print((tf.math.atan2(y,x) * (180 / np.pi)).numpy())
		[ 45. -45.]
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function atan2(y:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic tangent of x element-wise.
		
		  Given an input tensor, this function computes inverse hyperbolic tangent
		  for every element in the tensor. Input range is `[-1,1]` and output range is
		  `[-inf, inf]`. If input is `-1`, output will be `-inf` and if the
		  input is `1`, output will be `inf`. Values outside the range will have
		  `nan` as output.
		
		  ```python
		  x = tf.constant([-float("inf"), -1, -0.5, 1, 0, 0.5, 10, float("inf")])
		  tf.math.atanh(x) ==> [nan -inf -0.54930615 inf  0. 0.54930615 nan nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		BatchToSpace for N-D tensors of type T.
		
		This operation reshapes the "batch" dimension 0 into `M + 1` dimensions of
		shape `block_shape + [batch]`, interleaves these blocks back into the grid
		defined by the spatial dimensions `[1, ..., M]`, to obtain a result with the
		same rank as the input.  The spatial dimensions of this intermediate result
		are then optionally cropped according to `crops` to produce the output.  This
		is the reverse of SpaceToBatch (see `tf.space_to_batch`).
		
		Args:
		  input: A N-D `Tensor` with shape `input_shape = [batch] + spatial_shape +
		    remaining_shape`, where `spatial_shape` has M dimensions.
		  block_shape: A 1-D `Tensor` with shape [M]. Must be one of the following
		    types: `int32`, `int64`. All values must be >= 1. For backwards
		    compatibility with TF 1.0, this parameter may be an int, in which case it
		    is converted to
		    `numpy.array([block_shape, block_shape],
		    dtype=numpy.int64)`.
		  crops: A  2-D `Tensor` with shape `[M, 2]`. Must be one of the
		    following types: `int32`, `int64`. All values must be >= 0.
		    `crops[i] = [crop_start, crop_end]` specifies the amount to crop from
		    input dimension `i + 1`, which corresponds to spatial dimension `i`.
		    It is required that
		    `crop_start[i] + crop_end[i] <= block_shape[i] * input_shape[i + 1]`.
		    This operation is equivalent to the following steps:
		    1. Reshape `input` to `reshaped` of shape: [block_shape[0], ...,
		      block_shape[M-1], batch / prod(block_shape), input_shape[1], ...,
		      input_shape[N-1]]
		    2. Permute dimensions of `reshaped` to produce `permuted` of shape
		       [batch / prod(block_shape),  input_shape[1], block_shape[0], ...,
		       input_shape[M], block_shape[M-1], input_shape[M+1],
		      ..., input_shape[N-1]]
		    3. Reshape `permuted` to produce `reshaped_permuted` of shape
		       [batch / prod(block_shape), input_shape[1] * block_shape[0], ...,
		       input_shape[M] * block_shape[M-1], input_shape[M+1], ...,
		       input_shape[N-1]]
		    4. Crop the start and end of dimensions `[1, ..., M]` of
		       `reshaped_permuted` according to `crops` to produce the output
		       of shape:
		       [batch / prod(block_shape),  input_shape[1] *
		         block_shape[0] - crops[0,0] - crops[0,1], ..., input_shape[M] *
		         block_shape[M-1] - crops[M-1,0] - crops[M-1,1],  input_shape[M+1],
		         ..., input_shape[N-1]]
		  name: A name for the operation (optional).
		
		Examples:
		
		1. For the following input of shape `[4, 1, 1, 1]`,
		   `block_shape = [2, 2]`, and `crops = [[0, 0], [0, 0]]`:
		
		   ```python
		   [[[[1]]],
		    [[[2]]],
		    [[[3]]],
		    [[[4]]]]
		   ```
		
		  The output tensor has shape `[1, 2, 2, 1]` and value:
		
		   ```
		   x = [[[[1], [2]],
		       [[3], [4]]]]
		   ```
		
		2. For the following input of shape `[4, 1, 1, 3]`,
		   `block_shape = [2, 2]`, and `crops = [[0, 0], [0, 0]]`:
		
		   ```python
		   [[[1,  2,   3]],
		    [[4,  5,   6]],
		    [[7,  8,   9]],
		    [[10, 11, 12]]]
		   ```
		
		  The output tensor has shape `[1, 2, 2, 3]` and value:
		
		  ```python
		   x = [[[[1, 2, 3], [4,  5,  6 ]],
		         [[7, 8, 9], [10, 11, 12]]]]
		   ```
		
		3. For the following
		   input of shape `[4, 2, 2, 1]`,
		   `block_shape = [2, 2]`, and `crops = [[0, 0], [0, 0]]`:
		
		   ```python
		   x = [[[[1], [3]], [[ 9], [11]]],
		        [[[2], [4]], [[10], [12]]],
		        [[[5], [7]], [[13], [15]]],
		        [[[6], [8]], [[14], [16]]]]
		   ```
		
		  The output tensor has shape `[1, 4, 4, 1]` and value:
		
		  ```python
		   x = [[[1],  [2],  [ 3], [ 4]],
		        [[5],  [6],  [ 7], [ 8]],
		        [[9],  [10], [11], [12]],
		        [[13], [14], [15], [16]]]
		   ```
		
		4. For the following input of shape
		    `[8, 1, 3, 1]`,
		    `block_shape = [2, 2]`, and `crops = [[0, 0], [2, 0]]`:
		
		    ```python
		    x = [[[[0], [ 1], [ 3]]],
		         [[[0], [ 9], [11]]],
		         [[[0], [ 2], [ 4]]],
		         [[[0], [10], [12]]],
		         [[[0], [ 5], [ 7]]],
		         [[[0], [13], [15]]],
		         [[[0], [ 6], [ 8]]],
		         [[[0], [14], [16]]]]
		    ```
		
		    The output tensor has shape `[2, 2, 4, 1]` and value:
		
		    ```python
		    x = [[[[ 1], [ 2], [ 3], [ 4]],
		          [[ 5], [ 6], [ 7], [ 8]]],
		         [[[ 9], [10], [11], [12]],
		          [[13], [14], [15], [16]]]]
		    ```
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_to_space(input:Dynamic, block_shape:Dynamic, crops:Dynamic, ?name:Dynamic):Dynamic;
	static public var bfloat16 : Dynamic;
	/**
		Bitcasts a tensor from one type to another without copying data.
		
		Given a tensor `input`, this operation returns a tensor that has the same buffer
		data as `input` with datatype `type`.
		
		If the input datatype `T` is larger than the output datatype `type` then the
		shape changes from [...] to [..., sizeof(`T`)/sizeof(`type`)].
		
		If `T` is smaller than `type`, the operator requires that the rightmost
		dimension be equal to sizeof(`type`)/sizeof(`T`). The shape then goes from
		[..., sizeof(`type`)/sizeof(`T`)] to [...].
		
		tf.bitcast() and tf.cast() work differently when real dtype is casted as a complex dtype
		(e.g. tf.complex64 or tf.complex128) as tf.cast() make imaginary part 0 while tf.bitcast()
		gives module error.
		For example,
		
		Example 1:
		
		>>> a = [1., 2., 3.]
		>>> equality_bitcast = tf.bitcast(a, tf.complex128)
		Traceback (most recent call last):
		...
		InvalidArgumentError: Cannot bitcast from 1 to 18 [Op:Bitcast]
		>>> equality_cast = tf.cast(a, tf.complex128)
		>>> print(equality_cast)
		tf.Tensor([1.+0.j 2.+0.j 3.+0.j], shape=(3,), dtype=complex128)
		
		Example 2:
		
		>>> tf.bitcast(tf.constant(0xffffffff, dtype=tf.uint32), tf.uint8)
		<tf.Tensor: shape=(4,), dtype=uint8, numpy=array([255, 255, 255, 255], dtype=uint8)>
		
		Example 3:
		
		>>> x = [1., 2., 3.]
		>>> y = [0., 2., 3.]
		>>> equality= tf.equal(x,y)
		>>> equality_cast = tf.cast(equality,tf.float32)
		>>> equality_bitcast = tf.bitcast(equality_cast,tf.uint8)
		>>> print(equality)
		tf.Tensor([False True True], shape=(3,), dtype=bool)
		>>> print(equality_cast)
		tf.Tensor([0. 1. 1.], shape=(3,), dtype=float32)
		>>> print(equality_bitcast)
		tf.Tensor(
		    [[  0   0   0   0]
		     [  0   0 128  63]
		     [  0   0 128  63]], shape=(3, 4), dtype=uint8)
		
		*NOTE*: Bitcast is implemented as a low-level cast, so machines with different
		endian orderings will give different results.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `complex64`, `complex128`, `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  type: A `tf.DType` from: `tf.bfloat16, tf.half, tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.uint32, tf.uint64, tf.int8, tf.int16, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `type`.
	**/
	static public function bitcast(input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public var bool : Dynamic;
	/**
		Apply boolean mask to tensor.
		
		Numpy equivalent is `tensor[mask]`.
		
		In general, `0 < dim(mask) = K <= dim(tensor)`, and `mask`'s shape must match
		the first K dimensions of `tensor`'s shape.  We then have:
		  `boolean_mask(tensor, mask)[i, j1,...,jd] = tensor[i1,...,iK,j1,...,jd]`
		where `(i1,...,iK)` is the ith `True` entry of `mask` (row-major order).
		The `axis` could be used with `mask` to indicate the axis to mask from.
		In that case, `axis + dim(mask) <= dim(tensor)` and `mask`'s shape must match
		the first `axis + dim(mask)` dimensions of `tensor`'s shape.
		
		See also: `tf.ragged.boolean_mask`, which can be applied to both dense and
		ragged tensors, and can be used if you need to preserve the masked dimensions
		of `tensor` (rather than flattening them, as `tf.boolean_mask` does).
		
		Examples:
		
		>>> tensor = [0, 1, 2, 3]  # 1-D example
		>>> mask = np.array([True, False, True, False])
		>>> tf.boolean_mask(tensor, mask)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([0, 2], dtype=int32)>
		
		>>> tensor = [[1, 2], [3, 4], [5, 6]] # 2-D example
		>>> mask = np.array([True, False, True])
		>>> tf.boolean_mask(tensor, mask)
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[1, 2],
		       [5, 6]], dtype=int32)>
		
		Args:
		  tensor:  N-D Tensor.
		  mask:  K-D boolean Tensor, K <= N and K must be known statically.
		  axis:  A 0-D int Tensor representing the axis in `tensor` to mask from. By
		    default, axis is 0 which will mask from the first dimension. Otherwise K +
		    axis <= N.
		  name:  A name for this operation (optional).
		
		Returns:
		  (N-K+1)-dimensional tensor populated by entries in `tensor` corresponding
		  to `True` values in `mask`.
		
		Raises:
		  ValueError:  If shapes do not conform.
		
		Examples:
		
		```python
		# 2-D example
		tensor = [[1, 2], [3, 4], [5, 6]]
		mask = np.array([True, False, True])
		boolean_mask(tensor, mask)  # [[1, 2], [5, 6]]
		```
	**/
	static public function boolean_mask(tensor:Dynamic, mask:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the shape of a broadcast given symbolic shapes.
		
		When `shape_x` and `shape_y` are Tensors representing shapes (i.e. the result
		of calling tf.shape on another Tensor) this computes a Tensor which is the
		shape of the result of a broadcasting op applied in tensors of shapes
		`shape_x` and `shape_y`.
		
		This is useful when validating the result of a broadcasting operation when the
		tensors do not have statically known shapes.
		
		Example:
		
		>>> shape_x = (1, 2, 3)
		>>> shape_y = (5, 1, 3)
		>>> tf.broadcast_dynamic_shape(shape_x, shape_y)
		<tf.Tensor: shape=(3,), dtype=int32, numpy=array([5, 2, 3], ...>
		
		Args:
		  shape_x: A rank 1 integer `Tensor`, representing the shape of x.
		  shape_y: A rank 1 integer `Tensor`, representing the shape of y.
		
		Returns:
		  A rank 1 integer `Tensor` representing the broadcasted shape.
		
		Raises:
		  InvalidArgumentError: If the two shapes are incompatible for
		  broadcasting.
	**/
	static public function broadcast_dynamic_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Computes the shape of a broadcast given known shapes.
		
		When `shape_x` and `shape_y` are fully known `TensorShape`s this computes a
		`TensorShape` which is the shape of the result of a broadcasting op applied in
		tensors of shapes `shape_x` and `shape_y`.
		
		For example, if shape_x is `TensorShape([1, 2, 3])` and shape_y is
		`TensorShape([5, 1, 3])`, the result is a TensorShape whose value is
		`TensorShape([5, 2, 3])`.
		
		This is useful when validating the result of a broadcasting operation when the
		tensors have statically known shapes.
		
		Example:
		
		>>> shape_x = tf.TensorShape([1, 2, 3])
		>>> shape_y = tf.TensorShape([5, 1 ,3])
		>>> tf.broadcast_static_shape(shape_x, shape_y)
		TensorShape([5, 2, 3])
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  A `TensorShape` representing the broadcasted shape.
		
		Raises:
		  ValueError: If the two shapes can not be broadcasted.
	**/
	static public function broadcast_static_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Broadcast an array for a compatible shape.
		
		Broadcasting is the process of making arrays to have compatible shapes
		for arithmetic operations. Two shapes are compatible if for each
		dimension pair they are either equal or one of them is one. When trying
		to broadcast a Tensor to a shape, it starts with the trailing dimensions,
		and works its way forward.
		
		For example,
		
		>>> x = tf.constant([1, 2, 3])
		>>> y = tf.broadcast_to(x, [3, 3])
		>>> print(y)
		tf.Tensor(
		    [[1 2 3]
		     [1 2 3]
		     [1 2 3]], shape=(3, 3), dtype=int32)
		
		In the above example, the input Tensor with the shape of `[1, 3]`
		is broadcasted to output Tensor with shape of `[3, 3]`.
		
		When doing broadcasted operations such as multiplying a tensor
		by a scalar, broadcasting (usually) confers some time or space
		benefit, as the broadcasted tensor is never materialized.
		
		However, `broadcast_to` does not carry with it any such benefits.
		The newly-created tensor takes the full memory of the broadcasted
		shape. (In a graph context, `broadcast_to` might be fused to
		subsequent operation and then be optimized away, however.)
		
		Args:
		  input: A `Tensor`. A Tensor to broadcast.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    An 1-D `int` Tensor. The shape of the desired output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function broadcast_to(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a case operation.
		
		See also `tf.switch_case`.
		
		The `pred_fn_pairs` parameter is a list of pairs of size N.
		Each pair contains a boolean scalar tensor and a python callable that
		creates the tensors to be returned if the boolean evaluates to True.
		`default` is a callable generating a list of tensors. All the callables
		in `pred_fn_pairs` as well as `default` (if provided) should return the same
		number and types of tensors.
		
		If `exclusive==True`, all predicates are evaluated, and an exception is
		thrown if more than one of the predicates evaluates to `True`.
		If `exclusive==False`, execution stops at the first predicate which
		evaluates to True, and the tensors generated by the corresponding function
		are returned immediately. If none of the predicates evaluate to True, this
		operation returns the tensors generated by `default`.
		
		`tf.case` supports nested structures as implemented in
		`tf.nest`. All of the callables must return the same (possibly nested) value
		structure of lists, tuples, and/or named tuples. Singleton lists and tuples
		form the only exceptions to this: when returned by a callable, they are
		implicitly unpacked to single values. This behavior is disabled by passing
		`strict=True`.
		
		@compatibility(v2)
		`pred_fn_pairs` could be a dictionary in v1. However, tf.Tensor and
		tf.Variable are no longer hashable in v2, so cannot be used as a key for a
		dictionary.  Please use a list or a tuple instead.
		@end_compatibility
		
		
		**Example 1:**
		
		Pseudocode:
		
		```
		if (x < y) return 17;
		else return 23;
		```
		
		Expressions:
		
		```python
		f1 = lambda: tf.constant(17)
		f2 = lambda: tf.constant(23)
		r = tf.case([(tf.less(x, y), f1)], default=f2)
		```
		
		**Example 2:**
		
		Pseudocode:
		
		```
		if (x < y && x > z) raise OpError("Only one predicate may evaluate to True");
		if (x < y) return 17;
		else if (x > z) return 23;
		else return -1;
		```
		
		Expressions:
		
		```python
		def f1(): return tf.constant(17)
		def f2(): return tf.constant(23)
		def f3(): return tf.constant(-1)
		r = tf.case([(tf.less(x, y), f1), (tf.greater(x, z), f2)],
		         default=f3, exclusive=True)
		```
		
		Args:
		  pred_fn_pairs: List of pairs of a boolean scalar tensor and a callable which
		    returns a list of tensors.
		  default: Optional callable that returns a list of tensors.
		  exclusive: True iff at most one predicate is allowed to evaluate to `True`.
		  strict: A boolean that enables/disables 'strict' mode; see above.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the first pair whose predicate evaluated to True, or
		  those returned by `default` if none does.
		
		Raises:
		  TypeError: If `pred_fn_pairs` is not a list/tuple.
		  TypeError: If `pred_fn_pairs` is a list but does not contain 2-tuples.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	@:native("case")
	static public function _case(pred_fn_pairs:Dynamic, ?_default:Dynamic, ?exclusive:Dynamic, ?strict:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to a new type.
		
		The operation casts `x` (in case of `Tensor`) or `x.values`
		(in case of `SparseTensor` or `IndexedSlices`) to `dtype`.
		
		For example:
		
		>>> x = tf.constant([1.8, 2.2], dtype=tf.float32)
		>>> tf.cast(x, tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1, 2], dtype=int32)>
		
		Notice `tf.cast` has an alias `tf.dtypes.cast`:
		
		>>> x = tf.constant([1.8, 2.2], dtype=tf.float32)
		>>> tf.dtypes.cast(x, tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1, 2], dtype=int32)>
		
		The operation supports data types (for `x` and `dtype`) of
		`uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`, `int64`,
		`float16`, `float32`, `float64`, `complex64`, `complex128`, `bfloat16`.
		In case of casting from complex types (`complex64`, `complex128`) to real
		types, only the real part of `x` is returned. In case of casting from real
		types to complex types (`complex64`, `complex128`), the imaginary part of the
		returned value is set to `0`. The handling of complex types here matches the
		behavior of numpy.
		
		Note casting nan and inf values to integral types has undefined behavior.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices` of numeric type. It could
		    be `uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`,
		    `int64`, `float16`, `float32`, `float64`, `complex64`, `complex128`,
		    `bfloat16`.
		  dtype: The destination type. The list of supported dtypes is the same as
		    `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` and
		    same type as `dtype`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `dtype`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
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
		
		If `global_norm == infinity` then the entries in `t_list` are all set to `NaN`
		to signal that an error occurred.
		
		Any of the entries of `t_list` that are of type `None` are ignored.
		
		This is the correct way to perform gradient clipping (Pascanu et al., 2012).
		
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
		
		References:
		  On the difficulty of training Recurrent Neural Networks:
		    [Pascanu et al., 2012](http://proceedings.mlr.press/v28/pascanu13.html)
		    ([pdf](http://proceedings.mlr.press/v28/pascanu13.pdf))
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
		of the output will have L2-norm less than or equal to `clip_norm`. If
		`axes == [0]` instead, each column of the output will be clipped.
		
		Code example:
		
		>>> some_nums = tf.constant([[1, 2, 3, 4, 5]], dtype=tf.float32)
		>>> tf.clip_by_norm(some_nums, 2.0).numpy()
		array([[0.26967996, 0.5393599 , 0.80903983, 1.0787199 , 1.3483998 ]],
		      dtype=float32)
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.  Most gradient data is a collection of different shaped tensors
		for different parts of the model.  Thus, this is a common usage:
		
		```
		# Get your gradients after training
		loss_value, grads = grad(model, features, labels)
		
		# Apply some clipping
		grads = [tf.clip_by_norm(g, norm)
		             for g in grads]
		
		# Continue on with training
		optimizer.apply_gradients(grads)
		```
		
		Args:
		  t: A `Tensor` or `IndexedSlices`.  This must be a floating point type.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value, also
		    floating point
		  axes: A 1-D (vector) `Tensor` of type int32 containing the dimensions
		    to use for computing the L2-norm. If `None` (the default), uses all
		    dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor` or `IndexedSlices`.
		
		Raises:
		  ValueError: If the clip_norm tensor is not a 0-D scalar tensor.
		  TypeError: If dtype of the input is not a floating point or
		    complex type.
	**/
	static public function clip_by_norm(t:Dynamic, clip_norm:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a specified min and max.
		
		Given a tensor `t`, this operation returns a tensor of the same type and
		shape as `t` with its values clipped to `clip_value_min` and `clip_value_max`.
		Any values less than `clip_value_min` are set to `clip_value_min`. Any values
		greater than `clip_value_max` are set to `clip_value_max`.
		
		Note: `clip_value_min` needs to be smaller or equal to `clip_value_max` for
		correct results.
		
		For example:
		
		Basic usage passes a scalar as the min and max value.
		
		>>> t = tf.constant([[-10., -1., 0.], [0., 2., 10.]])
		>>> t2 = tf.clip_by_value(t, clip_value_min=-1, clip_value_max=1)
		>>> t2.numpy()
		array([[-1., -1.,  0.],
		       [ 0.,  1.,  1.]], dtype=float32)
		
		The min and max can be the same size as `t`, or broadcastable to that size.
		
		>>> t = tf.constant([[-1, 0., 10.], [-1, 0, 10]])
		>>> clip_min = [[2],[1]]
		>>> t3 = tf.clip_by_value(t, clip_value_min=clip_min, clip_value_max=100)
		>>> t3.numpy()
		array([[ 2.,  2., 10.],
		       [ 1.,  1., 10.]], dtype=float32)
		
		Broadcasting fails, intentionally, if you would expand the dimensions of `t`
		
		>>> t = tf.constant([[-1, 0., 10.], [-1, 0, 10]])
		>>> clip_min = [[[2, 1]]] # Has a third axis
		>>> t4 = tf.clip_by_value(t, clip_value_min=clip_min, clip_value_max=100)
		Traceback (most recent call last):
		...
		InvalidArgumentError: Incompatible shapes: [2,3] vs. [1,1,2]
		
		It throws a `TypeError` if you try to clip an `int` to a `float` value
		(`tf.cast` the input to `float` first).
		
		>>> t = tf.constant([[1, 2], [3, 4]], dtype=tf.int32)
		>>> t5 = tf.clip_by_value(t, clip_value_min=-3.1, clip_value_max=3.1)
		Traceback (most recent call last):
		...
		TypeError: Cannot convert ...
		
		
		Args:
		  t: A `Tensor` or `IndexedSlices`.
		  clip_value_min: The minimum value to clip to. A scalar `Tensor` or one that
		    is broadcastable to the shape of `t`.
		  clip_value_max: The maximum value to clip to. A scalar `Tensor` or one that
		    is broadcastable to the shape of `t`.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor` or `IndexedSlices`.
		
		Raises:
		  `tf.errors.InvalidArgumentError`: If the clip tensors would trigger array
		    broadcasting that would make the returned tensor larger than the input.
		  TypeError: If dtype of the input is `int32` and dtype of
		    the `clip_value_min` or `clip_value_max` is `float32`
	**/
	static public function clip_by_value(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts two real numbers to a complex number.
		
		Given a tensor `real` representing the real part of a complex number, and a
		tensor `imag` representing the imaginary part of a complex number, this
		operation returns complex numbers elementwise of the form \\(a + bj\\), where
		*a* represents the `real` part and *b* represents the `imag` part.
		
		The input tensors `real` and `imag` must have the same shape.
		
		For example:
		
		```python
		real = tf.constant([2.25, 3.25])
		imag = tf.constant([4.75, 5.75])
		tf.complex(real, imag)  # [[2.25 + 4.75j], [3.25 + 5.75j]]
		```
		
		Args:
		  real: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  imag: A `Tensor`. Must have the same type as `real`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64` or `complex128`.
		
		Raises:
		  TypeError: Real and imag must be correct types
	**/
	static public function complex(real:Dynamic, imag:Dynamic, ?name:Dynamic):Dynamic;
	static public var complex128 : Dynamic;
	static public var complex64 : Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		See also `tf.tile`, `tf.stack`, `tf.repeat`.
		
		Concatenates the list of tensors `values` along dimension `axis`.  If
		`values[i].shape = [D0, D1, ... Daxis(i), ...Dn]`, the concatenated
		result has shape
		
		    [D0, D1, ... Raxis, ...Dn]
		
		where
		
		    Raxis = sum(Daxis(i))
		
		That is, the data from the input tensors is joined along the `axis`
		dimension.
		
		The number of dimensions of the input tensors must match, and all dimensions
		except `axis` must be equal.
		
		For example:
		
		>>> t1 = [[1, 2, 3], [4, 5, 6]]
		>>> t2 = [[7, 8, 9], [10, 11, 12]]
		>>> tf.concat([t1, t2], 0)
		<tf.Tensor: shape=(4, 3), dtype=int32, numpy=
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 7,  8,  9],
		       [10, 11, 12]], dtype=int32)>
		
		>>> tf.concat([t1, t2], 1)
		<tf.Tensor: shape=(2, 6), dtype=int32, numpy=
		array([[ 1,  2,  3,  7,  8,  9],
		       [ 4,  5,  6, 10, 11, 12]], dtype=int32)>
		
		As in Python, the `axis` could also be negative numbers. Negative `axis`
		are interpreted as counting from the end of the rank, i.e.,
		 `axis + rank(values)`-th dimension.
		
		For example:
		
		>>> t1 = [[[1, 2], [2, 3]], [[4, 4], [5, 3]]]
		>>> t2 = [[[7, 4], [8, 4]], [[2, 10], [15, 11]]]
		>>> tf.concat([t1, t2], -1)
		<tf.Tensor: shape=(2, 2, 4), dtype=int32, numpy=
		  array([[[ 1,  2,  7,  4],
		          [ 2,  3,  8,  4]],
		         [[ 4,  4,  2, 10],
		          [ 5,  3, 15, 11]]], dtype=int32)>
		
		Note: If you are concatenating along a new axis consider using stack.
		E.g.
		
		```python
		tf.concat([tf.expand_dims(t, axis) for t in tensors], axis)
		```
		
		can be rewritten as
		
		```python
		tf.stack(tensors, axis=axis)
		```
		
		Args:
		  values: A list of `Tensor` objects or a single `Tensor`.
		  axis: 0-D `int32` `Tensor`.  Dimension along which to concatenate. Must be
		    in the range `[-rank(values), rank(values))`. As in Python, indexing for
		    axis is 0-based. Positive axis in the rage of `[0, rank(values))` refers
		    to `axis`-th dimension. And negative axis refers to `axis +
		    rank(values)`-th dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` resulting from concatenation of the input tensors.
	**/
	static public function concat(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return `true_fn()` if the predicate `pred` is true else `false_fn()`.
		
		`true_fn` and `false_fn` both return lists of output tensors. `true_fn` and
		`false_fn` must have the same non-zero number and type of outputs.
		
		**WARNING**: Any Tensors or Operations created outside of `true_fn` and
		`false_fn` will be executed regardless of which branch is selected at runtime.
		
		Although this behavior is consistent with the dataflow model of TensorFlow,
		it has frequently surprised users who expected a lazier semantics.
		Consider the following simple program:
		
		```python
		z = tf.multiply(a, b)
		result = tf.cond(x < y, lambda: tf.add(x, z), lambda: tf.square(y))
		```
		
		If `x < y`, the `tf.add` operation will be executed and `tf.square`
		operation will not be executed. Since `z` is needed for at least one
		branch of the `cond`, the `tf.multiply` operation is always executed,
		unconditionally.
		
		Note that `cond` calls `true_fn` and `false_fn` *exactly once* (inside the
		call to `cond`, and not at all during `Session.run()`). `cond`
		stitches together the graph fragments created during the `true_fn` and
		`false_fn` calls with some additional graph nodes to ensure that the right
		branch gets executed depending on the value of `pred`.
		
		`tf.cond` supports nested structures as implemented in
		`tensorflow.python.util.nest`. Both `true_fn` and `false_fn` must return the
		same (possibly nested) value structure of lists, tuples, and/or named tuples.
		Singleton lists and tuples form the only exceptions to this: when returned by
		`true_fn` and/or `false_fn`, they are implicitly unpacked to single values.
		
		Note: It is illegal to "directly" use tensors created inside a cond branch
		outside it, e.g. by storing a reference to a branch tensor in the python
		state. If you need to use a tensor created in a branch function you should
		return it as an output of the branch function and use the output from
		`tf.cond` instead.
		
		Args:
		  pred: A scalar determining whether to return the result of `true_fn` or
		    `false_fn`.
		  true_fn: The callable to be performed if pred is true.
		  false_fn: The callable to be performed if pred is false.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  Tensors returned by the call to either `true_fn` or `false_fn`. If the
		  callables return a singleton list, the element is extracted from the list.
		
		Raises:
		  TypeError: if `true_fn` or `false_fn` is not callable.
		  ValueError: if `true_fn` and `false_fn` do not return the same number of
		    tensors, or return tensors of different types.
		
		Example:
		
		```python
		x = tf.constant(2)
		y = tf.constant(5)
		def f1(): return tf.multiply(x, 17)
		def f2(): return tf.add(y, 23)
		r = tf.cond(tf.less(x, y), f1, f2)
		# r is set to f1().
		# Operations in f2 (e.g., tf.add) are not executed.
		```
	**/
	static public function cond(pred:Dynamic, ?true_fn:Dynamic, ?false_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a constant tensor from a tensor-like object.
		
		Note: All eager `tf.Tensor` values are immutable (in contrast to
		`tf.Variable`). There is nothing especially _constant_ about the value
		returned from `tf.constant`. This function is not fundamentally different from
		`tf.convert_to_tensor`. The name `tf.constant` comes from the `value` being
		embedded in a `Const` node in the `tf.Graph`. `tf.constant` is useful
		for asserting that the value can be embedded that way.
		
		If the argument `dtype` is not specified, then the type is inferred from
		the type of `value`.
		
		>>> # Constant 1-D Tensor from a python list.
		>>> tf.constant([1, 2, 3, 4, 5, 6])
		<tf.Tensor: shape=(6,), dtype=int32,
		    numpy=array([1, 2, 3, 4, 5, 6], dtype=int32)>
		>>> # Or a numpy array
		>>> a = np.array([[1, 2, 3], [4, 5, 6]])
		>>> tf.constant(a)
		<tf.Tensor: shape=(2, 3), dtype=int64, numpy=
		  array([[1, 2, 3],
		         [4, 5, 6]])>
		
		If `dtype` is specified, the resulting tensor values are cast to the requested
		`dtype`.
		
		>>> tf.constant([1, 2, 3, 4, 5, 6], dtype=tf.float64)
		<tf.Tensor: shape=(6,), dtype=float64,
		    numpy=array([1., 2., 3., 4., 5., 6.])>
		
		If `shape` is set, the `value` is reshaped to match. Scalars are expanded to
		fill the `shape`:
		
		>>> tf.constant(0, shape=(2, 3))
		  <tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[0, 0, 0],
		         [0, 0, 0]], dtype=int32)>
		>>> tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[1, 2, 3],
		         [4, 5, 6]], dtype=int32)>
		
		`tf.constant` has no effect if an eager Tensor is passed as the `value`, it
		even transmits gradients:
		
		>>> v = tf.Variable([0.0])
		>>> with tf.GradientTape() as g:
		...     loss = tf.constant(v + v)
		>>> g.gradient(loss, v).numpy()
		array([2.], dtype=float32)
		
		But, since `tf.constant` embeds the value in the `tf.Graph` this fails for
		symbolic tensors:
		
		>>> with tf.compat.v1.Graph().as_default():
		...   i = tf.compat.v1.placeholder(shape=[None, None], dtype=tf.float32)
		...   t = tf.constant(i)
		Traceback (most recent call last):
		...
		TypeError: ...
		
		`tf.constant` will create tensors on the current device. Inputs which are
		already tensors maintain their placements unchanged.
		
		Related Ops:
		
		* `tf.convert_to_tensor` is similar but:
		  * It has no `shape` argument.
		  * Symbolic tensors are allowed to pass through.
		
		  >>> with tf.compat.v1.Graph().as_default():
		  ...   i = tf.compat.v1.placeholder(shape=[None, None], dtype=tf.float32)
		  ...   t = tf.convert_to_tensor(i)
		
		* `tf.fill`: differs in a few ways:
		  *   `tf.constant` supports arbitrary constants, not just uniform scalar
		      Tensors like `tf.fill`.
		  *   `tf.fill` creates an Op in the graph that is expanded at runtime, so it
		      can efficiently represent large tensors.
		  *   Since `tf.fill` does not embed the value, it can produce dynamically
		      sized outputs.
		
		Args:
		  value: A constant value (or list) of output type `dtype`.
		  dtype: The type of the elements of the resulting tensor.
		  shape: Optional dimensions of resulting tensor.
		  name: Optional name for the tensor.
		
		Returns:
		  A Constant Tensor.
		
		Raises:
		  TypeError: if shape is incorrectly specified or unsupported.
		  ValueError: if called on a symbolic tensor.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.control_dependencies()` using the default graph.
		
		See `tf.Graph.control_dependencies` for more details.
		
		Note: *In TensorFlow 2 with eager and/or Autograph, you should not require
		this method, as ops execute in the expected order thanks to automatic control
		dependencies.* Only use `tf.control_dependencies` when working with v1
		`tf.Graph` code.
		
		When eager execution is enabled, any callable object in the `control_inputs`
		list will be called.
		
		Args:
		  control_inputs: A list of `Operation` or `Tensor` objects which must be
		    executed or computed before running the operations defined in the context.
		    Can also be `None` to clear the control dependencies. If eager execution
		    is enabled, any callable object in the `control_inputs` list will be
		    called.
		
		Returns:
		 A context manager that specifies control dependencies for all
		 operations constructed within the context.
	**/
	static public function control_dependencies(control_inputs:Dynamic):Dynamic;
	/**
		Converts the given `value` to a `Tensor`.
		
		This function converts Python objects of various types to `Tensor`
		objects. It accepts `Tensor` objects, numpy arrays, Python lists,
		and Python scalars.
		
		For example:
		
		>>> import numpy as np
		>>> def my_func(arg):
		...   arg = tf.convert_to_tensor(arg, dtype=tf.float32)
		...   return arg
		
		>>> # The following calls are equivalent.
		...
		>>> value_1 = my_func(tf.constant([[1.0, 2.0], [3.0, 4.0]]))
		>>> print(value_1)
		tf.Tensor(
		  [[1. 2.]
		   [3. 4.]], shape=(2, 2), dtype=float32)
		>>> value_2 = my_func([[1.0, 2.0], [3.0, 4.0]])
		>>> print(value_2)
		tf.Tensor(
		  [[1. 2.]
		   [3. 4.]], shape=(2, 2), dtype=float32)
		>>> value_3 = my_func(np.array([[1.0, 2.0], [3.0, 4.0]], dtype=np.float32))
		>>> print(value_3)
		tf.Tensor(
		  [[1. 2.]
		   [3. 4.]], shape=(2, 2), dtype=float32)
		
		This function can be useful when composing a new operation in Python
		(such as `my_func` in the example above). All standard Python op
		constructors apply this function to each of their Tensor-valued
		inputs, which allows those ops to accept numpy arrays, Python lists,
		and scalars in addition to `Tensor` objects.
		
		Note: This function diverges from default Numpy behavior for `float` and
		  `string` types when `None` is present in a Python list or scalar. Rather
		  than silently converting `None` values, an error will be thrown.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the type
		    is inferred from the type of `value`.
		  dtype_hint: Optional element type for the returned tensor, used when dtype
		    is None. In some cases, a caller may not have a dtype in mind when
		    converting to a tensor, so dtype_hint can be used as a soft preference.
		    If the conversion to `dtype_hint` is not possible, this argument has no
		    effect.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  A `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value` to `dtype`.
		  RuntimeError: If a registered conversion function returns an invalid value.
		  ValueError: If the `value` is a tensor not of given `dtype` in graph mode.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?dtype_hint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes cos of x element-wise.
		
		  Given an input tensor, this function computes cosine of every
		  element in the tensor. Input range is `(-inf, inf)` and
		  output range is `[-1,1]`. If input lies outside the boundary, `nan`
		  is returned.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 200, 10000, float("inf")])
		  tf.math.cos(x) ==> [nan -0.91113025 0.87758255 0.5403023 0.36235774 0.48718765 -0.95215535 nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic cosine of x element-wise.
		
		  Given an input tensor, this function computes hyperbolic cosine of every
		  element in the tensor. Input range is `[-inf, inf]` and output range
		  is `[1, inf]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 2, 10, float("inf")])
		  tf.math.cosh(x) ==> [inf 4.0515420e+03 1.1276259e+00 1.5430807e+00 1.8106556e+00 3.7621956e+00 1.1013233e+04 inf]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the cumulative sum of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumsum, which means that the first
		element of the input is identical to the first element of the output:
		For example:
		
		>>> # tf.cumsum([a, b, c])   # [a, a + b, a + b + c]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([ 2,  6, 12, 20], dtype=int32)>
		
		>>> # using varying `axis` values
		>>> y = tf.constant([[2, 4, 6, 8], [1,3,5,7]])
		>>> tf.cumsum(y, axis=0)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		array([[ 2,  4,  6,  8],
		       [ 3,  7, 11, 15]], dtype=int32)>
		>>> tf.cumsum(y, axis=1)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		array([[ 2,  6, 12, 20],
		       [ 1,  4,  9, 16]], dtype=int32)>
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumsum is performed
		instead:
		
		>>> # tf.cumsum([a, b, c], exclusive=True)  => [0, a, a + b]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x, exclusive=True)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([ 0,  2,  6, 12], dtype=int32)>
		
		By setting the `reverse` kwarg to `True`, the cumsum is performed in the
		opposite direction:
		
		>>> # tf.cumsum([a, b, c], reverse=True)  # [a + b + c, b + c, c]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x, reverse=True)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([20, 18, 14,  8], dtype=int32)>
		
		This is more efficient than using separate `tf.reverse` ops.
		The `reverse` and `exclusive` kwargs can also be combined:
		
		>>> # tf.cumsum([a, b, c], exclusive=True, reverse=True)  # [b + c, c, 0]
		>>> x = tf.constant([2, 4, 6, 8])
		>>> tf.cumsum(x, exclusive=True, reverse=True)
		<tf.Tensor: shape=(4,), dtype=int32,
		numpy=array([18, 14,  8,  0], dtype=int32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		    `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  axis: A `Tensor` of type `int32` (default: 0). Must be in the range
		    `[-rank(x), rank(x))`.
		  exclusive: If `True`, perform exclusive cumsum.
		  reverse: A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cumsum(x:Dynamic, ?axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decorator to define a function with a custom gradient.
		
		This decorator allows fine grained control over the gradients of a sequence
		for operations.  This may be useful for multiple reasons, including providing
		a more efficient or numerically stable gradient for a sequence of operations.
		
		For example, consider the following function that commonly occurs in the
		computation of cross entropy and log likelihoods:
		
		```python
		def log1pexp(x):
		  return tf.math.log(1 + tf.exp(x))
		```
		
		Due to numerical instability, the gradient of this function evaluated at x=100
		is NaN.  For example:
		
		```python
		x = tf.constant(100.)
		y = log1pexp(x)
		dy_dx = tf.gradients(y, x) # Will be NaN when evaluated.
		```
		
		The gradient expression can be analytically simplified to provide numerical
		stability:
		
		```python
		@tf.custom_gradient
		def log1pexp(x):
		  e = tf.exp(x)
		  def grad(upstream):
		    return upstream * (1 - 1 / (1 + e))
		  return tf.math.log(1 + e), grad
		```
		
		With this definition, the gradient `dy_dx` at `x = 100` will be correctly
		evaluated as 1.0.
		
		The variable `upstream` is defined as the upstream gradient. i.e. the gradient
		from all the layers or functions originating from this layer. The above
		example has no upstream functions, therefore `upstream = dy/dy = 1.0`.
		
		Assume that `x_i` is `log1pexp` in the forward pass `x_1 = x_1(x_0)`,
		`x_2 = x_2(x_1)`, ..., `x_i = x_i(x_i-1)`, ..., `x_n = x_n(x_n-1)`. By
		chain rule we know that `dx_n/dx_0 = dx_n/dx_n-1 * dx_n-1/dx_n-2 * ... *
		dx_i/dx_i-1 * ... * dx_1/dx_0`.
		
		In this case the gradient of our current function defined as
		`dx_i/dx_i-1 = (1 - 1 / (1 + e))`. The upstream gradient `upstream` would be
		`dx_n/dx_n-1 * dx_n-1/dx_n-2 * ... * dx_i+1/dx_i`. The upstream gradient
		multiplied by the current gradient is then passed downstream.
		
		In case the function takes multiple variables as input, the `grad`
		function must also return  the same number of variables.
		We take the function `z = x * y` as an example.
		
		>>> @tf.custom_gradient
		... def bar(x, y):
		...   def grad(upstream):
		...     dz_dx = y
		...     dz_dy = x
		...     return upstream * dz_dx, upstream * dz_dy
		...   z = x * y
		...   return z, grad
		>>> x = tf.constant(2.0, dtype=tf.float32)
		>>> y = tf.constant(3.0, dtype=tf.float32)
		>>> with tf.GradientTape(persistent=True) as tape:
		...   tape.watch(x)
		...   tape.watch(y)
		...   z = bar(x, y)
		>>> z
		<tf.Tensor: shape=(), dtype=float32, numpy=6.0>
		>>> tape.gradient(z, x)
		<tf.Tensor: shape=(), dtype=float32, numpy=3.0>
		>>> tape.gradient(z, y)
		<tf.Tensor: shape=(), dtype=float32, numpy=2.0>
		
		Nesting custom gradients can lead to unintuitive results. The default
		behavior does not correspond to n-th order derivatives. For example
		
		```python
		@tf.custom_gradient
		def op(x):
		  y = op1(x)
		  @tf.custom_gradient
		  def grad_fn(dy):
		    gdy = op2(x, y, dy)
		    def grad_grad_fn(ddy):  # Not the 2nd order gradient of op w.r.t. x.
		      return op3(x, y, dy, ddy)
		    return gdy, grad_grad_fn
		  return y, grad_fn
		```
		
		The function `grad_grad_fn` will be calculating the first order gradient
		of `grad_fn` with respect to `dy`, which is used to generate forward-mode
		gradient graphs from backward-mode gradient graphs, but is not the same as
		the second order gradient of `op` with respect to `x`.
		
		Instead, wrap nested `@tf.custom_gradients` in another function:
		
		```python
		@tf.custom_gradient
		def op_with_fused_backprop(x):
		  y, x_grad = fused_op(x)
		  def first_order_gradient(dy):
		    @tf.custom_gradient
		    def first_order_custom(unused_x):
		      def second_order_and_transpose(ddy):
		        return second_order_for_x(...), gradient_wrt_dy(...)
		      return x_grad, second_order_and_transpose
		    return dy * first_order_custom(x)
		  return y, first_order_gradient
		```
		
		Additional arguments to the inner `@tf.custom_gradient`-decorated function
		control the expected return values of the innermost function.
		
		The examples above illustrate how to specify custom gradients for functions
		which do not read from variables. The following example uses variables, which
		require special handling because they are effectively inputs of the forward
		function.
		
		>>> weights = tf.Variable(tf.ones([2]))  # Trainable variable weights
		>>> @tf.custom_gradient
		... def linear_poly(x):
		...   # Creating polynomial
		...   poly = weights[1] * x + weights[0]
		...
		...   def grad_fn(dpoly, variables):
		...     # dy/dx = weights[1] and we need to left multiply dpoly
		...     grad_xs = dpoly * weights[1]  # Scalar gradient
		...
		...     grad_vars = []  # To store gradients of passed variables
		...     assert variables is not None
		...     assert len(variables) == 1
		...     assert variables[0] is weights
		...     # Manually computing dy/dweights
		...     dy_dw = dpoly * tf.stack([x ** 1, x ** 0])
		...     grad_vars.append(
		...         tf.reduce_sum(tf.reshape(dy_dw, [2, -1]), axis=1)
		...     )
		...     return grad_xs, grad_vars
		...   return poly, grad_fn
		>>> x = tf.constant([1., 2., 3.])
		>>> with tf.GradientTape(persistent=True) as tape:
		...   tape.watch(x)
		...   poly = linear_poly(x)
		>>> poly # poly = x + 1
		<tf.Tensor: shape=(3,),
		  dtype=float32,
		  numpy=array([2., 3., 4.], dtype=float32)>
		>>> tape.gradient(poly, x)  # conventional scalar gradient dy/dx
		<tf.Tensor: shape=(3,),
		  dtype=float32,
		  numpy=array([1., 1., 1.], dtype=float32)>
		>>> tape.gradient(poly, weights)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([6., 3.], dtype=float32)>
		
		Above example illustrates usage of trainable variable `weights`.
		In the example, the inner `grad_fn` accepts an extra `variables` input
		parameter and also returns an extra `grad_vars` output. That extra argument
		is passed if the forward function reads any variables. You need to
		compute the gradient w.r.t. each of those `variables` and output it as a list
		of `grad_vars`. Note here that default value of `variables` is set to `None`
		when no variables are used in the forward function.
		
		It should be noted `tf.GradientTape` is still watching the forward pass of a
		`tf.custom_gradient`, and will use the ops it watches. As a consequence,
		calling `tf.function` while the tape is still watching leads
		to a gradient graph being built. If an op is used in `tf.function` without
		registered gradient, a `LookupError` will be raised.
		
		Users can insert `tf.stop_gradient` to customize this behavior. This
		is demonstrated in the example below. `tf.random.shuffle` does not have a
		registered gradient. As a result `tf.stop_gradient` is used to avoid the
		`LookupError`.
		
		```python
		x = tf.constant([0.3, 0.5], dtype=tf.float32)
		
		@tf.custom_gradient
		def test_func_with_stop_grad(x):
		  @tf.function
		  def _inner_func():
		    # Avoid exception during the forward pass
		    return tf.stop_gradient(tf.random.shuffle(x))
		    # return tf.random.shuffle(x)  # This will raise
		
		  res = _inner_func()
		  def grad(upstream):
		    return upstream  # Arbitrarily defined custom gradient
		  return res, grad
		
		with tf.GradientTape() as g:
		  g.watch(x)
		  res = test_func_with_stop_grad(x)
		
		g.gradient(res, x)
		```
		
		See also `tf.RegisterGradient` which registers a gradient function for a
		primitive TensorFlow operation. `tf.custom_gradient` on the other hand allows
		for fine grained control over the gradient computation of a sequence of
		operations.
		
		Note that if the decorated function uses `Variable`s, the enclosing variable
		scope must be using `ResourceVariable`s.
		
		Args:
		  f: function `f(*x)` that returns a tuple `(y, grad_fn)` where:
		     - `x` is a sequence of (nested structures of) `Tensor` inputs to the
		       function.
		     - `y` is a (nested structure of) `Tensor` outputs of applying TensorFlow
		       operations in `f` to `x`.
		     - `grad_fn` is a function with the signature `g(*grad_ys)` which returns
		       a list of `Tensor`s the same size as (flattened) `x` - the derivatives
		       of `Tensor`s in `y` with respect to the `Tensor`s in `x`.  `grad_ys` is
		       a sequence of `Tensor`s the same size as (flattened) `y` holding the
		       initial value gradients for each `Tensor` in `y`.
		
		       In a pure mathematical sense, a vector-argument vector-valued function
		       `f`'s derivatives should be its Jacobian matrix `J`. Here we are
		       expressing the Jacobian `J` as a function `grad_fn` which defines how
		       `J` will transform a vector `grad_ys` when left-multiplied with it
		       (`grad_ys * J`, the vector-Jacobian product, or VJP). This functional
		       representation of a matrix is convenient to use for chain-rule
		       calculation (in e.g. the back-propagation algorithm).
		
		       If `f` uses `Variable`s (that are not part of the
		       inputs), i.e. through `get_variable`, then `grad_fn` should have
		       signature `g(*grad_ys, variables=None)`, where `variables` is a list of
		       the `Variable`s, and return a 2-tuple `(grad_xs, grad_vars)`, where
		       `grad_xs` is the same as above, and `grad_vars` is a `list<Tensor>`
		       with the derivatives of `Tensor`s in `y` with respect to the variables
		       (that is, grad_vars has one Tensor per variable in variables).
		
		Returns:
		  A function `h(x)` which returns the same value as `f(x)[0]` and whose
		  gradient (as calculated by `tf.gradients`) is determined by `f(x)[1]`.
	**/
	static public function custom_gradient(?f:Dynamic):Dynamic;
	/**
		Specifies the device for ops created/executed in this context.
		
		This function specifies the device to be used for ops created/executed in a
		particular context. Nested contexts will inherit and also create/execute
		their ops on the specified device. If a specific device is not required,
		consider not using this function so that a device can be automatically
		assigned.  In general the use of this function is optional. `device_name` can
		be fully specified, as in "/job:worker/task:1/device:cpu:0", or partially
		specified, containing only a subset of the "/"-separated fields. Any fields
		which are specified will override device annotations from outer scopes.
		
		For example:
		
		```python
		with tf.device('/job:foo'):
		  # ops created here have devices with /job:foo
		  with tf.device('/job:bar/task:0/device:gpu:2'):
		    # ops created here have the fully specified device above
		  with tf.device('/device:gpu:1'):
		    # ops created here have the device '/job:foo/device:gpu:1'
		```
		
		Args:
		  device_name: The device name to use in the context.
		
		Returns:
		  A context manager that specifies the default device to use for newly
		  created ops.
		
		Raises:
		  RuntimeError: If a function is passed in.
	**/
	static public function device(device_name:Dynamic):Dynamic;
	/**
		Computes Python style division of `x` by `y`.
		
		For example:
		
		>>> x = tf.constant([16, 12, 11])
		>>> y = tf.constant([4, 6, 2])
		>>> tf.divide(x,y)
		<tf.Tensor: shape=(3,), dtype=float64,
		numpy=array([4. , 2. , 5.5])>
		
		Args:
		  x: A `Tensor`
		  y: A `Tensor`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with same shape as input
	**/
	static public function divide(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public var double : Dynamic;
	/**
		Partitions `data` into `num_partitions` tensors using indices from `partitions`.
		
		For each index tuple `js` of size `partitions.ndim`, the slice `data[js, ...]`
		becomes part of `outputs[partitions[js]]`.  The slices with `partitions[js] = i`
		are placed in `outputs[i]` in lexicographic order of `js`, and the first
		dimension of `outputs[i]` is the number of entries in `partitions` equal to `i`.
		In detail,
		
		```python
		    outputs[i].shape = [sum(partitions == i)] + data.shape[partitions.ndim:]
		
		    outputs[i] = pack([data[js, ...] for js if partitions[js] == i])
		```
		
		`data.shape` must start with `partitions.shape`.
		
		For example:
		
		```python
		    # Scalar partitions.
		    partitions = 1
		    num_partitions = 2
		    data = [10, 20]
		    outputs[0] = []  # Empty with shape [0, 2]
		    outputs[1] = [[10, 20]]
		
		    # Vector partitions.
		    partitions = [0, 0, 1, 1, 0]
		    num_partitions = 2
		    data = [10, 20, 30, 40, 50]
		    outputs[0] = [10, 20, 50]
		    outputs[1] = [30, 40]
		```
		
		See `dynamic_stitch` for an example on how to merge partitions back.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicPartition.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`.
		  partitions: A `Tensor` of type `int32`.
		    Any shape.  Indices in the range `[0, num_partitions)`.
		  num_partitions: An `int` that is `>= 1`.
		    The number of partitions to output.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_partitions` `Tensor` objects with the same type as `data`.
	**/
	static public function dynamic_partition(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Interleave the values from the `data` tensors into a single tensor.
		
		Builds a merged tensor such that
		
		```python
		    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
		```
		
		For example, if each `indices[m]` is scalar or vector, we have
		
		```python
		    # Scalar indices:
		    merged[indices[m], ...] = data[m][...]
		
		    # Vector indices:
		    merged[indices[m][i], ...] = data[m][i, ...]
		```
		
		Each `data[i].shape` must start with the corresponding `indices[i].shape`,
		and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
		must have `data[i].shape = indices[i].shape + constant`.  In terms of this
		`constant`, the output shape is
		
		    merged.shape = [max(indices)] + constant
		
		Values are merged in order, so if an index appears in both `indices[m][i]` and
		`indices[n][j]` for `(m,i) < (n,j)` the slice `data[n][j]` will appear in the
		merged result. If you do not need this guarantee, ParallelDynamicStitch might
		perform better on some devices.
		
		For example:
		
		```python
		    indices[0] = 6
		    indices[1] = [4, 1]
		    indices[2] = [[5, 2], [0, 3]]
		    data[0] = [61, 62]
		    data[1] = [[41, 42], [11, 12]]
		    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
		    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
		              [51, 52], [61, 62]]
		```
		
		This method can be used to merge partitions created by `dynamic_partition`
		as illustrated on the following example:
		
		```python
		    # Apply function (increments x_i) on elements for which a certain condition
		    # apply (x_i != -1 in this example).
		    x=tf.constant([0.1, -1., 5.2, 4.3, -1., 7.4])
		    condition_mask=tf.not_equal(x,tf.constant(-1.))
		    partitioned_data = tf.dynamic_partition(
		        x, tf.cast(condition_mask, tf.int32) , 2)
		    partitioned_data[1] = partitioned_data[1] + 1.0
		    condition_indices = tf.dynamic_partition(
		        tf.range(tf.shape(x)[0]), tf.cast(condition_mask, tf.int32) , 2)
		    x = tf.dynamic_stitch(condition_indices, partitioned_data)
		    # Here x=[1.1, -1., 6.2, 5.3, -1, 8.4], the -1. values remain
		    # unchanged.
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicStitch.png" alt>
		</div>
		
		Args:
		  indices: A list of at least 1 `Tensor` objects with type `int32`.
		  data: A list with the same length as `indices` of `Tensor` objects with the same type.
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
		
		For example:
		
		Given the following input,
		* `hypothesis` is a `tf.SparseTensor` of shape `[2, 1, 1]`
		* `truth` is a `tf.SparseTensor` of shape `[2, 2, 2]`
		
		>>> hypothesis = tf.SparseTensor(
		...   [[0, 0, 0],
		...    [1, 0, 0]],
		...   ["a", "b"],
		...   (2, 1, 1))
		>>> truth = tf.SparseTensor(
		...   [[0, 1, 0],
		...    [1, 0, 0],
		...    [1, 0, 1],
		...    [1, 1, 0]],
		...    ["a", "b", "c", "a"],
		...    (2, 2, 2))
		>>> tf.edit_distance(hypothesis, truth, normalize=True)
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		array([[inf, 1. ],
		       [0.5, 1. ]], dtype=float32)>
		
		The operation returns a dense Tensor of shape `[2, 2]` with
		edit distances normalized by `truth` lengths.
		
		**Note**: It is possible to calculate edit distance between two
		sparse tensors with variable-length values. However, attempting to create
		them while eager execution is enabled will result in a `ValueError`.
		
		For the following  inputs,
		
		```python
		# 'hypothesis' is a tensor of shape `[2, 1]` with variable-length values:
		#   (0,0) = ["a"]
		#   (1,0) = ["b"]
		hypothesis = tf.sparse.SparseTensor(
		    [[0, 0, 0],
		     [1, 0, 0]],
		    ["a", "b"],
		    (2, 1, 1))
		
		# 'truth' is a tensor of shape `[2, 2]` with variable-length values:
		#   (0,0) = []
		#   (0,1) = ["a"]
		#   (1,0) = ["b", "c"]
		#   (1,1) = ["a"]
		truth = tf.sparse.SparseTensor(
		    [[0, 1, 0],
		     [1, 0, 0],
		     [1, 0, 1],
		     [1, 1, 0]],
		    ["a", "b", "c", "a"],
		    (2, 2, 2))
		
		normalize = True
		
		# The output would be a dense Tensor of shape `(2,)`, with edit distances
		normalized by 'truth' lengths.
		# output => array([0., 0.5], dtype=float32)
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
		Computes the eigen decomposition of a batch of matrices.
		
		The eigenvalues
		and eigenvectors for a non-Hermitian matrix in general are complex. The
		eigenvectors are not guaranteed to be linearly independent.
		
		Computes the eigenvalues and right eigenvectors of the innermost
		N-by-N matrices in `tensor` such that
		`tensor[...,:,:] * v[..., :,i] = e[..., i] * v[...,:,i]`, for i=0...N-1.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`. Only the lower triangular part of
		    each inner inner matrix is referenced.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. Sorted in non-decreasing order.
		  v: Eigenvectors. Shape is `[..., N, N]`. The columns of the inner most
		    matrices contain eigenvectors of the corresponding matrices in `tensor`
	**/
	static public function eig(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigenvalues of one or more matrices.
		
		Note: If your program backpropagates through this function, you should replace
		it with a call to tf.linalg.eig (possibly ignoring the second output) to
		avoid computing the eigen decomposition twice. This is because the
		eigenvectors are used to compute the gradient w.r.t. the eigenvalues. See
		_SelfAdjointEigV2Grad in linalg_grad.py.
		
		Args:
		  tensor: `Tensor` of shape `[..., N, N]`.
		  name: string, optional name of the operation.
		
		Returns:
		  e: Eigenvalues. Shape is `[..., N]`. The vector `e[..., :]` contains the `N`
		    eigenvalues of `tensor[..., :, :]`.
	**/
	static public function eigvals(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tensor contraction over specified indices and outer product.
		
		Einsum allows defining Tensors by defining their element-wise computation.
		This computation is defined by `equation`, a shorthand form based on Einstein
		summation. As an example, consider multiplying two matrices A and B to form a
		matrix C.  The elements of C are given by:
		
		$$ C_{i,k} = \sum_j A_{i,j} B_{j,k} $$
		
		or
		
		```
		C[i,k] = sum_j A[i,j] * B[j,k]
		```
		
		The corresponding einsum `equation` is:
		
		```
		ij,jk->ik
		```
		
		In general, to convert the element-wise equation into the `equation` string,
		use the following procedure (intermediate strings for matrix multiplication
		example provided in parentheses):
		
		1. remove variable names, brackets, and commas, (`ik = sum_j ij * jk`)
		2. replace "*" with ",", (`ik = sum_j ij , jk`)
		3. drop summation signs, and (`ik = ij, jk`)
		4. move the output to the right, while replacing "=" with "->". (`ij,jk->ik`)
		
		Note: If the output indices are not specified repeated indices are summed.
		So `ij,jk->ik` can be simplified to `ij,jk`.
		
		Many common operations can be expressed in this way.  For example:
		
		**Matrix multiplication**
		
		>>> m0 = tf.random.normal(shape=[2, 3])
		>>> m1 = tf.random.normal(shape=[3, 5])
		>>> e = tf.einsum('ij,jk->ik', m0, m1)
		>>> # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		Repeated indices are summed if the output indices are not specified.
		
		>>> e = tf.einsum('ij,jk', m0, m1)  # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		
		**Dot product**
		
		>>> u = tf.random.normal(shape=[5])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,i->', u, v)  # output = sum_i u[i]*v[i]
		>>> print(e.shape)
		()
		
		**Outer product**
		
		>>> u = tf.random.normal(shape=[3])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,j->ij', u, v)  # output[i,j] = u[i]*v[j]
		>>> print(e.shape)
		(3, 5)
		
		**Transpose**
		
		>>> m = tf.ones(2,3)
		>>> e = tf.einsum('ij->ji', m0)  # output[j,i] = m0[i,j]
		>>> print(e.shape)
		(3, 2)
		
		**Diag**
		
		>>> m = tf.reshape(tf.range(9), [3,3])
		>>> diag = tf.einsum('ii->i', m)
		>>> print(diag.shape)
		(3,)
		
		**Trace**
		
		>>> # Repeated indices are summed.
		>>> trace = tf.einsum('ii', m)  # output[j,i] = trace(m) = sum_i m[i, i]
		>>> assert trace == sum(diag)
		>>> print(trace.shape)
		()
		
		**Batch matrix multiplication**
		
		>>> s = tf.random.normal(shape=[7,5,3])
		>>> t = tf.random.normal(shape=[7,3,2])
		>>> e = tf.einsum('bij,bjk->bik', s, t)
		>>> # output[a,i,k] = sum_j s[a,i,j] * t[a, j, k]
		>>> print(e.shape)
		(7, 5, 2)
		
		This method does not support broadcasting on named-axes. All axes with
		matching labels should have the same length. If you have length-1 axes,
		use `tf.squeseze` or `tf.reshape` to eliminate them.
		
		To write code that is agnostic to the number of indices in the input
		use an ellipsis. The ellipsis is a placeholder for "whatever other indices
		fit here".
		
		For example, to perform a NumPy-style broadcasting-batch-matrix multiplication
		where the matrix multiply acts on the last two axes of the input, use:
		
		>>> s = tf.random.normal(shape=[11, 7, 5, 3])
		>>> t = tf.random.normal(shape=[11, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Einsum **will** broadcast over axes covered by the ellipsis.
		
		>>> s = tf.random.normal(shape=[11, 1, 5, 3])
		>>> t = tf.random.normal(shape=[1, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Args:
		  equation: a `str` describing the contraction, in the same format as
		    `numpy.einsum`.
		  *inputs: the inputs to contract (each one a `Tensor`), whose shapes should
		    be consistent with `equation`.
		  **kwargs:
		    - optimize: Optimization strategy to use to find contraction path using
		      opt_einsum. Must be 'greedy', 'optimal', 'branch-2', 'branch-all' or
		        'auto'. (optional, default: 'greedy').
		    - name: A name for the operation (optional).
		
		Returns:
		  The contracted `Tensor`, with shape determined by `equation`.
		
		Raises:
		  ValueError: If
		    - the format of `equation` is incorrect,
		    - number of inputs or their shapes are inconsistent with `equation`.
	**/
	static public function einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Enables TensorFlow 2.x behaviors.
		
		This function can be called at the beginning of the program (before `Tensors`,
		`Graphs` or other structures have been created, and before devices have been
		initialized. It switches all global behaviors that are different between
		TensorFlow 1.x and 2.x to behave as intended for 2.x.
		
		This function is called in the main TensorFlow `__init__.py` file, user should
		not need to call it, except during complex migrations.
		
		@compatibility(TF2)
		This function is not necessary if you are using TF2. V2 behavior is enabled by
		default.
		@end_compatibility
	**/
	static public function enable_v2_behavior():Dynamic;
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
		Returns the truth value of (x == y) element-wise.
		
		Performs a [broadcast](
		https://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) with the
		arguments and then an element-wise equality comparison, returning a Tensor of
		boolean values.
		
		For example:
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant(2)
		>>> tf.math.equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True,  False])>
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant([2, 4])
		>>> tf.math.equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True,  True])>
		
		Args:
		  x: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  y: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the same size as that of x or y.
		
		Raises:
		  `tf.errors.InvalidArgumentError`: If shapes of arguments are incompatible
	**/
	static public function equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks whether the current thread has eager execution enabled.
		
		Eager execution is enabled by default and this API returns `True`
		in most of cases. However, this API might return `False` in the following use
		cases.
		
		*  Executing inside `tf.function`, unless under `tf.init_scope` or
		   `tf.config.run_functions_eagerly(True)` is previously called.
		*  Executing inside a transformation function for `tf.dataset`.
		*  `tf.compat.v1.disable_eager_execution()` is called.
		
		General case:
		
		>>> print(tf.executing_eagerly())
		True
		
		Inside `tf.function`:
		
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		False
		
		Inside `tf.function` after `tf.config.run_functions_eagerly(True)` is called:
		
		>>> tf.config.run_functions_eagerly(True)
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		True
		>>> tf.config.run_functions_eagerly(False)
		
		Inside a transformation function for `tf.dataset`:
		
		>>> def data_fn(x):
		...   print(tf.executing_eagerly())
		...   return x
		>>> dataset = tf.data.Dataset.range(100)
		>>> dataset = dataset.map(data_fn)
		False
		
		Returns:
		  `True` if the current thread has eager execution enabled.
	**/
	static public function executing_eagerly():Dynamic;
	/**
		Computes exponential of x element-wise.  \\(y = e^x\\).
		
		This function computes the exponential of the input tensor element-wise.
		i.e. `math.exp(x)` or \\(e^x\\), where `x` is the input tensor.
		\\(e\\) denotes Euler's number and is approximately equal to 2.718281.
		Output is positive for any real input.
		
		>>> x = tf.constant(2.0)
		>>> tf.math.exp(x)
		<tf.Tensor: shape=(), dtype=float32, numpy=7.389056>
		
		>>> x = tf.constant([2.0, 8.0])
		>>> tf.math.exp(x)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([   7.389056, 2980.958   ], dtype=float32)>
		
		For complex numbers, the exponential value is calculated as
		$$
		e^{x+iy} = {e^x} {e^{iy}} = {e^x} ({\cos (y) + i \sin (y)})
		$$
		
		For `1+1j` the value would be computed as:
		$$
		e^1 (\cos (1) + i \sin (1)) = 2.7182817 \times (0.5403023+0.84147096j)
		$$
		
		>>> x = tf.constant(1 + 1j)
		>>> tf.math.exp(x)
		<tf.Tensor: shape=(), dtype=complex128,
		numpy=(1.4686939399158851+2.2873552871788423j)>
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor`. Has the same type as `x`.
		
		@compatibility(numpy)
		Equivalent to np.exp
		@end_compatibility
	**/
	static public function exp(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a tensor with a length 1 axis inserted at index `axis`.
		
		Given a tensor `input`, this operation inserts a dimension of length 1 at the
		dimension index `axis` of `input`'s shape. The dimension index follows Python
		indexing rules: It's zero-based, a negative index it is counted backward
		from the end.
		
		This operation is useful to:
		
		* Add an outer "batch" dimension to a single element.
		* Align axes for broadcasting.
		* To add an inner vector length axis to a tensor of scalars.
		
		For example:
		
		If you have a single image of shape `[height, width, channels]`:
		
		>>> image = tf.zeros([10,10,3])
		
		You can add an outer `batch` axis by passing `axis=0`:
		
		>>> tf.expand_dims(image, axis=0).shape.as_list()
		[1, 10, 10, 3]
		
		The new axis location matches Python `list.insert(axis, 1)`:
		
		>>> tf.expand_dims(image, axis=1).shape.as_list()
		[10, 1, 10, 3]
		
		Following standard Python indexing rules, a negative `axis` counts from the
		end so `axis=-1` adds an inner most dimension:
		
		>>> tf.expand_dims(image, -1).shape.as_list()
		[10, 10, 3, 1]
		
		This operation requires that `axis` is a valid index for `input.shape`,
		following Python indexing rules:
		
		```
		-1-tf.rank(input) <= axis <= tf.rank(input)
		```
		
		This operation is related to:
		
		* `tf.squeeze`, which removes dimensions of size 1.
		* `tf.reshape`, which provides more flexible reshaping capability.
		* `tf.sparse.expand_dims`, which provides this functionality for
		  `tf.SparseTensor`
		
		Args:
		  input: A `Tensor`.
		  axis: Integer specifying the dimension index at which to expand the
		    shape of `input`. Given an input of D dimensions, `axis` must be in range
		    `[-(D+1), D]` (inclusive).
		  name: Optional string. The name of the output `Tensor`.
		
		Returns:
		  A tensor with the same data as `input`, with an additional dimension
		  inserted at the index specified by `axis`.
		
		Raises:
		  TypeError: If `axis` is not specified.
		  InvalidArgumentError: If `axis` is out of range `[-(D+1), D]`.
	**/
	static public function expand_dims(input:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract `patches` from `input` and put them in the `"depth"` output dimension. 3D extension of `extract_image_patches`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    5-D Tensor with shape `[batch, in_planes, in_rows, in_cols, depth]`.
		  ksizes: A list of `ints` that has length `>= 5`.
		    The size of the sliding window for each dimension of `input`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D of length 5. How far the centers of two consecutive patches are in
		    `input`. Must be: `[1, stride_planes, stride_rows, stride_cols, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		
		    The size-related attributes are specified as follows:
		
		    ```python
		    ksizes = [1, ksize_planes, ksize_rows, ksize_cols, 1]
		    strides = [1, stride_planes, strides_rows, strides_cols, 1]
		    ```
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function extract_volume_patches(input:Dynamic, ksizes:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct an identity matrix, or a batch of matrices.
		
		See also `tf.ones`, `tf.zeros`, `tf.fill`, `tf.one_hot`.
		
		```python
		# Construct one identity matrix.
		tf.eye(2)
		==> [[1., 0.],
		     [0., 1.]]
		
		# Construct a batch of 3 identity matrices, each 2 x 2.
		# batch_identity[i, :, :] is a 2 x 2 identity matrix, i = 0, 1, 2.
		batch_identity = tf.eye(2, batch_shape=[3])
		
		# Construct one 2 x 3 "identity" matrix
		tf.eye(2, num_columns=3)
		==> [[ 1.,  0.,  0.],
		     [ 0.,  1.,  0.]]
		```
		
		Args:
		  num_rows: Non-negative `int32` scalar `Tensor` giving the number of rows
		    in each batch matrix.
		  num_columns: Optional non-negative `int32` scalar `Tensor` giving the number
		    of columns in each batch matrix.  Defaults to `num_rows`.
		  batch_shape:  A list or tuple of Python integers or a 1-D `int32` `Tensor`.
		    If provided, the returned `Tensor` will have leading batch dimensions of
		    this shape.
		  dtype:  The type of an element in the resulting `Tensor`
		  name:  A name for this `Op`.  Defaults to "eye".
		
		Returns:
		  A `Tensor` of shape `batch_shape + [num_rows, num_columns]`
	**/
	static public function eye(num_rows:Dynamic, ?num_columns:Dynamic, ?batch_shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor filled with a scalar value.
		
		See also `tf.ones`, `tf.zeros`, `tf.one_hot`, `tf.eye`.
		
		This operation creates a tensor of shape `dims` and fills it with `value`.
		
		For example:
		
		>>> tf.fill([2, 3], 9)
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[9, 9, 9],
		       [9, 9, 9]], dtype=int32)>
		
		`tf.fill` evaluates at graph runtime and supports dynamic shapes based on
		other runtime `tf.Tensors`, unlike `tf.constant(value, shape=dims)`, which
		embeds the value as a `Const` node.
		
		Args:
		  dims: A 1-D sequence of non-negative numbers. Represents the shape of the
		    output `tf.Tensor`. Entries should be of type: `int32`, `int64`.
		  value: A value to fill the returned `tf.Tensor`.
		  name: Optional string. The name of the output `tf.Tensor`.
		
		Returns:
		  A `tf.Tensor` with shape `dims` and the same dtype as `value`.
		
		Raises:
		  InvalidArgumentError: `dims` contains negative entries.
		  NotFoundError: `dims` contains non-integer entries.
		
		@compatibility(numpy)
		Similar to `np.full`. In `numpy`, more parameters are supported. Passing a
		number argument as the shape (`np.full(5, value)`) is valid in `numpy` for
		specifying a 1-D shaped result, while TensorFlow does not support this syntax.
		@end_compatibility
	**/
	static public function fill(dims:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates fingerprint values.
		
		Generates fingerprint values of `data`.
		
		Fingerprint op considers the first dimension of `data` as the batch dimension,
		and `output[i]` contains the fingerprint value generated from contents in
		`data[i, ...]` for all `i`.
		
		Fingerprint op writes fingerprint values as byte arrays. For example, the
		default method `farmhash64` generates a 64-bit fingerprint value at a time.
		This 8-byte value is written out as an `tf.uint8` array of size 8, in
		little-endian order.
		
		For example, suppose that `data` has data type `tf.int32` and shape (2, 3, 4),
		and that the fingerprint method is `farmhash64`. In this case, the output
		shape is (2, 8), where 2 is the batch dimension size of `data`, and 8 is the
		size of each fingerprint value in bytes. `output[0, :]` is generated from
		12 integers in `data[0, :, :]` and similarly `output[1, :]` is generated from
		other 12 integers in `data[1, :, :]`.
		
		Note that this op fingerprints the raw underlying buffer, and it does not
		fingerprint Tensor's metadata such as data type and/or shape. For example, the
		fingerprint values are invariant under reshapes and bitcasts as long as the
		batch dimension remain the same:
		
		```python
		tf.fingerprint(data) == tf.fingerprint(tf.reshape(data, ...))
		tf.fingerprint(data) == tf.fingerprint(tf.bitcast(data, ...))
		```
		
		For string data, one should expect `tf.fingerprint(data) !=
		tf.fingerprint(tf.string.reduce_join(data))` in general.
		
		Args:
		  data: A `Tensor`. Must have rank 1 or higher.
		  method: A `Tensor` of type `tf.string`. Fingerprint method used by this op.
		    Currently available method is `farmhash64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A two-dimensional `Tensor` of type `tf.uint8`. The first dimension equals to
		  `data`'s first dimension, and the second dimension size depends on the
		  fingerprint algorithm.
	**/
	static public function fingerprint(data:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	static public var float16 : Dynamic;
	static public var float32 : Dynamic;
	static public var float64 : Dynamic;
	/**
		Returns element-wise largest integer not greater than x.
		
		Both input range is `(-inf, inf)` and the
		output range consists of all integer values.
		
		For example:
		
		>>> x = tf.constant([1.3324, -1.5, 5.555, -2.532, 0.99, float("inf")])
		>>> tf.floor(x).numpy()
		array([ 1., -2.,  5., -3.,  0., inf], dtype=float32)
		
		Args:
		  x:  A `Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as x.
	**/
	static public function floor(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldl on the list of tensors unpacked from `elems` on dimension 0. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.foldl(fn, elems, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.foldl(fn, elems))
		
		This foldl operator repeatedly applies the callable `fn` to a sequence
		of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn, and the second is the value at the current
		position of `elems`. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is fn(initializer, values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors, resulting from applying
		  `fn` consecutively to the list of tensors unpacked from `elems`, from first
		  to last.
		
		Raises:
		  TypeError: if `fn` is not callable.
		
		Example:
		  ```python
		  elems = tf.constant([1, 2, 3, 4, 5, 6])
		  sum = foldl(lambda a, x: a + x, elems)
		  # sum == 21
		  ```
	**/
	static public function foldl(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		foldr on the list of tensors unpacked from `elems` on dimension 0. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.foldr(fn, elems, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.foldr(fn, elems))
		
		This foldr operator repeatedly applies the callable `fn` to a sequence
		of elements from last to first. The elements are made of the tensors
		unpacked from `elems`. The callable fn takes two tensors as arguments.
		The first argument is the accumulated value computed from the preceding
		invocation of fn, and the second is the value at the current position of
		`elems`. If `initializer` is None, `elems` must contain at least one element,
		and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `fn(initializer, values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Args:
		  fn: The callable to be performed.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    as the initial value for the accumulator.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors, resulting from applying
		  `fn` consecutively to the list of tensors unpacked from `elems`, from last
		  to first.
		
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
		Compiles a function into a callable TensorFlow graph. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(experimental_compile)`. They will be removed in a future version.
		Instructions for updating:
		experimental_compile is deprecated, use jit_compile instead
		
		`tf.function` constructs a `tf.types.experimental.GenericFunction` that
		executes a TensorFlow graph (`tf.Graph`) created by trace-compiling the
		TensorFlow operations in `func`. More information on the topic can be found
		in [Introduction to Graphs and tf.function]
		(https://www.tensorflow.org/guide/intro_to_graphs).
		
		See [Better Performance with tf.function]
		(https://www.tensorflow.org/guide/function) for tips on performance and
		known limitations.
		
		Example usage:
		
		>>> @tf.function
		... def f(x, y):
		...   return x ** 2 + y
		>>> x = tf.constant([2, 3])
		>>> y = tf.constant([3, -2])
		>>> f(x, y)
		<tf.Tensor: ... numpy=array([7, 7], ...)>
		
		The trace-compilation allows non-TensorFlow operations to execute, but under
		special conditions. In general, only TensorFlow operations are guaranteed to
		run and create fresh results whenever the `GenericFunction` is called.
		
		## Features
		
		`func` may use data-dependent control flow, including `if`, `for`, `while`
		`break`, `continue` and `return` statements:
		
		>>> @tf.function
		... def f(x):
		...   if tf.reduce_sum(x) > 0:
		...     return x * x
		...   else:
		...     return -x // 2
		>>> f(tf.constant(-2))
		<tf.Tensor: ... numpy=1>
		
		`func`'s closure may include `tf.Tensor` and `tf.Variable` objects:
		
		>>> @tf.function
		... def f():
		...   return x ** 2 + y
		>>> x = tf.constant([-2, -3])
		>>> y = tf.Variable([3, -2])
		>>> f()
		<tf.Tensor: ... numpy=array([7, 7], ...)>
		
		`func` may also use ops with side effects, such as `tf.print`, `tf.Variable`
		and others:
		
		>>> v = tf.Variable(1)
		>>> @tf.function
		... def f(x):
		...   for i in tf.range(x):
		...     v.assign_add(i)
		>>> f(3)
		>>> v
		<tf.Variable ... numpy=4>
		
		Important: Any Python side-effects (appending to a list, printing with
		`print`, etc) will only happen once, when `func` is traced. To have
		side-effects executed into your `tf.function` they need to be written
		as TF ops:
		
		>>> l = []
		>>> @tf.function
		... def f(x):
		...   for i in x:
		...     l.append(i + 1)    # Caution! Will only happen once when tracing
		>>> f(tf.constant([1, 2, 3]))
		>>> l
		[<tf.Tensor ...>]
		
		Instead, use TensorFlow collections like `tf.TensorArray`:
		
		>>> @tf.function
		... def f(x):
		...   ta = tf.TensorArray(dtype=tf.int32, size=0, dynamic_size=True)
		...   for i in range(len(x)):
		...     ta = ta.write(i, x[i] + 1)
		...   return ta.stack()
		>>> f(tf.constant([1, 2, 3]))
		<tf.Tensor: ..., numpy=array([2, 3, 4], ...)>
		
		## `tf.function` creates polymorphic callables
		
		Internally, `tf.types.experimental.GenericFunction` may contain multiple
		`tf.types.experimental.ConcreteFunction`s, each specialized to arguments with
		different data types or shapes, since TensorFlow can perform more
		optimizations on graphs of specific shapes, dtypes and values of constant
		arguments. `tf.function` treats any pure Python values as opaque objects (best
		thought of as compile-time constants), and builds a separate `tf.Graph` for
		each set of Python arguments that it encounters.
		For more information, see the
		[tf.function guide](https://www.tensorflow.org/guide/function#rules_of_tracing)
		
		Executing a `GenericFunction` will select and execute the appropriate
		`ConcreteFunction` based on the argument types and values.
		
		To obtain an individual `ConcreteFunction`, use the
		`GenericFunction.get_concrete_function` method. It can be called with the
		same arguments as `func` and returns a
		`tf.types.experimental.ConcreteFunction`. `ConcreteFunction`s are backed by a
		single `tf.Graph`:
		
		>>> @tf.function
		... def f(x):
		...   return x + 1
		>>> isinstance(f.get_concrete_function(1).graph, tf.Graph)
		True
		
		`ConcreteFunction`s can be executed just like `GenericFunction`s, but their
		input is resticted to the types to which they're specialized.
		
		## Retracing
		
		`ConcreteFunctions` are built (traced) on the fly, as the `GenericFunction` is
		called with new TensorFlow types or shapes, or with new Python values as
		arguments. When `GenericFunction` builds a new trace, it is said that `func`
		is retraced. Retracing is a frequent performance concern for `tf.function` as
		it can be considerably slower than executing a graph that's already been
		traced. It is ideal to minimize the amount of retracing in your code.
		
		Caution: Passing python scalars or lists as arguments to `tf.function` will
		usually retrace. To avoid this, pass numeric arguments as Tensors whenever
		possible:
		
		>>> @tf.function
		... def f(x):
		...   return tf.abs(x)
		>>> f1 = f.get_concrete_function(1)
		>>> f2 = f.get_concrete_function(2)  # Slow - compiles new graph
		>>> f1 is f2
		False
		>>> f1 = f.get_concrete_function(tf.constant(1))
		>>> f2 = f.get_concrete_function(tf.constant(2))  # Fast - reuses f1
		>>> f1 is f2
		True
		
		Python numerical arguments should only be used when they take few distinct
		values, such as hyperparameters like the number of layers in a neural network.
		
		## Input signatures
		
		For Tensor arguments, `GenericFunction`creates a new `ConcreteFunction` for
		every unique set of input shapes and datatypes. The example below creates two
		separate `ConcreteFunction`s, each specialized to a different shape:
		
		>>> @tf.function
		... def f(x):
		...   return x + 1
		>>> vector = tf.constant([1.0, 1.0])
		>>> matrix = tf.constant([[3.0]])
		>>> f.get_concrete_function(vector) is f.get_concrete_function(matrix)
		False
		
		An "input signature" can be optionally provided to `tf.function` to control
		this process. The input signature specifies the shape and type of each
		Tensor argument to the function using a `tf.TensorSpec` object. More general
		shapes can be used. This ensures only one `ConcreteFunction` is created, and
		restricts the `GenericFunction` to the specified shapes and types. It is
		an effective way to limit retracing when Tensors have dynamic shapes.
		
		>>> @tf.function(
		...     input_signature=[tf.TensorSpec(shape=None, dtype=tf.float32)])
		... def f(x):
		...   return x + 1
		>>> vector = tf.constant([1.0, 1.0])
		>>> matrix = tf.constant([[3.0]])
		>>> f.get_concrete_function(vector) is f.get_concrete_function(matrix)
		True
		
		## Variables may only be created once
		
		`tf.function` only allows creating new `tf.Variable` objects when it is called
		for the first time:
		
		>>> class MyModule(tf.Module):
		...   def __init__(self):
		...     self.v = None
		...
		...   @tf.function
		...   def __call__(self, x):
		...     if self.v is None:
		...       self.v = tf.Variable(tf.ones_like(x))
		...     return self.v * x
		
		In general, it is recommended to create `tf.Variable`s outside of
		`tf.function`.
		In simple cases, persisting state across `tf.function` boundaries may be
		implemented using a pure functional style in which state is represented by
		`tf.Tensor`s passed as arguments and returned as return values.
		
		Contrast the two styles below:
		
		>>> state = tf.Variable(1)
		>>> @tf.function
		... def f(x):
		...   state.assign_add(x)
		>>> f(tf.constant(2))  # Non-pure functional style
		>>> state
		<tf.Variable ... numpy=3>
		
		>>> state = tf.constant(1)
		>>> @tf.function
		... def f(state, x):
		...   state += x
		...   return state
		>>> state = f(state, tf.constant(2))  # Pure functional style
		>>> state
		<tf.Tensor: ... numpy=3>
		
		## Python operations execute only once per trace
		
		`func` may contain TensorFlow operations mixed with pure Python operations.
		However, when the function is executed, only the TensorFlow operations will
		run. The Python operations run only once, at trace time. If TensorFlow
		operations depend on results from Pyhton operations, those results will be
		frozen into the graph.
		
		>>> @tf.function
		... def f(a, b):
		...   print('this runs at trace time; a is', a, 'and b is', b)
		...   return b
		>>> f(1, tf.constant(1))
		this runs at trace time; a is 1 and b is Tensor("...", shape=(), dtype=int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		>>> f(1, tf.constant(2))
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		>>> f(2, tf.constant(1))
		this runs at trace time; a is 2 and b is Tensor("...", shape=(), dtype=int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		>>> f(2, tf.constant(2))
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		## Using type annotations to improve performance
		
		'experimental_follow_type_hints` can be used along with type annotations to
		reduce retracing by automatically casting any Python values to `tf.Tensor`
		(something that is not done by default, unless you use input signatures).
		
		>>> @tf.function(experimental_follow_type_hints=True)
		... def f_with_hints(x: tf.Tensor):
		...   print('Tracing')
		...   return x
		>>> @tf.function(experimental_follow_type_hints=False)
		... def f_no_hints(x: tf.Tensor):
		...   print('Tracing')
		...   return x
		>>> f_no_hints(1)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		>>> f_no_hints(2)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		>>> f_with_hints(1)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		>>> f_with_hints(2)
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		Args:
		  func: the function to be compiled. If `func` is None, `tf.function` returns
		    a decorator that can be invoked with a single argument - `func`. In other
		    words, `tf.function(input_signature=...)(func)` is equivalent to
		    `tf.function(func, input_signature=...)`. The former can be used as
		    decorator.
		  input_signature: A possibly nested sequence of `tf.TensorSpec` objects
		    specifying the shapes and dtypes of the Tensors that will be supplied to
		    this function. If `None`, a separate function is instantiated for each
		    inferred input signature.  If input_signature is specified, every input to
		    `func` must be a `Tensor`, and `func` cannot accept `**kwargs`.
		  autograph: Whether autograph should be applied on `func` before tracing a
		    graph. Data-dependent control flow requires `autograph=True`. For more
		    information, see the [tf.function and AutoGraph guide](
		    https://www.tensorflow.org/guide/function#autograph_transformations).
		  jit_compile: If `True`, compiles the function using
		    [XLA](https://tensorflow.org/xla). XLA performs compiler optimizations,
		    such as fusion, and attempts to emit more efficient code. This may
		    drastically improve the performance. If set to `True`,
		    the whole function needs to be compilable by XLA, or an
		    `errors.InvalidArgumentError` is thrown.
		    If `None` (default), compiles the function with XLA when running on TPU
		    and goes through the regular function execution path when running on
		    other devices.
		    If `False`, executes the function without XLA compilation.  Set this value
		    to `False` when directly running a multi-device function on TPUs (e.g. two
		    TPU cores, one TPU core and its host CPU).
		    Not all functions are compilable, see a list of
		    [sharp corners](https://tensorflow.org/xla/known_issues).
		  experimental_implements: If provided, contains a name of a "known" function
		    this implements. For example "mycompany.my_recurrent_cell".
		    This is stored as an attribute in inference function,
		    which can then be detected when processing serialized function.
		    See [standardizing composite ops](https://github.com/tensorflow/community/blob/master/rfcs/20190610-standardizing-composite_ops.md)  # pylint: disable=line-too-long
		    for details.  For an example of utilizing this attribute see this
		    [example](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/compiler/mlir/lite/transforms/prepare_composite_functions_tf.cc)
		    The code above automatically detects and substitutes function that
		    implements "embedded_matmul" and allows TFLite to substitute its own
		    implementations. For instance, a tensorflow user can use this
		     attribute to mark that their function also implements
		    `embedded_matmul` (perhaps more efficiently!)
		    by specifying it using this parameter:
		    `@tf.function(experimental_implements="embedded_matmul")`
		    This can either be specified as just the string name of the function or
		    a NameAttrList corresponding to a list of key-value attributes associated
		    with the function name. The name of the function will be in the 'name'
		    field of the NameAttrList. To define a formal TF op for this function
		    implements, try the experimental [composite TF](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/compiler/mlir/tfr)
		    project.
		  experimental_autograph_options: Optional tuple of
		    `tf.autograph.experimental.Feature` values.
		  experimental_relax_shapes: When True, `tf.function` may generate fewer,
		    graphs that are less specialized on input shapes.
		  experimental_compile: Deprecated alias to 'jit_compile'.
		  experimental_follow_type_hints: When True, the function may use type
		    annotations from `func` to optimize the tracing performance. For example,
		    arguments annotated with `tf.Tensor` will automatically be converted
		    to a Tensor.
		
		Returns:
		   If `func` is not None, returns a `tf.types.experimental.GenericFunction`.
		   If `func` is None, returns a decorator that, when invoked with a single
		   `func` argument, returns a `tf.types.experimental.GenericFunction`.
		
		Raises:
		   `ValueError` when attempting to use `jit_compile=True`, but XLA support is
		   not available.
	**/
	@:native("function")
	static public function _function(?func:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?jit_compile:Dynamic, ?experimental_implements:Dynamic, ?experimental_autograph_options:Dynamic, ?experimental_relax_shapes:Dynamic, ?experimental_compile:Dynamic, ?experimental_follow_type_hints:Dynamic):Dynamic;
	/**
		Gather slices from params axis `axis` according to indices. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(validate_indices)`. They will be removed in a future version.
		Instructions for updating:
		The `validate_indices` argument has no effect. Indices are always validated on CPU and never validated on GPU.
		
		Gather slices from `params` axis `axis` according to `indices`.  `indices`
		must be an integer tensor of any dimension (often 1-D).
		
		`Tensor.__getitem__` works for scalars, `tf.newaxis`, and
		[python slices](https://numpy.org/doc/stable/reference/arrays.indexing.html#basic-slicing-and-indexing)
		
		`tf.gather` extends indexing to handle tensors of indices.
		
		In the simplest case it's identical to scalar indexing:
		
		>>> params = tf.constant(['p0', 'p1', 'p2', 'p3', 'p4', 'p5'])
		>>> params[3].numpy()
		b'p3'
		>>> tf.gather(params, 3).numpy()
		b'p3'
		
		The most common case is to pass a single axis tensor of indices (this
		can't be expressed as a python slice because the indices are not sequential):
		
		>>> indices = [2, 0, 2, 5]
		>>> tf.gather(params, indices).numpy()
		array([b'p2', b'p0', b'p2', b'p5'], dtype=object)
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/Gather.png"
		alt>
		</div>
		
		The indices can have any shape. When the `params` has 1 axis, the
		output shape is equal to the input shape:
		
		>>> tf.gather(params, [[2, 0], [2, 5]]).numpy()
		array([[b'p2', b'p0'],
		       [b'p2', b'p5']], dtype=object)
		
		The `params` may also have any shape. `gather` can select slices
		across any axis depending on the `axis` argument (which defaults to 0).
		Below it is used to gather first rows, then columns from a matrix:
		
		>>> params = tf.constant([[0, 1.0, 2.0],
		...                       [10.0, 11.0, 12.0],
		...                       [20.0, 21.0, 22.0],
		...                       [30.0, 31.0, 32.0]])
		>>> tf.gather(params, indices=[3,1]).numpy()
		array([[30., 31., 32.],
		       [10., 11., 12.]], dtype=float32)
		>>> tf.gather(params, indices=[2,1], axis=1).numpy()
		array([[ 2.,  1.],
		       [12., 11.],
		       [22., 21.],
		       [32., 31.]], dtype=float32)
		
		More generally: The output shape has the same shape as the input, with the
		indexed-axis replaced by the shape of the indices.
		
		>>> def result_shape(p_shape, i_shape, axis=0):
		...   return p_shape[:axis] + i_shape + p_shape[axis+1:]
		>>>
		>>> result_shape([1, 2, 3], [], axis=1)
		[1, 3]
		>>> result_shape([1, 2, 3], [7], axis=1)
		[1, 7, 3]
		>>> result_shape([1, 2, 3], [7, 5], axis=1)
		[1, 7, 5, 3]
		
		Here are some examples:
		
		>>> params.shape.as_list()
		[4, 3]
		>>> indices = tf.constant([[0, 2]])
		>>> tf.gather(params, indices=indices, axis=0).shape.as_list()
		[1, 2, 3]
		>>> tf.gather(params, indices=indices, axis=1).shape.as_list()
		[4, 1, 2]
		
		>>> params = tf.random.normal(shape=(5, 6, 7, 8))
		>>> indices = tf.random.uniform(shape=(10, 11), maxval=7, dtype=tf.int32)
		>>> result = tf.gather(params, indices, axis=2)
		>>> result.shape.as_list()
		[5, 6, 10, 11, 8]
		
		This is because each index takes a slice from `params`, and
		places it at the corresponding location in the output. For the above example
		
		>>> # For any location in indices
		>>> a, b = 0, 1
		>>> tf.reduce_all(
		...     # the corresponding slice of the result
		...     result[:, :, a, b, :] ==
		...     # is equal to the slice of `params` along `axis` at the index.
		...     params[:, :, indices[a, b], :]
		... ).numpy()
		True
		
		### Batching:
		
		The `batch_dims` argument lets you gather different items from each element
		of a batch.
		
		Using `batch_dims=1` is equivalent to having an outer loop over the first
		axis of `params` and `indices`:
		
		>>> params = tf.constant([
		...     [0, 0, 1, 0, 2],
		...     [3, 0, 0, 0, 4],
		...     [0, 5, 0, 6, 0]])
		>>> indices = tf.constant([
		...     [2, 4],
		...     [0, 4],
		...     [1, 3]])
		
		>>> tf.gather(params, indices, axis=1, batch_dims=1).numpy()
		array([[1, 2],
		       [3, 4],
		       [5, 6]], dtype=int32)
		
		This is is equivalent to:
		
		>>> def manually_batched_gather(params, indices, axis):
		...   batch_dims=1
		...   result = []
		...   for p,i in zip(params, indices):
		...     r = tf.gather(p, i, axis=axis-batch_dims)
		...     result.append(r)
		...   return tf.stack(result)
		>>> manually_batched_gather(params, indices, axis=1).numpy()
		array([[1, 2],
		       [3, 4],
		       [5, 6]], dtype=int32)
		
		Higher values of `batch_dims` are equivalent to multiple nested loops over
		the outer axes of `params` and `indices`. So the overall shape function is
		
		>>> def batched_result_shape(p_shape, i_shape, axis=0, batch_dims=0):
		...   return p_shape[:axis] + i_shape[batch_dims:] + p_shape[axis+1:]
		>>>
		>>> batched_result_shape(
		...     p_shape=params.shape.as_list(),
		...     i_shape=indices.shape.as_list(),
		...     axis=1,
		...     batch_dims=1)
		[3, 2]
		
		>>> tf.gather(params, indices, axis=1, batch_dims=1).shape.as_list()
		[3, 2]
		
		This comes up naturally if you need to use the indices of an operation like
		`tf.argsort`, or `tf.math.top_k` where the last dimension of the indices
		indexes into the last dimension of input, at the corresponding location.
		In this case you can use `tf.gather(values, indices, batch_dims=-1)`.
		
		See also:
		
		* `tf.Tensor.__getitem__`: The direct tensor index operation (`t[]`), handles
		  scalars and python-slices `tensor[..., 7, 1:-1]`
		* `tf.scatter`: A collection of operations similar to `__setitem__`
		  (`t[i] = x`)
		* `tf.gather_nd`: An operation similar to `tf.gather` but gathers across
		  multiple axis at once (it can gather elements of a matrix instead of rows
		  or columns)
		* `tf.boolean_mask`, `tf.where`: Binary indexing.
		* `tf.slice` and `tf.strided_slice`: For lower level access to the
		  implementation of `__getitem__`'s python-slice handling (`t[1:-1:2]`)
		
		Args:
		  params: The `Tensor` from which to gather values. Must be at least rank
		    `axis + 1`.
		  indices: The index `Tensor`.  Must be one of the following types: `int32`,
		    `int64`. The values must be in range `[0, params.shape[axis])`.
		  validate_indices: Deprecated, does nothing. Indices are always validated on
		    CPU, never validated on GPU.
		
		    Caution: On CPU, if an out of bound index is found, an error is raised.
		    On GPU, if an out of bound index is found, a 0 is stored in the
		    corresponding output value.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`. The
		    `axis` in `params` to gather `indices` from. Must be greater than or equal
		    to `batch_dims`.  Defaults to the first non-batch dimension. Supports
		    negative indexes.
		  batch_dims: An `integer`.  The number of batch dimensions.  Must be less
		    than or equal to `rank(indices)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?axis:Dynamic, ?batch_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` into a Tensor with shape specified by `indices`.
		
		`indices` is an K-dimensional integer tensor, best thought of as a
		(K-1)-dimensional tensor of indices into `params`, where each element defines
		a slice of `params`:
		
		    output[\\(i_0, ..., i_{K-2}\\)] = params[indices[\\(i_0, ..., i_{K-2}\\)]]
		
		Whereas in `tf.gather` `indices` defines slices into the first
		dimension of `params`, in `tf.gather_nd`, `indices` defines slices into the
		first `N` dimensions of `params`, where `N = indices.shape[-1]`.
		
		The last dimension of `indices` can be at most the rank of
		`params`:
		
		    indices.shape[-1] <= params.rank
		
		The last dimension of `indices` corresponds to elements
		(if `indices.shape[-1] == params.rank`) or slices
		(if `indices.shape[-1] < params.rank`) along dimension `indices.shape[-1]`
		of `params`.  The output tensor has shape
		
		    indices.shape[:-1] + params.shape[indices.shape[-1]:]
		
		Additionally both 'params' and 'indices' can have M leading batch
		dimensions that exactly match. In this case 'batch_dims' must be M.
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, a 0 is stored in the
		corresponding output value.
		
		Some examples below.
		
		Simple indexing into a matrix:
		
		```python
		    indices = [[0, 0], [1, 1]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = ['a', 'd']
		```
		
		Slice indexing into a matrix:
		
		```python
		    indices = [[1], [0]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['c', 'd'], ['a', 'b']]
		```
		
		Indexing into a 3-tensor:
		
		```python
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
		```
		
		The examples below are for the case when only indices have leading extra
		dimensions. If both 'params' and 'indices' have leading batch dimensions, use
		the 'batch_dims' parameter to run gather_nd in batch mode.
		
		Batched indexing into a matrix:
		
		```python
		    indices = [[[0, 0]], [[0, 1]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['a'], ['b']]
		```
		
		Batched slice indexing into a matrix:
		
		```python
		    indices = [[[1]], [[0]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [[['c', 'd']], [['a', 'b']]]
		```
		
		Batched indexing into a 3-tensor:
		
		```python
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
		```
		
		Examples with batched 'params' and 'indices':
		
		```python
		    batch_dims = 1
		    indices = [[1], [0]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['c0', 'd0'], ['a1', 'b1']]
		
		    batch_dims = 1
		    indices = [[[1]], [[0]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [[['c0', 'd0']], [['a1', 'b1']]]
		
		    batch_dims = 1
		    indices = [[[1, 0]], [[0, 1]]]
		    params = [[['a0', 'b0'], ['c0', 'd0']],
		              [['a1', 'b1'], ['c1', 'd1']]]
		    output = [['c0'], ['b1']]
		```
		
		See also `tf.gather`.
		
		Args:
		  params: A `Tensor`. The tensor from which to gather values.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  name: A name for the operation (optional).
		  batch_dims: An integer or a scalar 'Tensor'. The number of batch dimensions.
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?batch_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns current full name scope specified by `tf.name_scope(...)`s.
		
		For example,
		```python
		with tf.name_scope("outer"):
		  tf.get_current_name_scope()  # "outer"
		
		  with tf.name_scope("inner"):
		    tf.get_current_name_scope()  # "outer/inner"
		```
		
		In other words, `tf.get_current_name_scope()` returns the op name prefix that
		will be prepended to, if an op is created at that place.
		
		Note that `@tf.function` resets the name scope stack as shown below.
		
		```
		with tf.name_scope("outer"):
		
		  @tf.function
		  def foo(x):
		    with tf.name_scope("inner"):
		      return tf.add(x * x)  # Op name is "inner/Add", not "outer/inner/Add"
		```
	**/
	static public function get_current_name_scope():Dynamic;
	/**
		Return TF logger instance.
	**/
	static public function get_logger():Dynamic;
	/**
		Returns the constant value of the given tensor, if efficiently calculable.
		
		This function attempts to partially evaluate the given tensor, and
		returns its value as a numpy ndarray if this succeeds.
		
		Example usage:
		
		>>> a = tf.constant(10)
		>>> tf.get_static_value(a)
		10
		>>> b = tf.constant(20)
		>>> tf.get_static_value(tf.add(a, b))
		30
		
		>>> # `tf.Variable` is not supported.
		>>> c = tf.Variable(30)
		>>> print(tf.get_static_value(c))
		None
		
		Using `partial` option is most relevant when calling `get_static_value` inside
		a `tf.function`. Setting it to `True` will return the results but for the
		values that cannot be evaluated will be `None`. For example:
		
		```python
		class Foo(object):
		  def __init__(self):
		    self.a = tf.Variable(1)
		    self.b = tf.constant(2)
		
		  @tf.function
		  def bar(self, partial):
		    packed = tf.raw_ops.Pack(values=[self.a, self.b])
		    static_val = tf.get_static_value(packed, partial=partial)
		    tf.print(static_val)
		
		f = Foo()
		f.bar(partial=True)  # `array([None, array(2, dtype=int32)], dtype=object)`
		f.bar(partial=False)  # `None`
		```
		
		Compatibility(V1): If `constant_value(tensor)` returns a non-`None` result, it
		will no longer be possible to feed a different value for `tensor`. This allows
		the result of this function to influence the graph that is constructed, and
		permits static shape optimizations.
		
		Args:
		  tensor: The Tensor to be evaluated.
		  partial: If True, the returned numpy array is allowed to have partially
		    evaluated values. Values that can't be evaluated will be None.
		
		Returns:
		  A numpy ndarray containing the constant value of the given `tensor`,
		  or None if it cannot be calculated.
		
		Raises:
		  TypeError: if tensor is not an ops.Tensor.
	**/
	static public function get_static_value(tensor:Dynamic, ?partial:Dynamic):Dynamic;
	/**
		Creates a grad-pass-through op with the forward behavior provided in f.
		
		Use this function to wrap any op, maintaining its behavior in the forward
		pass, but replacing the original op in the backward graph with an identity.
		For example:
		
		```python
		x = tf.Variable(1.0, name="x")
		z = tf.Variable(3.0, name="z")
		
		with tf.GradientTape() as tape:
		  # y will evaluate to 9.0
		  y = tf.grad_pass_through(x.assign)(z**2)
		# grads will evaluate to 6.0
		grads = tape.gradient(y, z)
		```
		
		Another example is a 'differentiable' moving average approximation, where
		gradients are allowed to flow into the last value fed to the moving average,
		but the moving average is still used for the forward pass:
		
		```python
		x = ... # Some scalar value
		# A moving average object, we don't need to know how this is implemented
		moving_average = MovingAverage()
		with backprop.GradientTape() as tape:
		  # mavg_x will evaluate to the current running average value
		  mavg_x = tf.grad_pass_through(moving_average)(x)
		grads = tape.gradient(mavg_x, x) # grads will evaluate to 1.0
		```
		
		Args:
		  f: function `f(*x)` that returns a `Tensor` or nested structure of `Tensor`
		    outputs.
		
		Returns:
		  A function `h(x)` which returns the same values as `f(x)` and whose
		  gradients are the same as those of an identity function.
	**/
	static public function grad_pass_through(f:Dynamic):Dynamic;
	/**
		Constructs symbolic derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`tf.gradients` is only valid in a graph context. In particular,
		it is valid in the context of a `tf.function` wrapper, where code
		is executing as a graph.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the derivatives of `ys` with
		respect to `xs`.  It returns a list of `Tensor` of length `len(xs)` where
		each tensor is the `sum(dy/dx)` for y in `ys` and for x in `xs`.
		
		`grad_ys` is a list of tensors of the same length as `ys` that holds
		the initial gradients for each y in `ys`.  When `grad_ys` is None,
		we fill in a tensor of '1's of the shape of y for each y in `ys`.  A
		user can provide their own initial `grad_ys` to compute the
		derivatives using a different initial gradient for each y (e.g., if
		one wanted to weight the gradient differently for each value in
		each y).
		
		`stop_gradients` is a `Tensor` or a list of tensors to be considered constant
		with respect to all `xs`. These tensors will not be backpropagated through,
		as though they had been explicitly disconnected using `stop_gradient`.  Among
		other things, this allows computation of partial derivatives as opposed to
		total derivatives. For example:
		
		>>> @tf.function
		... def example():
		...   a = tf.constant(0.)
		...   b = 2 * a
		...   return tf.gradients(a + b, [a, b], stop_gradients=[a, b])
		>>> example()
		[<tf.Tensor: shape=(), dtype=float32, numpy=1.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>]
		
		Here the partial derivatives `g` evaluate to `[1.0, 1.0]`, compared to the
		total derivatives `tf.gradients(a + b, [a, b])`, which take into account the
		influence of `a` on `b` and evaluate to `[3.0, 1.0]`.  Note that the above is
		equivalent to:
		
		>>> @tf.function
		... def example():
		...   a = tf.stop_gradient(tf.constant(0.))
		...   b = tf.stop_gradient(2 * a)
		...   return tf.gradients(a + b, [a, b])
		>>> example()
		[<tf.Tensor: shape=(), dtype=float32, numpy=1.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>]
		
		`stop_gradients` provides a way of stopping gradient after the graph has
		already been constructed, as compared to `tf.stop_gradient` which is used
		during graph construction.  When the two approaches are combined,
		backpropagation stops at both `tf.stop_gradient` nodes and nodes in
		`stop_gradients`, whichever is encountered first.
		
		All integer tensors are considered constant with respect to all `xs`, as if
		they were included in `stop_gradients`.
		
		`unconnected_gradients` determines the value returned for each x in xs if it
		is unconnected in the graph to ys. By default this is None to safeguard
		against errors. Mathematically these gradients are zero which can be requested
		using the `'zero'` option. `tf.UnconnectedGradients` provides the
		following options and behaviors:
		
		>>> @tf.function
		... def example(use_zero):
		...   a = tf.ones([1, 2])
		...   b = tf.ones([3, 1])
		...   if use_zero:
		...     return tf.gradients([b], [a], unconnected_gradients='zero')
		...   else:
		...     return tf.gradients([b], [a], unconnected_gradients='none')
		>>> example(False)
		[None]
		>>> example(True)
		[<tf.Tensor: shape=(1, 2), dtype=float32, numpy=array([[0., 0.]], ...)>]
		
		Let us take one practical example which comes during the back propogation
		phase. This function is used to evaluate the derivatives of the cost function
		with respect to Weights `Ws` and Biases `bs`. Below sample implementation
		provides the exaplantion of what it is actually used for :
		
		>>> @tf.function
		... def example():
		...   Ws = tf.constant(0.)
		...   bs = 2 * Ws
		...   cost = Ws + bs  # This is just an example. Please ignore the formulas.
		...   g = tf.gradients(cost, [Ws, bs])
		...   dCost_dW, dCost_db = g
		...   return dCost_dW, dCost_db
		>>> example()
		(<tf.Tensor: shape=(), dtype=float32, numpy=3.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>)
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  grad_ys: Optional. A `Tensor` or list of tensors the same size as
		    `ys` and holding the gradients computed for each y in `ys`.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'gradients'.
		  gate_gradients: If True, add a tuple around the gradients returned
		    for an operations.  This avoids some race conditions.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Accepted values are constants defined in the class `AggregationMethod`.
		  stop_gradients: Optional. A `Tensor` or list of tensors not to differentiate
		    through.
		  unconnected_gradients: Optional. Specifies the gradient value returned when
		    the given input tensors are unconnected. Accepted values are constants
		    defined in the class `tf.UnconnectedGradients` and the default value is
		    `none`.
		
		Returns:
		  A list of `Tensor` of length `len(xs)` where each tensor is the `sum(dy/dx)`
		  for y in `ys` and for x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Returns the truth value of (x > y) element-wise.
		
		*NOTE*: `math.greater` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6])
		y = tf.constant([5, 2, 5])
		tf.math.greater(x, y) ==> [False, True, True]
		
		x = tf.constant([5, 4, 6])
		y = tf.constant([5])
		tf.math.greater(x, y) ==> [False, False, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x >= y) element-wise.
		
		*NOTE*: `math.greater_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6, 7])
		y = tf.constant([5, 2, 5, 10])
		tf.math.greater_equal(x, y) ==> [True, True, True, False]
		
		x = tf.constant([5, 4, 6, 7])
		y = tf.constant([5])
		tf.math.greater_equal(x, y) ==> [True, False, True, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function greater_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create an op that groups multiple operations.
		
		When this op finishes, all ops in `inputs` have finished. This op has no
		output.
		
		Note: *In TensorFlow 2 with eager and/or Autograph, you should not require
		this method, as ops execute in the expected order thanks to automatic control
		dependencies.* Only use `tf.group` when working with v1
		`tf.Graph` code.
		
		When operating in a v1-style graph context, ops are not executed in the same
		order as specified in the code; TensorFlow will attempt to execute ops in
		parallel or in an order convenient to the result it is computing.  `tf.group`
		allows you to request that one or more results finish before execution
		continues.
		
		`tf.group` creates a single op (of type `NoOp`), and then adds appropriate
		control dependencies.  Thus, `c = tf.group(a, b)` will compute the same graph
		as this:
		
		    with tf.control_dependencies([a, b]):
		        c = tf.no_op()
		
		See also `tf.tuple` and
		`tf.control_dependencies`.
		
		Args:
		  *inputs: Zero or more tensors to group.
		  name: A name for this operation (optional).
		
		Returns:
		  An Operation that executes all its inputs.
		
		Raises:
		  ValueError: If an unknown keyword argument is provided.
	**/
	static public function group(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Promise to the TF runtime that the input tensor is a constant. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Not for public use.
		
		The runtime is then free to make optimizations based on this.
		
		Returns the input tensor without modification.
		
		Args:
		  input: A `Tensor`.
		  name: A name for this operation.
		
		Returns:
		  A `Tensor`. Has the same dtype as `input`.
	**/
	static public function guarantee_const(input:Dynamic, ?name:Dynamic):Dynamic;
	static public var half : Dynamic;
	/**
		Constructs the Hessian of sum of `ys` with respect to `x` in `xs`.
		
		`hessians()` adds ops to the graph to output the Hessian matrix of `ys`
		with respect to `xs`.  It returns a list of `Tensor` of length `len(xs)`
		where each tensor is the Hessian of `sum(ys)`.
		
		The Hessian is a matrix of second-order partial derivatives of a scalar
		tensor (see https://en.wikipedia.org/wiki/Hessian_matrix for more details).
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  gate_gradients: See `gradients()` documentation for details.
		  aggregation_method: See `gradients()` documentation for details.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'hessians'.
		
		Returns:
		  A list of Hessian matrices of `sum(ys)` for each `x` in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `xs` and `ys` does not
		    have a registered gradient function.
	**/
	static public function hessians(ys:Dynamic, xs:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return histogram of values.
		
		Given the tensor `values`, this operation returns a rank 1 histogram counting
		the number of entries in `values` that fell into every bin.  The bins are
		equal width and determined by the arguments `value_range` and `nbins`.
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor` of same `dtype` as `values`.
		    values <= value_range[0] will be mapped to hist[0],
		    values >= value_range[1] will be mapped to hist[-1].
		  nbins:  Scalar `int32 Tensor`.  Number of histogram bins.
		  dtype:  dtype for returned histogram.
		  name:  A name for this operation (defaults to 'histogram_fixed_width').
		
		Returns:
		  A 1-D `Tensor` holding histogram of values.
		
		Raises:
		  TypeError: If any unsupported dtype is provided.
		  tf.errors.InvalidArgumentError: If value_range does not
		      satisfy value_range[0] < value_range[1].
		
		Examples:
		
		>>> # Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		...
		>>> nbins = 5
		>>> value_range = [0.0, 5.0]
		>>> new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		>>> hist = tf.histogram_fixed_width(new_values, value_range, nbins=5)
		>>> hist.numpy()
		array([2, 1, 1, 0, 2], dtype=int32)
	**/
	static public function histogram_fixed_width(values:Dynamic, value_range:Dynamic, ?nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Bins the given values for use in a histogram.
		
		Given the tensor `values`, this operation returns a rank 1 `Tensor`
		representing the indices of a histogram into which each element
		of `values` would be binned. The bins are equal width and
		determined by the arguments `value_range` and `nbins`.
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor` of same `dtype` as `values`.
		    values <= value_range[0] will be mapped to hist[0],
		    values >= value_range[1] will be mapped to hist[-1].
		  nbins:  Scalar `int32 Tensor`.  Number of histogram bins.
		  dtype:  dtype for returned histogram.
		  name:  A name for this operation (defaults to 'histogram_fixed_width').
		
		Returns:
		  A `Tensor` holding the indices of the binned values whose shape matches
		  `values`.
		
		Raises:
		  TypeError: If any unsupported dtype is provided.
		  tf.errors.InvalidArgumentError: If value_range does not
		      satisfy value_range[0] < value_range[1].
		
		Examples:
		
		>>> # Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		...
		>>> nbins = 5
		>>> value_range = [0.0, 5.0]
		>>> new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		>>> indices = tf.histogram_fixed_width_bins(new_values, value_range, nbins=5)
		>>> indices.numpy()
		array([0, 0, 1, 2, 4, 4], dtype=int32)
	**/
	static public function histogram_fixed_width_bins(values:Dynamic, value_range:Dynamic, ?nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a Tensor with the same shape and contents as input.
		
		The return value is not the same Tensor as the original, but contains the same
		values.  This operation is fast when used on the same device.
		
		For example:
		
		>>> a = tf.constant([0.78])
		>>> a_identity = tf.identity(a)
		>>> a.numpy()
		array([0.78], dtype=float32)
		>>> a_identity.numpy()
		array([0.78], dtype=float32)
		
		Calling `tf.identity` on a variable will make a Tensor that represents the
		value of that variable at the time it is called. This is equivalent to calling
		`<variable>.read_value()`.
		
		>>> a = tf.Variable(5)
		>>> a_identity = tf.identity(a)
		>>> a.assign_add(1)
		<tf.Variable ... shape=() dtype=int32, numpy=6>
		>>> a.numpy()
		6
		>>> a_identity.numpy()
		5
		
		Args:
		  input: A `Tensor`, a `Variable`, a `CompositeTensor` or anything that can be
		  converted to a tensor using `tf.convert_to_tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or CompositeTensor. Has the same type and contents as `input`.
	**/
	static public function identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a list of tensors with the same shapes and contents as the input
		
		tensors.
		
		This op can be used to override the gradient for complicated functions. For
		example, suppose y = f(x) and we wish to apply a custom function g for backprop
		such that dx = g(dy). In Python,
		
		```python
		with tf.get_default_graph().gradient_override_map(
		    {'IdentityN': 'OverrideGradientWithG'}):
		  y, _ = identity_n([f(x), x])
		
		@tf.RegisterGradient('OverrideGradientWithG')
		def ApplyG(op, dy, _):
		  return [None, g(dy)]  # Do not backprop to f(x).
		```
		
		Args:
		  input: A list of `Tensor` objects.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function identity_n(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Imports the graph from `graph_def` into the current default `Graph`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(op_dict)`. They will be removed in a future version.
		Instructions for updating:
		Please file an issue at https://github.com/tensorflow/tensorflow/issues if you depend on this feature.
		
		This function provides a way to import a serialized TensorFlow
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		protocol buffer, and extract individual objects in the `GraphDef` as
		`tf.Tensor` and `tf.Operation` objects. Once extracted,
		these objects are placed into the current default `Graph`. See
		`tf.Graph.as_graph_def` for a way to create a `GraphDef`
		proto.
		
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
		    `graph_def`. Note that this does not apply to imported function names.
		    Defaults to `"import"`.
		  op_dict: (Optional.) Deprecated, do not use.
		  producer_op_list: (Optional.) An `OpList` proto with the (possibly stripped)
		    list of `OpDef`s used by the producer of the graph. If provided,
		    unrecognized attrs for ops in `graph_def` that have their default value
		    according to `producer_op_list` will be removed. This will allow some more
		    `GraphDef`s produced by later binaries to be accepted by earlier binaries.
		
		Returns:
		  A list of `Operation` and/or `Tensor` objects from the imported graph,
		  corresponding to the names in `return_elements`,
		  and None if `returns_elements` is None.
		
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
		A context manager that lifts ops out of control-flow scopes and function-building graphs.
		
		There is often a need to lift variable initialization ops out of control-flow
		scopes, function-building graphs, and gradient tapes. Entering an
		`init_scope` is a mechanism for satisfying these desiderata. In particular,
		entering an `init_scope` has three effects:
		
		  (1) All control dependencies are cleared the moment the scope is entered;
		      this is equivalent to entering the context manager returned from
		      `control_dependencies(None)`, which has the side-effect of exiting
		      control-flow scopes like `tf.cond` and `tf.while_loop`.
		
		  (2) All operations that are created while the scope is active are lifted
		      into the lowest context on the `context_stack` that is not building a
		      graph function. Here, a context is defined as either a graph or an eager
		      context. Every context switch, i.e., every installation of a graph as
		      the default graph and every switch into eager mode, is logged in a
		      thread-local stack called `context_switches`; the log entry for a
		      context switch is popped from the stack when the context is exited.
		      Entering an `init_scope` is equivalent to crawling up
		      `context_switches`, finding the first context that is not building a
		      graph function, and entering it. A caveat is that if graph mode is
		      enabled but the default graph stack is empty, then entering an
		      `init_scope` will simply install a fresh graph as the default one.
		
		  (3) The gradient tape is paused while the scope is active.
		
		When eager execution is enabled, code inside an init_scope block runs with
		eager execution enabled even when tracing a `tf.function`. For example:
		
		```python
		tf.compat.v1.enable_eager_execution()
		
		@tf.function
		def func():
		  # A function constructs TensorFlow graphs,
		  # it does not execute eagerly.
		  assert not tf.executing_eagerly()
		  with tf.init_scope():
		    # Initialization runs with eager execution enabled
		    assert tf.executing_eagerly()
		```
		
		Raises:
		  RuntimeError: if graph state is incompatible with this initialization.
	**/
	static public function init_scope():Dynamic;
	/**
		Indicates whether the caller code is executing inside a `tf.function`.
		
		Returns:
		  Boolean, True if the caller code is executing inside a `tf.function`
		  rather than eagerly.
		
		Example:
		
		>>> tf.inside_function()
		False
		>>> @tf.function
		... def f():
		...   print(tf.inside_function())
		>>> f()
		True
	**/
	static public function inside_function():Dynamic;
	static public var int16 : Dynamic;
	static public var int32 : Dynamic;
	static public var int64 : Dynamic;
	static public var int8 : Dynamic;
	/**
		Checks whether `x` is a TF-native type that can be passed to many TF ops.
		
		Use `is_tensor` to differentiate types that can ingested by TensorFlow ops
		without any conversion (e.g., `tf.Tensor`, `tf.SparseTensor`, and
		`tf.RaggedTensor`) from types that need to be converted into tensors before
		they are ingested (e.g., numpy `ndarray` and Python scalars).
		
		For example, in the following code block:
		
		```python
		if not tf.is_tensor(t):
		  t = tf.convert_to_tensor(t)
		return t.shape, t.dtype
		```
		
		we check to make sure that `t` is a tensor (and convert it if not) before
		accessing its `shape` and `dtype`.  (But note that not all TensorFlow native
		types have shapes or dtypes; `tf.data.Dataset` is an example of a TensorFlow
		native type that has neither shape nor dtype.)
		
		Args:
		  x: A python object to check.
		
		Returns:
		  `True` if `x` is a TensorFlow-native type.
	**/
	static public function is_tensor(x:Dynamic):Dynamic;
	/**
		Returns the truth value of (x < y) element-wise.
		
		*NOTE*: `math.less` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6])
		y = tf.constant([5])
		tf.math.less(x, y) ==> [False, True, False]
		
		x = tf.constant([5, 4, 6])
		y = tf.constant([5, 6, 7])
		tf.math.less(x, y) ==> [False, True, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x <= y) element-wise.
		
		*NOTE*: `math.less_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Example:
		
		```python
		x = tf.constant([5, 4, 6])
		y = tf.constant([5])
		tf.math.less_equal(x, y) ==> [True, True, False]
		
		x = tf.constant([5, 4, 6])
		y = tf.constant([5, 6, 6])
		tf.math.less_equal(x, y) ==> [True, True, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function less_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates evenly-spaced values in an interval along a given axis.
		
		A sequence of `num` evenly-spaced values are generated beginning at `start`
		along a given `axis`.
		If `num > 1`, the values in the sequence increase by
		`(stop - start) / (num - 1)`, so that the last one is exactly `stop`.
		If `num <= 0`, `ValueError` is raised.
		
		Matches
		[np.linspace](https://docs.scipy.org/doc/numpy/reference/generated/numpy.linspace.html)'s
		behaviour
		except when `num == 0`.
		
		For example:
		
		```
		tf.linspace(10.0, 12.0, 3, name="linspace") => [ 10.0  11.0  12.0]
		```
		
		`Start` and `stop` can be tensors of arbitrary size:
		
		>>> tf.linspace([0., 5.], [10., 40.], 5, axis=0)
		<tf.Tensor: shape=(5, 2), dtype=float32, numpy=
		array([[ 0.  ,  5.  ],
		       [ 2.5 , 13.75],
		       [ 5.  , 22.5 ],
		       [ 7.5 , 31.25],
		       [10.  , 40.  ]], dtype=float32)>
		
		`Axis` is where the values will be generated (the dimension in the
		returned tensor which corresponds to the axis will be equal to `num`)
		
		>>> tf.linspace([0., 5.], [10., 40.], 5, axis=-1)
		<tf.Tensor: shape=(2, 5), dtype=float32, numpy=
		array([[ 0.  ,  2.5 ,  5.  ,  7.5 , 10.  ],
		       [ 5.  , 13.75, 22.5 , 31.25, 40.  ]], dtype=float32)>
		
		
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `bfloat16`,
		    `float32`, `float64`. N-D tensor. First entry in the range.
		  stop: A `Tensor`. Must have the same type and shape as `start`. N-D tensor.
		    Last entry in the range.
		  num: A `Tensor`. Must be one of the following types: `int32`, `int64`. 0-D
		    tensor. Number of values to generate.
		  name: A name for the operation (optional).
		  axis: Axis along which the operation is performed (used only when N-D
		    tensors are provided).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin.
		
		"library_location" can be a path to a specific shared object, or a folder.
		If it is a folder, all shared objects that are named "libtfkernel*" will be
		loaded. When the library is loaded, kernels registered in the library via the
		`REGISTER_*` macros are made available in the TensorFlow process.
		
		Args:
		  library_location: Path to the plugin or the folder of plugins.
		    Relative or absolute filesystem path to a dynamic library file or folder.
		
		Returns:
		  None
		
		Raises:
		  OSError: When the file to be loaded is not found.
		  RuntimeError: when unable to load the library.
	**/
	static public function load_library(library_location:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin, containing custom ops and kernels.
		
		Pass "library_filename" to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here. When the
		library is loaded, ops and kernels registered in the library via the
		`REGISTER_*` macros are made available in the TensorFlow process. Note
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
		Returns the truth value of x AND y element-wise.
		
		Logical AND function.
		
		Requires that `x` and `y` have the same shape or have
		[broadcast-compatible](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		shapes. For example, `x` and `y` can be:
		
		  - Two single elements of type `bool`.
		  - One `tf.Tensor` of type `bool` and one single `bool`, where the result will
		    be calculated by applying logical AND with the single element to each
		    element in the larger Tensor.
		  - Two `tf.Tensor` objects of type `bool` of the same shape. In this case,
		    the result will be the element-wise logical AND of the two input tensors.
		
		You can also use the `&` operator instead.
		
		Usage:
		
		  >>> a = tf.constant([True])
		  >>> b = tf.constant([False])
		  >>> tf.math.logical_and(a, b)
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([False])>
		  >>> a & b
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([False])>
		
		  >>> c = tf.constant([True])
		  >>> x = tf.constant([False, True, True, False])
		  >>> tf.math.logical_and(c, x)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False,  True,  True, False])>
		  >>> c & x
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False,  True,  True, False])>
		
		  >>> y = tf.constant([False, False, True, True])
		  >>> z = tf.constant([False, True, False, True])
		  >>> tf.math.logical_and(y, z)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, False, False, True])>
		  >>> y & z
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, False, False, True])>
		
		  This op also supports broadcasting
		
		  >>> tf.logical_and([[True, False]], [[True], [False]])
		  <tf.Tensor: shape=(2, 2), dtype=bool, numpy=
		    array([[ True, False],
		           [False, False]])>
		
		The reduction version of this elementwise operation is `tf.math.reduce_all`.
		
		Args:
		    x: A `tf.Tensor` of type bool.
		    y: A `tf.Tensor` of type bool.
		    name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the shape that `x` and `y` broadcast to.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_and(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of `NOT x` element-wise.
		
		Example:
		
		>>> tf.math.logical_not(tf.constant([True, False]))
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([False,  True])>
		
		Args:
		  x: A `Tensor` of type `bool`. A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_not(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of x OR y element-wise.
		
		Logical OR function.
		
		Requires that `x` and `y` have the same shape or have
		[broadcast-compatible](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		shapes. For example, `x` and `y` can be:
		
		- Two single elements of type `bool`.
		- One `tf.Tensor` of type `bool` and one single `bool`, where the result will
		  be calculated by applying logical OR with the single element to each
		  element in the larger Tensor.
		- Two `tf.Tensor` objects of type `bool` of the same shape. In this case,
		  the result will be the element-wise logical OR of the two input tensors.
		
		You can also use the `|` operator instead.
		
		Usage:
		
		  >>> a = tf.constant([True])
		  >>> b = tf.constant([False])
		  >>> tf.math.logical_or(a, b)
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([ True])>
		  >>> a | b
		  <tf.Tensor: shape=(1,), dtype=bool, numpy=array([ True])>
		
		  >>> c = tf.constant([False])
		  >>> x = tf.constant([False, True, True, False])
		  >>> tf.math.logical_or(c, x)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True,  True, False])>
		  >>> c | x
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True,  True, False])>
		
		  >>> y = tf.constant([False, False, True, True])
		  >>> z = tf.constant([False, True, False, True])
		  >>> tf.math.logical_or(y, z)
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True, True, True])>
		  >>> y | z
		  <tf.Tensor: shape=(4,), dtype=bool, numpy=array([False, True, True, True])>
		
		  This op also supports broadcasting
		
		  >>> tf.logical_or([[True, False]], [[True], [False]])
		  <tf.Tensor: shape=(2, 2), dtype=bool, numpy=
		  array([[ True,  True],
		       [ True, False]])>
		
		The reduction version of this elementwise operation is `tf.math.reduce_any`.
		
		Args:
		    x: A `tf.Tensor` of type bool.
		    y: A `tf.Tensor` of type bool.
		    name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the shape that `x` and `y` broadcast to.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function logical_or(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a numpy ndarray from a tensor.
		
		Create a numpy ndarray with the same shape and data as the tensor.
		
		For example:
		
		```python
		# Tensor a has shape (2,3)
		a = tf.constant([[1,2,3],[4,5,6]])
		proto_tensor = tf.make_tensor_proto(a)  # convert `tensor a` to a proto tensor
		tf.make_ndarray(proto_tensor) # output: array([[1, 2, 3],
		#                                              [4, 5, 6]], dtype=int32)
		# output has shape (2,3)
		```
		
		Args:
		  tensor: A TensorProto.
		
		Returns:
		  A numpy array with the tensor contents.
		
		Raises:
		  TypeError: if tensor has unsupported type.
	**/
	static public function make_ndarray(tensor:Dynamic):Dynamic;
	/**
		Create a TensorProto.
		
		In TensorFlow 2.0, representing tensors as protos should no longer be a
		common workflow. That said, this utility function is still useful for
		generating TF Serving request protos:
		
		```python
		  request = tensorflow_serving.apis.predict_pb2.PredictRequest()
		  request.model_spec.name = "my_model"
		  request.model_spec.signature_name = "serving_default"
		  request.inputs["images"].CopyFrom(tf.make_tensor_proto(X_new))
		```
		
		`make_tensor_proto` accepts "values" of a python scalar, a python list, a
		numpy ndarray, or a numpy scalar.
		
		If "values" is a python scalar or a python list, make_tensor_proto
		first convert it to numpy ndarray. If dtype is None, the
		conversion tries its best to infer the right numpy data
		type. Otherwise, the resulting numpy array has a compatible data
		type with the given dtype.
		
		In either case above, the numpy ndarray (either the caller provided
		or the auto-converted) must have the compatible type with dtype.
		
		`make_tensor_proto` then converts the numpy array to a tensor proto.
		
		If "shape" is None, the resulting tensor proto represents the numpy
		array precisely.
		
		Otherwise, "shape" specifies the tensor's shape and the numpy array
		can not have more elements than what "shape" specifies.
		
		Args:
		  values:         Values to put in the TensorProto.
		  dtype:          Optional tensor_pb2 DataType value.
		  shape:          List of integers representing the dimensions of tensor.
		  verify_shape:   Boolean that enables verification of a shape of values.
		  allow_broadcast:  Boolean that enables allowing scalars and 1 length vector
		      broadcasting. Cannot be true when verify_shape is true.
		
		Returns:
		  A `TensorProto`. Depending on the type, it may contain data in the
		  "tensor_content" attribute, which is not directly useful to Python programs.
		  To access the values you should convert the proto back to a numpy ndarray
		  with `tf.make_ndarray(proto)`.
		
		  If `values` is a `TensorProto`, it is immediately returned; `dtype` and
		  `shape` are ignored.
		
		Raises:
		  TypeError:  if unsupported types are provided.
		  ValueError: if arguments have inappropriate values or if verify_shape is
		   True and shape of values is not equals to a shape from the argument.
	**/
	static public function make_tensor_proto(values:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?verify_shape:Dynamic, ?allow_broadcast:Dynamic):Dynamic;
	/**
		Transforms `elems` by applying `fn` to each element unstacked on axis 0. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dtype)`. They will be removed in a future version.
		Instructions for updating:
		Use fn_output_signature instead
		
		See also `tf.scan`.
		
		`map_fn` unstacks `elems` on axis 0 to obtain a sequence of elements;
		calls `fn` to transform each element; and then stacks the transformed
		values back together.
		
		#### Mapping functions with single-Tensor inputs and outputs
		
		If `elems` is a single tensor and `fn`'s signature is `tf.Tensor->tf.Tensor`,
		then `map_fn(fn, elems)` is equivalent to
		`tf.stack([fn(elem) for elem in tf.unstack(elems)])`.  E.g.:
		
		>>> tf.map_fn(fn=lambda t: tf.range(t, t + 3), elems=tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		`map_fn(fn, elems).shape = [elems.shape[0]] + fn(elems[0]).shape`.
		
		#### Mapping functions with multi-arity inputs and outputs
		
		`map_fn` also supports functions with multi-arity inputs and outputs:
		
		* If `elems` is a tuple (or nested structure) of tensors, then those tensors
		  must all have the same outer-dimension size (`num_elems`); and `fn` is
		  used to transform each tuple (or structure) of corresponding slices from
		  `elems`.  E.g., if `elems` is a tuple `(t1, t2, t3)`, then `fn` is used to
		  transform each tuple of slices `(t1[i], t2[i], t3[i])`
		  (where `0 <= i < num_elems`).
		
		* If `fn` returns a tuple (or nested structure) of tensors, then the
		  result is formed by stacking corresponding elements from those structures.
		
		#### Specifying `fn`'s output signature
		
		If `fn`'s input and output signatures are different, then the output
		signature must be specified using `fn_output_signature`.  (The input and
		output signatures are differ if their structures, dtypes, or tensor types do
		not match).  E.g.:
		
		>>> tf.map_fn(fn=tf.strings.length,  # input & output have different dtypes
		...           elems=tf.constant(["hello", "moon"]),
		...           fn_output_signature=tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([5, 4], dtype=int32)>
		>>> tf.map_fn(fn=tf.strings.join,  # input & output have different structures
		...           elems=[tf.constant(['The', 'A']), tf.constant(['Dog', 'Cat'])],
		...           fn_output_signature=tf.string)
		<tf.Tensor: shape=(2,), dtype=string,
		 numpy=array([b'TheDog', b'ACat'], dtype=object)>
		
		`fn_output_signature` can be specified using any of the following:
		
		* A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		* A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		* A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		* A (possibly nested) tuple, list, or dict containing the above types.
		
		#### RaggedTensors
		
		`map_fn` supports `tf.RaggedTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `RaggedTensor`, then `fn` will be called with each
		  row of that ragged tensor.
		  * If `elems` has only one ragged dimension, then the values passed to
		    `fn` will be `tf.Tensor`s.
		  * If `elems` has multiple ragged dimensions, then the values passed to
		    `fn` will be `tf.RaggedTensor`s with one fewer ragged dimension.
		
		* If the result of `map_fn` should be a `RaggedTensor`, then use a
		  `tf.RaggedTensorSpec` to specify `fn_output_signature`.
		  * If `fn` returns `tf.Tensor`s with varying sizes, then use a
		    `tf.RaggedTensorSpec` with `ragged_rank=0` to combine them into a
		    single ragged tensor (which will have ragged_rank=1).
		  * If `fn` returns `tf.RaggedTensor`s, then use a `tf.RaggedTensorSpec`
		    with the same `ragged_rank`.
		
		>>> # Example: RaggedTensor input
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.map_fn(tf.reduce_sum, rt, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([6, 0, 9, 6], dtype=int32)>
		
		>>> # Example: RaggedTensor output
		>>> elems = tf.constant([3, 5, 0, 2])
		>>> tf.map_fn(tf.range, elems,
		...           fn_output_signature=tf.RaggedTensorSpec(shape=[None],
		...                                                   dtype=tf.int32))
		<tf.RaggedTensor [[0, 1, 2], [0, 1, 2, 3, 4], [], [0, 1]]>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `RaggedTensor`.  If you wish to map a function over the
		individual values, then you should use:
		
		* `tf.ragged.map_flat_values(fn, rt)`
		  (if fn is expressible as TensorFlow ops)
		* `rt.with_flat_values(map_fn(fn, rt.flat_values))`
		  (otherwise)
		
		E.g.:
		
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.ragged.map_flat_values(lambda x: x + 2, rt)
		<tf.RaggedTensor [[3, 4, 5], [], [6, 7], [8]]>
		
		#### SparseTensors
		
		`map_fn` supports `tf.sparse.SparseTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `SparseTensor`, then `fn` will be called with each row
		  of that sparse tensor. In particular, the value passed to `fn` will be a
		  `tf.sparse.SparseTensor` with one fewer dimension than `elems`.
		
		* If the result of `map_fn` should be a `SparseTensor`, then use a
		  `tf.SparseTensorSpec` to specify `fn_output_signature`.  The individual
		  `SparseTensor`s returned by `fn` will be stacked into a single
		  `SparseTensor` with one more dimension.
		
		>>> # Example: SparseTensor input
		>>> st = tf.sparse.SparseTensor([[0, 0], [2, 0], [2, 1]], [2, 3, 4], [4, 4])
		>>> tf.map_fn(tf.sparse.reduce_sum, st, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([2, 0, 7, 0], dtype=int32)>
		
		>>> # Example: SparseTensor output
		>>> tf.sparse.to_dense(
		...     tf.map_fn(tf.sparse.eye, tf.constant([2, 3]),
		...               fn_output_signature=tf.SparseTensorSpec(None, tf.float32)))
		<tf.Tensor: shape=(2, 3, 3), dtype=float32, numpy=
		  array([[[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 0.]],
		         [[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 1.]]], dtype=float32)>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `SparseTensor`.  If you wish to map a function over the nonzero
		values, then you should use:
		
		* If the function is expressible as TensorFlow ops, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, fn(st.values), st.dense_shape)
		  ```
		* Otherwise, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, tf.map_fn(fn, st.values),
		                         st.dense_shape)
		  ```
		
		#### `map_fn` vs. vectorized operations
		
		`map_fn` will apply the operations used by `fn` to each element of `elems`,
		resulting in `O(elems.shape[0])` total operations.  This is somewhat
		mitigated by the fact that `map_fn` can process elements in parallel.
		However, a transform expressed using `map_fn` is still typically less
		efficient than an equivalent transform expressed using vectorized operations.
		
		`map_fn` should typically only be used if one of the following is true:
		
		* It is difficult or expensive to express the desired transform with
		  vectorized operations.
		* `fn` creates large intermediate values, so an equivalent vectorized
		  transform would take too much memory.
		* Processing elements in parallel is more efficient than an equivalent
		  vectorized transform.
		* Efficiency of the transform is not critical, and using `map_fn` is
		  more readable.
		
		E.g., the example given above that maps `fn=lambda t: tf.range(t, t + 3)`
		across `elems` could be rewritten more efficiently using vectorized ops:
		
		>>> elems = tf.constant([3, 5, 2])
		>>> tf.range(3) + tf.expand_dims(elems, 1)
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		In some cases, `tf.vectorized_map` can be used to automatically convert a
		function to a vectorized equivalent.
		
		#### Eager execution
		
		When executing eagerly, `map_fn` does not execute in parallel even if
		`parallel_iterations` is set to a value > 1. You can still get the
		performance benefits of running a function in parallel by using the
		`tf.function` decorator:
		
		>>> fn=lambda t: tf.range(t, t + 3)
		>>> @tf.function
		... def func(elems):
		...   return tf.map_fn(fn, elems, parallel_iterations=3)
		>>> func(tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		
		Note: if you use the `tf.function` decorator, any non-TensorFlow Python
		code that you may have written in your function won't get executed. See
		`tf.function` for more  details. The recommendation would be to debug without
		`tf.function` but switch to it to get performance benefits of running `map_fn`
		in parallel.
		
		Args:
		  fn: The callable to be performed.  It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`.  Its output must have the
		    same structure as `fn_output_signature` if one is provided; otherwise it
		    must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unstacked along their first dimension.  `fn` will be applied to the
		    nested sequence of the resulting slices.  `elems` may include ragged and
		    sparse tensors. `elems` must consist of at least one tensor.
		  dtype: Deprecated: Equivalent to `fn_output_signature`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel. When graph building, the default value is 10. While executing
		    eagerly, the default value is set to 1.
		  back_prop: (optional) Deprecated: prefer using `tf.stop_gradient` instead.  False disables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		  fn_output_signature: The output signature of `fn`. Must be specified if
		    `fn`'s input and output signatures are different (i.e., if their
		    structures, dtypes, or tensor types do not match).
		    `fn_output_signature` can be specified using any of the following:
		
		    * A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		    * A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		    * A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		    * A (possibly nested) tuple, list, or dict containing the above types.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor stacks the
		  results of applying `fn` to tensors unstacked from `elems` along the first
		  dimension, from first to last.  The result may include ragged and sparse
		  tensors.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `fn_output_signature` do not match.
		  ValueError: if the lengths of the output of `fn` and `fn_output_signature`
		    do not match, or if the `elems` does not contain any tensor.
		
		Examples:
		
		  >>> elems = np.array([1, 2, 3, 4, 5, 6])
		  >>> tf.map_fn(lambda x: x * x, elems)
		  <tf.Tensor: shape=(6,), dtype=int64, numpy=array([ 1,  4,  9, 16, 25, 36])>
		
		  >>> elems = (np.array([1, 2, 3]), np.array([-1, 1, -1]))
		  >>> tf.map_fn(lambda x: x[0] * x[1], elems, fn_output_signature=tf.int64)
		  <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1,  2, -3])>
		
		  >>> elems = np.array([1, 2, 3])
		  >>> tf.map_fn(lambda x: (x, -x), elems,
		  ...          fn_output_signature=(tf.int64, tf.int64))
		  (<tf.Tensor: shape=(3,), dtype=int64, numpy=array([1, 2, 3])>,
		   <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1, -2, -3])>)
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic, ?fn_output_signature:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must, following any transpositions, be tensors of rank >= 2
		where the inner 2 dimensions specify valid matrix multiplication dimensions,
		and any further outer dimensions specify matching batch size.
		
		Both matrices must be of the same type. The supported types are:
		`bfloat16`, `float16`, `float32`, `float64`, `int32`, `int64`,
		`complex64`, `complex128`.
		
		Either matrix can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices (rank-2 tensors) with
		datatypes `bfloat16` or `float32`.
		
		A simple 2-D tensor matrix multiplication:
		
		>>> a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		>>> a  # 2-D tensor
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[1, 2, 3],
		       [4, 5, 6]], dtype=int32)>
		>>> b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2])
		>>> b  # 2-D tensor
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		array([[ 7,  8],
		       [ 9, 10],
		       [11, 12]], dtype=int32)>
		>>> c = tf.matmul(a, b)
		>>> c  # `a` * `b`
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[ 58,  64],
		       [139, 154]], dtype=int32)>
		
		A batch matrix multiplication with batch shape [2]:
		
		>>> a = tf.constant(np.arange(1, 13, dtype=np.int32), shape=[2, 2, 3])
		>>> a  # 3-D tensor
		<tf.Tensor: shape=(2, 2, 3), dtype=int32, numpy=
		array([[[ 1,  2,  3],
		        [ 4,  5,  6]],
		       [[ 7,  8,  9],
		        [10, 11, 12]]], dtype=int32)>
		>>> b = tf.constant(np.arange(13, 25, dtype=np.int32), shape=[2, 3, 2])
		>>> b  # 3-D tensor
		<tf.Tensor: shape=(2, 3, 2), dtype=int32, numpy=
		array([[[13, 14],
		        [15, 16],
		        [17, 18]],
		       [[19, 20],
		        [21, 22],
		        [23, 24]]], dtype=int32)>
		>>> c = tf.matmul(a, b)
		>>> c  # `a` * `b`
		<tf.Tensor: shape=(2, 2, 2), dtype=int32, numpy=
		array([[[ 94, 100],
		        [229, 244]],
		       [[508, 532],
		        [697, 730]]], dtype=int32)>
		
		Since python >= 3.5 the @ operator is supported
		(see [PEP 465](https://www.python.org/dev/peps/pep-0465/)). In TensorFlow,
		it simply calls the `tf.matmul()` function, so the following lines are
		equivalent:
		
		>>> d = a @ b @ [[10], [11]]
		>>> d = tf.matmul(tf.matmul(a, b), [[10], [11]])
		
		Args:
		  a: `tf.Tensor` of type `float16`, `float32`, `float64`, `int32`,
		    `complex64`, `complex128` and rank > 1.
		  b: `tf.Tensor` with same type and rank as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  adjoint_b: If `True`, `b` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix. Notice, this
		    **does not support `tf.sparse.SparseTensor`**, it just makes optimizations
		    that assume most values in `a` are zero.
		    See `tf.sparse.sparse_dense_matmul`
		    for some support for `tf.sparse.SparseTensor` multiplication.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix. Notice, this
		    **does not support `tf.sparse.SparseTensor`**, it just makes optimizations
		    that assume most values in `a` are zero.
		    See `tf.sparse.sparse_dense_matmul`
		    for some support for `tf.sparse.SparseTensor` multiplication.
		  output_type: The output datatype if needed. Defaults to None in which case
		    the output_type is the same as input type. Currently only works when input
		    tensors are type (u)int8 and output_type can be int32.
		  name: Name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of the same type as `a` and `b` where each inner-most matrix
		  is the product of the corresponding matrices in `a` and `b`, e.g. if all
		  transpose or adjoint attributes are `False`:
		
		  `output[..., i, j] = sum_k (a[..., i, k] * b[..., k, j])`,
		  for all indices `i`, `j`.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If `transpose_a` and `adjoint_a`, or `transpose_b` and
		    `adjoint_b` are both set to `True`.
		  TypeError: If output_type is specified but the types of `a`, `b` and
		    `output_type` is not (u)int8, (u)int8 and int32.
	**/
	static public function matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the matrix square root of one or more square matrices:
		
		matmul(sqrtm(A), sqrtm(A)) = A
		
		The input matrix should be invertible. If the input matrix is real, it should
		have no eigenvalues which are real and negative (pairs of complex conjugate
		eigenvalues are allowed).
		
		The matrix square root is computed by first reducing the matrix to
		quasi-triangular form with the real Schur decomposition. The square root
		of the quasi-triangular matrix is then computed directly. Details of
		the algorithm can be found in: Nicholas J. Higham, "Computing real
		square roots of a real matrix", Linear Algebra Appl., 1987.
		
		The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
		form square matrices. The output is a tensor of the same shape as the input
		containing the matrix square root for all input submatrices `[..., :, :]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float64`, `float32`, `half`, `complex64`, `complex128`.
		    Shape is `[..., M, M]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_square_root(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the max of x and y (i.e. x > y ? x : y) element-wise.
		
		Example:
		
		>>> x = tf.constant([0., 0., 0., 0.])
		>>> y = tf.constant([-2., 0., 2., 5.])
		>>> tf.math.maximum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([0., 0., 2., 5.], dtype=float32)>
		
		Note that `maximum` supports [broadcast semantics](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) for `x` and `y`.
		
		>>> x = tf.constant([-5., 0., 0., 0.])
		>>> y = tf.constant([-3.])
		>>> tf.math.maximum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([-3., 0., 0., 0.], dtype=float32)>
		
		The reduction version of this elementwise operation is `tf.math.reduce_max`
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `uint32`, `int64`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function maximum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
		
		```python
		x = [1, 2, 3]
		y = [4, 5, 6]
		X, Y = tf.meshgrid(x, y)
		# X = [[1, 2, 3],
		#      [1, 2, 3],
		#      [1, 2, 3]]
		# Y = [[4, 4, 4],
		#      [5, 5, 5],
		#      [6, 6, 6]]
		```
		
		Args:
		  *args: `Tensor`s with rank 1.
		  **kwargs:
		    - indexing: Either 'xy' or 'ij' (optional, default: 'xy').
		    - name: A name for the operation (optional).
		
		Returns:
		  outputs: A list of N `Tensor`s with rank N.
		
		Raises:
		  TypeError: When no keyword arguments (kwargs) are passed.
		  ValueError: When indexing keyword argument is not one of `xy` or `ij`.
	**/
	static public function meshgrid(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the min of x and y (i.e. x < y ? x : y) element-wise.
		
		Both inputs are number-type tensors (except complex).  `minimum` expects that
		both tensors have the same `dtype`.
		
		Examples:
		
		>>> x = tf.constant([0., 0., 0., 0.])
		>>> y = tf.constant([-5., -2., 0., 3.])
		>>> tf.math.minimum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([-5., -2., 0., 0.], dtype=float32)>
		
		Note that `minimum` supports [broadcast semantics](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) for `x` and `y`.
		
		>>> x = tf.constant([-5., 0., 0., 0.])
		>>> y = tf.constant([-3.])
		>>> tf.math.minimum(x, y)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([-5., -3., -3., -3.], dtype=float32)>
		
		The reduction version of this elementwise operation is `tf.math.reduce_min`
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `uint32`, `int64`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function minimum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an element-wise x * y.
		
		For example:
		
		>>> x = tf.constant(([1, 2, 3, 4]))
		>>> tf.math.multiply(x, x)
		<tf.Tensor: shape=(4,), dtype=..., numpy=array([ 1,  4,  9, 16], dtype=int32)>
		
		Since `tf.math.multiply` will convert its arguments to `Tensor`s, you can also
		pass in non-`Tensor` arguments:
		
		>>> tf.math.multiply(7,6)
		<tf.Tensor: shape=(), dtype=int32, numpy=42>
		
		If `x.shape` is not the same as `y.shape`, they will be broadcast to a
		compatible shape. (More about broadcasting
		[here](https://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).)
		
		For example:
		
		>>> x = tf.ones([1, 2]);
		>>> y = tf.ones([2, 1]);
		>>> x * y  # Taking advantage of operator overriding
		<tf.Tensor: shape=(2, 2), dtype=float32, numpy=
		array([[1., 1.],
		     [1., 1.]], dtype=float32)>
		
		The reduction version of this elementwise operation is `tf.math.reduce_prod`
		
		Args:
		  x: A Tensor. Must be one of the following types: `bfloat16`,
		    `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`,
		    `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		
		A `Tensor`.  Has the same type as `x`.
		
		Raises:
		
		 * InvalidArgumentError: When `x` and `y` have incompatible shapes or types.
	**/
	static public function multiply(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \\(y = -x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.negative(x.values, ...), x.dense_shape)`
	**/
	static public function negative(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.no_gradient("Size")
		```
		
		The gradient computed for 'op_type' will then propagate zeros.
		
		For ops that have a well-defined gradient but are not yet implemented,
		no declaration should be made, and an error *must* be thrown if
		an attempt to request its gradient is made.
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function no_gradient(op_type:Dynamic):Dynamic;
	/**
		Does nothing. Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function no_op(?name:Dynamic):Dynamic;
	/**
		Batches the computation done by the decorated function.
		
		So, for example, in the following code
		
		```python
		@batch_function(1, 2, 3)
		def layer(a):
		  return tf.matmul(a, a)
		
		b = layer(w)
		```
		
		if more than one session.run call is simultaneously trying to compute `b`
		the values of `w` will be gathered, non-deterministically concatenated
		along the first axis, and only one thread will run the computation. See the
		documentation of the `Batch` op for more details.
		
		Assumes that all arguments of the decorated function are Tensors which will
		be batched along their first dimension.
		
		SparseTensor is not supported. The return value of the decorated function
		must be a Tensor or a list/tuple of Tensors.
		
		Args:
		  num_batch_threads: Number of scheduling threads for processing batches
		   of work. Determines the number of batches processed in parallel.
		  max_batch_size: Batch sizes will never be bigger than this.
		  batch_timeout_micros: Maximum number of microseconds to wait before
		   outputting an incomplete batch.
		  allowed_batch_sizes: Optional list of allowed batch sizes. If left empty,
		   does nothing. Otherwise, supplies a list of batch sizes, causing the op
		   to pad batches up to one of those sizes. The entries must increase
		   monotonically, and the final entry must equal max_batch_size.
		  max_enqueued_batches: The maximum depth of the batch queue. Defaults to 10.
		  autograph: Whether to use autograph to compile python and eager style code
		   for efficient graph-mode execution.
		  enable_large_batch_splitting: The value of this option doesn't affect
		   processing output given the same input; it affects implementation details
		   as stated below: 1. Improve batching efficiency by eliminating unnecessary
		   adding. 2.`max_batch_size` specifies the limit of input and
		   `allowed_batch_sizes` specifies the limit of a task to be processed. API
		   user can give an input of size 128 when 'max_execution_batch_size'
		   is 32 -> implementation can split input of 128 into 4 x 32, schedule
		   concurrent processing, and then return concatenated results corresponding
		   to 128.
		
		Returns:
		  The decorated function will return the unbatched computation output Tensors.
	**/
	static public function nondifferentiable_batch_function(num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, ?allowed_batch_sizes:Dynamic, ?max_enqueued_batches:Dynamic, ?autograph:Dynamic, ?enable_large_batch_splitting:Dynamic):Dynamic;
	/**
		Computes the norm of vectors, matrices, and tensors.
		
		This function can compute several different vector norms (the 1-norm, the
		Euclidean or 2-norm, the inf-norm, and in general the p-norm for p > 0) and
		matrix norms (Frobenius, 1-norm, 2-norm and inf-norm).
		
		Args:
		  tensor: `Tensor` of types `float32`, `float64`, `complex64`, `complex128`
		  ord: Order of the norm. Supported values are `'fro'`, `'euclidean'`,
		    `1`, `2`, `np.inf` and any positive real number yielding the corresponding
		    p-norm. Default is `'euclidean'` which is equivalent to Frobenius norm if
		    `tensor` is a matrix and equivalent to 2-norm for vectors.
		    Some restrictions apply:
		      a) The Frobenius norm `'fro'` is not defined for vectors,
		      b) If axis is a 2-tuple (matrix norm), only `'euclidean'`, '`fro'`, `1`,
		         `2`, `np.inf` are supported.
		    See the description of `axis` on how to compute norms for a batch of
		    vectors or matrices stored in a tensor.
		  axis: If `axis` is `None` (the default), the input is considered a vector
		    and a single vector norm is computed over the entire set of values in the
		    tensor, i.e. `norm(tensor, ord=ord)` is equivalent to
		    `norm(reshape(tensor, [-1]), ord=ord)`.
		    If `axis` is a Python integer, the input is considered a batch of vectors,
		    and `axis` determines the axis in `tensor` over which to compute vector
		    norms.
		    If `axis` is a 2-tuple of Python integers it is considered a batch of
		    matrices and `axis` determines the axes in `tensor` over which to compute
		    a matrix norm.
		    Negative indices are supported. Example: If you are passing a tensor that
		    can be either a matrix or a batch of matrices at runtime, pass
		    `axis=[-2,-1]` instead of `axis=None` to make sure that matrix norms are
		    computed.
		  keepdims: If True, the axis indicated in `axis` are kept with size 1.
		    Otherwise, the dimensions in `axis` are removed from the output shape.
		  name: The name of the op.
		
		Returns:
		  output: A `Tensor` of the same type as tensor, containing the vector or
		    matrix norms. If `keepdims` is True then the rank of output is equal to
		    the rank of `tensor`. Otherwise, if `axis` is none the output is a scalar,
		    if `axis` is an integer, the rank of `output` is one less than the rank
		    of `tensor`, if `axis` is a 2-tuple the rank of `output` is two less
		    than the rank of `tensor`.
		
		Raises:
		  ValueError: If `ord` or `axis` is invalid.
		
		@compatibility(numpy)
		Mostly equivalent to numpy.linalg.norm.
		Not supported: ord <= 0, 2-norm for matrices, nuclear norm.
		Other differences:
		  a) If axis is `None`, treats the flattened `tensor` as a vector
		   regardless of rank.
		  b) Explicitly supports 'euclidean' norm as the default, including for
		   higher order tensors.
		@end_compatibility
	**/
	static public function norm(tensor:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x != y) element-wise.
		
		Performs a [broadcast](
		https://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) with the
		arguments and then an element-wise inequality comparison, returning a Tensor
		of boolean values.
		
		For example:
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant(2)
		>>> tf.math.not_equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([False,  True])>
		
		>>> x = tf.constant([2, 4])
		>>> y = tf.constant([2, 4])
		>>> tf.math.not_equal(x, y)
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([False,  False])>
		
		Args:
		  x: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  y: A `tf.Tensor` or `tf.sparse.SparseTensor` or `tf.IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the same size as that of x or y.
		
		Raises:
		  `tf.errors.InvalidArgumentError`: If shapes of arguments are incompatible
	**/
	static public function not_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps a python function and uses it as a TensorFlow op.
		
		Given a python function `func` wrap this function as an operation in a
		TensorFlow function. `func` must take numpy arrays as its arguments and
		return numpy arrays as its outputs.
		
		The following example creates a TensorFlow graph with `np.sinh()` as an
		operation in the graph:
		
		>>> def my_numpy_func(x):
		...   # x will be a numpy array with the contents of the input to the
		...   # tf.function
		...   return np.sinh(x)
		>>> @tf.function(input_signature=[tf.TensorSpec(None, tf.float32)])
		... def tf_function(input):
		...   y = tf.numpy_function(my_numpy_func, [input], tf.float32)
		...   return y * y
		>>> tf_function(tf.constant(1.))
		<tf.Tensor: shape=(), dtype=float32, numpy=1.3810978>
		
		Comparison to `tf.py_function`:
		`tf.py_function` and `tf.numpy_function` are very similar, except that
		`tf.numpy_function` takes numpy arrays, and not `tf.Tensor`s. If you want the
		function to contain `tf.Tensors`, and have any TensorFlow operations executed
		in the function be differentiable, please use `tf.py_function`.
		
		Note: The `tf.numpy_function` operation has the following known
		limitations:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `tf.SavedModel`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.numpy_function()`. If you are using distributed
		  TensorFlow, you must run a `tf.distribute.Server` in the same process as the
		  program that calls `tf.numpy_function`  you must pin the created
		  operation to a device in that server (e.g. using `with tf.device():`).
		
		* Since the function takes numpy arrays, you cannot take gradients
		  through a numpy_function. If you require something that is differentiable,
		  please consider using tf.py_function.
		
		* The resulting function is assumed stateful and will never be optimized.
		
		Args:
		  func: A Python function, which accepts `numpy.ndarray` objects as arguments
		    and returns a list of `numpy.ndarray` objects (or a single
		    `numpy.ndarray`). This function must accept as many arguments as there are
		    tensors in `inp`, and these argument types will match the corresponding
		    `tf.Tensor` objects in `inp`. The returns `numpy.ndarray`s must match the
		    number and types defined `Tout`.
		    Important Note: Input and output `numpy.ndarray`s of `func` are not
		      guaranteed to be copies. In some cases their underlying memory will be
		      shared with the corresponding TensorFlow tensors. In-place modification
		      or storing `func` input or return values in python datastructures
		      without explicit (np.)copy can have non-deterministic consequences.
		  inp: A list of `tf.Tensor` objects.
		  Tout: A list or tuple of tensorflow data types or a single tensorflow data
		    type if there is only one, indicating what `func` returns.
		  name: (Optional) A name for the operation.
		
		Returns:
		  Single or list of `tf.Tensor` which `func` computes.
	**/
	static public function numpy_function(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a one-hot tensor.
		
		See also `tf.fill`, `tf.eye`.
		
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
		
		If `indices` is a RaggedTensor, the 'axis' argument must be positive and refer
		to a non-ragged axis. The output will be equivalent to applying 'one_hot' on
		the values of the RaggedTensor, and creating a new RaggedTensor from the
		result.
		
		If `dtype` is not provided, it will attempt to assume the data type of
		`on_value` or `off_value`, if one or both are passed in. If none of
		`on_value`, `off_value`, or `dtype` are provided, `dtype` will default to the
		value `tf.float32`.
		
		Note: If a non-numeric data type output is desired (`tf.string`, `tf.bool`,
		etc.), both `on_value` and `off_value` _must_ be provided to `one_hot`.
		
		For example:
		
		```python
		indices = [0, 1, 2]
		depth = 3
		tf.one_hot(indices, depth)  # output: [3 x 3]
		# [[1., 0., 0.],
		#  [0., 1., 0.],
		#  [0., 0., 1.]]
		
		indices = [0, 2, -1, 1]
		depth = 3
		tf.one_hot(indices, depth,
		           on_value=5.0, off_value=0.0,
		           axis=-1)  # output: [4 x 3]
		# [[5.0, 0.0, 0.0],  # one_hot(0)
		#  [0.0, 0.0, 5.0],  # one_hot(2)
		#  [0.0, 0.0, 0.0],  # one_hot(-1)
		#  [0.0, 5.0, 0.0]]  # one_hot(1)
		
		indices = [[0, 2], [1, -1]]
		depth = 3
		tf.one_hot(indices, depth,
		           on_value=1.0, off_value=0.0,
		           axis=-1)  # output: [2 x 2 x 3]
		# [[[1.0, 0.0, 0.0],   # one_hot(0)
		#   [0.0, 0.0, 1.0]],  # one_hot(2)
		#  [[0.0, 1.0, 0.0],   # one_hot(1)
		#   [0.0, 0.0, 0.0]]]  # one_hot(-1)
		
		indices = tf.ragged.constant([[0, 1], [2]])
		depth = 3
		tf.one_hot(indices, depth)  # output: [2 x None x 3]
		# [[[1., 0., 0.],
		#   [0., 1., 0.]],
		#  [[0., 0., 1.]]]
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
		  name: A name for the operation (optional).
		
		Returns:
		  output: The one-hot tensor.
		
		Raises:
		  TypeError: If dtype of either `on_value` or `off_value` don't match `dtype`
		  TypeError: If dtype of `on_value` and `off_value` don't match one another
	**/
	static public function one_hot(indices:Dynamic, depth:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to one (1).
		
		See also `tf.ones_like`, `tf.zeros`, `tf.fill`, `tf.eye`.
		
		This operation returns a tensor of type `dtype` with shape `shape` and
		all elements set to one.
		
		>>> tf.ones([3, 4], tf.int32)
		<tf.Tensor: shape=(3, 4), dtype=int32, numpy=
		array([[1, 1, 1, 1],
		       [1, 1, 1, 1],
		       [1, 1, 1, 1]], dtype=int32)>
		
		Args:
		  shape: A `list` of integers, a `tuple` of integers, or
		    a 1-D `Tensor` of type `int32`.
		  dtype: Optional DType of an element in the resulting `Tensor`. Default is
		    `tf.float32`.
		  name: Optional string. A name for the operation.
		
		Returns:
		  A `Tensor` with all elements set to one (1).
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor of all ones that has the same shape as the input.
		
		See also `tf.ones`.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the
		same type and shape as `tensor` with all elements set to 1. Optionally,
		you can use `dtype` to specify a new type for the returned tensor.
		
		For example:
		
		>>> tensor = tf.constant([[1, 2, 3], [4, 5, 6]])
		>>> tf.ones_like(tensor)
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[1, 1, 1],
		         [1, 1, 1]], dtype=int32)>
		
		Args:
		  input: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float16`, `float32`,
		    `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`,
		    `complex64`, `complex128`, `bool` or `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to one.
	**/
	static public function ones_like(input:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
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
		t = tf.constant([[1, 2, 3], [4, 5, 6]])
		paddings = tf.constant([[1, 1,], [2, 2]])
		# 'constant_values' is 0.
		# rank of 't' is 2.
		tf.pad(t, paddings, "CONSTANT")  # [[0, 0, 0, 0, 0, 0, 0],
		                                 #  [0, 0, 1, 2, 3, 0, 0],
		                                 #  [0, 0, 4, 5, 6, 0, 0],
		                                 #  [0, 0, 0, 0, 0, 0, 0]]
		
		tf.pad(t, paddings, "REFLECT")  # [[6, 5, 4, 5, 6, 5, 4],
		                                #  [3, 2, 1, 2, 3, 2, 1],
		                                #  [6, 5, 4, 5, 6, 5, 4],
		                                #  [3, 2, 1, 2, 3, 2, 1]]
		
		tf.pad(t, paddings, "SYMMETRIC")  # [[2, 1, 1, 2, 3, 3, 2],
		                                  #  [2, 1, 1, 2, 3, 3, 2],
		                                  #  [5, 4, 4, 5, 6, 6, 5],
		                                  #  [5, 4, 4, 5, 6, 6, 5]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  paddings: A `Tensor` of type `int32`.
		  mode: One of "CONSTANT", "REFLECT", or "SYMMETRIC" (case-insensitive)
		  constant_values: In "CONSTANT" mode, the scalar pad value to use. Must be
		    same type as `tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
		
		Raises:
		  ValueError: When mode is not one of "CONSTANT", "REFLECT", or "SYMMETRIC".
	**/
	static public function pad(tensor:Dynamic, paddings:Dynamic, ?mode:Dynamic, ?constant_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stacks a list of rank-`R` tensors into one rank-`(R+1)` tensor in parallel.
		
		Requires that the shape of inputs be known at graph construction time.
		
		Packs the list of tensors in `values` into a tensor with rank one higher than
		each tensor in `values`, by packing them along the first dimension.
		Given a list of length `N` of tensors of shape `(A, B, C)`; the `output`
		tensor will have the shape `(N, A, B, C)`.
		
		For example:
		
		```python
		x = tf.constant([1, 4])
		y = tf.constant([2, 5])
		z = tf.constant([3, 6])
		tf.parallel_stack([x, y, z])  # [[1, 4], [2, 5], [3, 6]]
		```
		
		The difference between `stack` and `parallel_stack` is that `stack` requires
		all the inputs be computed before the operation will begin but doesn't require
		that the input shapes be known during graph construction.
		
		`parallel_stack` will copy pieces of the input into the output as they become
		available, in some situations this can provide a performance benefit.
		
		Unlike `stack`, `parallel_stack` does NOT support backpropagation.
		
		This is the opposite of unstack.  The numpy equivalent is
		
		    tf.parallel_stack([x, y, z]) = np.asarray([x, y, z])
		
		@compatibility(eager)
		parallel_stack is not compatible with eager execution.
		@end_compatibility
		
		Args:
		  values: A list of `Tensor` objects with the same shape and type.
		  name: A name for this operation (optional).
		
		Returns:
		  output: A stacked `Tensor` with the same type as `values`.
		
		Raises:
		  RuntimeError: if executed in eager mode.
	**/
	static public function parallel_stack(values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the power of one value to another.
		
		Given a tensor `x` and a tensor `y`, this operation computes \\(x^y\\) for
		corresponding elements in `x` and `y`. For example:
		
		```python
		x = tf.constant([[2, 2], [3, 3]])
		y = tf.constant([[8, 16], [2, 3]])
		tf.pow(x, y)  # [[256, 65536], [9, 27]]
		```
		
		Args:
		  x: A `Tensor` of type `float16`, `float32`, `float64`, `int32`, `int64`,
		    `complex64`, or `complex128`.
		  y: A `Tensor` of type `float16`, `float32`, `float64`, `int32`, `int64`,
		    `complex64`, or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.
	**/
	static public function pow(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Print the specified inputs.
		
		A TensorFlow operator that prints the specified inputs to a desired
		output stream or logging level. The inputs may be dense or sparse Tensors,
		primitive python objects, data structures that contain tensors, and printable
		Python objects. Printed tensors will recursively show the first and last
		elements of each dimension to summarize.
		
		Example:
		  Single-input usage:
		
		  ```python
		  tensor = tf.range(10)
		  tf.print(tensor, output_stream=sys.stderr)
		  ```
		
		  (This prints "[0 1 2 ... 7 8 9]" to sys.stderr)
		
		  Multi-input usage:
		
		  ```python
		  tensor = tf.range(10)
		  tf.print("tensors:", tensor, {2: tensor * 2}, output_stream=sys.stdout)
		  ```
		
		  (This prints "tensors: [0 1 2 ... 7 8 9] {2: [0 2 4 ... 14 16 18]}" to
		  sys.stdout)
		
		  Changing the input separator:
		  ```python
		  tensor_a = tf.range(2)
		  tensor_b = tensor_a * 2
		  tf.print(tensor_a, tensor_b, output_stream=sys.stderr, sep=',')
		  ```
		
		  (This prints "[0 1],[0 2]" to sys.stderr)
		
		  Usage in a `tf.function`:
		
		  ```python
		  @tf.function
		  def f():
		      tensor = tf.range(10)
		      tf.print(tensor, output_stream=sys.stderr)
		      return tensor
		
		  range_tensor = f()
		  ```
		
		  (This prints "[0 1 2 ... 7 8 9]" to sys.stderr)
		
		*Compatibility usage in TF 1.x graphs*:
		
		  In graphs manually created outside of `tf.function`, this method returns
		  the created TF operator that prints the data. To make sure the
		  operator runs, users need to pass the produced op to
		  `tf.compat.v1.Session`'s run method, or to use the op as a control
		  dependency for executed ops by specifying
		  `with tf.compat.v1.control_dependencies([print_op])`.
		
		  ```python
		  tf.compat.v1.disable_v2_behavior()  # for TF1 compatibility only
		
		  sess = tf.compat.v1.Session()
		  with sess.as_default():
		    tensor = tf.range(10)
		    print_op = tf.print("tensors:", tensor, {2: tensor * 2},
		                        output_stream=sys.stdout)
		    with tf.control_dependencies([print_op]):
		      tripled_tensor = tensor * 3
		
		    sess.run(tripled_tensor)
		  ```
		
		  (This prints "tensors: [0 1 2 ... 7 8 9] {2: [0 2 4 ... 14 16 18]}" to
		  sys.stdout)
		
		Note: In Jupyter notebooks and colabs, `tf.print` prints to the notebook
		  cell outputs. It will not write to the notebook kernel's console logs.
		
		Args:
		  *inputs: Positional arguments that are the inputs to print. Inputs in the
		    printed output will be separated by spaces. Inputs may be python
		    primitives, tensors, data structures such as dicts and lists that may
		    contain tensors (with the data structures possibly nested in arbitrary
		    ways), and printable python objects.
		  output_stream: The output stream, logging level, or file to print to.
		    Defaults to sys.stderr, but sys.stdout, tf.compat.v1.logging.info,
		    tf.compat.v1.logging.warning, tf.compat.v1.logging.error,
		    absl.logging.info, absl.logging.warning and absl.logging.error are also
		    supported. To print to a file, pass a string started with "file://"
		    followed by the file path, e.g., "file:///tmp/foo.out".
		  summarize: The first and last `summarize` elements within each dimension are
		    recursively printed per Tensor. If None, then the first 3 and last 3
		    elements of each dimension are printed for each tensor. If set to -1, it
		    will print all elements of every tensor.
		  sep: The string to use to separate the inputs. Defaults to " ".
		  end: End character that is appended at the end the printed string. Defaults
		    to the newline character.
		  name: A name for the operation (optional).
		
		Returns:
		  None when executing eagerly. During graph tracing this returns
		  a TF operator that prints the specified inputs in the specified output
		  stream or logging level. This operator will be automatically executed
		  except inside of `tf.compat.v1` graphs and sessions.
		
		Raises:
		  ValueError: If an unsupported output stream is specified.
	**/
	static public function print(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wraps a python function into a TensorFlow op that executes it eagerly.
		
		This function allows expressing computations in a TensorFlow graph as
		Python functions. In particular, it wraps a Python function `func`
		in a once-differentiable TensorFlow operation that executes it with eager
		execution enabled. As a consequence, `tf.py_function` makes it
		possible to express control flow using Python constructs (`if`, `while`,
		`for`, etc.), instead of TensorFlow control flow constructs (`tf.cond`,
		`tf.while_loop`). For example, you might use `tf.py_function` to
		implement the log huber function:
		
		```python
		def log_huber(x, m):
		  if tf.abs(x) <= m:
		    return x**2
		  else:
		    return m**2 * (1 - 2 * tf.math.log(m) + tf.math.log(x**2))
		
		x = tf.compat.v1.placeholder(tf.float32)
		m = tf.compat.v1.placeholder(tf.float32)
		
		y = tf.py_function(func=log_huber, inp=[x, m], Tout=tf.float32)
		dy_dx = tf.gradients(y, x)[0]
		
		with tf.compat.v1.Session() as sess:
		  # The session executes `log_huber` eagerly. Given the feed values below,
		  # it will take the first branch, so `y` evaluates to 1.0 and
		  # `dy_dx` evaluates to 2.0.
		  y, dy_dx = sess.run([y, dy_dx], feed_dict={x: 1.0, m: 2.0})
		```
		
		You can also use `tf.py_function` to debug your models at runtime
		using Python tools, i.e., you can isolate portions of your code that
		you want to debug, wrap them in Python functions and insert `pdb` tracepoints
		or print statements as desired, and wrap those functions in
		`tf.py_function`.
		
		For more information on eager execution, see the
		[Eager guide](https://tensorflow.org/guide/eager).
		
		`tf.py_function` is similar in spirit to `tf.compat.v1.py_func`, but unlike
		the latter, the former lets you use TensorFlow operations in the wrapped
		Python function. In particular, while `tf.compat.v1.py_func` only runs on CPUs
		and
		wraps functions that take NumPy arrays as inputs and return NumPy arrays as
		outputs, `tf.py_function` can be placed on GPUs and wraps functions
		that take Tensors as inputs, execute TensorFlow operations in their bodies,
		and return Tensors as outputs.
		
		Like `tf.compat.v1.py_func`, `tf.py_function` has the following limitations
		with respect to serialization and distribution:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `GraphDef`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.py_function()`. If you are using distributed
		  TensorFlow, you must run a `tf.distribute.Server` in the same process as the
		  program that calls `tf.py_function()` and you must pin the created
		  operation to a device in that server (e.g. using `with tf.device():`).
		
		
		Args:
		  func: A Python function that accepts `inp` as arguments, and returns a
		    value (or list of values) whose type is described by `Tout`.
		
		  inp: Input arguments for `func`.  A list whose elements are `Tensor`s or
		    `CompositeTensors` (such as `tf.RaggedTensor`); or a single `Tensor` or
		    `CompositeTensor`.
		
		  Tout: The type(s) of the value(s) returned by `func`.  One of the
		    following.
		
		    * If `func` returns a `Tensor` (or a value that can be converted to a
		      Tensor): the `tf.DType` for that value.
		    * If `func` returns a `CompositeTensor`: The `tf.TypeSpec` for that value.
		    * If `func` returns `None`: the empty list (`[]`).
		    * If `func` returns a list of `Tensor` and `CompositeTensor` values:
		      a corresponding list of `tf.DType`s and `tf.TypeSpec`s for each value.
		
		  name: A name for the operation (optional).
		
		Returns:
		  The value(s) computed by `func`: a `Tensor`, `CompositeTensor`, or list of
		  `Tensor` and `CompositeTensor`; or an empty list if `func` returns `None`.
	**/
	static public function py_function(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public var qint16 : Dynamic;
	static public var qint32 : Dynamic;
	static public var qint8 : Dynamic;
	static public var quint16 : Dynamic;
	static public var quint8 : Dynamic;
	/**
		Creates a sequence of numbers.
		
		Creates a sequence of numbers that begins at `start` and extends by
		increments of `delta` up to but not including `limit`.
		
		The dtype of the resulting tensor is inferred from the inputs unless
		it is provided explicitly.
		
		Like the Python builtin `range`, `start` defaults to 0, so that
		`range(n) = range(0, n)`.
		
		For example:
		
		>>> start = 3
		>>> limit = 18
		>>> delta = 3
		>>> tf.range(start, limit, delta)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 3,  6,  9, 12, 15], dtype=int32)>
		
		>>> start = 3
		>>> limit = 1
		>>> delta = -0.5
		>>> tf.range(start, limit, delta)
		<tf.Tensor: shape=(4,), dtype=float32,
		numpy=array([3. , 2.5, 2. , 1.5], dtype=float32)>
		
		>>> limit = 5
		>>> tf.range(limit)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([0, 1, 2, 3, 4], dtype=int32)>
		
		Args:
		  start: A 0-D `Tensor` (scalar). Acts as first entry in the range if `limit`
		    is not None; otherwise, acts as range limit and first entry defaults to 0.
		  limit: A 0-D `Tensor` (scalar). Upper limit of sequence, exclusive. If None,
		    defaults to the value of `start` while the first entry of the range
		    defaults to 0.
		  delta: A 0-D `Tensor` (scalar). Number that increments `start`. Defaults to
		    1.
		  dtype: The type of the elements of the resulting tensor.
		  name: A name for the operation. Defaults to "range".
		
		Returns:
		  An 1-D `Tensor` of type `dtype`.
		
		@compatibility(numpy)
		Equivalent to np.arange
		@end_compatibility
	**/
	static public function range(start:Dynamic, ?limit:Dynamic, ?delta:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
		
		See also `tf.shape`.
		
		Returns a 0-D `int32` `Tensor` representing the rank of `input`.
		
		For example:
		
		```python
		# shape of tensor 't' is [2, 2, 3]
		t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		tf.rank(t)  # 3
		```
		
		**Note**: The rank of a tensor is not the same as the rank of a matrix. The
		rank of a tensor is the number of indices required to uniquely select each
		element of the tensor. Rank is also known as "order", "degree", or "ndims."
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		
		@compatibility(numpy)
		Equivalent to np.ndim
		@end_compatibility
	**/
	static public function rank(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x / y element-wise for real types.
		
		If `x` and `y` are reals, this will return the floating-point division.
		
		*NOTE*: `Div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function realdiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An eager-compatible version of recompute_grad.
		
		For f(*args, **kwargs), this supports gradients with respect to args or
		kwargs, but kwargs are currently only supported in eager-mode.
		Note that for keras layer and model objects, this is handled automatically.
		
		Warning: If `f` was originally a tf.keras Model or Layer object, `g` will not
		be able to access the member variables of that object, because `g` returns
		through the wrapper function `inner`.  When recomputing gradients through
		objects that inherit from keras, we suggest keeping a reference to the
		underlying object around for the purpose of accessing these variables.
		
		Args:
		  f: function `f(*x)` that returns a `Tensor` or sequence of `Tensor` outputs.
		
		Returns:
		  A function `g` that wraps `f`, but which recomputes `f` on the backwards
		  pass of a gradient call.
	**/
	static public function recompute_grad(f:Dynamic):Dynamic;
	/**
		Computes `tf.math.logical_and` of elements across dimensions of a tensor.
		
		This is the reduction operation for the elementwise `tf.math.logical_and` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> x = tf.constant([[True,  True], [False, False]])
		  >>> tf.math.reduce_all(x)
		  <tf.Tensor: shape=(), dtype=bool, numpy=False>
		  >>> tf.math.reduce_all(x, 0)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([False, False])>
		  >>> tf.math.reduce_all(x, 1)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True, False])>
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.all
		@end_compatibility
	**/
	static public function reduce_all(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes `tf.math.logical_or` of elements across dimensions of a tensor.
		
		This is the reduction operation for the elementwise `tf.math.logical_or` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> x = tf.constant([[True,  True], [False, False]])
		  >>> tf.reduce_any(x)
		  <tf.Tensor: shape=(), dtype=bool, numpy=True>
		  >>> tf.reduce_any(x, 0)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True,  True])>
		  >>> tf.reduce_any(x, 1)
		  <tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True, False])>
		
		Args:
		  input_tensor: The boolean tensor to reduce.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.any
		@end_compatibility
	**/
	static public function reduce_any(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes log(sum(exp(elements across dimensions of a tensor))).
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		This function is more numerically stable than log(sum(exp(input))). It avoids
		overflows caused by taking the exp of large inputs and underflows caused by
		taking the log of small inputs.
		
		For example:
		
		```python
		x = tf.constant([[0., 0., 0.], [0., 0., 0.]])
		tf.reduce_logsumexp(x)  # log(6)
		tf.reduce_logsumexp(x, 0)  # [log(2), log(2), log(2)]
		tf.reduce_logsumexp(x, 1)  # [log(3), log(3)]
		tf.reduce_logsumexp(x, 1, keepdims=True)  # [[log(3)], [log(3)]]
		tf.reduce_logsumexp(x, [0, 1])  # log(6)
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_logsumexp(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes `tf.math.maximum` of elements across dimensions of a tensor.
		
		This is the reduction operation for the elementwise `tf.math.maximum` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Usage example:
		
		  >>> x = tf.constant([5, 1, 2, 4])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=5>
		  >>> x = tf.constant([-5, -1, -2, -4])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=-1>
		  >>> x = tf.constant([4, float('nan')])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('nan'), float('nan')])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('-inf'), float('inf')])
		  >>> tf.reduce_max(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=inf>
		
		See the numpy docs for `np.amax` and `np.nanmax` behavior.
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_max(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis` by computing the
		mean of elements across the dimensions in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a tensor with a single
		element is returned.
		
		For example:
		
		>>> x = tf.constant([[1., 1.], [2., 2.]])
		>>> tf.reduce_mean(x)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.5>
		>>> tf.reduce_mean(x, 0)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([1.5, 1.5], dtype=float32)>
		>>> tf.reduce_mean(x, 1)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([1., 2.], dtype=float32)>
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.mean
		
		Please note that `np.mean` has a `dtype` parameter that could be used to
		specify the output type. By default this is `dtype=float64`. On the other
		hand, `tf.reduce_mean` has an aggressive type inference from `input_tensor`,
		for example:
		
		>>> x = tf.constant([1, 0, 1, 0])
		>>> tf.reduce_mean(x)
		<tf.Tensor: shape=(), dtype=int32, numpy=0>
		>>> y = tf.constant([1., 0., 1., 0.])
		>>> tf.reduce_mean(y)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.5>
		
		@end_compatibility
	**/
	static public function reduce_mean(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the `tf.math.minimum` of elements across dimensions of a tensor.
		
		This is the reduction operation for the elementwise `tf.math.minimum` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		>>> a = tf.constant([
		...   [[1, 2], [3, 4]],
		...   [[1, 2], [3, 4]]
		... ])
		>>> tf.reduce_min(a)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		Choosing a specific axis returns minimum element in the given axis:
		
		>>> b = tf.constant([[1, 2, 3], [4, 5, 6]])
		>>> tf.reduce_min(b, axis=0)
		<tf.Tensor: shape=(3,), dtype=int32, numpy=array([1, 2, 3], dtype=int32)>
		>>> tf.reduce_min(b, axis=1)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1, 4], dtype=int32)>
		
		Setting `keepdims` to `True` retains the dimension of `input_tensor`:
		
		>>> tf.reduce_min(a, keepdims=True)
		<tf.Tensor: shape=(1, 1, 1), dtype=int32, numpy=array([[[1]]], dtype=int32)>
		>>> tf.math.reduce_min(a, axis=0, keepdims=True)
		<tf.Tensor: shape=(1, 2, 2), dtype=int32, numpy=
		array([[[1, 2],
		        [3, 4]]], dtype=int32)>
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.min
		@end_compatibility
	**/
	static public function reduce_min(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes `tf.math.multiply` of elements across dimensions of a tensor.
		
		This is the reduction operation for the elementwise `tf.math.multiply` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> x = tf.constant([[1., 2.], [3., 4.]])
		  >>> tf.math.reduce_prod(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=24.>
		  >>> tf.math.reduce_prod(x, 0)
		  <tf.Tensor: shape=(2,), dtype=float32, numpy=array([3., 8.], dtype=float32)>
		  >>> tf.math.reduce_prod(x, 1)
		  <tf.Tensor: shape=(2,), dtype=float32, numpy=array([2., 12.],
		  dtype=float32)>
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.prod
		@end_compatibility
	**/
	static public function reduce_prod(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a tensor.
		
		This is the reduction operation for the elementwise `tf.math.add` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		  >>> # x has a shape of (2, 3) (two rows and three columns):
		  >>> x = tf.constant([[1, 1, 1], [1, 1, 1]])
		  >>> x.numpy()
		  array([[1, 1, 1],
		         [1, 1, 1]], dtype=int32)
		  >>> # sum all the elements
		  >>> # 1 + 1 + 1 + 1 + 1+ 1 = 6
		  >>> tf.reduce_sum(x).numpy()
		  6
		  >>> # reduce along the first dimension
		  >>> # the result is [1, 1, 1] + [1, 1, 1] = [2, 2, 2]
		  >>> tf.reduce_sum(x, 0).numpy()
		  array([2, 2, 2], dtype=int32)
		  >>> # reduce along the second dimension
		  >>> # the result is [1, 1] + [1, 1] + [1, 1] = [3, 3]
		  >>> tf.reduce_sum(x, 1).numpy()
		  array([3, 3], dtype=int32)
		  >>> # keep the original dimensions
		  >>> tf.reduce_sum(x, 1, keepdims=True).numpy()
		  array([[3],
		         [3]], dtype=int32)
		  >>> # reduce along both dimensions
		  >>> # the result is 1 + 1 + 1 + 1 + 1 + 1 = 6
		  >>> # or, equivalently, reduce along rows, then reduce the resultant array
		  >>> # [1, 1, 1] + [1, 1, 1] = [2, 2, 2]
		  >>> # 2 + 2 + 2 = 6
		  >>> tf.reduce_sum(x, [0, 1]).numpy()
		  6
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor)]`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor.
		
		@compatibility(numpy)
		Equivalent to np.sum apart the fact that numpy upcast uint8 and int32 to
		int64 while tensorflow returns the same dtype as the input.
		@end_compatibility
	**/
	static public function reduce_sum(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Registers a function for converting objects of `base_type` to `Tensor`.
		
		The conversion function must have the following signature:
		
		```python
		    def conversion_func(value, dtype=None, name=None, as_ref=False):
		      # ...
		```
		
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
		    conversion function. Conversion functions with smaller priority values run
		    earlier than conversion functions with larger priority values. Defaults to
		    100.
		
		Raises:
		  TypeError: If the arguments do not have the appropriate type.
	**/
	static public function register_tensor_conversion_function(base_type:Dynamic, conversion_func:Dynamic, ?priority:Dynamic):Dynamic;
	/**
		Repeat elements of `input`.
		
		See also `tf.concat`, `tf.stack`, `tf.tile`.
		
		Args:
		  input: An `N`-dimensional Tensor.
		  repeats: An 1-D `int` Tensor. The number of repetitions for each element.
		    repeats is broadcasted to fit the shape of the given axis. `len(repeats)`
		    must equal `input.shape[axis]` if axis is not None.
		  axis: An int. The axis along which to repeat values. By default (axis=None),
		    use the flattened input array, and return a flat output array.
		  name: A name for the operation.
		
		Returns:
		  A Tensor which has the same shape as `input`, except along the given axis.
		    If axis is None then the output array is flattened to match the flattened
		    input array.
		
		Example usage:
		
		>>> repeat(['a', 'b', 'c'], repeats=[3, 0, 2], axis=0)
		<tf.Tensor: shape=(5,), dtype=string,
		numpy=array([b'a', b'a', b'a', b'c', b'c'], dtype=object)>
		
		>>> repeat([[1, 2], [3, 4]], repeats=[2, 3], axis=0)
		<tf.Tensor: shape=(5, 2), dtype=int32, numpy=
		array([[1, 2],
		       [1, 2],
		       [3, 4],
		       [3, 4],
		       [3, 4]], dtype=int32)>
		
		>>> repeat([[1, 2], [3, 4]], repeats=[2, 3], axis=1)
		<tf.Tensor: shape=(2, 5), dtype=int32, numpy=
		array([[1, 1, 2, 2, 2],
		       [3, 3, 4, 4, 4]], dtype=int32)>
		
		>>> repeat(3, repeats=4)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([3, 3, 3, 3], dtype=int32)>
		
		>>> repeat([[1,2], [3,4]], repeats=2)
		<tf.Tensor: shape=(8,), dtype=int32,
		numpy=array([1, 1, 2, 2, 3, 3, 4, 4], dtype=int32)>
	**/
	static public function repeat(input:Dynamic, repeats:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate padding required to make block_shape divide input_shape.
		
		This function can be used to calculate a suitable paddings argument for use
		with space_to_batch_nd and batch_to_space_nd.
		
		Args:
		  input_shape: int32 Tensor of shape [N].
		  block_shape: int32 Tensor of shape [N].
		  base_paddings: Optional int32 Tensor of shape [N, 2].  Specifies the minimum
		    amount of padding to use.  All elements must be >= 0.  If not specified,
		    defaults to 0.
		  name: string.  Optional name prefix.
		
		Returns:
		  (paddings, crops), where:
		
		  `paddings` and `crops` are int32 Tensors of rank 2 and shape [N, 2]
		  satisfying:
		
		      paddings[i, 0] = base_paddings[i, 0].
		      0 <= paddings[i, 1] - base_paddings[i, 1] < block_shape[i]
		      (input_shape[i] + paddings[i, 0] + paddings[i, 1]) % block_shape[i] == 0
		
		      crops[i, 0] = 0
		      crops[i, 1] = paddings[i, 1] - base_paddings[i, 1]
		
		Raises: ValueError if called with incompatible shapes.
	**/
	static public function required_space_to_batch_paddings(input_shape:Dynamic, block_shape:Dynamic, ?base_paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reshapes a tensor.
		
		Given `tensor`, this operation returns a new `tf.Tensor` that has the same
		values as `tensor` in the same order, except with a new shape given by
		`shape`.
		
		>>> t1 = [[1, 2, 3],
		...       [4, 5, 6]]
		>>> print(tf.shape(t1).numpy())
		[2 3]
		>>> t2 = tf.reshape(t1, [6])
		>>> t2
		<tf.Tensor: shape=(6,), dtype=int32,
		  numpy=array([1, 2, 3, 4, 5, 6], dtype=int32)>
		>>> tf.reshape(t2, [3, 2])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		  array([[1, 2],
		         [3, 4],
		         [5, 6]], dtype=int32)>
		
		The `tf.reshape` does not change the order of or the total number of elements
		in the tensor, and so it can reuse the underlying data buffer. This makes it
		a fast operation independent of how big of a tensor it is operating on.
		
		>>> tf.reshape([1, 2, 3], [2, 2])
		Traceback (most recent call last):
		...
		InvalidArgumentError: Input to reshape is a tensor with 3 values, but the
		requested shape has 4
		
		To instead reorder the data to rearrange the dimensions of a tensor, see
		`tf.transpose`.
		
		>>> t = [[1, 2, 3],
		...      [4, 5, 6]]
		>>> tf.reshape(t, [3, 2]).numpy()
		array([[1, 2],
		       [3, 4],
		       [5, 6]], dtype=int32)
		>>> tf.transpose(t, perm=[1, 0]).numpy()
		array([[1, 4],
		       [2, 5],
		       [3, 6]], dtype=int32)
		
		If one component of `shape` is the special value -1, the size of that
		dimension is computed so that the total size remains constant.  In particular,
		a `shape` of `[-1]` flattens into 1-D.  At most one component of `shape` can
		be -1.
		
		>>> t = [[1, 2, 3],
		...      [4, 5, 6]]
		>>> tf.reshape(t, [-1])
		<tf.Tensor: shape=(6,), dtype=int32,
		  numpy=array([1, 2, 3, 4, 5, 6], dtype=int32)>
		>>> tf.reshape(t, [3, -1])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		  array([[1, 2],
		         [3, 4],
		         [5, 6]], dtype=int32)>
		>>> tf.reshape(t, [-1, 2])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		  array([[1, 2],
		         [3, 4],
		         [5, 6]], dtype=int32)>
		
		`tf.reshape(t, [])` reshapes a tensor `t` with one element to a scalar.
		
		>>> tf.reshape([7], []).numpy()
		7
		
		More examples:
		
		>>> t = [1, 2, 3, 4, 5, 6, 7, 8, 9]
		>>> print(tf.shape(t).numpy())
		[9]
		>>> tf.reshape(t, [3, 3])
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[1, 2, 3],
		         [4, 5, 6],
		         [7, 8, 9]], dtype=int32)>
		
		>>> t = [[[1, 1], [2, 2]],
		...      [[3, 3], [4, 4]]]
		>>> print(tf.shape(t).numpy())
		[2 2 2]
		>>> tf.reshape(t, [2, 4])
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		  array([[1, 1, 2, 2],
		         [3, 3, 4, 4]], dtype=int32)>
		
		>>> t = [[[1, 1, 1],
		...       [2, 2, 2]],
		...      [[3, 3, 3],
		...       [4, 4, 4]],
		...      [[5, 5, 5],
		...       [6, 6, 6]]]
		>>> print(tf.shape(t).numpy())
		[3 2 3]
		>>> # Pass '[-1]' to flatten 't'.
		>>> tf.reshape(t, [-1])
		<tf.Tensor: shape=(18,), dtype=int32,
		  numpy=array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6],
		  dtype=int32)>
		>>> # -- Using -1 to infer the shape --
		>>> # Here -1 is inferred to be 9:
		>>> tf.reshape(t, [2, -1])
		<tf.Tensor: shape=(2, 9), dtype=int32, numpy=
		  array([[1, 1, 1, 2, 2, 2, 3, 3, 3],
		         [4, 4, 4, 5, 5, 5, 6, 6, 6]], dtype=int32)>
		>>> # -1 is inferred to be 2:
		>>> tf.reshape(t, [-1, 9])
		<tf.Tensor: shape=(2, 9), dtype=int32, numpy=
		  array([[1, 1, 1, 2, 2, 2, 3, 3, 3],
		         [4, 4, 4, 5, 5, 5, 6, 6, 6]], dtype=int32)>
		>>> # -1 is inferred to be 3:
		>>> tf.reshape(t, [ 2, -1, 3])
		<tf.Tensor: shape=(2, 3, 3), dtype=int32, numpy=
		  array([[[1, 1, 1],
		          [2, 2, 2],
		          [3, 3, 3]],
		         [[4, 4, 4],
		          [5, 5, 5],
		          [6, 6, 6]]], dtype=int32)>
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Defines the shape of the output tensor.
		  name: Optional string. A name for the operation.
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reshape(tensor:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var resource : Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
		Given a `tensor`, and a `int32` tensor `axis` representing the set of
		dimensions of `tensor` to reverse. This operation reverses each dimension
		`i` for which there exists `j` s.t. `axis[j] == i`.
		
		`tensor` can have up to 8 dimensions. The number of dimensions specified
		in `axis` may be 0 or more entries. If an index is specified more than
		once, a InvalidArgument error is raised.
		
		For example:
		
		```
		# tensor 't' is [[[[ 0,  1,  2,  3],
		#                  [ 4,  5,  6,  7],
		#                  [ 8,  9, 10, 11]],
		#                 [[12, 13, 14, 15],
		#                  [16, 17, 18, 19],
		#                  [20, 21, 22, 23]]]]
		# tensor 't' shape is [1, 2, 3, 4]
		
		# 'dims' is [3] or 'dims' is [-1]
		reverse(t, dims) ==> [[[[ 3,  2,  1,  0],
		                        [ 7,  6,  5,  4],
		                        [ 11, 10, 9, 8]],
		                       [[15, 14, 13, 12],
		                        [19, 18, 17, 16],
		                        [23, 22, 21, 20]]]]
		
		# 'dims' is '[1]' (or 'dims' is '[-3]')
		reverse(t, dims) ==> [[[[12, 13, 14, 15],
		                        [16, 17, 18, 19],
		                        [20, 21, 22, 23]
		                       [[ 0,  1,  2,  3],
		                        [ 4,  5,  6,  7],
		                        [ 8,  9, 10, 11]]]]
		
		# 'dims' is '[2]' (or 'dims' is '[-2]')
		reverse(t, dims) ==> [[[[8, 9, 10, 11],
		                        [4, 5, 6, 7],
		                        [0, 1, 2, 3]]
		                       [[20, 21, 22, 23],
		                        [16, 17, 18, 19],
		                        [12, 13, 14, 15]]]]
		```
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `int64`, `uint64`, `bool`, `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
		    Up to 8-D.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. The indices of the dimensions to reverse. Must be in the range
		    `[-rank(tensor), rank(tensor))`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reverse(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses variable length slices.
		
		This op first slices `input` along the dimension `batch_axis`, and for
		each slice `i`, reverses the first `seq_lengths[i]` elements along the
		dimension `seq_axis`.
		
		The elements of `seq_lengths` must obey `seq_lengths[i] <=
		input.dims[seq_axis]`, and `seq_lengths` must be a vector of length
		`input.dims[batch_axis]`.
		
		The output slice `i` along dimension `batch_axis` is then given by
		input slice `i`, with the first `seq_lengths[i]` slices along
		dimension `seq_axis` reversed.
		
		Example usage:
		
		>>> seq_lengths = [7, 2, 3, 5]
		>>> input = [[1, 2, 3, 4, 5, 0, 0, 0], [1, 2, 0, 0, 0, 0, 0, 0],
		...          [1, 2, 3, 4, 0, 0, 0, 0], [1, 2, 3, 4, 5, 6, 7, 8]]
		>>> output = tf.reverse_sequence(input, seq_lengths, seq_axis=1, batch_axis=0)
		>>> output
		<tf.Tensor: shape=(4, 8), dtype=int32, numpy=
		array([[0, 0, 5, 4, 3, 2, 1, 0],
		       [2, 1, 0, 0, 0, 0, 0, 0],
		       [3, 2, 1, 4, 0, 0, 0, 0],
		       [5, 4, 3, 2, 1, 6, 7, 8]], dtype=int32)>
		
		Args:
		  input: A `Tensor`. The input to reverse.
		  seq_lengths: A `Tensor`. Must be one of the following types: `int32`,
		    `int64`. 1-D with length `input.dims(batch_axis)` and `max(seq_lengths) <=
		    input.dims(seq_axis)`
		  seq_axis: An `int`. The dimension which is partially reversed.
		  batch_axis: An optional `int`. Defaults to `0`. The dimension along which
		    reversal is performed.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor. Has the same type as input.
	**/
	static public function reverse_sequence(input:Dynamic, seq_lengths:Dynamic, ?seq_axis:Dynamic, ?batch_axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rolls the elements of a tensor along an axis.
		
		The elements are shifted positively (towards larger indices) by the offset of
		`shift` along the dimension of `axis`. Negative `shift` values will shift
		elements in the opposite direction. Elements that roll passed the last position
		will wrap around to the first and vice versa. Multiple shifts along multiple
		axes may be specified.
		
		For example:
		
		```
		# 't' is [0, 1, 2, 3, 4]
		roll(t, shift=2, axis=0) ==> [3, 4, 0, 1, 2]
		
		# shifting along multiple dimensions
		# 't' is [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9]]
		roll(t, shift=[1, -2], axis=[0, 1]) ==> [[7, 8, 9, 5, 6], [2, 3, 4, 0, 1]]
		
		# shifting along the same axis multiple times
		# 't' is [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9]]
		roll(t, shift=[2, -3], axis=[1, 1]) ==> [[1, 2, 3, 4, 0], [6, 7, 8, 9, 5]]
		```
		
		Args:
		  input: A `Tensor`.
		  shift: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Dimension must be 0-D or 1-D. `shift[i]` specifies the number of places by which
		    elements are shifted positively (towards larger indices) along the dimension
		    specified by `axis[i]`. Negative shifts will roll the elements in the opposite
		    direction.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Dimension must be 0-D or 1-D. `axis[i]` specifies the dimension that the shift
		    `shift[i]` should occur. If the same axis is referenced more than once, the
		    total shift for that axis will be the sum of all the shifts that belong to that
		    axis.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function roll(input:Dynamic, shift:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rounds the values of a tensor to the nearest integer, element-wise.
		
		Rounds half to even.  Also known as bankers rounding. If you want to round
		according to the current system rounding mode use tf::cint.
		For example:
		
		```python
		x = tf.constant([0.9, 2.5, 2.3, 1.5, -4.5])
		tf.round(x)  # [ 1.0, 2.0, 2.0, 2.0, -4.0 ]
		```
		
		Args:
		  x: A `Tensor` of type `float16`, `float32`, `float64`, `int32`, or `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as `x`.
	**/
	static public function round(x:Dynamic, ?name:Dynamic):Dynamic;
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
		
		This is a special case of `tf.math.multiply`, where the first value must be a
		`scalar`. Unlike the general form of `tf.math.multiply`, this is operation is
		guaranteed to be efficient for `tf.IndexedSlices`.
		
		>>> x = tf.reshape(tf.range(30, dtype=tf.float32), [10, 3])
		>>> with tf.GradientTape() as g:
		...   g.watch(x)
		...   y = tf.gather(x, [1, 2])  # IndexedSlices
		...   z = tf.math.scalar_mul(10.0, y)
		
		Args:
		  scalar: A 0-D scalar `Tensor`. Must have known shape.
		  x: A `Tensor` or `IndexedSlices` to be scaled.
		  name: A name for the operation (optional).
		
		Returns:
		  `scalar * x` of the same type (`Tensor` or `IndexedSlices`) as `x`.
		
		Raises:
		  ValueError: if scalar is not a 0-D `scalar`.
	**/
	static public function scalar_mul(scalar:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		scan on the list of tensors unpacked from `elems` on dimension 0. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.scan(fn, elems, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.scan(fn, elems))
		
		The simplest version of `scan` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the tensors
		unpacked from `elems` on dimension 0. The callable fn takes two tensors as
		arguments. The first argument is the accumulated value computed from the
		preceding invocation of fn, and the second is the value at the current
		position of `elems`. If `initializer` is None, `elems` must contain at least
		one element, and its first element is used as the initializer.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `[len(values)] + fn(initializer, values[0]).shape`.
		If reverse=True, it's fn(initializer, values[-1]).shape.
		
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
		`fn = lambda (acc_p1, acc_p2), (t1, [t2, t3]):` and `fn` must return a list,
		`[acc_n1, acc_n2]`.  An alternative correct signature for `fn`, and the
		 one that works in `python3`, is:
		`fn = lambda a, t:`, where `a` and `t` correspond to the input tuples.
		
		Args:
		  fn: The callable to be performed.  It accepts two arguments.  The first will
		    have the same structure as `initializer` if one is provided, otherwise it
		    will have the same structure as `elems`.  The second will have the same
		    (possibly nested) structure as `elems`.  Its output must have the same
		    structure as `initializer` if one is provided, otherwise it must have the
		    same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be the first argument to `fn`.
		  initializer: (optional) A tensor or (possibly nested) sequence of tensors,
		    initial value for the accumulator, and the expected output type of `fn`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  reverse: (optional) True scans the tensor last to first (instead of first to
		    last).
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor packs the
		  results of applying `fn` to tensors unpacked from `elems` along the first
		  dimension, and the previous accumulator value(s), from first to last (or
		  last to first, if `reverse=True`).
		
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
		  sum = scan(lambda a, x: a + x, elems, reverse=True)
		  # sum == [21, 20, 18, 15, 11, 6]
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
	static public function scan(fn:Dynamic, elems:Dynamic, ?initializer:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scatters `updates` into a tensor of shape `shape` according to `indices`.
		
		Update the input tensor by scattering sparse `updates` according to individual values at the specified `indices`.
		This op returns an `output` tensor with the `shape` you specify. This op is the
		inverse of the `tf.gather_nd` operator which extracts values or slices from a
		given tensor.
		
		This operation is similar to `tf.tensor_scatter_add`, except that the tensor is
		zero-initialized. Calling `tf.scatter_nd(indices, values, shape)`
		is identical to calling
		`tf.tensor_scatter_add(tf.zeros(shape, values.dtype), indices, values)`.
		
		If `indices` contains duplicates, the duplicate `values` are accumulated
		(summed).
		
		**WARNING**: The order in which updates are applied is nondeterministic, so the
		output will be nondeterministic if `indices` contains duplicates;
		numbers summed in different order may yield different results because of some
		numerical approximation issues.
		
		`indices` is an integer tensor of shape `shape`. The last dimension
		of `indices` can be at most the rank of `shape`:
		
		    indices.shape[-1] <= shape.rank
		
		The last dimension of `indices` corresponds to indices of elements
		(if `indices.shape[-1] = shape.rank`) or slices
		(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
		`shape`.
		
		`updates` is a tensor with shape:
		
		    indices.shape[:-1] + shape[indices.shape[-1]:]
		
		The simplest form of the scatter op is to insert individual elements in
		a tensor by index. Consider an example where you want to insert 4 scattered
		elements in a rank-1 tensor with 8 elements.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterNd1.png" alt>
		</div>
		
		In Python, this scatter operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    shape = tf.constant([8])
		    scatter = tf.scatter_nd(indices, updates, shape)
		    print(scatter)
		```
		
		The resulting tensor would look like this:
		
		    [0, 11, 0, 10, 9, 0, 0, 12]
		
		You can also insert entire slices of a higher rank tensor all at once. For
		example, you can insert two slices in the first dimension of a rank-3 tensor
		with two matrices of new values.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterNd2.png" alt>
		</div>
		
		In Python, this scatter operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    shape = tf.constant([4, 4, 4])
		    scatter = tf.scatter_nd(indices, updates, shape)
		    print(scatter)
		```
		
		The resulting tensor would look like this:
		
		    [[[5, 5, 5, 5], [6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8]],
		     [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]],
		     [[5, 5, 5, 5], [6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8]],
		     [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Tensor of indices.
		  updates: A `Tensor`. Values to scatter into the output tensor.
		  shape: A `Tensor`. Must have the same type as `indices`.
		    1-D. The shape of the output tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `updates`.
	**/
	static public function scatter_nd(indices:Dynamic, updates:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Searches for where a value would go in a sorted sequence.
		
		This is not a method for checking containment (like python `in`).
		
		The typical use case for this operation is "binning", "bucketing", or
		"discretizing". The `values` are assigned to bucket-indices based on the
		**edges** listed in `sorted_sequence`. This operation
		returns the bucket-index for each value.
		
		>>> edges = [-1, 3.3, 9.1, 10.0]
		>>> values = [0.0, 4.1, 12.0]
		>>> tf.searchsorted(edges, values).numpy()
		array([1, 2, 4], dtype=int32)
		
		The `side` argument controls which index is returned if a value lands exactly
		on an edge:
		
		>>> seq = [0, 3, 9, 10, 10]
		>>> values = [0, 4, 10]
		>>> tf.searchsorted(seq, values).numpy()
		array([0, 2, 3], dtype=int32)
		>>> tf.searchsorted(seq, values, side="right").numpy()
		array([1, 2, 5], dtype=int32)
		
		The `axis` is not settable for this operation. It always operates on the
		innermost dimension (`axis=-1`). The operation will accept any number of
		outer dimensions. Here it is applied to the rows of a matrix:
		
		>>> sorted_sequence = [[0., 3., 8., 9., 10.],
		...                    [1., 2., 3., 4., 5.]]
		>>> values = [[9.8, 2.1, 4.3],
		...           [0.1, 6.6, 4.5, ]]
		>>> tf.searchsorted(sorted_sequence, values).numpy()
		array([[4, 1, 2],
		       [0, 5, 4]], dtype=int32)
		
		Note: This operation assumes that `sorted_sequence` **is sorted** along the
		innermost axis, maybe using `tf.sort(..., axis=-1)`. **If the sequence is not
		sorted no error is raised** and the content of the returned tensor is not well
		defined.
		
		Args:
		  sorted_sequence: N-D `Tensor` containing a sorted sequence.
		  values: N-D `Tensor` containing the search values.
		  side: 'left' or 'right'; 'left' corresponds to lower_bound and 'right' to
		    upper_bound.
		  out_type: The output type (`int32` or `int64`).  Default is `tf.int32`.
		  name: Optional name for the operation.
		
		Returns:
		  An N-D `Tensor` the size of `values` containing the result of applying
		  either lower_bound or upper_bound (depending on side) to each value.  The
		  result is not a global index to the entire `Tensor`, but the index in the
		  last dimension.
		
		Raises:
		  ValueError: If the last dimension of `sorted_sequence >= 2^31-1` elements.
		              If the total size of `values` exceeds `2^31 - 1` elements.
		              If the first `N-1` dimensions of the two tensors don't match.
	**/
	static public function searchsorted(sorted_sequence:Dynamic, values:Dynamic, ?side:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a mask tensor representing the first N positions of each cell.
		
		If `lengths` has shape `[d_1, d_2, ..., d_n]` the resulting tensor `mask` has
		dtype `dtype` and shape `[d_1, d_2, ..., d_n, maxlen]`, with
		
		```
		mask[i_1, i_2, ..., i_n, j] = (j < lengths[i_1, i_2, ..., i_n])
		```
		
		Examples:
		
		```python
		tf.sequence_mask([1, 3, 2], 5)  # [[True, False, False, False, False],
		                                #  [True, True, True, False, False],
		                                #  [True, True, False, False, False]]
		
		tf.sequence_mask([[1, 3],[2,0]])  # [[[True, False, False],
		                                  #   [True, True, True]],
		                                  #  [[True, True, False],
		                                  #   [False, False, False]]]
		```
		
		Args:
		  lengths: integer tensor, all its values <= maxlen.
		  maxlen: scalar integer tensor, size of last dimension of returned tensor.
		    Default is the maximum value in `lengths`.
		  dtype: output type of the resulting tensor.
		  name: name of the op.
		
		Returns:
		  A mask tensor of shape `lengths.shape + (maxlen,)`, cast to specified dtype.
		Raises:
		  ValueError: if `maxlen` is not a scalar.
	**/
	static public function sequence_mask(lengths:Dynamic, ?maxlen:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a tensor containing the shape of the input tensor.
		
		See also `tf.size`, `tf.rank`.
		
		`tf.shape` returns a 1-D integer tensor representing the shape of `input`.
		For a scalar input, the tensor returned has a shape of (0,) and its value is
		the empty vector (i.e. []).
		
		For example:
		
		>>> tf.shape(1.)
		<tf.Tensor: shape=(0,), dtype=int32, numpy=array([], dtype=int32)>
		
		>>> t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		>>> tf.shape(t)
		<tf.Tensor: shape=(3,), dtype=int32, numpy=array([2, 2, 3], dtype=int32)>
		
		Note: When using symbolic tensors, such as when using the Keras API,
		tf.shape() will return the shape of the symbolic tensor.
		
		>>> a = tf.keras.layers.Input((None, 10))
		>>> tf.shape(a)
		<... shape=(3,) dtype=int32...>
		
		In these cases, using `tf.Tensor.shape` will return more informative results.
		
		>>> a.shape
		TensorShape([None, None, 10])
		
		(The first `None` represents the as yet unknown batch size.)
		
		`tf.shape` and `Tensor.shape` should be identical in eager mode.  Within
		`tf.function` or within a `compat.v1` context, not all dimensions may be
		known until execution time. Hence when defining custom layers and models
		for graph mode, prefer the dynamic `tf.shape(x)` over the static `x.shape`.
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  out_type: (Optional) The specified output type of the operation (`int32` or
		    `int64`). Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function shape(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns shape of tensors.
		
		Args:
		  input: A list of at least 1 `Tensor` object with the same type.
		  out_type: The specified output type of the operation (`int32` or `int64`).
		    Defaults to `tf.int32`(optional).
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `input` of `Tensor` objects with
		    type `out_type`.
	**/
	static public function shape_n(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Formula for calculating $\mathrm{sigmoid}(x) = y = 1 / (1 + \exp(-x))$.
		
		For $x \in (-\infty, \infty)$, $\mathrm{sigmoid}(x) \in (0, 1)$.
		
		Example Usage:
		
		If a positive number is large, then its sigmoid will approach to 1 since the
		formula will be `y = <large_num> / (1 + <large_num>)`
		
		>>> x = tf.constant([0.0, 1.0, 50.0, 100.0])
		>>> tf.math.sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32,
		numpy=array([0.5      , 0.7310586, 1.       , 1.       ], dtype=float32)>
		
		If a negative number is large, its sigmoid will approach to 0 since the
		formula will be `y = 1 / (1 + <large_num>)`
		
		>>> x = tf.constant([-100.0, -50.0, -1.0, 0.0])
		>>> tf.math.sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=
		array([0.0000000e+00, 1.9287499e-22, 2.6894143e-01, 0.5],
		      dtype=float32)>
		
		Args:
		  x: A Tensor with type `float16`, `float32`, `float64`, `complex64`, or
		    `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		Usage Example:
		
		>>> x = tf.constant([-128.0, 0.0, 128.0], dtype=tf.float32)
		>>> tf.sigmoid(x)
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0. , 0.5, 1. ], dtype=float32)>
		
		@compatibility(scipy)
		Equivalent to scipy.special.expit
		@end_compatibility
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an element-wise indication of the sign of a number.
		
		`y = sign(x) = -1 if x < 0; 0 if x == 0; 1 if x > 0`.
		
		For complex numbers, `y = sign(x) = x / |x| if x != 0, otherwise y = 0`.
		
		Example usage:
		
		>>> # real number
		>>> tf.math.sign([0., 2., -3.])
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([ 0.,  1., -1.], dtype=float32)>
		
		>>> # complex number
		>>> tf.math.sign([1 + 1j, 0 + 0j])
		<tf.Tensor: shape=(2,), dtype=complex128,
		numpy=array([0.70710678+0.70710678j, 0.        +0.j        ])>
		
		Args:
		 x: A Tensor. Must be one of the following types: bfloat16, half, float32,
		   float64, int32, int64, complex64, complex128.
		 name: A name for the operation (optional).
		
		Returns:
		 A Tensor. Has the same type as x.
		
		 If x is a SparseTensor, returns SparseTensor(x.indices,
		   tf.math.sign(x.values, ...), x.dense_shape).
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.sign(x.values, ...), x.dense_shape)`
	**/
	static public function sign(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sine of x element-wise.
		
		  Given an input tensor, this function computes sine of every
		  element in the tensor. Input range is `(-inf, inf)` and
		  output range is `[-1,1]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 200, 10, float("inf")])
		  tf.math.sin(x) ==> [nan -0.4121185 -0.47942555 0.84147096 0.9320391 -0.87329733 -0.54402107 nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic sine of x element-wise.
		
		  Given an input tensor, this function computes hyperbolic sine of every
		  element in the tensor. Input range is `[-inf,inf]` and output range
		  is `[-inf,inf]`.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 2, 10, float("inf")])
		  tf.math.sinh(x) ==> [-inf -4.0515420e+03 -5.2109528e-01 1.1752012e+00 1.5094614e+00 3.6268604e+00 1.1013232e+04 inf]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sinh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		See also `tf.shape`.
		
		Returns a 0-D `Tensor` representing the number of elements in `input`
		of type `out_type`. Defaults to tf.int32.
		
		For example:
		
		>>> t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		>>> tf.size(t)
		<tf.Tensor: shape=(), dtype=int32, numpy=12>
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  out_type: (Optional) The specified non-quantized numeric output type of the
		    operation. Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`. Defaults to `tf.int32`.
		
		@compatibility(numpy)
		Equivalent to np.size()
		@end_compatibility
	**/
	static public function size(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts a slice from a tensor.
		
		See also `tf.strided_slice`.
		
		This operation extracts a slice of size `size` from a tensor `input_` starting
		at the location specified by `begin`. The slice `size` is represented as a
		tensor shape, where `size[i]` is the number of elements of the 'i'th dimension
		of `input_` that you want to slice. The starting location (`begin`) for the
		slice is represented as an offset in each dimension of `input_`. In other
		words, `begin[i]` is the offset into the i'th dimension of `input_` that you
		want to slice from.
		
		Note that `tf.Tensor.__getitem__` is typically a more pythonic way to
		perform slices, as it allows you to write `foo[3:7, :-2]` instead of
		`tf.slice(foo, [3, 0], [4, foo.get_shape()[1]-2])`.
		
		`begin` is zero-based; `size` is one-based. If `size[i]` is -1,
		all remaining elements in dimension i are included in the
		slice. In other words, this is equivalent to setting:
		
		`size[i] = input_.dim_size(i) - begin[i]`
		
		This operation requires that:
		
		`0 <= begin[i] <= begin[i] + size[i] <= Di  for i in [0, n]`
		
		For example:
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]],
		                 [[3, 3, 3], [4, 4, 4]],
		                 [[5, 5, 5], [6, 6, 6]]])
		tf.slice(t, [1, 0, 0], [1, 1, 3])  # [[[3, 3, 3]]]
		tf.slice(t, [1, 0, 0], [1, 2, 3])  # [[[3, 3, 3],
		                                   #   [4, 4, 4]]]
		tf.slice(t, [1, 0, 0], [2, 1, 3])  # [[[3, 3, 3]],
		                                   #  [[5, 5, 5]]]
		```
		
		Args:
		  input_: A `Tensor`.
		  begin: An `int32` or `int64` `Tensor`.
		  size: An `int32` or `int64` `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input_`.
	**/
	static public function slice(input_:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sorts a tensor.
		
		Usage:
		
		>>> a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		>>> tf.sort(a).numpy()
		array([  1.  ,   2.8 ,  10.  ,  26.9 ,  62.3 , 166.32], dtype=float32)
		
		>>> tf.sort(a, direction='DESCENDING').numpy()
		array([166.32,  62.3 ,  26.9 ,  10.  ,   2.8 ,   1.  ], dtype=float32)
		
		For multidimensional inputs you can control which axis the sort is applied
		along. The default `axis=-1` sorts the innermost axis.
		
		>>> mat = [[3,2,1],
		...        [2,1,3],
		...        [1,3,2]]
		>>> tf.sort(mat, axis=-1).numpy()
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]], dtype=int32)
		>>> tf.sort(mat, axis=0).numpy()
		array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]], dtype=int32)
		
		See also:
		
		  * `tf.argsort`: Like sort, but it returns the sort indices.
		  * `tf.math.top_k`: A partial sort that returns a fixed number of top values
		    and corresponding indices.
		
		
		Args:
		  values: 1-D or higher **numeric** `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		    axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		    `'DESCENDING'`).
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same dtype and shape as `values`, with the elements
		      sorted along the given `axis`.
		
		Raises:
		  tf.errors.InvalidArgumentError: If the `values.dtype` is not a `float` or
		      `int` type.
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function sort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToBatch for N-D tensors of type T.
		
		This operation divides "spatial" dimensions `[1, ..., M]` of the input into a
		grid of blocks of shape `block_shape`, and interleaves these blocks with the
		"batch" dimension (0) such that in the output, the spatial dimensions
		`[1, ..., M]` correspond to the position within the grid, and the batch
		dimension combines both the position within a spatial block and the original
		batch position.  Prior to division into blocks, the spatial dimensions of the
		input are optionally zero padded according to `paddings`. See below for a
		precise description.
		
		This operation is equivalent to the following steps:
		
		1. Zero-pad the start and end of dimensions `[1, ..., M]` of the
		   input according to `paddings` to produce `padded` of shape `padded_shape`.
		
		2. Reshape `padded` to `reshaped_padded` of shape:
		
		     [batch] +
		     [padded_shape[1] / block_shape[0],
		       block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1],
		      block_shape[M-1]] +
		     remaining_shape
		
		3. Permute dimensions of `reshaped_padded` to produce
		   `permuted_reshaped_padded` of shape:
		
		     block_shape +
		     [batch] +
		     [padded_shape[1] / block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1]] +
		     remaining_shape
		
		4. Reshape `permuted_reshaped_padded` to flatten `block_shape` into the batch
		   dimension, producing an output tensor of shape:
		
		     [batch * prod(block_shape)] +
		     [padded_shape[1] / block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1]] +
		     remaining_shape
		
		Some examples:
		
		(1) For the following input of shape `[1, 2, 2, 1]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1], [2]], [[3], [4]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 1]` and value:
		
		```
		[[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		```
		
		(2) For the following input of shape `[1, 2, 2, 3]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 3]` and value:
		
		```
		[[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
		```
		
		(3) For the following input of shape `[1, 4, 4, 1]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1],   [2],  [3],  [4]],
		      [[5],   [6],  [7],  [8]],
		      [[9],  [10], [11],  [12]],
		      [[13], [14], [15],  [16]]]]
		```
		
		The output tensor has shape `[4, 2, 2, 1]` and value:
		
		```
		x = [[[[1], [3]], [[9], [11]]],
		     [[[2], [4]], [[10], [12]]],
		     [[[5], [7]], [[13], [15]]],
		     [[[6], [8]], [[14], [16]]]]
		```
		
		(4) For the following input of shape `[2, 2, 4, 1]`, block_shape = `[2, 2]`, and
		    paddings = `[[0, 0], [2, 0]]`:
		
		```
		x = [[[[1],   [2],  [3],  [4]],
		      [[5],   [6],  [7],  [8]]],
		     [[[9],  [10], [11],  [12]],
		      [[13], [14], [15],  [16]]]]
		```
		
		The output tensor has shape `[8, 1, 3, 1]` and value:
		
		```
		x = [[[[0], [1], [3]]], [[[0], [9], [11]]],
		     [[[0], [2], [4]]], [[[0], [10], [12]]],
		     [[[0], [5], [7]]], [[[0], [13], [15]]],
		     [[[0], [6], [8]]], [[[0], [14], [16]]]]
		```
		
		Among others, this operation is useful for reducing atrous convolution into
		regular convolution.
		
		Args:
		  input: A `Tensor`.
		    N-D with shape `input_shape = [batch] + spatial_shape + remaining_shape`,
		    where spatial_shape has `M` dimensions.
		  block_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[M]`, all values must be >= 1.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D with shape `[M, 2]`, all values must be >= 0.
		      `paddings[i] = [pad_start, pad_end]` specifies the padding for input dimension
		      `i + 1`, which corresponds to spatial dimension `i`.  It is required that
		      `block_shape[i]` divides `input_shape[i + 1] + pad_start + pad_end`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToBatch for N-D tensors of type T.
		
		This operation divides "spatial" dimensions `[1, ..., M]` of the input into a
		grid of blocks of shape `block_shape`, and interleaves these blocks with the
		"batch" dimension (0) such that in the output, the spatial dimensions
		`[1, ..., M]` correspond to the position within the grid, and the batch
		dimension combines both the position within a spatial block and the original
		batch position.  Prior to division into blocks, the spatial dimensions of the
		input are optionally zero padded according to `paddings`. See below for a
		precise description.
		
		This operation is equivalent to the following steps:
		
		1. Zero-pad the start and end of dimensions `[1, ..., M]` of the
		   input according to `paddings` to produce `padded` of shape `padded_shape`.
		
		2. Reshape `padded` to `reshaped_padded` of shape:
		
		     [batch] +
		     [padded_shape[1] / block_shape[0],
		       block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1],
		      block_shape[M-1]] +
		     remaining_shape
		
		3. Permute dimensions of `reshaped_padded` to produce
		   `permuted_reshaped_padded` of shape:
		
		     block_shape +
		     [batch] +
		     [padded_shape[1] / block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1]] +
		     remaining_shape
		
		4. Reshape `permuted_reshaped_padded` to flatten `block_shape` into the batch
		   dimension, producing an output tensor of shape:
		
		     [batch * prod(block_shape)] +
		     [padded_shape[1] / block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1]] +
		     remaining_shape
		
		Some examples:
		
		(1) For the following input of shape `[1, 2, 2, 1]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1], [2]], [[3], [4]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 1]` and value:
		
		```
		[[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		```
		
		(2) For the following input of shape `[1, 2, 2, 3]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 3]` and value:
		
		```
		[[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
		```
		
		(3) For the following input of shape `[1, 4, 4, 1]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1],   [2],  [3],  [4]],
		      [[5],   [6],  [7],  [8]],
		      [[9],  [10], [11],  [12]],
		      [[13], [14], [15],  [16]]]]
		```
		
		The output tensor has shape `[4, 2, 2, 1]` and value:
		
		```
		x = [[[[1], [3]], [[9], [11]]],
		     [[[2], [4]], [[10], [12]]],
		     [[[5], [7]], [[13], [15]]],
		     [[[6], [8]], [[14], [16]]]]
		```
		
		(4) For the following input of shape `[2, 2, 4, 1]`, block_shape = `[2, 2]`, and
		    paddings = `[[0, 0], [2, 0]]`:
		
		```
		x = [[[[1],   [2],  [3],  [4]],
		      [[5],   [6],  [7],  [8]]],
		     [[[9],  [10], [11],  [12]],
		      [[13], [14], [15],  [16]]]]
		```
		
		The output tensor has shape `[8, 1, 3, 1]` and value:
		
		```
		x = [[[[0], [1], [3]]], [[[0], [9], [11]]],
		     [[[0], [2], [4]]], [[[0], [10], [12]]],
		     [[[0], [5], [7]]], [[[0], [13], [15]]],
		     [[[0], [6], [8]]], [[[0], [14], [16]]]]
		```
		
		Among others, this operation is useful for reducing atrous convolution into
		regular convolution.
		
		Args:
		  input: A `Tensor`.
		    N-D with shape `input_shape = [batch] + spatial_shape + remaining_shape`,
		    where spatial_shape has `M` dimensions.
		  block_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[M]`, all values must be >= 1.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D with shape `[M, 2]`, all values must be >= 0.
		      `paddings[i] = [pad_start, pad_end]` specifies the padding for input dimension
		      `i + 1`, which corresponds to spatial dimension `i`.  It is required that
		      `block_shape[i]` divides `input_shape[i + 1] + pad_start + pad_end`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch_nd(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits a tensor `value` into a list of sub tensors.
		
		See also `tf.unstack`.
		
		If `num_or_size_splits` is an integer,  then `value` is split along the
		dimension `axis` into `num_or_size_splits` smaller tensors. This requires that
		`value.shape[axis]` is divisible by `num_or_size_splits`.
		
		If `num_or_size_splits` is a 1-D Tensor (or list), then `value` is split into
		`len(num_or_size_splits)` elements. The shape of the `i`-th
		element has the same size as the `value` except along dimension `axis` where
		the size is `num_or_size_splits[i]`.
		
		For example:
		
		>>> x = tf.Variable(tf.random.uniform([5, 30], -1, 1))
		>>>
		>>> # Split `x` into 3 tensors along dimension 1
		>>> s0, s1, s2 = tf.split(x, num_or_size_splits=3, axis=1)
		>>> tf.shape(s0).numpy()
		array([ 5, 10], dtype=int32)
		>>>
		>>> # Split `x` into 3 tensors with sizes [4, 15, 11] along dimension 1
		>>> split0, split1, split2 = tf.split(x, [4, 15, 11], 1)
		>>> tf.shape(split0).numpy()
		array([5, 4], dtype=int32)
		>>> tf.shape(split1).numpy()
		array([ 5, 15], dtype=int32)
		>>> tf.shape(split2).numpy()
		array([ 5, 11], dtype=int32)
		
		Args:
		  value: The `Tensor` to split.
		  num_or_size_splits: Either an integer indicating the number of splits along
		    `axis` or a 1-D integer `Tensor` or Python list containing the sizes of
		    each output tensor along `axis`. If a scalar, then it must evenly divide
		    `value.shape[axis]`; otherwise the sum of sizes along the split axis
		    must match that of the `value`.
		  axis: An integer or scalar `int32` `Tensor`. The dimension along which to
		    split. Must be in the range `[-rank(value), rank(value))`. Defaults to 0.
		  num: Optional, used to specify the number of outputs when it cannot be
		    inferred from the shape of `size_splits`.
		  name: A name for the operation (optional).
		
		Returns:
		  if `num_or_size_splits` is a scalar returns a list of `num_or_size_splits`
		  `Tensor` objects; if `num_or_size_splits` is a 1-D Tensor returns
		  `num_or_size_splits.get_shape[0]` `Tensor` objects resulting from splitting
		  `value`.
		
		Raises:
		  ValueError: If `num` is unspecified and cannot be inferred.
	**/
	static public function split(value:Dynamic, num_or_size_splits:Dynamic, ?axis:Dynamic, ?num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes element-wise square root of the input tensor.
		
		Note: This operation does not support integer types.
		
		>>> x = tf.constant([[4.0], [16.0]])
		>>> tf.sqrt(x)
		<tf.Tensor: shape=(2, 1), dtype=float32, numpy=
		  array([[2.],
		         [4.]], dtype=float32)>
		>>> y = tf.constant([[-4.0], [16.0]])
		>>> tf.sqrt(y)
		<tf.Tensor: shape=(2, 1), dtype=float32, numpy=
		  array([[nan],
		         [ 4.]], dtype=float32)>
		>>> z = tf.constant([[-1.0], [16.0]], dtype=tf.complex128)
		>>> tf.sqrt(z)
		<tf.Tensor: shape=(2, 1), dtype=complex128, numpy=
		  array([[0.0+1.j],
		         [4.0+0.j]])>
		
		Note: In order to support complex type, please provide an input tensor
		of `complex64` or `complex128`.
		
		Args:
		  x: A `tf.Tensor` of type `bfloat16`, `half`, `float32`, `float64`,
		    `complex64`, `complex128`
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of same size, type and sparsity as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.sqrt(x.values, ...), x.dense_shape)`
	**/
	static public function sqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes square of x element-wise.
		
		I.e., \\(y = x * x = x^2\\).
		
		>>> tf.math.square([-2., 0., 3.])
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([4., 0., 9.], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.square(x.values, ...), x.dense_shape)`
	**/
	static public function square(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Removes dimensions of size 1 from the shape of a tensor.
		
		Given a tensor `input`, this operation returns a tensor of the same type with
		all dimensions of size 1 removed. If you don't want to remove all size 1
		dimensions, you can remove specific size 1 dimensions by specifying
		`axis`.
		
		For example:
		
		```python
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		tf.shape(tf.squeeze(t))  # [2, 3]
		```
		
		Or, to remove specific size 1 dimensions:
		
		```python
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		tf.shape(tf.squeeze(t, [2, 4]))  # [1, 2, 3, 1]
		```
		
		Unlike the older op `tf.compat.v1.squeeze`, this op does not accept a
		deprecated `squeeze_dims` argument.
		
		Note: if `input` is a `tf.RaggedTensor`, then this operation takes `O(N)`
		time, where `N` is the number of elements in the squeezed dimensions.
		
		Args:
		  input: A `Tensor`. The `input` to squeeze.
		  axis: An optional list of `ints`. Defaults to `[]`. If specified, only
		    squeezes the dimensions listed. The dimension index starts at 0. It is an
		    error to squeeze a dimension that is not 1. Must be in the range
		    `[-rank(input), rank(input))`. Must be specified if `input` is a
		    `RaggedTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Contains the same data as `input`, but has one or more dimensions of
		  size 1 removed.
		
		Raises:
		  ValueError: The input cannot be converted to a tensor, or the specified
		    axis cannot be squeezed.
	**/
	static public function squeeze(input:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stacks a list of rank-`R` tensors into one rank-`(R+1)` tensor.
		
		See also `tf.concat`, `tf.tile`, `tf.repeat`.
		
		Packs the list of tensors in `values` into a tensor with rank one higher than
		each tensor in `values`, by packing them along the `axis` dimension.
		Given a list of length `N` of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		>>> x = tf.constant([1, 4])
		>>> y = tf.constant([2, 5])
		>>> z = tf.constant([3, 6])
		>>> tf.stack([x, y, z])
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		array([[1, 4],
		       [2, 5],
		       [3, 6]], dtype=int32)>
		>>> tf.stack([x, y, z], axis=1)
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[1, 2, 3],
		       [4, 5, 6]], dtype=int32)>
		
		This is the opposite of unstack.  The numpy equivalent is `np.stack`
		
		>>> np.array_equal(np.stack([x, y, z]), tf.stack([x, y, z]))
		True
		
		Args:
		  values: A list of `Tensor` objects with the same shape and type.
		  axis: An `int`. The axis to stack along. Defaults to the first dimension.
		    Negative values wrap around, so the valid range is `[-(R+1), R+1)`.
		  name: A name for this operation (optional).
		
		Returns:
		  output: A stacked `Tensor` with the same type as `values`.
		
		Raises:
		  ValueError: If `axis` is out of the range [-(R+1), R+1).
	**/
	static public function stack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		to pretend that the value was a constant. For example, the softmax function
		for a vector x can be written as
		
		```python
		
		  def softmax(x):
		    numerator = tf.exp(x)
		    denominator = tf.reduce_sum(numerator)
		    return numerator / denominator
		```
		
		This however is susceptible to overflow if the values in x are large. An
		alternative more stable way is to subtract the maximum of x from each of the
		values.
		
		```python
		
		  def stable_softmax(x):
		    z = x - tf.reduce_max(x)
		    numerator = tf.exp(z)
		    denominator = tf.reduce_sum(numerator)
		    return numerator / denominator
		```
		
		However, when we backprop through the softmax to x, we dont want to backprop
		through the `tf.reduce_max(x)` (if the max values are not unique then the
		gradient could flow to the wrong input) calculation and treat that as a
		constant. Therefore, we should write this out as
		
		```python
		
		  def stable_softmax(x):
		    z = x - tf.stop_gradient(tf.reduce_max(x))
		    numerator = tf.exp(z)
		    denominator = tf.reduce_sum(numerator)
		    return numerator / denominator
		```
		
		Some other examples include:
		
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
		Extracts a strided slice of a tensor (generalized Python array indexing).
		
		See also `tf.slice`.
		
		**Instead of calling this op directly most users will want to use the
		NumPy-style slicing syntax (e.g. `tensor[..., 3:4:-1, tf.newaxis, 3]`), which
		is supported via `tf.Tensor.__getitem__` and `tf.Variable.__getitem__`.**
		The interface of this op is a low-level encoding of the slicing syntax.
		
		Roughly speaking, this op extracts a slice of size `(end-begin)/stride`
		from the given `input_` tensor. Starting at the location specified by `begin`
		the slice continues by adding `stride` to the index until all dimensions are
		not less than `end`.
		Note that a stride can be negative, which causes a reverse slice.
		
		Given a Python slice `input[spec0, spec1, ..., specn]`,
		this function will be called as follows.
		
		`begin`, `end`, and `strides` will be vectors of length n.
		n in general is not equal to the rank of the `input_` tensor.
		
		In each mask field (`begin_mask`, `end_mask`, `ellipsis_mask`,
		`new_axis_mask`, `shrink_axis_mask`) the ith bit will correspond to
		the ith spec.
		
		If the ith bit of `begin_mask` is set, `begin[i]` is ignored and
		the fullest possible range in that dimension is used instead.
		`end_mask` works analogously, except with the end range.
		
		`foo[5:,:,:3]` on a 7x8x9 tensor is equivalent to `foo[5:7,0:8,0:3]`.
		`foo[::-1]` reverses a tensor with shape 8.
		
		If the ith bit of `ellipsis_mask` is set, as many unspecified dimensions
		as needed will be inserted between other dimensions. Only one
		non-zero bit is allowed in `ellipsis_mask`.
		
		For example `foo[3:5,...,4:5]` on a shape 10x3x3x10 tensor is
		equivalent to `foo[3:5,:,:,4:5]` and
		`foo[3:5,...]` is equivalent to `foo[3:5,:,:,:]`.
		
		If the ith bit of `new_axis_mask` is set, then `begin`,
		`end`, and `stride` are ignored and a new length 1 dimension is
		added at this point in the output tensor.
		
		For example,
		`foo[:4, tf.newaxis, :2]` would produce a shape `(4, 1, 2)` tensor.
		
		If the ith bit of `shrink_axis_mask` is set, it implies that the ith
		specification shrinks the dimensionality by 1, taking on the value at index
		`begin[i]`. `end[i]` and `strides[i]` are ignored in this case. For example in
		Python one might do `foo[:, 3, :]` which would result in `shrink_axis_mask`
		equal to 2.
		
		
		NOTE: `begin` and `end` are zero-indexed.
		`strides` entries must be non-zero.
		
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]],
		                 [[3, 3, 3], [4, 4, 4]],
		                 [[5, 5, 5], [6, 6, 6]]])
		tf.strided_slice(t, [1, 0, 0], [2, 1, 3], [1, 1, 1])  # [[[3, 3, 3]]]
		tf.strided_slice(t, [1, 0, 0], [2, 2, 3], [1, 1, 1])  # [[[3, 3, 3],
		                                                      #   [4, 4, 4]]]
		tf.strided_slice(t, [1, -1, 0], [2, -3, 3], [1, -1, 1])  # [[[4, 4, 4],
		                                                         #   [3, 3, 3]]]
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
		  var: The variable corresponding to `input_` or None
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input`.
	**/
	static public function strided_slice(input_:Dynamic, begin:Dynamic, end:Dynamic, ?strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?_var:Dynamic, ?name:Dynamic):Dynamic;
	static public var string : Dynamic;
	/**
		Returns x - y element-wise.
		
		*NOTE*: `tf.subtract` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Both input and output have a range `(-inf, inf)`.
		
		Example usages below.
		
		Subtract operation between an array and a scalar:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = 1
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([0, 1, 2, 3, 4], dtype=int32)>
		>>> tf.subtract(y, x)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 0, -1, -2, -3, -4], dtype=int32)>
		
		Note that binary `-` operator can be used instead:
		
		>>> x = tf.convert_to_tensor([1, 2, 3, 4, 5])
		>>> y = tf.convert_to_tensor(1)
		>>> x - y
		<tf.Tensor: shape=(5,), dtype=int32, numpy=array([0, 1, 2, 3, 4], dtype=int32)>
		
		Subtract operation between an array and a tensor of same shape:
		
		>>> x = [1, 2, 3, 4, 5]
		>>> y = tf.constant([5, 4, 3, 2, 1])
		>>> tf.subtract(y, x)
		<tf.Tensor: shape=(5,), dtype=int32,
		numpy=array([ 4,  2,  0, -2, -4], dtype=int32)>
		
		**Warning**: If one of the inputs (`x` or `y`) is a tensor and the other is a
		non-tensor, the non-tensor input will adopt (or get casted to) the data type
		of the tensor input. This can potentially cause unwanted overflow or underflow
		conversion.
		
		For example,
		
		>>> x = tf.constant([1, 2], dtype=tf.int8)
		>>> y = [2**8 + 1, 2**8 + 2]
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(2,), dtype=int8, numpy=array([0, 0], dtype=int8)>
		
		When subtracting two input values of different shapes, `tf.subtract` follows the
		[general broadcasting rules](https://numpy.org/doc/stable/user/basics.broadcasting.html#general-broadcasting-rules)
		. The two input array shapes are compared element-wise. Starting with the
		trailing dimensions, the two dimensions either have to be equal or one of them
		needs to be `1`.
		
		For example,
		
		>>> x = np.ones(6).reshape(2, 3, 1)
		>>> y = np.ones(6).reshape(2, 1, 3)
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(2, 3, 3), dtype=float64, numpy=
		array([[[0., 0., 0.],
		        [0., 0., 0.],
		        [0., 0., 0.]],
		       [[0., 0., 0.],
		        [0., 0., 0.],
		        [0., 0., 0.]]])>
		
		Example with inputs of different dimensions:
		
		>>> x = np.ones(6).reshape(2, 3, 1)
		>>> y = np.ones(6).reshape(1, 6)
		>>> tf.subtract(x, y)
		<tf.Tensor: shape=(2, 3, 6), dtype=float64, numpy=
		array([[[0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.]],
		       [[0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.],
		        [0., 0., 0., 0., 0., 0.]]])>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function subtract(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a switch/case operation, i.e. an integer-indexed conditional.
		
		See also `tf.case`.
		
		This op can be substantially more efficient than `tf.case` when exactly one
		branch will be selected. `tf.switch_case` is more like a C++ switch/case
		statement than `tf.case`, which is more like an if/elif/elif/else chain.
		
		The `branch_fns` parameter is either a dict from `int` to callables, or list
		of (`int`, callable) pairs, or simply a list of callables (in which case the
		index is implicitly the key). The `branch_index` `Tensor` is used to select an
		element in `branch_fns` with matching `int` key, falling back to `default`
		if none match, or `max(keys)` if no `default` is provided. The keys must form
		a contiguous set from `0` to `len(branch_fns) - 1`.
		
		`tf.switch_case` supports nested structures as implemented in `tf.nest`. All
		callables must return the same (possibly nested) value structure of lists,
		tuples, and/or named tuples.
		
		**Example:**
		
		Pseudocode:
		
		```c++
		switch (branch_index) {  // c-style switch
		  case 0: return 17;
		  case 1: return 31;
		  default: return -1;
		}
		```
		or
		```python
		branches = {0: lambda: 17, 1: lambda: 31}
		branches.get(branch_index, lambda: -1)()
		```
		
		Expressions:
		
		```python
		def f1(): return tf.constant(17)
		def f2(): return tf.constant(31)
		def f3(): return tf.constant(-1)
		r = tf.switch_case(branch_index, branch_fns={0: f1, 1: f2}, default=f3)
		# Equivalent: tf.switch_case(branch_index, branch_fns={0: f1, 1: f2, 2: f3})
		```
		
		Args:
		  branch_index: An int Tensor specifying which of `branch_fns` should be
		    executed.
		  branch_fns: A `dict` mapping `int`s to callables, or a `list` of
		    (`int`, callable) pairs, or simply a list of callables (in which case the
		    index serves as the key). Each callable must return a matching structure
		    of tensors.
		  default: Optional callable that returns a structure of tensors.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the callable identified by `branch_index`, or those
		  returned by `default` if no key matches and `default` was provided, or those
		  returned by the max-keyed `branch_fn` if no `default` is provided.
		
		Raises:
		  TypeError: If `branch_fns` is not a list/dictionary.
		  TypeError: If `branch_fns` is a list but does not contain 2-tuples or
		             callables.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	static public function switch_case(branch_index:Dynamic, branch_fns:Dynamic, ?_default:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes tan of x element-wise.
		
		  Given an input tensor, this function computes tangent of every
		  element in the tensor. Input range is `(-inf, inf)` and
		  output range is `(-inf, inf)`. If input lies outside the boundary, `nan`
		  is returned.
		
		  ```python
		  x = tf.constant([-float("inf"), -9, -0.5, 1, 1.2, 200, 10000, float("inf")])
		  tf.math.tan(x) ==> [nan 0.45231566 -0.5463025 1.5574077 2.572152 -1.7925274 0.32097113 nan]
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function tan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
		  Given an input tensor, this function computes hyperbolic tangent of every
		  element in the tensor. Input range is `[-inf, inf]` and
		  output range is `[-1,1]`.
		
		  >>> x = tf.constant([-float("inf"), -5, -0.5, 1, 1.2, 2, 3, float("inf")])
		  >>> tf.math.tanh(x)
		  <tf.Tensor: shape=(8,), dtype=float32, numpy=
		  array([-1.        , -0.99990916, -0.46211717,  0.7615942 ,  0.8336547 ,
		          0.9640276 ,  0.9950547 ,  1.        ], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.tanh(x.values, ...), x.dense_shape)`
	**/
	static public function tanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds sparse `updates` to an existing tensor according to `indices`.
		
		This operation creates a new tensor by adding sparse `updates` to the passed
		in `tensor`.
		This operation is very similar to `tf.compat.v1.scatter_nd_add`, except that the updates
		are added onto an existing tensor (as opposed to a variable). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`tensor.shape`.  The last dimension of `indices` can be at most the rank of
		`tensor.shape`:
		
		    indices.shape[-1] <= tensor.shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = tensor.shape.rank`) or slices
		(if `indices.shape[-1] < tensor.shape.rank`) along dimension
		`indices.shape[-1]` of `tensor.shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + tensor.shape[indices.shape[-1]:]
		
		The simplest form of tensor_scatter_add is to add individual elements to a
		tensor by index. For example, say we want to add 4 elements in a rank-1
		tensor with 8 elements.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    tensor = tf.ones([8], dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_add(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [1, 12, 1, 11, 10, 1, 1, 13]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    tensor = tf.ones([4, 4, 4],dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_add(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [[[6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8], [9, 9, 9, 9]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]],
		     [[6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8], [9, 9, 9, 9]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  tensor: A `Tensor`. Tensor to copy/update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_add(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  tensor: A `Tensor`. Tensor to update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_max(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  tensor: A `Tensor`. Tensor to update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_min(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse `updates` from an existing tensor according to `indices`.
		
		This operation creates a new tensor by subtracting sparse `updates` from the
		passed in `tensor`.
		This operation is very similar to `tf.scatter_nd_sub`, except that the updates
		are subtracted from an existing tensor (as opposed to a variable). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`shape`.  The last dimension of `indices` can be at most the rank of `shape`:
		
		    indices.shape[-1] <= shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = shape.rank`) or slices
		(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
		`shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + shape[indices.shape[-1]:]
		
		The simplest form of tensor_scatter_sub is to subtract individual elements
		from a tensor by index. For example, say we want to insert 4 scattered elements
		in a rank-1 tensor with 8 elements.
		
		In Python, this scatter subtract operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    tensor = tf.ones([8], dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_sub(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [1, -10, 1, -9, -8, 1, 1, -11]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
		In Python, this scatter add operation would look like this:
		
		```python
		    indices = tf.constant([[0], [2]])
		    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]],
		                           [[5, 5, 5, 5], [6, 6, 6, 6],
		                            [7, 7, 7, 7], [8, 8, 8, 8]]])
		    tensor = tf.ones([4, 4, 4],dtype=tf.int32)
		    updated = tf.tensor_scatter_nd_sub(tensor, indices, updates)
		    print(updated)
		```
		
		The resulting tensor would look like this:
		
		    [[[-4, -4, -4, -4], [-5, -5, -5, -5], [-6, -6, -6, -6], [-7, -7, -7, -7]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]],
		     [[-4, -4, -4, -4], [-5, -5, -5, -5], [-6, -6, -6, -6], [-7, -7, -7, -7]],
		     [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]]
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, the index is ignored.
		
		Args:
		  tensor: A `Tensor`. Tensor to copy/update.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  updates: A `Tensor`. Must have the same type as `tensor`.
		    Updates to scatter into output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function tensor_scatter_nd_sub(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		"Scatter `updates` into an existing tensor according to `indices`.
		
		This operation creates a new tensor by applying sparse `updates` to the
		input `tensor`. This is similar to an index assignment.
		
		```
		# Not implemented: tensors cannot be updated inplace.
		tensor[indices] = updates
		```
		
		If an out of bound index is found on CPU, an error is returned.
		
		> **WARNING**: There are some GPU specific semantics for this operation.
		>
		> - If an out of bound index is found, the index is ignored.
		> - The order in which updates are applied is nondeterministic, so the output
		>   will be nondeterministic if `indices` contains duplicates.
		
		This operation is very similar to `tf.scatter_nd`, except that the updates are
		scattered onto an existing tensor (as opposed to a zero-tensor). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		In general:
		
		* `indices` is an integer tensor - the indices to update in `tensor`.
		* `indices` has **at least two** axes, the last axis is the depth of the
		  index vectors.
		* For each index vector in `indices` there is a corresponding entry in
		  `updates`.
		* If the length of the index vectors matches the rank of the `tensor`, then
		  the index vectors each point to scalars in `tensor` and each update is a
		  scalar.
		* If the length of the index vectors is less than the rank of `tensor`, then
		  the index vectors each point to slices of `tensor` and shape of the updates
		  must match that slice.
		
		Overall this leads to the following shape constraints:
		
		```
		assert tf.rank(indices) >= 2
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		assert index_depth <= tf.rank(tensor)
		outer_shape = tensor.shape[:index_depth]
		inner_shape = tensor.shape[index_depth:]
		assert updates.shape == batch_shape + inner_shape
		```
		
		Typical usage is often much simpler than this general form, and it
		can be better understood starting with simple examples:
		
		### Scalar updates
		
		The simplest usage inserts scalar elements into a tensor by index.
		In this case, the `index_depth` must equal the rank of the
		input `tensor`, slice each column of `indices` is an index into an axis of the
		input `tensor`.
		
		In this simplest case the shape constraints are:
		
		```
		num_updates, index_depth = indices.shape.as_list()
		assert updates.shape == [num_updates]
		assert index_depth == tf.rank(tensor)`
		```
		
		For example, to insert 4 scattered elements in a rank-1 tensor with
		8 elements.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%"
		  src="https://www.tensorflow.org/images/ScatterNd1.png">
		</div>
		
		This scatter operation would look like this:
		
		>>> tensor = [0, 0, 0, 0, 0, 0, 0, 0]    # tf.rank(tensor) == 1
		>>> indices = [[1], [3], [4], [7]]       # num_updates == 4, index_depth == 1
		>>> updates = [9, 10, 11, 12]            # num_updates == 4
		>>> print(tf.tensor_scatter_nd_update(tensor, indices, updates))
		tf.Tensor([ 0 9  0 10  11  0  0 12], shape=(8,), dtype=int32)
		
		The length (first axis) of `updates` must equal the length of the `indices`:
		`num_updates`. This is the number of updates being inserted. Each scalar
		update is inserted into `tensor` at the indexed location.
		
		For a higher rank input `tensor` scalar updates can be inserted by using an
		`index_depth` that matches `tf.rank(tensor)`:
		
		>>> tensor = [[1, 1], [1, 1], [1, 1]]    # tf.rank(tensor) == 2
		>>> indices = [[0, 1], [2, 0]]           # num_updates == 2, index_depth == 2
		>>> updates = [5, 10]                    # num_updates == 2
		>>> print(tf.tensor_scatter_nd_update(tensor, indices, updates))
		tf.Tensor(
		    [[ 1  5]
		     [ 1  1]
		     [10  1]], shape=(3, 2), dtype=int32)
		
		### Slice updates
		
		When the input `tensor` has more than one axis scatter can be used to update
		entire slices.
		
		In this case it's helpful to think of the input `tensor` as being a two level
		array-of-arrays. The shape of this two level array is split into the
		`outer_shape` and the `inner_shape`.
		
		`indices` indexes into the outer level of the input tensor (`outer_shape`).
		and replaces the sub-array at that location with the corresponding item from
		the `updates` list. The shape of each update is `inner_shape`.
		
		When updating a list of slices the shape constraints are:
		
		```
		num_updates, index_depth = indices.shape.as_list()
		inner_shape = tensor.shape[:index_depth]
		outer_shape = tensor.shape[index_depth:]
		assert updates.shape == [num_updates, inner_shape]
		```
		
		For example, to update rows of a `(6, 3)` `tensor`:
		
		>>> tensor = tf.zeros([6, 3], dtype=tf.int32)
		
		Use an index depth of one.
		
		>>> indices = tf.constant([[2], [4]])     # num_updates == 2, index_depth == 1
		>>> num_updates, index_depth = indices.shape.as_list()
		
		The `outer_shape` is `6`, the inner shape is `3`:
		
		>>> outer_shape = tensor.shape[:index_depth]
		>>> inner_shape = tensor.shape[index_depth:]
		
		2 rows are being indexed so 2 `updates` must be supplied.
		Each update must be shaped to match the `inner_shape`.
		
		>>> # num_updates == 2, inner_shape==3
		>>> updates = tf.constant([[1, 2, 3],
		...                        [4, 5, 6]])
		
		Altogether this gives:
		
		>>> tf.tensor_scatter_nd_update(tensor, indices, updates).numpy()
		array([[0, 0, 0],
		       [0, 0, 0],
		       [1, 2, 3],
		       [0, 0, 0],
		       [4, 5, 6],
		       [0, 0, 0]], dtype=int32)
		
		#### More slice update examples
		
		A tensor representing a batch of uniformly sized video clips naturally has 5
		axes: `[batch_size, time, width, height, channels]`.
		
		For example:
		
		>>> batch_size, time, width, height, channels = 13,11,7,5,3
		>>> video_batch = tf.zeros([batch_size, time, width, height, channels])
		
		To replace a selection of video clips:
		  * Use an `index_depth` of 1 (indexing the `outer_shape`: `[batch_size]`)
		  * Provide updates each with a shape matching the `inner_shape`:
		    `[time, width, height, channels]`.
		
		To replace the first two clips with ones:
		
		>>> indices = [[0],[1]]
		>>> new_clips = tf.ones([2, time, width, height, channels])
		>>> tf.tensor_scatter_nd_update(video_batch, indices, new_clips)
		
		To replace a selection of frames in the videos:
		
		* `indices` must have an `index_depth` of 2 for the `outer_shape`:
		  `[batch_size, time]`.
		* `updates` must be shaped like a list of images.  Each update must have a
		  shape, matching the `inner_shape`: `[width, height, channels]`.
		
		To replace the first frame of the first three video clips:
		
		>>> indices = [[0, 0], [1, 0], [2, 0]] # num_updates=3, index_depth=2
		>>> new_images = tf.ones([
		...   # num_updates=3, inner_shape=(width, height, channels)
		...   3, width, height, channels])
		>>> tf.tensor_scatter_nd_update(video_batch, indices, new_images)
		
		### Folded indices
		
		In simple cases it's convenient to think of `indices` and `updates` as
		lists, but this is not a strict requirement. Instead of a flat `num_updates`,
		the `indices` and `updates` can be folded into a `batch_shape`. This
		`batch_shape` is all axes of the `indices`, except for the innermost
		`index_depth` axis.
		
		```
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		```
		
		Note: The one exception is that the `batch_shape` cannot be `[]`. You can't
		update a single index by passing indices with shape `[index_depth]`.
		
		`updates` must have a matching `batch_shape` (the axes before `inner_shape`).
		
		```
		assert updates.shape == batch_shape + inner_shape
		```
		
		Note: The result is equivalent to flattening the `batch_shape` axes of
		`indices` and `updates`. This generalization just avoids the need
		for reshapes when it is more natural to construct "folded" indices and
		updates.
		
		With this generalization the full shape constraints are:
		
		```
		assert tf.rank(indices) >= 2
		index_depth = indices.shape[-1]
		batch_shape = indices.shape[:-1]
		assert index_depth <= tf.rank(tensor)
		outer_shape = tensor.shape[:index_depth]
		inner_shape = tensor.shape[index_depth:]
		assert updates.shape == batch_shape + inner_shape
		```
		
		For example, to draw an `X` on a `(5,5)` matrix start with these indices:
		
		>>> tensor = tf.zeros([5,5])
		>>> indices = tf.constant([
		...  [[0,0],
		...   [1,1],
		...   [2,2],
		...   [3,3],
		...   [4,4]],
		...  [[0,4],
		...   [1,3],
		...   [2,2],
		...   [3,1],
		...   [4,0]],
		... ])
		>>> indices.shape.as_list()  # batch_shape == [2, 5], index_depth == 2
		[2, 5, 2]
		
		Here the `indices` do not have a shape of `[num_updates, index_depth]`, but a
		shape of `batch_shape+[index_depth]`.
		
		Since the `index_depth` is equal to the rank of `tensor`:
		
		* `outer_shape` is `(5,5)`
		* `inner_shape` is `()` - each update is scalar
		* `updates.shape` is `batch_shape + inner_shape == (5,2) + ()`
		
		>>> updates = [
		...   [1,1,1,1,1],
		...   [1,1,1,1,1],
		... ]
		
		Putting this together gives:
		
		>>> tf.tensor_scatter_nd_update(tensor, indices, updates).numpy()
		array([[1., 0., 0., 0., 1.],
		       [0., 1., 0., 1., 0.],
		       [0., 0., 1., 0., 0.],
		       [0., 1., 0., 1., 0.],
		       [1., 0., 0., 0., 1.]], dtype=float32)
		
		Args:
		  tensor: Tensor to copy/update.
		  indices: Indices to update.
		  updates: Updates to apply at the indices.
		  name: Optional name for the operation.
		
		Returns:
		  A new tensor with the given shape and updates applied according to the
		  indices.
	**/
	static public function tensor_scatter_nd_update(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tensor contraction of a and b along specified axes and outer product.
		
		Tensordot (also known as tensor contraction) sums the product of elements
		from `a` and `b` over the indices specified by `axes`.
		
		This operation corresponds to `numpy.tensordot(a, b, axes)`.
		
		Example 1: When `a` and `b` are matrices (order 2), the case `axes=1`
		is equivalent to matrix multiplication.
		
		Example 2: When `a` and `b` are matrices (order 2), the case
		`axes = [[1], [0]]` is equivalent to matrix multiplication.
		
		Example 3: When `a` and `b` are matrices (order 2), the case `axes=0` gives
		the outer product, a tensor of order 4.
		
		Example 4: Suppose that \\(a_{ijk}\\) and \\(b_{lmn}\\) represent two
		tensors of order 3. Then, `contract(a, b, [[0], [2]])` is the order 4 tensor
		\\(c_{jklm}\\) whose entry
		corresponding to the indices \\((j,k,l,m)\\) is given by:
		
		\\( c_{jklm} = \sum_i a_{ijk} b_{lmi} \\).
		
		In general, `order(c) = order(a) + order(b) - 2*len(axes[0])`.
		
		Args:
		  a: `Tensor` of type `float32` or `float64`.
		  b: `Tensor` with the same type as `a`.
		  axes: Either a scalar `N`, or a list or an `int32` `Tensor` of shape [2, k].
		    If axes is a scalar, sum over the last N axes of a and the first N axes of
		    b in order. If axes is a list or `Tensor` the first and second row contain
		    the set of unique integers specifying axes along which the contraction is
		    computed, for `a` and `b`, respectively. The number of axes for `a` and
		    `b` must be equal. If `axes=0`, computes the outer product between `a` and
		    `b`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `a`.
		
		Raises:
		  ValueError: If the shapes of `a`, `b`, and `axes` are incompatible.
		  IndexError: If the values in axes exceed the rank of the corresponding
		    tensor.
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a tensor by tiling a given tensor.
		
		This operation creates a new tensor by replicating `input` `multiples` times.
		The output tensor's i'th dimension has `input.dims(i) * multiples[i]` elements,
		and the values of `input` are replicated `multiples[i]` times along the 'i'th
		dimension. For example, tiling `[a b c d]` by `[2]` produces
		`[a b c d a b c d]`.
		
		>>> a = tf.constant([[1,2,3],[4,5,6]], tf.int32)
		>>> b = tf.constant([1,2], tf.int32)
		>>> tf.tile(a, b)
		<tf.Tensor: shape=(2, 6), dtype=int32, numpy=
		array([[1, 2, 3, 1, 2, 3],
		       [4, 5, 6, 4, 5, 6]], dtype=int32)>
		>>> c = tf.constant([2,1], tf.int32)
		>>> tf.tile(a, c)
		<tf.Tensor: shape=(4, 3), dtype=int32, numpy=
		array([[1, 2, 3],
		       [4, 5, 6],
		       [1, 2, 3],
		       [4, 5, 6]], dtype=int32)>
		>>> d = tf.constant([2,2], tf.int32)
		>>> tf.tile(a, d)
		<tf.Tensor: shape=(4, 6), dtype=int32, numpy=
		array([[1, 2, 3, 1, 2, 3],
		       [4, 5, 6, 4, 5, 6],
		       [1, 2, 3, 1, 2, 3],
		       [4, 5, 6, 4, 5, 6]], dtype=int32)>
		
		Args:
		  input: A `Tensor`. 1-D or higher.
		  multiples: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. Length must be the same as the number of dimensions in `input`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tile(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Provides the time since epoch in seconds.
		
		Returns the timestamp as a `float64` for seconds since the Unix epoch.
		
		Note: the timestamp is computed when the op is executed, not when it is added
		to the graph.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float64`.
	**/
	static public function timestamp(?name:Dynamic):Dynamic;
	/**
		Transposes `a`, where `a` is a Tensor.
		
		Permutes the dimensions according to the value of `perm`.
		
		The returned tensor's dimension `i` will correspond to the input dimension
		`perm[i]`. If `perm` is not given, it is set to (n-1...0), where n is the rank
		of the input tensor. Hence by default, this operation performs a regular
		matrix transpose on 2-D input Tensors.
		
		If conjugate is `True` and `a.dtype` is either `complex64` or `complex128`
		then the values of `a` are conjugated and transposed.
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, so `transpose` returns a new tensor with
		the items permuted.
		@end_compatibility
		
		For example:
		
		>>> x = tf.constant([[1, 2, 3], [4, 5, 6]])
		>>> tf.transpose(x)
		<tf.Tensor: shape=(3, 2), dtype=int32, numpy=
		array([[1, 4],
		       [2, 5],
		       [3, 6]], dtype=int32)>
		
		Equivalently, you could call `tf.transpose(x, perm=[1, 0])`.
		
		If `x` is complex, setting conjugate=True gives the conjugate transpose:
		
		>>> x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		...                  [4 + 4j, 5 + 5j, 6 + 6j]])
		>>> tf.transpose(x, conjugate=True)
		<tf.Tensor: shape=(3, 2), dtype=complex128, numpy=
		array([[1.-1.j, 4.-4.j],
		       [2.-2.j, 5.-5.j],
		       [3.-3.j, 6.-6.j]])>
		
		'perm' is more useful for n-dimensional tensors where n > 2:
		
		>>> x = tf.constant([[[ 1,  2,  3],
		...                   [ 4,  5,  6]],
		...                  [[ 7,  8,  9],
		...                   [10, 11, 12]]])
		
		As above, simply calling `tf.transpose` will default to `perm=[2,1,0]`.
		
		To take the transpose of the matrices in dimension-0 (such as when you are
		transposing matrices where 0 is the batch dimension), you would set
		`perm=[0,2,1]`.
		
		>>> tf.transpose(x, perm=[0, 2, 1])
		<tf.Tensor: shape=(2, 3, 2), dtype=int32, numpy=
		array([[[ 1,  4],
		        [ 2,  5],
		        [ 3,  6]],
		        [[ 7, 10],
		        [ 8, 11],
		        [ 9, 12]]], dtype=int32)>
		
		Note: This has a shorthand `linalg.matrix_transpose`):
		
		Args:
		  a: A `Tensor`.
		  perm: A permutation of the dimensions of `a`.  This should be a vector.
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.math.conj(tf.transpose(input)).
		  name: A name for the operation (optional).
		
		Returns:
		  A transposed `Tensor`.
	**/
	static public function transpose(a:Dynamic, ?perm:Dynamic, ?conjugate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides x / y elementwise (using Python 3 division operator semantics).
		
		NOTE: Prefer using the Tensor operator or tf.divide which obey Python
		division operator semantics.
		
		This function forces Python 3 division operator semantics where all integer
		arguments are cast to floating types first.   This op is generated by normal
		`x / y` division in Python 3 and in Python 2.7 with
		`from __future__ import division`.  If you want integer division that rounds
		down, use `x // y` or `tf.math.floordiv`.
		
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
		Returns x / y element-wise for integer types.
		
		Truncation designates that negative numbers will round fractional quantities
		toward zero. I.e. -7 / 5 = -1. This matches C semantics but it is different
		than Python semantics. See `FloorDiv` for a division function that matches
		Python Semantics.
		
		*NOTE*: `truncatediv` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function truncatediv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. This emulates C semantics in that
		
		the result here is consistent with a truncating divide. E.g. `truncate(x / y) *
		y + truncate_mod(x, y) = x`.
		
		*NOTE*: `truncatemod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function truncatemod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Groups tensors together.
		
		The returned tensors have the same value as the input tensors, but they
		are computed only after all the input tensors have been computed.
		
		Note: *In TensorFlow 2 with eager and/or Autograph, you should not require
		this method, as ops execute in the expected order thanks to automatic control
		dependencies.* Only use `tf.tuple` when working with v1 `tf.Graph` code.
		
		See also `tf.group` and `tf.control_dependencies`.
		
		Args:
		  tensors: A list of `Tensor`s or `IndexedSlices`, some entries can be `None`.
		  control_inputs: List of additional ops to finish before returning.
		  name: (optional) A name to use as a `name_scope` for the operation.
		
		Returns:
		  Same as `tensors`.
		
		Raises:
		  ValueError: If `tensors` does not contain any `Tensor` or `IndexedSlices`.
		  TypeError: If `control_inputs` is not a list of `Operation` or `Tensor`
		    objects.
	**/
	static public function tuple(tensors:Dynamic, ?control_inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a `tf.TypeSpec` that represents the given `value`.
		
		Examples:
		
		  >>> tf.type_spec_from_value(tf.constant([1, 2, 3]))
		  TensorSpec(shape=(3,), dtype=tf.int32, name=None)
		  >>> tf.type_spec_from_value(np.array([4.0, 5.0], np.float64))
		  TensorSpec(shape=(2,), dtype=tf.float64, name=None)
		  >>> tf.type_spec_from_value(tf.ragged.constant([[1, 2], [3, 4, 5]]))
		  RaggedTensorSpec(TensorShape([2, None]), tf.int32, 1, tf.int64)
		
		  >>> example_input = tf.ragged.constant([[1, 2], [3]])
		  >>> @tf.function(input_signature=[tf.type_spec_from_value(example_input)])
		  ... def f(x):
		  ...   return tf.reduce_sum(x, axis=1)
		
		Args:
		  value: A value that can be accepted or returned by TensorFlow APIs. Accepted
		    types for `value` include `tf.Tensor`, any value that can be converted to
		    `tf.Tensor` using `tf.convert_to_tensor`, and any subclass of
		    `CompositeTensor` (such as `tf.RaggedTensor`).
		
		Returns:
		  A `TypeSpec` that is compatible with `value`.
		
		Raises:
		  TypeError: If a TypeSpec cannot be built for `value`, because its type
		    is not supported.
	**/
	static public function type_spec_from_value(value:Dynamic):Dynamic;
	static public var uint16 : Dynamic;
	static public var uint32 : Dynamic;
	static public var uint64 : Dynamic;
	static public var uint8 : Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`; `x` does not need to be sorted.
		This operation also returns a tensor `idx` the same size as `x` that contains
		the index of each value of `x` in the unique output `y`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		Examples:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		```
		# tensor 'x' is [4, 5, 1, 2, 3, 3, 4, 5]
		y, idx = unique(x)
		y ==> [4, 5, 1, 2, 3]
		idx ==> [0, 1, 2, 3, 4, 4, 0, 1]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function unique(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. Finally, it returns a third tensor `count` that
		contains the count of each element of `y` in `x`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx, count = unique_with_counts(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx, count).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
		  count: A `Tensor` of type `out_idx`.
	**/
	static public function unique_with_counts(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts an array of flat indices into a tuple of coordinate arrays.
		
		
		Example:
		
		```
		y = tf.unravel_index(indices=[2, 5, 7], dims=[3, 3])
		# 'dims' represent a hypothetical (3, 3) tensor of indices:
		# [[0, 1, *2*],
		#  [3, 4, *5*],
		#  [6, *7*, 8]]
		# For each entry from 'indices', this operation returns
		# its coordinates (marked with '*'), such as
		# 2 ==> (0, 2)
		# 5 ==> (1, 2)
		# 7 ==> (2, 1)
		y ==> [[0, 1, 2], [2, 2, 1]]
		```
		
		@compatibility(numpy)
		Equivalent to np.unravel_index
		@end_compatibility
		
		Args:
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    An 0-D or 1-D `int` Tensor whose elements are indices into the
		    flattened version of an array of dimensions dims.
		  dims: A `Tensor`. Must have the same type as `indices`.
		    An 1-D `int` Tensor. The shape of the array to use for unraveling
		    indices.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `indices`.
	**/
	static public function unravel_index(indices:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Unpacks the given dimension of a rank-`R` tensor into rank-`(R-1)` tensors.
		
		Unpacks tensors from `value` by chipping it along the `axis` dimension.
		
		>>> x = tf.reshape(tf.range(12), (3,4))
		>>>
		>>> p, q, r = tf.unstack(x)
		>>> p.shape.as_list()
		[4]
		
		>>> i, j, k, l = tf.unstack(x, axis=1)
		>>> i.shape.as_list()
		[3]
		
		This is the opposite of stack.
		
		>>> x = tf.stack([i, j, k, l], axis=1)
		
		More generally if you have a tensor of shape `(A, B, C, D)`:
		
		>>> A, B, C, D = [2, 3, 4, 5]
		>>> t = tf.random.normal(shape=[A, B, C, D])
		
		The number of tensor returned is equal to the length of the target `axis`:
		
		>>> axis = 2
		>>> items = tf.unstack(t, axis=axis)
		>>> len(items) == t.shape[axis]
		True
		
		The shape of each result tensor is equal to the shape of the input tensor,
		with the target `axis` removed.
		
		>>> items[0].shape.as_list()  # [A, B, D]
		[2, 3, 5]
		
		The value of each tensor `items[i]` is equal to the slice of `input` across
		`axis` at index `i`:
		
		>>> for i in range(len(items)):
		...   slice = t[:,:,i,:]
		...   assert tf.reduce_all(slice == items[i])
		
		#### Python iterable unpacking
		
		With eager execution you _can_ unstack the 0th axis of a tensor using python's
		iterable unpacking:
		
		>>> t = tf.constant([1,2,3])
		>>> a,b,c = t
		
		`unstack` is still necessary because Iterable unpacking doesn't work in
		a `@tf.function`: Symbolic tensors are not iterable.
		
		You need to use `tf.unstack` here:
		
		>>> @tf.function
		... def bad(t):
		...   a,b,c = t
		...   return a
		>>>
		>>> bad(t)
		Traceback (most recent call last):
		...
		OperatorNotAllowedInGraphError: ...
		
		>>> @tf.function
		... def good(t):
		...   a,b,c = tf.unstack(t)
		...   return a
		>>>
		>>> good(t).numpy()
		1
		
		#### Unknown shapes
		
		Eager tensors have concrete values, so their shape is always known.
		Inside a `tf.function` the symbolic tensors may have unknown shapes.
		If the length of `axis` is unknown `tf.unstack` will fail because it cannot
		handle an unknown number of tensors:
		
		>>> @tf.function(input_signature=[tf.TensorSpec([None], tf.float32)])
		... def bad(t):
		...   tensors = tf.unstack(t)
		...   return tensors[0]
		>>>
		>>> bad(tf.constant([1,2,3]))
		Traceback (most recent call last):
		...
		ValueError: Cannot infer argument `num` from shape (None,)
		
		If you know the `axis` length you can pass it as the `num` argument. But this
		must be a constant value.
		
		If you actually need a variable number of tensors in a single `tf.function`
		trace, you will need to use exlicit loops and a `tf.TensorArray` instead.
		
		Args:
		  value: A rank `R > 0` `Tensor` to be unstacked.
		  num: An `int`. The length of the dimension `axis`. Automatically inferred if
		    `None` (the default).
		  axis: An `int`. The axis to unstack along. Defaults to the first dimension.
		    Negative values wrap around, so the valid range is `[-R, R)`.
		  name: A name for the operation (optional).
		
		Returns:
		  The list of `Tensor` objects unstacked from `value`.
		
		Raises:
		  ValueError: If `axis` is out of the range `[-R, R)`.
		  ValueError: If `num` is unspecified and cannot be inferred.
		  InvalidArgumentError: If `num` does not match the shape of `value`.
	**/
	static public function unstack(value:Dynamic, ?num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scope which defines a variable creation function to be used by variable().
		
		variable_creator is expected to be a function with the following signature:
		
		```
		  def variable_creator(next_creator, **kwargs)
		```
		
		The creator is supposed to eventually call the next_creator to create a
		variable if it does want to create a variable and not call Variable or
		ResourceVariable directly. This helps make creators composable. A creator may
		choose to create multiple variables, return already existing variables, or
		simply register that a variable was created and defer to the next creators in
		line. Creators can also modify the keyword arguments seen by the next
		creators.
		
		Custom getters in the variable scope will eventually resolve down to these
		custom creators when they do create variables.
		
		The valid keyword arguments in kwds are:
		
		 * initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		      which is the initial value for the Variable. The initial value must have
		      a shape specified unless `validate_shape` is set to False. Can also be a
		      callable with no argument that returns the initial value when called. In
		      that case, `dtype` must be specified. (Note that initializer functions
		      from init_ops.py must first be bound to a shape before being used here.)
		 * trainable: If `True`, the default, GradientTapes automatically watch
		      uses of this Variable.
		 * validate_shape: If `False`, allows the variable to be initialized with a
		      value of unknown shape. If `True`, the default, the shape of
		      `initial_value` must be known.
		 * caching_device: Optional device string describing where the Variable
		      should be cached for reading.  Defaults to the Variable's device.
		      If not `None`, caches on another device.  Typical use is to cache
		      on the device where the Ops using the Variable reside, to deduplicate
		      copying through `Switch` and other conditional statements.
		 * name: Optional name for the variable. Defaults to `'Variable'` and gets
		      uniquified automatically.
		    dtype: If set, initial_value will be converted to the given type.
		      If `None`, either the datatype will be kept (if `initial_value` is
		      a Tensor), or `convert_to_tensor` will decide.
		 * constraint: A constraint function to be applied to the variable after
		      updates by some algorithms.
		 * synchronization: Indicates when a distributed a variable will be
		      aggregated. Accepted values are constants defined in the class
		      `tf.VariableSynchronization`. By default the synchronization is set to
		      `AUTO` and the current `DistributionStrategy` chooses
		      when to synchronize.
		 * aggregation: Indicates how a distributed variable will be aggregated.
		      Accepted values are constants defined in the class
		      `tf.VariableAggregation`.
		
		This set may grow over time, so it's important the signature of creators is as
		mentioned above.
		
		Args:
		  variable_creator: the passed creator
		
		Yields:
		  A scope in which the creator is active
	**/
	static public function variable_creator_scope(variable_creator:Dynamic):Dynamic;
	static public var variant : Dynamic;
	/**
		Parallel map on the list of tensors unpacked from `elems` on dimension 0.
		
		This method works similar to `tf.map_fn` but is optimized to run much faster,
		possibly with a much larger memory footprint. The speedups are obtained by
		vectorization (see [Auto-Vectorizing TensorFlow Graphs: Jacobians,
		Auto-Batching and Beyond](https://arxiv.org/pdf/1903.04243.pdf)). The idea
		behind vectorization is to semantically launch all the invocations of `fn` in
		parallel and fuse corresponding operations across all these invocations. This
		fusion is done statically at graph generation time and the generated code is
		often similar in performance to a manually fused version.
		
		Because `tf.vectorized_map` fully parallelizes the batch, this method will
		generally be significantly faster than using `tf.map_fn`, especially in eager
		mode. However this is an experimental feature and currently has a lot of
		limitations:
		  - There should be no data dependency between the different semantic
		    invocations of `fn`, i.e. it should be safe to map the elements of the
		    inputs in any order.
		  - Stateful kernels may mostly not be supported since these often imply a
		    data dependency. We do support a limited set of such stateful kernels
		    though (like RandomFoo, Variable operations like reads, etc).
		  - `fn` has limited support for control flow operations.
		  - `fn` should return nested structure of Tensors or Operations. However
		    if an Operation is returned, it should have zero outputs.
		  - The shape and dtype of any intermediate or output tensors in the
		    computation of `fn` should not depend on the input to `fn`.
		
		Examples:
		```python
		def outer_product(a):
		  return tf.tensordot(a, a, 0)
		
		batch_size = 100
		a = tf.ones((batch_size, 32, 32))
		c = tf.vectorized_map(outer_product, a)
		assert c.shape == (batch_size, 32, 32, 32, 32)
		```
		
		```python
		# Computing per-example gradients
		
		batch_size = 10
		num_features = 32
		layer = tf.keras.layers.Dense(1)
		
		def model_fn(arg):
		  with tf.GradientTape() as g:
		    inp, label = arg
		    inp = tf.expand_dims(inp, 0)
		    label = tf.expand_dims(label, 0)
		    prediction = layer(inp)
		    loss = tf.nn.l2_loss(label - prediction)
		  return g.gradient(loss, (layer.kernel, layer.bias))
		
		inputs = tf.random.uniform([batch_size, num_features])
		labels = tf.random.uniform([batch_size, 1])
		per_example_gradients = tf.vectorized_map(model_fn, (inputs, labels))
		assert per_example_gradients[0].shape == (batch_size, num_features, 1)
		assert per_example_gradients[1].shape == (batch_size, 1)
		```
		
		Args:
		  fn: The callable to be performed. It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`, and returns a possibly
		    nested structure of Tensors and Operations, which may be different than
		    the structure of `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension. The nested sequence of the
		    resulting slices will be mapped over by `fn`. The first dimensions of all
		    elements must broadcast to a consistent value; equivalently, each
		    element tensor must have first dimension of either `B` or `1`, for some
		    common batch size `B >= 1`.
		  fallback_to_while_loop: If true, on failing to vectorize an operation,
		    the unsupported op is wrapped in a tf.while_loop to execute the map
		    iterations. Note that this fallback only happens for unsupported ops and
		    other parts of `fn` are still vectorized. If false, on encountering an
		    unsupported op, a ValueError is thrown. Note that the fallbacks can result
		    in slowdowns since vectorization often yields speedup of one to two orders
		    of magnitude.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors. Each tensor packs the
		  results of applying fn to tensors unpacked from elems along the first
		  dimension, from first to last.
		
		  Although they are less common as user-visible inputs and outputs, note that
		  tensors of type `tf.variant` which represent tensor lists (for example from
		  `tf.raw_ops.TensorListFromTensor`) are vectorized by stacking the list
		  contents rather than the variant itself, and so the container tensor will
		  have a scalar shape when returned rather than the usual stacked shape. This
		  improves the performance of control flow gradient vectorization.
		
		Raises:
		  ValueError: If vectorization fails and fallback_to_while_loop is False.
	**/
	static public function vectorized_map(fn:Dynamic, elems:Dynamic, ?fallback_to_while_loop:Dynamic):Dynamic;
	/**
		Return the elements where `condition` is `True` (multiplexing `x` and `y`).
		
		This operator has two modes: in one mode both `x` and `y` are provided, in
		another mode neither are provided. `condition` is always expected to be a
		`tf.Tensor` of type `bool`.
		
		#### Retrieving indices of `True` elements
		
		If `x` and `y` are not provided (both are None):
		
		`tf.where` will return the indices of `condition` that are `True`, in
		the form of a 2-D tensor with shape (n, d).
		(Where n is the number of matching indices in `condition`,
		and d is the number of dimensions in `condition`).
		
		Indices are output in row-major order.
		
		>>> tf.where([True, False, False, True])
		<tf.Tensor: shape=(2, 1), dtype=int64, numpy=
		array([[0],
		       [3]])>
		
		>>> tf.where([[True, False], [False, True]])
		<tf.Tensor: shape=(2, 2), dtype=int64, numpy=
		array([[0, 0],
		       [1, 1]])>
		
		>>> tf.where([[[True, False], [False, True], [True, True]]])
		<tf.Tensor: shape=(4, 3), dtype=int64, numpy=
		array([[0, 0, 0],
		       [0, 1, 1],
		       [0, 2, 0],
		       [0, 2, 1]])>
		
		#### Multiplexing between `x` and `y`
		
		If `x` and `y` are provided (both have non-None values):
		
		`tf.where` will choose an output shape from the shapes of `condition`, `x`,
		and `y` that all three shapes are
		[broadcastable](https://docs.scipy.org/doc/numpy/reference/ufuncs.html) to.
		
		The `condition` tensor acts as a mask that chooses whether the corresponding
		element / row in the output should be taken from `x`
		(if the element in `condition` is True) or `y` (if it is false).
		
		>>> tf.where([True, False, False, True], [1,2,3,4], [100,200,300,400])
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 200, 300,   4],
		dtype=int32)>
		>>> tf.where([True, False, False, True], [1,2,3,4], [100])
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   4],
		dtype=int32)>
		>>> tf.where([True, False, False, True], [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   4],
		dtype=int32)>
		>>> tf.where([True, False, False, True], 1, 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   1],
		dtype=int32)>
		
		>>> tf.where(True, [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([1, 2, 3, 4],
		dtype=int32)>
		>>> tf.where(False, [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([100, 100, 100, 100],
		dtype=int32)>
		
		Note that if the gradient of either branch of the tf.where generates
		a NaN, then the gradient of the entire tf.where will be NaN. This is because
		the gradient calculation for tf.where combines the two branches, for
		performance reasons.
		
		A workaround is to use an inner tf.where to ensure the function has
		no asymptote, and to avoid computing a value whose gradient is NaN by
		replacing dangerous inputs with safe inputs.
		
		Instead of this,
		
		>>> x = tf.constant(0., dtype=tf.float32)
		>>> with tf.GradientTape() as tape:
		...   tape.watch(x)
		...   y = tf.where(x < 1., 0., 1. / x)
		>>> print(tape.gradient(y, x))
		tf.Tensor(nan, shape=(), dtype=float32)
		
		Although, the `1. / x` values are never used, its gradient is a NaN when x =
		0. Instead, we should guard that with another `tf.where`
		
		>>> x = tf.constant(0., dtype=tf.float32)
		>>> with tf.GradientTape() as tape:
		...   tape.watch(x)
		...   safe_x = tf.where(tf.equal(x, 0.), 1., x)
		...   y = tf.where(x < 1., 0., 1. / safe_x)
		>>> print(tape.gradient(y, x))
		tf.Tensor(0.0, shape=(), dtype=float32)
		
		Args:
		  condition: A `tf.Tensor` of type `bool`
		  x: If provided, a Tensor which is of the same type as `y`, and has a shape
		    broadcastable with `condition` and `y`.
		  y: If provided, a Tensor which is of the same type as `x`, and has a shape
		    broadcastable with `condition` and `x`.
		  name: A name of the operation (optional).
		
		Returns:
		  If `x` and `y` are provided:
		    A `Tensor` with the same type as `x` and `y`, and shape that
		    is broadcast from `condition`, `x`, and `y`.
		  Otherwise, a `Tensor` with shape `(num_true, dim_size(condition))`.
		
		Raises:
		  ValueError: When exactly one of `x` or `y` is non-None, or the shapes
		    are not all broadcastable.
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Repeat `body` while the condition `cond` is true. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(back_prop=False)`. They will be removed in a future version.
		Instructions for updating:
		back_prop=False is deprecated. Consider using tf.stop_gradient instead.
		Instead of:
		results = tf.while_loop(c, b, vars, back_prop=False)
		Use:
		results = tf.nest.map_structure(tf.stop_gradient, tf.while_loop(c, b, vars))
		
		`cond` is a callable returning a boolean scalar tensor. `body` is a callable
		returning a (possibly nested) tuple, namedtuple or list of tensors of the same
		arity (length and structure) and types as `loop_vars`. `loop_vars` is a
		(possibly nested) tuple, namedtuple or list of tensors that is passed to both
		`cond` and `body`. `cond` and `body` both take as many arguments as there are
		`loop_vars`.
		
		In addition to regular Tensors or IndexedSlices, the body may accept and
		return TensorArray objects.  The flows of the TensorArray objects will
		be appropriately forwarded between loops and during gradient calculations.
		
		Note that `while_loop` calls `cond` and `body` *exactly once* (inside the
		call to `while_loop`, and not at all during `Session.run()`). `while_loop`
		stitches together the graph fragments created during the `cond` and `body`
		calls with some additional graph nodes to create the graph flow that
		repeats `body` until `cond` returns false.
		
		For correctness, `tf.while_loop()` strictly enforces shape invariants for
		the loop variables. A shape invariant is a (possibly partial) shape that
		is unchanged across the iterations of the loop. An error will be raised
		if the shape of a loop variable after an iteration is determined to be more
		general than or incompatible with its shape invariant. For example, a shape
		of [11, None] is more general than a shape of [11, 17], and [11, 21] is not
		compatible with [11, 17]. By default (if the argument `shape_invariants` is
		not specified), it is assumed that the initial shape of each tensor in
		`loop_vars` is the same in every iteration. The `shape_invariants` argument
		allows the caller to specify a less specific shape invariant for each loop
		variable, which is needed if the shape varies between iterations. The
		`tf.Tensor.set_shape`
		function may also be used in the `body` function to indicate that
		the output loop variable has a particular shape. The shape invariant for
		SparseTensor and IndexedSlices are treated specially as follows:
		
		a) If a loop variable is a SparseTensor, the shape invariant must be
		TensorShape([r]) where r is the rank of the dense tensor represented
		by the sparse tensor. It means the shapes of the three tensors of the
		SparseTensor are ([None], [None, r], [r]). NOTE: The shape invariant here
		is the shape of the SparseTensor.dense_shape property. It must be the shape of
		a vector.
		
		b) If a loop variable is an IndexedSlices, the shape invariant must be
		a shape invariant of the values tensor of the IndexedSlices. It means
		the shapes of the three tensors of the IndexedSlices are (shape, [shape[0]],
		[shape.ndims]).
		
		`while_loop` implements non-strict semantics, enabling multiple iterations
		to run in parallel. The maximum number of parallel iterations can be
		controlled by `parallel_iterations`, which gives users some control over
		memory consumption and execution order. For correct programs, `while_loop`
		should return the same result for any parallel_iterations > 0.
		
		For training, TensorFlow stores the tensors that are produced in the
		forward inference and are needed in back propagation. These tensors are a
		main source of memory consumption and often cause OOM errors when training
		on GPUs. When the flag swap_memory is true, we swap out these tensors from
		GPU to CPU. This for example allows us to train RNN models with very long
		sequences and large batches.
		
		Args:
		  cond: A callable that represents the termination condition of the loop.
		  body: A callable that represents the loop body.
		  loop_vars: A (possibly nested) tuple, namedtuple or list of numpy array,
		    `Tensor`, and `TensorArray` objects.
		  shape_invariants: The shape invariants for the loop variables.
		  parallel_iterations: The number of iterations allowed to run in parallel. It
		    must be a positive integer.
		  back_prop: (optional) Deprecated. False disables support for back
		    propagation. Prefer using `tf.stop_gradient` instead.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  maximum_iterations: Optional maximum number of iterations of the while loop
		    to run.  If provided, the `cond` output is AND-ed with an additional
		    condition ensuring the number of iterations executed is no greater than
		    `maximum_iterations`.
		  name: Optional name prefix for the returned tensors.
		
		Returns:
		  The output tensors for the loop variables after the loop. The return value
		    has the same structure as `loop_vars`.
		
		Raises:
		  TypeError: if `cond` or `body` is not callable.
		  ValueError: if `loop_vars` is empty.
		
		Example:
		
		```python
		i = tf.constant(0)
		c = lambda i: tf.less(i, 10)
		b = lambda i: (tf.add(i, 1), )
		r = tf.while_loop(c, b, [i])
		```
		
		Example with nesting and a namedtuple:
		
		```python
		import collections
		Pair = collections.namedtuple('Pair', 'j, k')
		ijk_0 = (tf.constant(0), Pair(tf.constant(1), tf.constant(2)))
		c = lambda i, p: i < 10
		b = lambda i, p: (i + 1, Pair((p.j + p.k), (p.j - p.k)))
		ijk_final = tf.while_loop(c, b, ijk_0)
		```
		
		Example using shape_invariants:
		
		```python
		i0 = tf.constant(0)
		m0 = tf.ones([2, 2])
		c = lambda i, m: i < 10
		b = lambda i, m: [i+1, tf.concat([m, m], axis=0)]
		tf.while_loop(
		    c, b, loop_vars=[i0, m0],
		    shape_invariants=[i0.get_shape(), tf.TensorShape([None, 2])])
		```
		
		Example which demonstrates non-strict semantics: In the following
		example, the final value of the counter `i` does not depend on `x`. So
		the `while_loop` can increment the counter parallel to updates of `x`.
		However, because the loop counter at one loop iteration depends
		on the value at the previous iteration, the loop counter itself cannot
		be incremented in parallel. Hence if we just want the final value of the
		counter (which we print on the line `print(sess.run(i))`), then
		`x` will never be incremented, but the counter will be updated on a
		single thread. Conversely, if we want the value of the output (which we
		print on the line `print(sess.run(out).shape)`), then the counter may be
		incremented on its own thread, while `x` can be incremented in
		parallel on a separate thread. In the extreme case, it is conceivable
		that the thread incrementing the counter runs until completion before
		`x` is incremented even a single time. The only thing that can never
		happen is that the thread updating `x` can never get ahead of the
		counter thread because the thread incrementing `x` depends on the value
		of the counter.
		
		```python
		import tensorflow as tf
		
		n = 10000
		x = tf.constant(list(range(n)))
		c = lambda i, x: i < n
		b = lambda i, x: (tf.compat.v1.Print(i + 1, [i]), tf.compat.v1.Print(x + 1,
		[i], "x:"))
		i, out = tf.while_loop(c, b, (0, x))
		with tf.compat.v1.Session() as sess:
		    print(sess.run(i))  # prints [0] ... [9999]
		
		    # The following line may increment the counter and x in parallel.
		    # The counter thread may get ahead of the other thread, but not the
		    # other way around. So you may see things like
		    # [9996] x:[9987]
		    # meaning that the counter thread is on iteration 9996,
		    # while the other thread is on iteration 9987
		    print(sess.run(out).shape)
		```
	**/
	static public function while_loop(cond:Dynamic, body:Dynamic, loop_vars:Dynamic, ?shape_invariants:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?maximum_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		See also `tf.zeros_like`, `tf.ones`, `tf.fill`, `tf.eye`.
		
		This operation returns a tensor of type `dtype` with shape `shape` and
		all elements set to zero.
		
		>>> tf.zeros([3, 4], tf.int32)
		<tf.Tensor: shape=(3, 4), dtype=int32, numpy=
		array([[0, 0, 0, 0],
		       [0, 0, 0, 0],
		       [0, 0, 0, 0]], dtype=int32)>
		
		Args:
		  shape: A `list` of integers, a `tuple` of integers, or
		    a 1-D `Tensor` of type `int32`.
		  dtype: The DType of an element in the resulting `Tensor`.
		  name: Optional string. A name for the operation.
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		See also `tf.zeros`.
		
		Given a single tensor or array-like object (`input`), this operation returns
		a tensor of the same type and shape as `input` with all elements set to zero.
		Optionally, you can use `dtype` to specify a new type for the returned tensor.
		
		Examples:
		
		  >>> tensor = tf.constant([[1, 2, 3], [4, 5, 6]])
		  >>> tf.zeros_like(tensor)
		  <tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[0, 0, 0],
		         [0, 0, 0]], dtype=int32)>
		
		  >>> tf.zeros_like(tensor, dtype=tf.float32)
		  <tf.Tensor: shape=(2, 3), dtype=float32, numpy=
		  array([[0., 0., 0.],
		         [0., 0., 0.]], dtype=float32)>
		
		  >>> tf.zeros_like([[1, 2, 3], [4, 5, 6]])
		  <tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		  array([[0, 0, 0],
		         [0, 0, 0]], dtype=int32)>
		
		Args:
		  input: A `Tensor` or array-like object.
		  dtype: A type for the returned `Tensor`. Must be `float16`, `float32`,
		    `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`,
		    `complex64`, `complex128`, `bool` or `string` (optional).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros_like(input:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}