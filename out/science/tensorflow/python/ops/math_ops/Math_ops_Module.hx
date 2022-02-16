/* This file is generated, do not edit! */
package tensorflow.python.ops.math_ops;
@:pythonImport("tensorflow.python.ops.math_ops") extern class Math_ops_Module {
	/**
		Computes the absolute value of a tensor.
		
		Given a tensor `x`, this operation returns a tensor containing the absolute
		value of each element in `x`. For example, if x is an input element and y is
		an output element, this operation computes \\(y = |x|\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Abs(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		`tf.accumulate_n_v2` performs the same operation as `tf.add_n`, but does not
		wait for all of its inputs to be ready before beginning to sum. This can
		save memory if inputs are ready at different times, since minimum temporary
		storage is proportional to the output size rather than the inputs size.
		
		Unlike the original `accumulate_n`, `accumulate_n_v2` is differentiable.
		
		Returns a `Tensor` of same shape and type as the elements of `inputs`.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type in: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A list of `Tensor` objects, each with same shape and type.
		  shape: A `tf.TensorShape` or list of `ints`.
		    Shape of elements of `inputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function AccumulateNV2(inputs:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes acos of x element-wise.
		
		
		  Provided an input tensor, the `tf.math.acos` operation returns the inverse cosine of each element of the tensor. If `y = tf.math.cos(x)` then, `x = tf.math.acos(y)`.
		
		  Input range is `[-1, 1]` and the output has a range of `[0, pi]`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Acos(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Acosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Given two input tensors, the `tf.add` operation computes the sum for every element in the tensor.
		
		Both input and output have a range `(-inf, inf)`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `string`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Add(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add all input tensors element wise.
		
		  Inputs must be of same size and shape.
		
		  ```python
		  x = [9, 7, 10]
		  tf.math.add_n(x) ==> 26
		  ```
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type in: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function AddN(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function AddV2(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the "logical and" of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor` of type `bool`. The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function All(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the argument of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		type `float` that is the argument of each element in `input`. All elements in
		`input` must be complex numbers of the form \\(a + bj\\), where *a*
		is the real part and *b* is the imaginary part.
		
		The argument returned by this operation is of the form \\(atan2(b, a)\\).
		
		For example:
		
		```
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.angle(input) ==> [2.0132, 1.056]
		```
		
		@compatibility(numpy)
		Equivalent to np.angle.
		@end_compatibility
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  Tout: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function Angle(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the "logical or" of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor` of type `bool`. The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function Any(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of abs(x-y) < tolerance element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  tolerance: An optional `float`. Defaults to `1e-05`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function ApproximateEqual(x:Dynamic, y:Dynamic, ?tolerance:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across dimensions of a tensor.
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmax(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 4
		  # here a[4] = 166.32 which is the largest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		  dimension: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which dimension of the input Tensor to reduce across. For vectors,
		    use dimension = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function ArgMax(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across dimensions of a tensor.
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmin(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 0
		  # here a[0] = 1 which is the smallest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		  dimension: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which dimension of the input Tensor to reduce across. For vectors,
		    use dimension = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function ArgMin(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Asin(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Asinh(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Atan(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Atan2(y:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Atanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must have the same type as `x`.
		    2-D or higher with shape `[..., r_y, c_y]`.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function BatchMatMul(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		*NOTE*: `BatchMatMulV2` supports broadcasting in the batch dimensions. More
		about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must have the same type as `x`.
		    2-D or higher with shape `[..., r_y, c_y]`.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function BatchMatMulV2(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		*NOTE*: `BatchMatMulV3` supports broadcasting in the batch dimensions. More
		about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_y, c_y]`.
		  Tout: A `tf.DType` from: `tf.bfloat16, tf.half, tf.float32, tf.float64, tf.int16, tf.int32, tf.int64, tf.complex64, tf.complex128`.
		    If not spcified, Tout is the same type to input type.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function BatchMatMulV3(x:Dynamic, y:Dynamic, Tout:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the regularized incomplete beta integral \\(I_x(a, b)\\).
		
		The regularized incomplete beta integral is defined as:
		
		
		\\(I_x(a, b) = \frac{B(x; a, b)}{B(a, b)}\\)
		
		where
		
		
		\\(B(x; a, b) = \int_0^x t^{a-1} (1 - t)^{b-1} dt\\)
		
		
		is the incomplete beta function and \\(B(a, b)\\) is the *complete*
		beta function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  b: A `Tensor`. Must have the same type as `a`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function Betainc(a:Dynamic, b:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  arr: A `Tensor` of type `int32`. int32 `Tensor`.
		  size: A `Tensor` of type `int32`. non-negative int32 scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `arr`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function Bincount(arr:Dynamic, size:Dynamic, weights:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Bucketizes 'input' based on 'boundaries'.
		
		For example, if the inputs are
		    boundaries = [0, 10, 100]
		    input = [[-5, 10000]
		             [150,   10]
		             [5,    100]]
		
		then the output will be
		    output = [[0, 3]
		              [3, 2]
		              [1, 3]]
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    Any shape of Tensor contains with int or float type.
		  boundaries: A list of `floats`.
		    A sorted list of floats gives the boundary of the buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function Bucketize(input:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Cast x of type SrcT to y of DstT.
		
		Args:
		  x: A `Tensor`.
		  DstT: A `tf.DType`.
		  Truncate: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `DstT`.
	**/
	static public function Cast(x:Dynamic, DstT:Dynamic, ?Truncate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise smallest integer not less than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Ceil(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a specified min and max.
		
		Given a tensor `t`, this operation returns a tensor of the same type and
		shape as `t` with its values clipped to `clip_value_min` and `clip_value_max`.
		Any values less than `clip_value_min` are set to `clip_value_min`. Any values
		greater than `clip_value_max` are set to `clip_value_max`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A `Tensor`.
		  clip_value_min: A `Tensor`. Must have the same type as `t`.
		    A 0-D (scalar) `Tensor`, or a `Tensor` with the same shape
		    as `t`. The minimum value to clip by.
		  clip_value_max: A `Tensor`. Must have the same type as `t`.
		    A 0-D (scalar) `Tensor`, or a `Tensor` with the same shape
		    as `t`. The maximum value to clip by.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function ClipByValue(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts two real numbers to a complex number.
		
		Given a tensor `real` representing the real part of a complex number, and a
		tensor `imag` representing the imaginary part of a complex number, this
		operation returns complex numbers elementwise of the form \\(a + bj\\), where
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
		  Tout: An optional `tf.DType` from: `tf.complex64, tf.complex128`. Defaults to `tf.complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function Complex(real:Dynamic, imag:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the complex absolute value of a tensor.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float` or `double` that is the absolute value of each element in `x`. All
		elements in `x` must be complex numbers of the form \\(a + bj\\). The absolute
		value is computed as \\( \sqrt{a^2 + b^2}\\).
		
		For example:
		
		>>> x = tf.complex(3.0, 4.0)
		>>> print((tf.raw_ops.ComplexAbs(x=x, Tout=tf.dtypes.float32, name=None)).numpy())
		5.0
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  Tout: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function ComplexAbs(x:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`, `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Conj(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Cos(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Cosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the pairwise cross product.
		
		`a` and `b` must be the same shape; they can either be simple 3-element vectors,
		or any shape where the innermost dimension is 3. In the latter case, each pair
		of corresponding 3-element vectors is cross-multiplied independently.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A tensor containing 3-element vectors.
		  b: A `Tensor`. Must have the same type as `a`.
		    Another tensor, of same type and shape as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function Cross(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the cumulative product of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumprod, which means that the first
		element of the input is identical to the first element of the output:
		
		```python
		tf.cumprod([a, b, c])  # => [a, a * b, a * b * c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumprod is
		performed instead:
		
		```python
		tf.cumprod([a, b, c], exclusive=True)  # => [1, a, a * b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumprod is performed in the
		opposite direction:
		
		```python
		tf.cumprod([a, b, c], reverse=True)  # => [a * b * c, b * c, c]
		```
		
		This is more efficient than using separate `tf.reverse` ops.
		
		The `reverse` and `exclusive` kwargs can also be combined:
		
		```python
		tf.cumprod([a, b, c], exclusive=True, reverse=True)  # => [b * c, c, 1]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		    `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: 0). Must be in the range
		    `[-rank(x), rank(x))`.
		  exclusive: An optional `bool`. Defaults to `False`.
		    If `True`, perform exclusive cumprod.
		  reverse: An optional `bool`. Defaults to `False`.
		    A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Cumprod(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the cumulative sum of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumsum, which means that the first
		element of the input is identical to the first element of the output:
		
		```python
		tf.cumsum([a, b, c])  # => [a, a + b, a + b + c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumsum is
		performed instead:
		
		```python
		tf.cumsum([a, b, c], exclusive=True)  # => [0, a, a + b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumsum is performed in the
		opposite direction:
		
		```python
		tf.cumsum([a, b, c], reverse=True)  # => [a + b + c, b + c, c]
		```
		
		This is more efficient than using separate `tf.reverse` ops.
		
		The `reverse` and `exclusive` kwargs can also be combined:
		
		```python
		tf.cumsum([a, b, c], exclusive=True, reverse=True)  # => [b + c, c, 0]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		    `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: 0). Must be in the range
		    `[-rank(x), rank(x))`.
		  exclusive: An optional `bool`. Defaults to `False`.
		    If `True`, perform exclusive cumsum.
		  reverse: An optional `bool`. Defaults to `False`.
		    A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Cumsum(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the cumulative product of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumulative log-sum-exp,
		which means that the first
		element of the input is identical to the first element of the output:
		```python
		tf.math.cumulative_logsumexp([a, b, c])  # => [a, log(exp(a) + exp(b)), log(exp(a) + exp(b) + exp(c))]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumulative log-sum-exp is
		performed instead:
		```python
		tf.cumulative_logsumexp([a, b, c], exclusive=True)  # => [-inf, a, log(exp(a) * exp(b))]
		```
		Note that the neutral element of the log-sum-exp operation is `-inf`,
		however, for performance reasons, the minimal value representable by the
		floating point type is used instead.
		
		By setting the `reverse` kwarg to `True`, the cumulative log-sum-exp is performed in the
		opposite direction.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    A `Tensor`. Must be one of the following types: `float16`, `float32`, `float64`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: 0). Must be in the range
		    `[-rank(x), rank(x))`.
		  exclusive: An optional `bool`. Defaults to `False`.
		    If `True`, perform exclusive cumulative log-sum-exp.
		  reverse: An optional `bool`. Defaults to `False`.
		    A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function CumulativeLogsumexp(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1D or 2D int `Tensor`.
		  size: A `Tensor`. Must have the same type as `input`.
		    non-negative int scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `arr`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  binary_output: An optional `bool`. Defaults to `False`.
		    bool; Whether the kernel should count the appearance or number of occurrences.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function DenseBincount(input:Dynamic, size:Dynamic, weights:Dynamic, ?binary_output:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Psi, the derivative of Lgamma (the log of the absolute value of
		
		`Gamma(x)`), element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Digamma(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x / y element-wise.
		
		*NOTE*: `Div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns 0 if the denominator is zero.
		
		
		*NOTE*: `DivNoNan` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `bfloat16`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function DivNoNan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x == y) element-wise.
		
		*NOTE*: `Equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		```python
		x = tf.constant([2, 4])
		y = tf.constant(2)
		tf.math.equal(x, y) ==> array([True, False])
		
		x = tf.constant([2, 4])
		y = tf.constant([2, 4])
		tf.math.equal(x, y) ==> array([True,  True])
		```
		
		Args:
		  x: A `Tensor`.
		  y: A `Tensor`. Must have the same type as `x`.
		  incompatible_shape_error: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function Equal(x:Dynamic, y:Dynamic, ?incompatible_shape_error:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the [Gauss error function](https://en.wikipedia.org/wiki/Error_function) of `x` element-wise. In statistics, for non-negative values of $x$, the error function has the following interpretation: for a random variable $Y$ that is normally distributed with mean 0 and variance $1/\sqrt{2}$, $erf(x)$ is the probability that $Y$ falls in the range $[−x, x]$.
		
		For example:
		
		>>> tf.math.erf([[1.0, 2.0, 3.0], [0.0, -1.0, -2.0]])
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=
		array([[ 0.8427007,  0.9953223,  0.999978 ],
		       [ 0.       , -0.8427007, -0.9953223]], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Erf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the complementary error function of `x` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Erfc(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Erfinv(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the euclidean norm of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function EuclideanNorm(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes exponential of x element-wise.  \\(y = e^x\\).
		
		  This function computes the exponential of every element in the input tensor.
		  i.e. `exp(x)` or `e^(x)`, where `x` is the input tensor.
		  `e` denotes Euler's number and is approximately equal to 2.718281.
		  Output is positive for any real input.
		
		  ```python
		  x = tf.constant(2.0)
		  tf.math.exp(x) ==> 7.389056
		
		  x = tf.constant([2.0, 8.0])
		  tf.math.exp(x) ==> array([7.389056, 2980.958], dtype=float32)
		  ```
		
		  For complex numbers, the exponential value is calculated as follows:
		
		  ```
		  e^(x+iy) = e^x * e^iy = e^x * (cos y + i sin y)
		  ```
		
		  Let's consider complex number 1+1j as an example.
		  e^1 * (cos 1 + i sin 1) = 2.7182818284590 * (0.54030230586+0.8414709848j)
		
		  ```python
		  x = tf.constant(1 + 1j)
		  tf.math.exp(x) ==> 1.4686939399158851+2.2873552871788423j
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Exp(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes `exp(x) - 1` element-wise.
		
		  i.e. `exp(x) - 1` or `e^(x) - 1`, where `x` is the input tensor.
		  `e` denotes Euler's number and is approximately equal to 2.718281.
		
		  ```python
		  x = tf.constant(2.0)
		  tf.math.expm1(x) ==> 6.389056
		
		  x = tf.constant([2.0, 8.0])
		  tf.math.expm1(x) ==> array([6.389056, 2979.958], dtype=float32)
		
		  x = tf.constant(1 + 1j)
		  tf.math.expm1(x) ==> (0.46869393991588515+2.2873552871788423j)
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Expm1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise largest integer not greater than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Floor(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x // y element-wise.
		
		*NOTE*: `floor_div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function FloorDiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `math.floormod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function FloorMod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Greater(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function GreaterEqual(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return histogram of values.
		
		Given the tensor `values`, this operation returns a rank 1 histogram counting
		the number of entries in `values` that fall into every bin.  The bins are
		equal width and determined by the arguments `value_range` and `nbins`.
		
		```python
		# Bins will be:  (-inf, 1), [1, 2), [2, 3), [3, 4), [4, inf)
		nbins = 5
		value_range = [0.0, 5.0]
		new_values = [-1.0, 0.0, 1.5, 2.0, 5.0, 15]
		
		with tf.get_default_session() as sess:
		  hist = tf.histogram_fixed_width(new_values, value_range, nbins=5)
		  variables.global_variables_initializer().run()
		  sess.run(hist) => [2, 1, 1, 0, 2]
		```
		
		Args:
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    Numeric `Tensor`.
		  value_range: A `Tensor`. Must have the same type as `values`.
		    Shape [2] `Tensor` of same `dtype` as `values`.
		    values <= value_range[0] will be mapped to hist[0],
		    values >= value_range[1] will be mapped to hist[-1].
		  nbins: A `Tensor` of type `int32`.
		    Scalar `int32 Tensor`.  Number of histogram bins.
		  dtype: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function HistogramFixedWidth(values:Dynamic, value_range:Dynamic, nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the lower regularized incomplete Gamma function `P(a, x)`.
		
		The lower regularized incomplete Gamma function is defined as:
		
		
		\\(P(a, x) = gamma(a, x) / Gamma(a) = 1 - Q(a, x)\\)
		
		where
		
		\\(gamma(a, x) = \\int_{0}^{x} t^{a-1} exp(-t) dt\\)
		
		is the lower incomplete Gamma function.
		
		Note, above `Q(a, x)` (`Igammac`) is the upper regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function Igamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of `igamma(a, x)` wrt `a`.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function IgammaGradA(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the upper regularized incomplete Gamma function `Q(a, x)`.
		
		The upper regularized incomplete Gamma function is defined as:
		
		\\(Q(a, x) = Gamma(a, x) / Gamma(a) = 1 - P(a, x)\\)
		
		where
		
		\\(Gamma(a, x) = \int_{x}^{\infty} t^{a-1} exp(-t) dt\\)
		
		is the upper incomplete Gamma function.
		
		Note, above `P(a, x)` (`Igamma`) is the lower regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function Igammac(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the imaginary part of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		type `float` that is the imaginary part of each element in `input`. All
		elements in `input` must be complex numbers of the form \\(a + bj\\), where *a*
		is the real part and *b* is the imaginary part returned by this operation.
		
		For example:
		
		```
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.imag(input) ==> [4.75, 5.75]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  Tout: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function Imag(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Inv(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient for the inverse of `x` wrt its input.
		
		Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function InvGrad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are finite.
		
		@compatibility(numpy)
		Equivalent to np.isfinite
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, 4.8, 6.8, np.inf, np.nan])
		tf.math.is_finite(x) ==> [True, True, True, False, False]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function IsFinite(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are Inf.
		
		@compatibility(numpy)
		Equivalent to np.isinf
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, np.inf, 6.8, np.inf])
		tf.math.is_inf(x) ==> [False, True, False, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function IsInf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are NaN.
		
		@compatibility(numpy)
		Equivalent to np.isnan
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, np.nan, 6.8, np.nan, np.inf])
		tf.math.is_nan(x) ==> [False, True, False, True, False]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function IsNan(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Less(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function LessEqual(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the log of the absolute value of `Gamma(x)` element-wise.
		
		  For positive numbers, this function computes log((input - 1)!) for every element in the tensor.
		  `lgamma(5) = log((5-1)!) = log(4!) = log(24) = 3.1780539`
		
		Example:
		
		```python
		x = tf.constant([0, 0.5, 1, 4.5, -4, -5.6])
		tf.math.lgamma(x) ==> [inf, 0.5723649, 0., 2.4537368, inf, -4.6477685]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Lgamma(x:Dynamic, ?name:Dynamic):Dynamic;
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
		  start: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    0-D tensor. First entry in the range.
		  stop: A `Tensor`. Must have the same type as `start`.
		    0-D tensor. Last entry in the range.
		  num: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of values to generate.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function LinSpace(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes natural logarithm of x element-wise.
		
		I.e., \\(y = \log_e x\\).
		
		Example:
		>>> x = tf.constant([0, 0.5, 1, 5])
		>>> tf.math.log(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([      -inf, -0.6931472,  0.       ,  1.609438 ], dtype=float32)>
		
		See: https://en.wikipedia.org/wiki/Logarithm
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Log(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes natural logarithm of (1 + x) element-wise.
		
		I.e., \\(y = \log_e (1 + x)\\).
		
		Example:
		>>> x = tf.constant([0, 0.5, 1, 5])
		>>> tf.math.log1p(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([0.       , 0.4054651, 0.6931472, 1.7917595], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Log1p(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function LogicalAnd(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function LogicalNot(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function LogicalOr(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply the matrix "a" by the matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of
		"a" (after being transposed if transpose_a is true) must match the
		outer dimension of "b" (after being transposed if transposed_b is
		true).
		
		*Note*: The default kernel implementation for MatMul on GPUs uses
		cublas.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  b: A `Tensor`. Must have the same type as `a`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    If true, "a" is transposed before multiplication.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    If true, "b" is transposed before multiplication.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function MatMul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Max(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Maximum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Mean(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Min(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Minimum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. This emulates C semantics in that
		
		the result here is consistent with a truncating divide. E.g.
		`tf.truncatediv(x, y) * y + truncate_mod(x, y) = x`.
		
		*NOTE*: `Mod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `half`, `half`, `bfloat16`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x * y element-wise.
		
		*NOTE*: `Multiply` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Mul(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x * y element-wise. Returns zero if y is zero, even if x if infinite or NaN.
		
		*NOTE*: `MulNoNan` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function MulNoNan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Ndtri(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \\(y = -x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Neg(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the next representable value of `x1` in the direction of `x2`, element-wise.
		
		This operation returns the same result as the C++ std::nextafter function.
		
		It can also return a subnormal number.
		
		@compatibility(cpp)
		Equivalent to C++ std::nextafter function.
		@end_compatibility
		
		Args:
		  x1: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  x2: A `Tensor`. Must have the same type as `x1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x1`.
	**/
	static public function NextAfter(x1:Dynamic, x2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x != y) element-wise.
		
		*NOTE*: `NotEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`.
		  y: A `Tensor`. Must have the same type as `x`.
		  incompatible_shape_error: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function NotEqual(x:Dynamic, y:Dynamic, ?incompatible_shape_error:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the polygamma function \\(\psi^{(n)}(x)\\).
		
		The polygamma function is defined as:
		
		
		\\(\psi^{(a)}(x) = \frac{d^a}{dx^a} \psi(x)\\)
		
		where \\(\psi(x)\\) is the digamma function.
		The polygamma function is defined only for non-negative integer orders \\a\\.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function Polygamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the power of one value to another.
		
		Given a tensor `x` and a tensor `y`, this operation computes \\(x^y\\) for
		corresponding elements in `x` and `y`. For example:
		
		```
		# tensor 'x' is [[2, 2]], [3, 3]]
		# tensor 'y' is [[8, 16], [2, 3]]
		tf.pow(x, y) ==> [[256, 65536], [9, 27]]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `half`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Pow(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the product of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Prod(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert the quantized 'input' tensor into a lower-precision 'output', using the
		
		actual distribution of the values to maximize the usage of the lower bit depth
		and adjusting the output min and max ranges accordingly.
		
		[input_min, input_max] are scalar floats that specify the range for the float
		interpretation of the 'input' data. For example, if input_min is -1.0f and
		input_max is 1.0f, and we are dealing with quint16 quantized data, then a 0
		value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f.
		
		This operator tries to squeeze as much precision as possible into an output with
		a lower bit depth by calculating the actual min and max values found in the
		data. For example, maybe that quint16 input has no values lower than 16,384 and
		none higher than 49,152. That means only half the range is actually needed, all
		the float interpretations are between -0.5f and 0.5f, so if we want to compress
		the data into a quint8 output, we can use that range rather than the theoretical
		-1.0f to 1.0f that is suggested by the input min and max.
		
		In practice, this is most useful for taking output from operations like
		QuantizedMatMul that can produce higher bit-depth outputs than their inputs and
		may have large potential output ranges, but in practice have a distribution of
		input values that only uses a small fraction of the possible range. By feeding
		that output into this operator, we can reduce it from 32 bits down to 8 with
		minimal loss of accuracy.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		    The type of the output. Should be a lower bit depth than Tinput.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function QuantizeDownAndShrinkRange(input:Dynamic, input_min:Dynamic, input_max:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x + y element-wise, working on quantized buffers.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  y: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_x: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `x` value represents.
		  max_x: A `Tensor` of type `float32`.
		    The float value that the highest quantized `x` value represents.
		  min_y: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `y` value represents.
		  max_y: A `Tensor` of type `float32`.
		    The float value that the highest quantized `y` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (z, min_z, max_z).
		
		  z: A `Tensor` of type `Toutput`.
		  min_z: A `Tensor` of type `float32`.
		  max_z: A `Tensor` of type `float32`.
	**/
	static public function QuantizedAdd(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Perform a quantized matrix multiplication of  `a` by the matrix `b`.
		
		The inputs must be two-dimensional matrices and the inner dimension of
		`a` (after being transposed if `transpose_a` is non-zero) must match the
		outer dimension of `b` (after being transposed if `transposed_b` is
		non-zero).
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    Must be a two-dimensional tensor.
		  b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    Must be a two-dimensional tensor.
		  min_a: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `a` value represents.
		  max_a: A `Tensor` of type `float32`.
		    The float value that the highest quantized `a` value represents.
		  min_b: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `b` value represents.
		  max_b: A `Tensor` of type `float32`.
		    The float value that the highest quantized `b` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    If true, `a` is transposed before multiplication.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    If true, `b` is transposed before multiplication.
		  Tactivation: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    The type of output produced by activation function
		    following this operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, min_out, max_out).
		
		  out: A `Tensor` of type `Toutput`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function QuantizedMatMul(a:Dynamic, b:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?Tactivation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x * y element-wise, working on quantized buffers.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  y: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_x: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `x` value represents.
		  max_x: A `Tensor` of type `float32`.
		    The float value that the highest quantized `x` value represents.
		  min_y: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `y` value represents.
		  max_y: A `Tensor` of type `float32`.
		    The float value that the highest quantized `y` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (z, min_z, max_z).
		
		  z: A `Tensor` of type `Toutput`.
		  min_z: A `Tensor` of type `float32`.
		  max_z: A `Tensor` of type `float32`.
	**/
	static public function QuantizedMul(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  splits: A `Tensor` of type `int64`. 1D int64 `Tensor`.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2D int `Tensor`.
		  size: A `Tensor`. Must have the same type as `values`.
		    non-negative int scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `input`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  binary_output: An optional `bool`. Defaults to `False`.
		    bool; Whether the kernel should count the appearance or number of occurrences.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function RaggedBincount(splits:Dynamic, values:Dynamic, size:Dynamic, weights:Dynamic, ?binary_output:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a sequence of numbers.
		
		This operation creates a sequence of numbers that begins at `start` and
		extends by increments of `delta` up to but not including `limit`.
		
		For example:
		
		```
		# 'start' is 3
		# 'limit' is 18
		# 'delta' is 3
		tf.range(start, limit, delta) ==> [3, 6, 9, 12, 15]
		```
		
		Args:
		  start: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `uint32`.
		    0-D (scalar). First entry in the sequence.
		  limit: A `Tensor`. Must have the same type as `start`.
		    0-D (scalar). Upper limit of sequence, exclusive.
		  delta: A `Tensor`. Must have the same type as `start`.
		    0-D (scalar). Optional. Default is 1. Number that increments `start`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function Range(start:Dynamic, limit:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the real part of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		type `float` that is the real part of each element in `input`. All elements in
		`input` must be complex numbers of the form \\(a + bj\\), where *a* is the real
		 part returned by this operation and *b* is the imaginary part.
		
		For example:
		
		```
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.real(input) ==> [-2.25, 3.25]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  Tout: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function Real(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function RealDiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Reciprocal(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient for the inverse of `x` wrt its input.
		
		Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function ReciprocalGrad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a range that covers the actual values present in a quantized tensor.
		
		Given a quantized tensor described by `(input, input_min, input_max)`, outputs a
		range that covers the actual values present in that tensor. This op is typically
		used to produce the `requested_output_min` and `requested_output_max` for
		`Requantize`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_min, output_max).
		
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function RequantizationRange(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes requantization range per channel.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  input_min: A `Tensor` of type `float32`.
		    The minimum value of the input tensor
		  input_max: A `Tensor` of type `float32`.
		    The maximum value of the input tensor.
		  clip_value_max: A `float`.
		    The maximum value of the output that needs to be clipped.
		    Example: set this to 6 for Relu6.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_min, output_max).
		
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function RequantizationRangePerChannel(input:Dynamic, input_min:Dynamic, input_max:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the quantized `input` tensor into a lower-precision `output`.
		
		Converts the quantized `input` tensor into a lower-precision `output`, using the
		output range specified with `requested_output_min` and `requested_output_max`.
		
		`[input_min, input_max]` are scalar floats that specify the range for the float
		interpretation of the `input` data. For example, if `input_min` is -1.0f and
		`input_max` is 1.0f, and we are dealing with `quint16` quantized data, then a 0
		value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  requested_output_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized output value represents.
		  requested_output_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized output value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		    The type of the output. Should be a lower bit depth than Tinput.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function Requantize(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Requantizes input with min and max values known per channel.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  input_min: A `Tensor` of type `float32`.
		    The minimum value of the input tensor
		  input_max: A `Tensor` of type `float32`.
		    The maximum value of the input tensor.
		  requested_output_min: A `Tensor` of type `float32`.
		    The minimum value of the output tensor requested.
		  requested_output_max: A `Tensor` of type `float32`.
		    The maximum value of the output tensor requested.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    The quantized type of output tensor that needs to be converted.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function RequantizePerChannel(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise integer closest to x.
		
		If the result is midway between two representable values,
		the even representable is chosen.
		For example:
		
		```
		rint(-1.5) ==> -2.0
		rint(0.5000001) ==> 1.0
		rint([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0]) ==> [-2., -2., -0., 0., 2., 2., 2.]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Rint(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rounds the values of a tensor to the nearest integer, element-wise.
		
		Rounds half to even.  Also known as bankers rounding. If you want to round
		according to the current system rounding mode use std::cint.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Round(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes reciprocal of square root of x element-wise.
		
		I.e., \\(y = 1 / \sqrt{x}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Rsqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient for the rsqrt of `x` wrt its input.
		
		Specifically, `grad = dy * -0.5 * y^3`, where `y = rsqrt(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function RsqrtGrad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \max_j(data_j)\\) where `max` is over `j` such
		that `segment_ids[j] == i`.
		
		If the max is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMax.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_max(c, tf.constant([0, 0, 1]))
		# ==> [[4, 3, 3, 4],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SegmentMax(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \frac{\sum_j data_j}{N}\\) where `mean` is
		over `j` such that `segment_ids[j] == i` and `N` is the total number of
		values summed.
		
		If the mean is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMean.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1.0,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_mean(c, tf.constant([0, 0, 1]))
		# ==> [[2.5, 2.5, 2.5, 2.5],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SegmentMean(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \min_j(data_j)\\) where `min` is over `j` such
		that `segment_ids[j] == i`.
		
		If the min is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMin.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_min(c, tf.constant([0, 0, 1]))
		# ==> [[1, 2, 2, 1],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SegmentMin(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \prod_j data_j\\) where the product is over `j` such
		that `segment_ids[j] == i`.
		
		If the product is empty for a given segment ID `i`, `output[i] = 1`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentProd.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_prod(c, tf.constant([0, 0, 1]))
		# ==> [[4, 6, 6, 4],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SegmentProd(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \sum_j data_j\\) where sum is over `j` such
		that `segment_ids[j] == i`.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentSum.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_sum(c, tf.constant([0, 0, 1]))
		# ==> [[5, 5, 5, 5],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SegmentSum(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Selects elements from `x` or `y`, depending on `condition`.
		
		The `x`, and `y` tensors must all have the same shape, and the
		output will also have that shape.
		
		The `condition` tensor must be a scalar if `x` and `y` are scalars.
		If `x` and `y` are vectors or higher rank, then `condition` must be either a
		scalar, a vector with size matching the first dimension of `x`, or must have
		the same shape as `x`.
		
		The `condition` tensor acts as a mask that chooses, based on the value at each
		element, whether the corresponding element / row in the output should be
		taken from `x` (if true) or `y` (if false).
		
		If `condition` is a vector and `x` and `y` are higher rank matrices, then
		it chooses which row (outer dimension) to copy from `x` and `y`.
		If `condition` has the same shape as `x` and `y`, then it chooses which
		element to copy from `x` and `y`.
		
		For example:
		
		```python
		# 'condition' tensor is [[True,  False]
		#                        [False, True]]
		# 't' is [[1, 2],
		#         [3, 4]]
		# 'e' is [[5, 6],
		#         [7, 8]]
		select(condition, t, e)  # => [[1, 6], [7, 4]]
		
		
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
		  x:  A `Tensor` which may have the same shape as `condition`.
		    If `condition` is rank 1, `x` may have higher rank,
		    but its first dimension must match the size of `condition`.
		  y:  A `Tensor` with the same type and shape as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function Select(condition:Dynamic, x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  condition: A `Tensor` of type `bool`.
		  t: A `Tensor`.
		  e: A `Tensor`. Must have the same type as `t`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function SelectV2(condition:Dynamic, t:Dynamic, e:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Specifically, `y = 1 / (1 + exp(-x))`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of the sigmoid of `x` wrt its input.
		
		Specifically, `grad = dy * y * (1 - y)`, where `y = sigmoid(x)`, and
		`dy` is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function SigmoidGrad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an element-wise indication of the sign of a number.
		
		`y = sign(x) = -1` if `x < 0`; 0 if `x == 0`; 1 if `x > 0`.
		
		For complex numbers, `y = sign(x) = x / |x|` if `x != 0`, otherwise `y = 0`.
		
		Example usage:
		>>> tf.math.sign([0., 2., -3.])
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([ 0.,  1., -1.], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Sign(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Sin(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Sinh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates points from the Sobol sequence.
		
		Creates a Sobol sequence with `num_results` samples. Each sample has dimension
		`dim`. Skips the first `skip` samples.
		
		Args:
		  dim: A `Tensor` of type `int32`.
		    Positive scalar `Tensor` representing each sample's dimension.
		  num_results: A `Tensor` of type `int32`.
		    Positive scalar `Tensor` of dtype int32. The number of Sobol points to return
		    in the output.
		  skip: A `Tensor` of type `int32`.
		    Positive scalar `Tensor` of dtype int32. The number of initial points of the
		    Sobol sequence to skip.
		  dtype: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the sample. One of: `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function SobolSample(dim:Dynamic, num_results:Dynamic, skip:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  indices: A `Tensor` of type `int64`. 2D int64 `Tensor`.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1D int `Tensor`.
		  dense_shape: A `Tensor` of type `int64`. 1D int64 `Tensor`.
		  size: A `Tensor`. Must have the same type as `values`.
		    non-negative int scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `input`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  binary_output: An optional `bool`. Defaults to `False`.
		    bool; Whether the kernel should count the appearance or number of occurrences.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function SparseBincount(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, size:Dynamic, weights:Dynamic, ?binary_output:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply matrix "a" by matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of "a" must
		match the outer dimension of "b". Both "a" and "b" must be `Tensor`s not
		`SparseTensor`s.  This op is optimized for the case where at least one of "a" or
		"b" is sparse, in the sense that they have a large proportion of zero values.
		The breakeven for using this versus a dense matrix multiply on one platform was
		30% zero values in the sparse matrix.
		
		The gradient computation of this operation will only take advantage of sparsity
		in the input gradient when that gradient comes from a Relu.
		
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
	static public function SparseMatMul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		See `tf.sparse.segment_sum` for usage examples.
		
		Like `SegmentMean`, but `segment_ids` can have rank less than `data`'s first
		dimension, selecting a subset of dimension 0, specified by `indices`.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SparseSegmentMean(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentMean.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    gradient propagated to the SparseSegmentMean op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentMean op.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    segment_ids passed to the corresponding SparseSegmentMean op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentMean op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function SparseSegmentMeanGrad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Like `SparseSegmentMean`, but allows missing ids in `segment_ids`. If an id is
		missing, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SparseSegmentMeanWithNumSegments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt of N.
		
		N is the size of the segment being reduced.
		
		See `tf.sparse.segment_sum` for usage examples.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SparseSegmentSqrtN(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentSqrtN.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    gradient propagated to the SparseSegmentSqrtN op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentSqrtN op.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    segment_ids passed to the corresponding SparseSegmentSqrtN op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentSqrtN op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function SparseSegmentSqrtNGrad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt of N.
		
		N is the size of the segment being reduced.
		
		Like `SparseSegmentSqrtN`, but allows missing ids in `segment_ids`. If an id is
		missing, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SparseSegmentSqrtNWithNumSegments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Like `SegmentSum`, but `segment_ids` can have rank less than `data`'s first
		dimension, selecting a subset of dimension 0, specified by `indices`.
		
		For example:
		
		```python
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		# Select two rows, one segment.
		tf.sparse_segment_sum(c, tf.constant([0, 1]), tf.constant([0, 0]))
		# => [[0 0 0 0]]
		
		# Select two rows, two segment.
		tf.sparse_segment_sum(c, tf.constant([0, 1]), tf.constant([0, 1]))
		# => [[ 1  2  3  4]
		#     [-1 -2 -3 -4]]
		
		# Select all rows, two segments.
		tf.sparse_segment_sum(c, tf.constant([0, 1, 2]), tf.constant([0, 0, 1]))
		# => [[0 0 0 0]
		#     [5 6 7 8]]
		
		# Which is equivalent to:
		tf.segment_sum(c, tf.constant([0, 0, 1]))
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SparseSegmentSum(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentSum.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    gradient propagated to the SparseSegmentSum op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentSum op.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    segment_ids passed to the corresponding SparseSegmentSum op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentSum op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function SparseSegmentSumGrad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Like `SparseSegmentSum`, but allows missing ids in `segment_ids`. If an id is
		missing, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/sparse#Segmentation)
		for an explanation of segments.
		
		For example:
		
		```python
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		tf.sparse_segment_sum_with_num_segments(
		    c, tf.constant([0, 1]), tf.constant([0, 0]), num_segments=3)
		# => [[0 0 0 0]
		#     [0 0 0 0]
		#     [0 0 0 0]]
		
		tf.sparse_segment_sum_with_num_segments(c,
		                                        tf.constant([0, 1]),
		                                        tf.constant([0, 2],
		                                        num_segments=4))
		# => [[ 1  2  3  4]
		#     [ 0  0  0  0]
		#     [-1 -2 -3 -4]
		#     [ 0  0  0  0]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function SparseSegmentSumWithNumSegments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes square root of x element-wise.
		
		I.e., \\(y = \sqrt{x} = x^{1/2}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Sqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient for the sqrt of `x` wrt its input.
		
		Specifically, `grad = dy * 0.5 / y`, where `y = sqrt(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function SqrtGrad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function Square(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns conj(x - y)(x - y) element-wise.
		
		*NOTE*: `math.squared_difference` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function SquaredDifference(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Sub(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Sum(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Tan(x:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function Tanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient for the tanh of `x` wrt its input.
		
		Specifically, `grad = dy * (1 - y*y)`, where `y = tanh(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function TanhGrad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function TruncateDiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function TruncateMod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the maximum such that:
		
		\\(output_i = \max_{j...} data[j...]\\) where max is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the maximum is empty for a given segment ID `i`, it outputs the smallest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::lowest()`.
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/UnsortedSegmentMax.png" alt>
		</div>
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_max(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 4,  3, 3, 4],
		#       [5,  6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function UnsortedSegmentMax(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the minimum such that:
		
		\\(output_i = \min_{j...} data_[j...]\\) where min is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the minimum is empty for a given segment ID `i`, it outputs the largest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::max()`.
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_min(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 1,  2, 2, 1],
		#       [5,  6, 7, 8]]
		```
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function UnsortedSegmentMin(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the product of all
		entries belonging to a segment such that:
		
		\\(output_i = \prod_{j...} data[j...]\\) where the product is over tuples
		`j...` such that `segment_ids[j...] == i`.
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_prod(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 4,  6, 6, 4],
		#       [5,  6, 7, 8]]
		```
		
		If there is no entry for a given segment ID `i`, it outputs 1.
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function UnsortedSegmentProd(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output[i] = \sum_{j...} data[j...]\\) where the sum is over tuples `j...` such
		that `segment_ids[j...] == i`.  Unlike `SegmentSum`, `segment_ids`
		need not be sorted and need not cover all values in the full
		range of valid values.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		If the given segment ID `i` is negative, the value is dropped and will not be
		added to the sum of the segment.
		
		`num_segments` should equal the number of distinct segment IDs.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/UnsortedSegmentSum.png" alt>
		</div>
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.math.unsorted_segment_sum(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 5, 5, 5, 5],
		#       [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function UnsortedSegmentSum(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns 0 if x == 0, and x / y otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Xdivy(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns 0 if x == 0, and x * log1p(y) otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Xlog1py(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns 0 if x == 0, and x * log(y) otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Xlogy(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the Hurwitz zeta function \\(\zeta(x, q)\\).
		
		The Hurwitz zeta function is defined as:
		
		
		\\(\zeta(x, q) = \sum_{n=0}^{\infty} (q + n)^{-x}\\)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  q: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Zeta(x:Dynamic, q:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Register operators with different tensor and scalar versions.
		
		If `clazz_object` is `SparseTensor`, assumes `func` takes `(sp_indices,
		sp_values, sp_shape, dense)` and outputs `(new_sp_values)`.
		
		Args:
		  func: the operator
		  op_name: name of the operator being overridden
		  clazz_object: class to override for.  Either `Tensor` or `SparseTensor`.
	**/
	static public function _OverrideBinaryOperatorHelper(func:Dynamic, op_name:Dynamic, ?clazz_object:Dynamic):Dynamic;
	/**
		Returns range(0, rank(x)) if axis is None.
	**/
	static public function _ReductionDims(x:Dynamic, axis:Dynamic):Dynamic;
	static public var _TRUEDIV_TABLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Same as gradient for AddN. Copies the gradient to all inputs.
	**/
	static public function _accumulate_n_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The operation invoked by the `Tensor.__add__` operator.
		
		  Purpose in the API:
		
		    This method is exposed in TensorFlow's API so that library developers
		    can register dispatching for `Tensor.__add__` to allow it to handle
		    custom composite tensors & other custom objects.
		
		    The API symbol is not intended to be called by users directly and does
		    appear in TensorFlow's generated documentation.
		
		Args:
		  x: The left-hand side of the `+` operator.
		  y: The right-hand side of the `+` operator.
		  name: an optional name for the operation.
		
		Returns:
		  The result of the elementwise `+` operation.
	**/
	static public function _add_dispatch(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert 'x' to IndexedSlices.
		
		Convert a dense Tensor to a block-sparse IndexedSlices.
		
		Args:
		  x: Either a Tensor object, or an IndexedSlices object.
		  optimize: if true, attempt to optimize the conversion of 'x'.
		
		Returns:
		  An IndexedSlices object.
		
		Raises:
		  TypeError: If 'x' is not a Tensor or an IndexedSlices object.
	**/
	static public function _as_indexed_slices(x:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		Convert all elements of 'inputs' to IndexedSlices.
		
		Additionally, homogenize the types of all the indices to
		either int32 or int64.
		
		Args:
		  inputs: List containing either Tensor or IndexedSlices objects.
		  optimize: if true, attempt to optimize the conversion of each input.
		
		Returns:
		  A list of IndexedSlices objects.
		
		Raises:
		  TypeError: If 'inputs' is not a list or a tuple.
	**/
	static public function _as_indexed_slices_list(inputs:Dynamic, ?optimize:Dynamic):Dynamic;
	static public function _bucketize(input:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the compute resources needed for BatchMatMul.
	**/
	static public function _calc_batch_mat_mul_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Calculates the compute resources needed for MatMul.
	**/
	static public function _calc_mat_mul_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Divide two values using Python 2 semantics.
		
		Used for Tensor.__div__.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` returns the quotient of x and y.
	**/
	static public function _div_python2(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns true if tensor has a fully defined shape.
	**/
	static public function _has_fully_defined_shape(tensor:Dynamic):Dynamic;
	/**
		Set a reduction's output shape to be a scalar if we are certain.
	**/
	static public function _may_reduce_to_scalar(keepdims:Dynamic, axis:Dynamic, output:Dynamic):Dynamic;
	/**
		Returns a numpy type if available from x. Skips if x is numpy.ndarray.
	**/
	static public function _maybe_get_dtype(x:Dynamic):Dynamic;
	/**
		Returns x * y element-wise.
		
		  *NOTE*: `Multiply` supports broadcasting. More about broadcasting
		  [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		  Args:
		    x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		    y: A `Tensor`. Must have the same type as `x`.
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor`. Has the same type as `x`.
		  DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		`tf.mul(x, y)` is deprecated; use `tf.math.multiply(x, y)` or `x * y`
	**/
	static public function _mul(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dispatches cwise mul for "Dense*Dense" and "Dense*Sparse".
	**/
	static public function _mul_dispatch(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		`tf.neg(x)` is deprecated, please use `tf.negative(x)` or `-x`
		
		I.e., \(y = -x\).
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
	**/
	static public function _neg(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function _promote_dtypes_decorator(fn:Dynamic):Dynamic;
	static public function _range_tensor_conversion_function(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _set_doc(doc:Dynamic):Dynamic;
	/**
		Internal helper function for 'sp_t / dense_t'.
	**/
	static public function _sparse_dense_truediv(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
		  DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		`tf.sub(x, y)` is deprecated, please use `tf.subtract(x, y)` or `x - y`
	**/
	static public function _sub(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function _truediv_python3(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function for unsorted_segment_mean/_sqrtN.
		
		Computes the number
		    of segment entries with 0-entries set to 1 to allow division by N.
	**/
	static public function _unsorted_segment_N(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic):Dynamic;
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
	static public var absolute_import : Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		Optionally, pass `shape` and `tensor_dtype` for shape and type checking,
		otherwise, these are inferred.
		
		`accumulate_n` performs the same operation as `tf.math.add_n`.
		
		For example:
		
		```python
		a = tf.constant([[1, 2], [3, 4]])
		b = tf.constant([[5, 0], [0, 6]])
		tf.math.accumulate_n([a, b, a])  # [[7, 4], [6, 14]]
		
		# Explicitly pass shape and type
		tf.math.accumulate_n([a, b, a], shape=[2, 2], tensor_dtype=tf.int32)
		                                                               # [[7,  4],
		                                                               #  [6, 14]]
		```
		
		Args:
		  inputs: A list of `Tensor` objects, each with same shape and type.
		  shape: Expected shape of elements of `inputs` (optional). Also controls the
		    output shape of this op, which may affect type inference in other ops. A
		    value of `None` means "infer the input shape from the shapes in `inputs`".
		  tensor_dtype: Expected data type of `inputs` (optional). A value of `None`
		    means "infer the input dtype from `inputs[0]`".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as the elements of `inputs`.
		
		Raises:
		  ValueError: If `inputs` don't all have same shape and dtype or the shape
		  cannot be inferred.
	**/
	static public function accumulate_n(inputs:Dynamic, ?shape:Dynamic, ?tensor_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		`tf.accumulate_n_v2` performs the same operation as `tf.add_n`, but does not
		wait for all of its inputs to be ready before beginning to sum. This can
		save memory if inputs are ready at different times, since minimum temporary
		storage is proportional to the output size rather than the inputs size.
		
		Unlike the original `accumulate_n`, `accumulate_n_v2` is differentiable.
		
		Returns a `Tensor` of same shape and type as the elements of `inputs`.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type in: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A list of `Tensor` objects, each with same shape and type.
		  shape: A `tf.TensorShape` or list of `ints`.
		    Shape of elements of `inputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function accumulate_nv2(inputs:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function accumulate_nv2_eager_fallback(inputs:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function acos_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function acosh_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function add_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function add_n_eager_fallback(inputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function add_v2(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function add_v2_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function and_(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise argument of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the argument of each element in `input` considered as a complex number.
		
		The elements in `input` are considered to be complex numbers of the form
		\\(a + bj\\), where *a* is the real part and *b* is the imaginary part.
		If `input` is real then *b* is zero by definition.
		
		The argument returned by this function is of the form \\(atan2(b, a)\\).
		If `input` is real, a tensor of all zeros is returned.
		
		For example:
		
		```
		input = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j], dtype=tf.complex64)
		tf.math.angle(input).numpy()
		# ==> array([2.0131705, 1.056345 ], dtype=float32)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float`, `double`,
		    `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function angle(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function angle_eager_fallback(input:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the truth value of abs(x-y) < tolerance element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  tolerance: An optional `float`. Defaults to `1e-05`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function approximate_equal(x:Dynamic, y:Dynamic, ?tolerance:Dynamic, ?name:Dynamic):Dynamic;
	static public function approximate_equal_eager_fallback(x:Dynamic, y:Dynamic, tolerance:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across dimensions of a tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.math.argmax` instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmax(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 4
		  # here a[4] = 166.32 which is the largest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		  dimension: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which dimension of the input Tensor to reduce across. For vectors,
		    use dimension = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function arg_max(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function arg_max_eager_fallback(input:Dynamic, dimension:Dynamic, output_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across dimensions of a tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.math.argmin` instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmin(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 0
		  # here a[0] = 1 which is the smallest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		  dimension: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which dimension of the input Tensor to reduce across. For vectors,
		    use dimension = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function arg_min(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function arg_min_eager_fallback(input:Dynamic, dimension:Dynamic, output_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across axes of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dimension)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmax(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 4
		  # here a[4] = 166.32 which is the largest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which axis of the input Tensor to reduce across. For vectors,
		    use axis = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function argmax(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dimension:Dynamic, ?output_type:Dynamic):Dynamic;
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
	static public function argmax_v2(input:Dynamic, ?axis:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across axes of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dimension)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Usage:
		  ```python
		  import tensorflow as tf
		  a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		  b = tf.math.argmin(input = a)
		  c = tf.keras.backend.eval(b)
		  # c = 0
		  # here a[0] = 1 which is the smallest element of a across axis 0
		  ```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    int32 or int64, must be in the range `[-rank(input), rank(input))`.
		    Describes which axis of the input Tensor to reduce across. For vectors,
		    use axis = 0.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function argmin(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dimension:Dynamic, ?output_type:Dynamic):Dynamic;
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
	static public function argmin_v2(input:Dynamic, ?axis:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function asin_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function asinh_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function atan2_eager_fallback(y:Dynamic, x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function atan_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function atanh_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must have the same type as `x`.
		    2-D or higher with shape `[..., r_y, c_y]`.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function batch_mat_mul(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_mat_mul_eager_fallback(x:Dynamic, y:Dynamic, adj_x:Dynamic, adj_y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		*NOTE*: `BatchMatMulV2` supports broadcasting in the batch dimensions. More
		about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must have the same type as `x`.
		    2-D or higher with shape `[..., r_y, c_y]`.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function batch_mat_mul_v2(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_mat_mul_v2_eager_fallback(x:Dynamic, y:Dynamic, adj_x:Dynamic, adj_y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiplies slices of two tensors in batches.
		
		Multiplies all slices of `Tensor` `x` and `y` (each slice can be
		viewed as an element of a batch), and arranges the individual results
		in a single output tensor of the same batch size. Each of the
		individual slices can optionally be adjointed (to adjoint a matrix
		means to transpose and conjugate it) before multiplication by setting
		the `adj_x` or `adj_y` flag to `True`, which are by default `False`.
		
		The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
		and `[..., r_y, c_y]`.
		
		The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:
		
		    r_o = c_x if adj_x else r_x
		    c_o = r_y if adj_y else c_y
		
		It is computed as:
		
		    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :])
		
		*NOTE*: `BatchMatMulV3` supports broadcasting in the batch dimensions. More
		about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_x, c_x]`.
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		    2-D or higher with shape `[..., r_y, c_y]`.
		  Tout: A `tf.DType` from: `tf.bfloat16, tf.half, tf.float32, tf.float64, tf.int16, tf.int32, tf.int64, tf.complex64, tf.complex128`.
		    If not spcified, Tout is the same type to input type.
		  adj_x: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `x`. Defaults to `False`.
		  adj_y: An optional `bool`. Defaults to `False`.
		    If `True`, adjoint the slices of `y`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function batch_mat_mul_v3(x:Dynamic, y:Dynamic, Tout:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_mat_mul_v3_eager_fallback(x:Dynamic, y:Dynamic, Tout:Dynamic, adj_x:Dynamic, adj_y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute the regularized incomplete beta integral \\(I_x(a, b)\\).
		
		The regularized incomplete beta integral is defined as:
		
		
		\\(I_x(a, b) = \frac{B(x; a, b)}{B(a, b)}\\)
		
		where
		
		
		\\(B(x; a, b) = \int_0^x t^{a-1} (1 - t)^{b-1} dt\\)
		
		
		is the incomplete beta function and \\(B(a, b)\\) is the *complete*
		beta function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  b: A `Tensor`. Must have the same type as `a`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function betainc(a:Dynamic, b:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	static public function betainc_eager_fallback(a:Dynamic, b:Dynamic, x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  arr: A `Tensor` of type `int32`. int32 `Tensor`.
		  size: A `Tensor` of type `int32`. non-negative int32 scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `arr`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function bincount(arr:Dynamic, size:Dynamic, weights:Dynamic, ?name:Dynamic):Dynamic;
	static public function bincount_eager_fallback(arr:Dynamic, size:Dynamic, weights:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Bucketizes 'input' based on 'boundaries'.
		
		For example, if the inputs are
		    boundaries = [0, 10, 100]
		    input = [[-5, 10000]
		             [150,   10]
		             [5,    100]]
		
		then the output will be
		    output = [[0, 3]
		              [3, 2]
		              [1, 3]]
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    Any shape of Tensor contains with int or float type.
		  boundaries: A list of `floats`.
		    A sorted list of floats gives the boundary of the buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function bucketize(input:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	static public function bucketize_eager_fallback(input:Dynamic, boundaries:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function cast_eager_fallback(x:Dynamic, DstT:Dynamic, Truncate:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Return the ceiling of the input, element-wise.
		
		For example:
		
		>>> tf.math.ceil([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		<tf.Tensor: shape=(7,), dtype=float32,
		numpy=array([-1., -1., -0.,  1.,  2.,  2.,  2.], dtype=float32)>
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`. `int32`
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor`. Has the same type as `x`.
		
		@compatibility(numpy)
		Equivalent to np.ceil
		@end_compatibility
	**/
	static public function ceil(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function ceil_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	/**
		Computes the complex absolute value of a tensor.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float` or `double` that is the absolute value of each element in `x`. All
		elements in `x` must be complex numbers of the form \\(a + bj\\). The absolute
		value is computed as \\( \sqrt{a^2 + b^2}\\).
		
		For example:
		
		>>> x = tf.complex(3.0, 4.0)
		>>> print((tf.raw_ops.ComplexAbs(x=x, Tout=tf.dtypes.float32, name=None)).numpy())
		5.0
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  Tout: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function complex_abs(x:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public function complex_abs_eager_fallback(x:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the complex conjugate of a complex number.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of
		complex numbers that are the complex conjugate of each element in `x`. The
		complex numbers in `x` must be of the form \\(a + bj\\), where `a` is the
		real part and `b` is the imaginary part.
		
		The complex conjugate returned by this operation is of the form \\(a - bj\\).
		
		For example:
		
		>>> x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		>>> tf.math.conj(x)
		<tf.Tensor: shape=(2,), dtype=complex128,
		numpy=array([-2.25-4.75j,  3.25-5.75j])>
		
		If `x` is real, it is returned unchanged.
		
		For example:
		
		>>> x = tf.constant([-2.25, 3.25])
		>>> tf.math.conj(x)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([-2.25,  3.25], dtype=float32)>
		
		Args:
		  x: `Tensor` to conjugate.  Must have numeric or variant type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that is the conjugate of `x` (with the same type).
		
		Raises:
		  TypeError: If `x` is not a numeric tensor.
		
		@compatibility(numpy)
		Equivalent to numpy.conj.
		@end_compatibility
	**/
	static public function conj(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function conj_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function cos_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function cosh_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes number of nonzero elements across dimensions of a tensor. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(reduction_indices)`. They will be removed in a future version.
		Instructions for updating:
		reduction_indices is deprecated, use axis instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		**NOTE** Floating point comparison to zero is done by exact floating point
		equality check.  Small values are **not** rounded to zero for purposes of
		the nonzero check.
		
		For example:
		
		```python
		x = tf.constant([[0, 1, 0], [1, 1, 0]])
		tf.math.count_nonzero(x)  # 3
		tf.math.count_nonzero(x, 0)  # [1, 2, 0]
		tf.math.count_nonzero(x, 1)  # [1, 2]
		tf.math.count_nonzero(x, 1, keepdims=True)  # [[1], [2]]
		tf.math.count_nonzero(x, [0, 1])  # 3
		```
		
		**NOTE** Strings are compared against zero-length empty string `""`. Any
		string with a size greater than zero is already considered as nonzero.
		
		For example:
		```python
		x = tf.constant(["", "a", "  ", "b", ""])
		tf.math.count_nonzero(x) # 3, with "a", "  ", and "b" as nonzero strings.
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should be of numeric type, `bool`, or
		    `string`.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  dtype: The output dtype; defaults to `tf.int64`.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		  input: Overrides input_tensor. For compatibility.
		
		Returns:
		  The reduced tensor (number of nonzero values).
	**/
	static public function count_nonzero(?input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Computes number of nonzero elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` has no entries, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		**NOTE** Floating point comparison to zero is done by exact floating point
		equality check.  Small values are **not** rounded to zero for purposes of
		the nonzero check.
		
		For example:
		
		```python
		x = tf.constant([[0, 1, 0], [1, 1, 0]])
		tf.math.count_nonzero(x)  # 3
		tf.math.count_nonzero(x, 0)  # [1, 2, 0]
		tf.math.count_nonzero(x, 1)  # [1, 2]
		tf.math.count_nonzero(x, 1, keepdims=True)  # [[1], [2]]
		tf.math.count_nonzero(x, [0, 1])  # 3
		```
		
		**NOTE** Strings are compared against zero-length empty string `""`. Any
		string with a size greater than zero is already considered as nonzero.
		
		For example:
		```python
		x = tf.constant(["", "a", "  ", "b", ""])
		tf.math.count_nonzero(x) # 3, with "a", "  ", and "b" as nonzero strings.
		```
		
		Args:
		  input: The tensor to reduce. Should be of numeric type, `bool`, or `string`.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input), rank(input))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  dtype: The output dtype; defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor (number of nonzero values).
	**/
	static public function count_nonzero_v2(input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the pairwise cross product.
		
		`a` and `b` must be the same shape; they can either be simple 3-element vectors,
		or any shape where the innermost dimension is 3. In the latter case, each pair
		of corresponding 3-element vectors is cross-multiplied independently.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A tensor containing 3-element vectors.
		  b: A `Tensor`. Must have the same type as `a`.
		    Another tensor, of same type and shape as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function cross(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public function cross_eager_fallback(a:Dynamic, b:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute the cumulative product of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumprod, which means that the
		first element of the input is identical to the first element of the output:
		
		```python
		tf.math.cumprod([a, b, c])  # [a, a * b, a * b * c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumprod is
		performed
		instead:
		
		```python
		tf.math.cumprod([a, b, c], exclusive=True)  # [1, a, a * b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumprod is performed in the
		opposite direction:
		
		```python
		tf.math.cumprod([a, b, c], reverse=True)  # [a * b * c, b * c, c]
		```
		
		This is more efficient than using separate `tf.reverse` ops.
		The `reverse` and `exclusive` kwargs can also be combined:
		
		```python
		tf.math.cumprod([a, b, c], exclusive=True, reverse=True)  # [b * c, c, 1]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`,
		    `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  axis: A `Tensor` of type `int32` (default: 0). Must be in the range
		    `[-rank(x), rank(x))`.
		  exclusive: If `True`, perform exclusive cumprod.
		  reverse: A `bool` (default: False).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cumprod(x:Dynamic, ?axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	static public function cumprod_eager_fallback(x:Dynamic, axis:Dynamic, exclusive:Dynamic, reverse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function cumsum_eager_fallback(x:Dynamic, axis:Dynamic, exclusive:Dynamic, reverse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute the cumulative log-sum-exp of the tensor `x` along `axis`.
		
		By default, this op performs an inclusive cumulative log-sum-exp, which means
		that the first element of the input is identical to the first element of
		the output.
		
		This operation is significantly more numerically stable than the equivalent
		tensorflow operation `tf.math.log(tf.math.cumsum(tf.math.exp(x)))`, although
		computes the same result given infinite numerical precision. However, note
		that in some cases, it may be less stable than `tf.math.reduce_logsumexp`
		for a given element, as it applies the "log-sum-exp trick" in a different
		way.
		
		More precisely, where `tf.math.reduce_logsumexp` uses the following trick:
		
		```
		log(sum(exp(x))) == log(sum(exp(x - max(x)))) + max(x)
		```
		
		it cannot be directly used here as there is no fast way of applying it
		to each prefix `x[:i]`. Instead, this function implements a prefix
		scan using pairwise log-add-exp, which is a commutative and associative
		(up to floating point precision) operator:
		
		```
		log_add_exp(x, y) = log(exp(x) + exp(y))
		                  = log(1 + exp(min(x, y) - max(x, y))) + max(x, y)
		```
		
		However, reducing using the above operator leads to a different computation
		tree (logs are taken repeatedly instead of only at the end), and the maximum
		is only computed pairwise instead of over the entire prefix. In general, this
		leads to a different and slightly less precise computation.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float16`, `float32`,
		    `float64`.
		  axis: A `Tensor` of type `int32` or `int64` (default: 0). Must be in the
		    range `[-rank(x), rank(x))`.
		  exclusive: If `True`, perform exclusive cumulative log-sum-exp.
		  reverse: If `True`, performs the cumulative log-sum-exp in the reverse
		    direction.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same shape and type as `x`.
	**/
	static public function cumulative_logsumexp(x:Dynamic, ?axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	static public function cumulative_logsumexp_eager_fallback(x:Dynamic, axis:Dynamic, exclusive:Dynamic, reverse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1D or 2D int `Tensor`.
		  size: A `Tensor`. Must have the same type as `input`.
		    non-negative int scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `arr`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  binary_output: An optional `bool`. Defaults to `False`.
		    bool; Whether the kernel should count the appearance or number of occurrences.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function dense_bincount(input:Dynamic, size:Dynamic, weights:Dynamic, ?binary_output:Dynamic, ?name:Dynamic):Dynamic;
	static public function dense_bincount_eager_fallback(input:Dynamic, size:Dynamic, weights:Dynamic, binary_output:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Computes Psi, the derivative of Lgamma (the log of the absolute value of
		
		`Gamma(x)`), element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function digamma(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function digamma_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Divides x / y elementwise (using Python 2 division operator semantics). (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Deprecated in favor of operator or tf.math.divide.
		
		@compatibility(TF2)
		This function is deprecated in TF2. Prefer using the Tensor division operator,
		`tf.divide`, or `tf.math.divide`, which obey the Python 3 division operator
		semantics.
		@end_compatibility
		
		
		This function divides `x` and `y`, forcing Python 2 semantics. That is, if `x`
		and `y` are both integers then the result will be an integer. This is in
		contrast to Python 3, where division with `/` is always a float while division
		with `//` is always an integer.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` returns the quotient of x and y.
	**/
	static public function div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function div_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes a safe divide which returns 0 if `y` (denominator) is zero.
		
		For example:
		
		>>> tf.constant(3.0) / 0.0
		<tf.Tensor: shape=(), dtype=float32, numpy=inf>
		>>> tf.math.divide_no_nan(3.0, 0.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.0>
		
		Note that 0 is returned if `y` is 0 even if `x` is nonfinite:
		
		>>> tf.math.divide_no_nan(np.nan, 0.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.0>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  y: A `Tensor` whose dtype is compatible with `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  The element-wise value of the x divided by y.
	**/
	static public function div_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function div_no_nan_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public var division : Dynamic;
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
	static public function equal_eager_fallback(x:Dynamic, y:Dynamic, incompatible_shape_error:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the [Gauss error function](https://en.wikipedia.org/wiki/Error_function) of `x` element-wise. In statistics, for non-negative values of $x$, the error function has the following interpretation: for a random variable $Y$ that is normally distributed with mean 0 and variance $1/\sqrt{2}$, $erf(x)$ is the probability that $Y$ falls in the range $[−x, x]$.
		
		For example:
		
		>>> tf.math.erf([[1.0, 2.0, 3.0], [0.0, -1.0, -2.0]])
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=
		array([[ 0.8427007,  0.9953223,  0.999978 ],
		       [ 0.       , -0.8427007, -0.9953223]], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.erf(x.values, ...), x.dense_shape)`
	**/
	static public function erf(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function erf_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the complementary error function of `x` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function erfc(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function erfc_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the inverse of complementary error function.
		
		Given `x`, compute the inverse complementary error function of `x`.
		This function is the inverse of `tf.math.erfc`, and is defined on
		`[0, 2]`.
		
		>>> tf.math.erfcinv([0., 0.2, 1., 1.5, 2.])
		<tf.Tensor: shape=(5,), dtype=float32, numpy=
		array([       inf,  0.9061935, -0.       , -0.4769363,       -inf],
		      dtype=float32)>
		
		Args:
		  x: `Tensor` with type `float` or `double`.
		  name: A name for the operation (optional).
		Returns:
		  Inverse complementary error function of `x`.
		
		@compatibility(numpy)
		Equivalent to scipy.special.erfcinv
		@end_compatibility
	**/
	static public function erfcinv(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute inverse error function.
		
		Given `x`, compute the inverse error function of `x`. This function
		is the inverse of `tf.math.erf`.
		
		Args:
		  x: `Tensor` with type `float` or `double`.
		  name: A name for the operation (optional).
		Returns:
		  Inverse error function of `x`.
	**/
	static public function erfinv(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function erfinv_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the euclidean norm of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function euclidean_norm(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function euclidean_norm_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function exp_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes `exp(x) - 1` element-wise.
		
		  i.e. `exp(x) - 1` or `e^(x) - 1`, where `x` is the input tensor.
		  `e` denotes Euler's number and is approximately equal to 2.718281.
		
		  ```python
		  x = tf.constant(2.0)
		  tf.math.expm1(x) ==> 6.389056
		
		  x = tf.constant([2.0, 8.0])
		  tf.math.expm1(x) ==> array([6.389056, 2979.958], dtype=float32)
		
		  x = tf.constant(1 + 1j)
		  tf.math.expm1(x) ==> (0.46869393991588515+2.2873552871788423j)
		  ```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function expm1(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function expm1_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Returns x // y element-wise.
		
		*NOTE*: `floor_div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function floor_div_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function floor_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `math.floormod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor_mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function floor_mod_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Divides `x / y` elementwise, rounding toward the most negative integer.
		
		The same as `tf.compat.v1.div(x,y)` for integers, but uses
		`tf.floor(tf.compat.v1.div(x,y))` for
		floating point arguments so that the result is always an integer (though
		possibly an integer represented as floating point).  This op is generated by
		`x // y` floor division in Python 3 and in Python 2.7 with
		`from __future__ import division`.
		
		`x` and `y` must have the same type, and the result will have the same type
		as well.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` rounded down.
		
		Raises:
		  TypeError: If the inputs are complex.
	**/
	static public function floordiv(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `math.floormod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floormod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function greater_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function greater_equal_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute the lower regularized incomplete Gamma function `P(a, x)`.
		
		The lower regularized incomplete Gamma function is defined as:
		
		
		\\(P(a, x) = gamma(a, x) / Gamma(a) = 1 - Q(a, x)\\)
		
		where
		
		\\(gamma(a, x) = \\int_{0}^{x} t^{a-1} exp(-t) dt\\)
		
		is the lower incomplete Gamma function.
		
		Note, above `Q(a, x)` (`Igammac`) is the upper regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	static public function igamma_eager_fallback(a:Dynamic, x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of `igamma(a, x)` wrt `a`.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igamma_grad_a(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	static public function igamma_grad_a_eager_fallback(a:Dynamic, x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute the upper regularized incomplete Gamma function `Q(a, x)`.
		
		The upper regularized incomplete Gamma function is defined as:
		
		\\(Q(a, x) = Gamma(a, x) / Gamma(a) = 1 - P(a, x)\\)
		
		where
		
		\\(Gamma(a, x) = \int_{x}^{\infty} t^{a-1} exp(-t) dt\\)
		
		is the upper incomplete Gamma function.
		
		Note, above `P(a, x)` (`Igamma`) is the lower regularized complete
		Gamma function.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function igammac(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	static public function igammac_eager_fallback(a:Dynamic, x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the imaginary part of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the imaginary part of each element in `input` considered as a complex
		number. If `input` is real, a tensor of all zeros is returned.
		
		For example:
		
		```python
		x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		tf.math.imag(x)  # [4.75, 5.75]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float`, `double`,
		    `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function imag(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function imag_eager_fallback(input:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inv(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function inv_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the inverse of `x` wrt its input.
		
		Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function inv_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	static public function inv_grad_eager_fallback(y:Dynamic, dy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function invert_(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns which elements of x are finite.
		
		@compatibility(numpy)
		Equivalent to np.isfinite
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, 4.8, 6.8, np.inf, np.nan])
		tf.math.is_finite(x) ==> [True, True, True, False, False]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_finite(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function is_finite_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns which elements of x are Inf.
		
		@compatibility(numpy)
		Equivalent to np.isinf
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, np.inf, 6.8, np.inf])
		tf.math.is_inf(x) ==> [False, True, False, True]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_inf(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function is_inf_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns which elements of x are NaN.
		
		@compatibility(numpy)
		Equivalent to np.isnan
		@end_compatibility
		
		Example:
		
		```python
		x = tf.constant([5.0, np.nan, 6.8, np.nan, np.inf])
		tf.math.is_nan(x) ==> [False, True, False, True, False]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_nan(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function is_nan_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function less_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function less_equal_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the log of the absolute value of `Gamma(x)` element-wise.
		
		  For positive numbers, this function computes log((input - 1)!) for every element in the tensor.
		  `lgamma(5) = log((5-1)!) = log(4!) = log(24) = 3.1780539`
		
		Example:
		
		```python
		x = tf.constant([0, 0.5, 1, 4.5, -4, -5.6])
		tf.math.lgamma(x) ==> [inf, 0.5723649, 0., 2.4537368, inf, -4.6477685]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function lgamma(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function lgamma_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  start: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    0-D tensor. First entry in the range.
		  stop: A `Tensor`. Must have the same type as `start`.
		    0-D tensor. Last entry in the range.
		  num: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of values to generate.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `start`.
	**/
	static public function lin_space(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic):Dynamic;
	static public function lin_space_eager_fallback(start:Dynamic, stop:Dynamic, num:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function linspace_nd(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes natural logarithm of x element-wise.
		
		I.e., \\(y = \log_e x\\).
		
		Example:
		>>> x = tf.constant([0, 0.5, 1, 5])
		>>> tf.math.log(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([      -inf, -0.6931472,  0.       ,  1.609438 ], dtype=float32)>
		
		See: https://en.wikipedia.org/wiki/Logarithm
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function log(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes natural logarithm of (1 + x) element-wise.
		
		I.e., \\(y = \log_e (1 + x)\\).
		
		Example:
		>>> x = tf.constant([0, 0.5, 1, 5])
		>>> tf.math.log1p(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=array([0.       , 0.4054651, 0.6931472, 1.7917595], dtype=float32)>
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function log1p(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function log1p_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function log_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes log sigmoid of `x` element-wise.
		
		Specifically, `y = log(1 / (1 + exp(-x)))`.  For numerical stability,
		we use `y = -tf.nn.softplus(-x)`.
		
		Args:
		  x: A Tensor with type `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		Usage Example:
		
		If a positive number is large, then its log_sigmoid will approach to 0 since
		the formula will be `y = log( <large_num> / (1 + <large_num>) )` which
		approximates to `log (1)` which is 0.
		
		>>> x = tf.constant([0.0, 1.0, 50.0, 100.0])
		>>> tf.math.log_sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=
		array([-6.9314718e-01, -3.1326169e-01, -1.9287499e-22, -0.0000000e+00],
		      dtype=float32)>
		
		If a negative number is large, its log_sigmoid will approach to the number
		itself since the formula will be `y = log( 1 / (1 + <large_num>) )` which is
		`log (1) - log ( (1 + <large_num>) )` which approximates to `- <large_num>`
		that is the number itself.
		
		>>> x = tf.constant([-100.0, -50.0, -1.0, 0.0])
		>>> tf.math.log_sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=
		array([-100.       ,  -50.       ,   -1.3132616,   -0.6931472],
		      dtype=float32)>
	**/
	static public function log_sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function logical_and_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function logical_not_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function logical_or_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Logical XOR function.
		
		x ^ y = (x | y) & ~(x & y)
		
		Requires that `x` and `y` have the same shape or have
		[broadcast-compatible](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		shapes. For example, `x` and `y` can be:
		
		- Two single elements of type `bool`
		- One `tf.Tensor` of type `bool` and one single `bool`, where the result will
		  be calculated by applying logical XOR with the single element to each
		  element in the larger Tensor.
		- Two `tf.Tensor` objects of type `bool` of the same shape. In this case,
		  the result will be the element-wise logical XOR of the two input tensors.
		
		Usage:
		
		>>> a = tf.constant([True])
		>>> b = tf.constant([False])
		>>> tf.math.logical_xor(a, b)
		<tf.Tensor: shape=(1,), dtype=bool, numpy=array([ True])>
		
		>>> c = tf.constant([True])
		>>> x = tf.constant([False, True, True, False])
		>>> tf.math.logical_xor(c, x)
		<tf.Tensor: shape=(4,), dtype=bool, numpy=array([ True, False, False,  True])>
		
		>>> y = tf.constant([False, False, True, True])
		>>> z = tf.constant([False, True, False, True])
		>>> tf.math.logical_xor(y, z)
		<tf.Tensor: shape=(4,), dtype=bool, numpy=array([False,  True,  True, False])>
		
		Args:
		    x: A `tf.Tensor` type bool.
		    y: A `tf.Tensor` of type bool.
		    name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor` of type bool with the same size as that of x or y.
	**/
	static public function logical_xor(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiply the matrix "a" by the matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of
		"a" (after being transposed if transpose_a is true) must match the
		outer dimension of "b" (after being transposed if transposed_b is
		true).
		
		*Note*: The default kernel implementation for MatMul on GPUs uses
		cublas.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  b: A `Tensor`. Must have the same type as `a`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    If true, "a" is transposed before multiplication.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    If true, "b" is transposed before multiplication.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function mat_mul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?name:Dynamic):Dynamic;
	static public function mat_mul_eager_fallback(a:Dynamic, b:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function matmul_wrapper(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies matrix `a` by vector `b`, producing `a` * `b`.
		
		The matrix `a` must, following any transpositions, be a tensor of rank >= 2,
		with `shape(a)[-1] == shape(b)[-1]`, and `shape(a)[:-2]` able to broadcast
		with `shape(b)[:-1]`.
		
		Both `a` and `b` must be of the same type. The supported types are:
		`float16`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		
		Matrix `a` can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the inputs contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices/vectors (rank-2/1
		tensors) with datatypes `bfloat16` or `float32`.
		
		For example:
		
		```python
		# 2-D tensor `a`
		# [[1, 2, 3],
		#  [4, 5, 6]]
		a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3])
		
		# 1-D tensor `b`
		# [7, 9, 11]
		b = tf.constant([7, 9, 11], shape=[3])
		
		# `a` * `b`
		# [ 58,  64]
		c = tf.linalg.matvec(a, b)
		
		
		# 3-D tensor `a`
		# [[[ 1,  2,  3],
		#   [ 4,  5,  6]],
		#  [[ 7,  8,  9],
		#   [10, 11, 12]]]
		a = tf.constant(np.arange(1, 13, dtype=np.int32),
		                shape=[2, 2, 3])
		
		# 2-D tensor `b`
		# [[13, 14, 15],
		#  [16, 17, 18]]
		b = tf.constant(np.arange(13, 19, dtype=np.int32),
		                shape=[2, 3])
		
		# `a` * `b`
		# [[ 86, 212],
		#  [410, 563]]
		c = tf.linalg.matvec(a, b)
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and rank > 1.
		  b: `Tensor` with same type as `a` and compatible dimensions.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix.
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same type as `a` and `b` where each inner-most vector is
		  the product of the corresponding matrices in `a` and vectors in `b`, e.g. if
		  all transpose or adjoint attributes are `False`:
		
		  `output`[..., i] = sum_k (`a`[..., i, k] * `b`[..., k]), for all indices i.
		
		  Note: This is matrix-vector product, not element-wise product.
		
		
		Raises:
		  ValueError: If transpose_a and adjoint_a are both set to True.
	**/
	static public function matvec(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?adjoint_a:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function maximum_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Promote tensors if numpy style promotion is enabled.
	**/
	static public function maybe_promote_tensors(?tensors:python.VarArgs<Dynamic>, ?force_same_dtype:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function mean(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function mean_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function minimum_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `math.floormod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function mod_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns x * y element-wise.
		
		*NOTE*: `Multiply` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `uint32`, `uint64`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mul(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function mul_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns x * y element-wise. Returns zero if y is zero, even if x if infinite or NaN.
		
		*NOTE*: `MulNoNan` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mul_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function mul_no_nan_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Computes the product of x and y and returns 0 if the y is zero, even if x is NaN or infinite.
		
		Note this is noncommutative: if y is NaN or infinite and x is 0, the result
		will be NaN.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  y: A `Tensor` whose dtype is compatible with `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  The element-wise value of the x times y.
	**/
	static public function multiply_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute quantile of Standard Normal.
		
		Args:
		  x: `Tensor` with type `float` or `double`.
		  name: A name for the operation (optional).
		Returns:
		  Inverse error function of `x`.
	**/
	static public function ndtri(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function ndtri_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function neg(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function neg_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	/**
		Returns the next representable value of `x1` in the direction of `x2`, element-wise.
		
		This operation returns the same result as the C++ std::nextafter function.
		
		It can also return a subnormal number.
		
		@compatibility(cpp)
		Equivalent to C++ std::nextafter function.
		@end_compatibility
		
		Args:
		  x1: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  x2: A `Tensor`. Must have the same type as `x1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x1`.
	**/
	static public function next_after(x1:Dynamic, x2:Dynamic, ?name:Dynamic):Dynamic;
	static public function next_after_eager_fallback(x1:Dynamic, x2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the next representable value of `x1` in the direction of `x2`, element-wise.
		
		This operation returns the same result as the C++ std::nextafter function.
		
		It can also return a subnormal number.
		
		@compatibility(cpp)
		Equivalent to C++ std::nextafter function.
		@end_compatibility
		
		Args:
		  x1: A `Tensor`. Must be one of the following types: `float64`, `float32`.
		  x2: A `Tensor`. Must have the same type as `x1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x1`.
	**/
	static public function nextafter(x1:Dynamic, x2:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function not_equal_eager_fallback(x:Dynamic, y:Dynamic, incompatible_shape_error:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function or_(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the polygamma function \\(\psi^{(n)}(x)\\).
		
		The polygamma function is defined as:
		
		
		\\(\psi^{(a)}(x) = \frac{d^a}{dx^a} \psi(x)\\)
		
		where \\(\psi(x)\\) is the digamma function.
		The polygamma function is defined only for non-negative integer orders \\a\\.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  x: A `Tensor`. Must have the same type as `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function polygamma(a:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	static public function polygamma_eager_fallback(a:Dynamic, x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the elementwise value of a polynomial.
		
		If `x` is a tensor and `coeffs` is a list n + 1 tensors,
		this function returns the value of the n-th order polynomial
		
		`p(x) = coeffs[n-1] + coeffs[n-2] * x + ...  + coeffs[0] * x**(n-1)`
		
		evaluated using Horner's method, i.e.
		
		```python
		p(x) = coeffs[n-1] + x * (coeffs[n-2] + ... + x * (coeffs[1] + x * coeffs[0]))
		```
		
		Usage Example:
		
		>>> coefficients = [1.0, 2.5, -4.2]
		>>> x = 5.0
		>>> y = tf.math.polyval(coefficients, x)
		>>> y
		<tf.Tensor: shape=(), dtype=float32, numpy=33.3>
		
		Usage Example:
		
		>>> tf.math.polyval([2, 1, 0], 3) # evaluates 2 * (3**2) + 1 * (3**1) + 0 * (3**0)
		<tf.Tensor: shape=(), dtype=int32, numpy=21>
		
		`tf.math.polyval` can also be used in polynomial regression. Taking
		advantage of this function can facilitate writing a polynomial equation
		as compared to explicitly writing it out, especially for higher degree
		polynomials.
		
		>>> x = tf.constant(3)
		>>> theta1 = tf.Variable(2)
		>>> theta2 = tf.Variable(1)
		>>> theta3 = tf.Variable(0)
		>>> tf.math.polyval([theta1, theta2, theta3], x)
		<tf.Tensor: shape=(), dtype=int32, numpy=21>
		
		Args:
		  coeffs: A list of `Tensor` representing the coefficients of the polynomial.
		  x: A `Tensor` representing the variable of the polynomial.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tensor` of the shape as the expression p(x) with usual broadcasting
		  rules for element-wise addition and multiplication applied.
		
		@compatibility(numpy)
		Equivalent to numpy.polyval.
		@end_compatibility
	**/
	static public function polyval(coeffs:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Computes the product of elements across dimensions of a tensor.
		
		Reduces `input` along the dimensions given in `axis`. Unless
		`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
		`axis`. If `keep_dims` is true, the reduced dimensions are
		retained with length 1.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor to reduce.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The dimensions to reduce. Must be in the range
		    `[-rank(input), rank(input))`.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If true, retain reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function prod(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function prod_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Convert the quantized 'input' tensor into a lower-precision 'output', using the
		
		actual distribution of the values to maximize the usage of the lower bit depth
		and adjusting the output min and max ranges accordingly.
		
		[input_min, input_max] are scalar floats that specify the range for the float
		interpretation of the 'input' data. For example, if input_min is -1.0f and
		input_max is 1.0f, and we are dealing with quint16 quantized data, then a 0
		value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f.
		
		This operator tries to squeeze as much precision as possible into an output with
		a lower bit depth by calculating the actual min and max values found in the
		data. For example, maybe that quint16 input has no values lower than 16,384 and
		none higher than 49,152. That means only half the range is actually needed, all
		the float interpretations are between -0.5f and 0.5f, so if we want to compress
		the data into a quint8 output, we can use that range rather than the theoretical
		-1.0f to 1.0f that is suggested by the input min and max.
		
		In practice, this is most useful for taking output from operations like
		QuantizedMatMul that can produce higher bit-depth outputs than their inputs and
		may have large potential output ranges, but in practice have a distribution of
		input values that only uses a small fraction of the possible range. By feeding
		that output into this operator, we can reduce it from 32 bits down to 8 with
		minimal loss of accuracy.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		    The type of the output. Should be a lower bit depth than Tinput.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantize_down_and_shrink_range(input:Dynamic, input_min:Dynamic, input_max:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantize_down_and_shrink_range_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns x + y element-wise, working on quantized buffers.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  y: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_x: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `x` value represents.
		  max_x: A `Tensor` of type `float32`.
		    The float value that the highest quantized `x` value represents.
		  min_y: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `y` value represents.
		  max_y: A `Tensor` of type `float32`.
		    The float value that the highest quantized `y` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (z, min_z, max_z).
		
		  z: A `Tensor` of type `Toutput`.
		  min_z: A `Tensor` of type `float32`.
		  max_z: A `Tensor` of type `float32`.
	**/
	static public function quantized_add(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_add_eager_fallback(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, Toutput:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Perform a quantized matrix multiplication of  `a` by the matrix `b`.
		
		The inputs must be two-dimensional matrices and the inner dimension of
		`a` (after being transposed if `transpose_a` is non-zero) must match the
		outer dimension of `b` (after being transposed if `transposed_b` is
		non-zero).
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    Must be a two-dimensional tensor.
		  b: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    Must be a two-dimensional tensor.
		  min_a: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `a` value represents.
		  max_a: A `Tensor` of type `float32`.
		    The float value that the highest quantized `a` value represents.
		  min_b: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `b` value represents.
		  max_b: A `Tensor` of type `float32`.
		    The float value that the highest quantized `b` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  transpose_a: An optional `bool`. Defaults to `False`.
		    If true, `a` is transposed before multiplication.
		  transpose_b: An optional `bool`. Defaults to `False`.
		    If true, `b` is transposed before multiplication.
		  Tactivation: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    The type of output produced by activation function
		    following this operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, min_out, max_out).
		
		  out: A `Tensor` of type `Toutput`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function quantized_mat_mul(a:Dynamic, b:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?Tactivation:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, Toutput:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, Tactivation:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns x * y element-wise, working on quantized buffers.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  y: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_x: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `x` value represents.
		  max_x: A `Tensor` of type `float32`.
		    The float value that the highest quantized `x` value represents.
		  min_y: A `Tensor` of type `float32`.
		    The float value that the lowest quantized `y` value represents.
		  max_y: A `Tensor` of type `float32`.
		    The float value that the highest quantized `y` value represents.
		  Toutput: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (z, min_z, max_z).
		
		  z: A `Tensor` of type `Toutput`.
		  min_z: A `Tensor` of type `float32`.
		  max_z: A `Tensor` of type `float32`.
	**/
	static public function quantized_mul(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_mul_eager_fallback(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, Toutput:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  splits: A `Tensor` of type `int64`. 1D int64 `Tensor`.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2D int `Tensor`.
		  size: A `Tensor`. Must have the same type as `values`.
		    non-negative int scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `input`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  binary_output: An optional `bool`. Defaults to `False`.
		    bool; Whether the kernel should count the appearance or number of occurrences.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function ragged_bincount(splits:Dynamic, values:Dynamic, size:Dynamic, weights:Dynamic, ?binary_output:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_bincount_eager_fallback(splits:Dynamic, values:Dynamic, size:Dynamic, weights:Dynamic, binary_output:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Returns the real part of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the real part of each element in `input` considered as a complex number.
		
		For example:
		
		```python
		x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		tf.math.real(x)  # [-2.25, 3.25]
		```
		
		If `input` is already real, it is returned unchanged.
		
		Args:
		  input: A `Tensor`. Must have numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32` or `float64`.
	**/
	static public function real(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function real_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function real_div_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function real_eager_fallback(input:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function reciprocal(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function reciprocal_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the inverse of `x` wrt its input.
		
		Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function reciprocal_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	static public function reciprocal_grad_eager_fallback(y:Dynamic, dy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs a safe reciprocal operation, element wise.
		
		If a particular element is zero, the reciprocal for that element is
		also set to zero.
		
		For example:
		```python
		x = tf.constant([2.0, 0.5, 0, 1], dtype=tf.float32)
		tf.math.reciprocal_no_nan(x)  # [ 0.5, 2, 0.0, 1.0 ]
		```
		
		Args:
		  x: A `Tensor` of type `float16`, `float32`, `float64` `complex64` or
		    `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as `x`.
		
		Raises:
		  TypeError: x must be of a valid dtype.
	**/
	static public function reciprocal_no_nan(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes `tf.math.logical_and` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
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
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.all
		@end_compatibility
	**/
	static public function reduce_all_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
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
		Computes `tf.math.logical_or` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
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
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.any
		@end_compatibility
	**/
	static public function reduce_any_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the Euclidean norm of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [1, 1, 1]]) # x.dtype is tf.int32
		tf.math.reduce_euclidean_norm(x)  # returns 4 as dtype is tf.int32
		y = tf.constant([[1, 2, 3], [1, 1, 1]], dtype = tf.float32)
		tf.math.reduce_euclidean_norm(y)  # returns 4.1231055 which is sqrt(17)
		tf.math.reduce_euclidean_norm(y, 0)  # [sqrt(2), sqrt(5), sqrt(10)]
		tf.math.reduce_euclidean_norm(y, 1)  # [sqrt(14), sqrt(3)]
		tf.math.reduce_euclidean_norm(y, 1, keepdims=True)  # [[sqrt(14)], [sqrt(3)]]
		tf.math.reduce_euclidean_norm(y, [0, 1])  # sqrt(17)
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor.
	**/
	static public function reduce_euclidean_norm(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes log(sum(exp(elements across dimensions of a tensor))). (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
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
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_logsumexp_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
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
		Computes `tf.math.maximum` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
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
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_max_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	static public function reduce_max_with_dims(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?dims:Dynamic):Dynamic;
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
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis` by computing the
		mean of elements across the dimensions in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		the entries in `axis`, which must be unique. If `keepdims` is true, the
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
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
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
	static public function reduce_mean_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
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
		Computes the `tf.math.minimum` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.minimum` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Usage example:
		
		  >>> x = tf.constant([5, 1, 2, 4])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=1>
		  >>> x = tf.constant([-5, -1, -2, -4])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=int32, numpy=-5>
		  >>> x = tf.constant([4, float('nan')])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('nan'), float('nan')])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=nan>
		  >>> x = tf.constant([float('-inf'), float('inf')])
		  >>> tf.reduce_min(x)
		  <tf.Tensor: shape=(), dtype=float32, numpy=-inf>
		
		See the numpy docs for `np.amin` and `np.nanmin` behavior.
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
	**/
	static public function reduce_min_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
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
		Computes `tf.math.multiply` of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		This is the reduction operation for the elementwise `tf.math.multiply` op.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
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
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.prod
		@end_compatibility
	**/
	static public function reduce_prod_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the standard deviation of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		>>> x = tf.constant([[1., 2.], [3., 4.]])
		>>> tf.math.reduce_std(x)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.118034>
		>>> tf.math.reduce_std(x, 0)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([1., 1.], dtype=float32)>
		>>> tf.math.reduce_std(x, 1)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([0.5, 0.5], dtype=float32)>
		
		Args:
		  input_tensor: The tensor to reduce. Should have real or complex type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name scope for the associated operations (optional).
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor. Note,  for
		  `complex64` or `complex128` input, the returned `Tensor` will be of type
		  `float32` or `float64`, respectively.
		
		@compatibility(numpy)
		Equivalent to np.std
		
		Please note `np.std` has a `dtype` parameter that could be used to specify the
		output type. By default this is `dtype=float64`. On the other hand,
		`tf.math.reduce_std` has aggressive type inference from `input_tensor`.
		@end_compatibility
	**/
	static public function reduce_std(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes the sum of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
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
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor.
		
		@compatibility(numpy)
		Equivalent to np.sum apart the fact that numpy upcast uint8 and int32 to
		int64 while tensorflow returns the same dtype as the input.
		@end_compatibility
	**/
	static public function reduce_sum_v1(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	static public function reduce_sum_with_dims(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?dims:Dynamic):Dynamic;
	/**
		Computes the variance of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		of the entries in `axis`, which must be unique. If `keepdims` is true, the
		reduced dimensions are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		>>> x = tf.constant([[1., 2.], [3., 4.]])
		>>> tf.math.reduce_variance(x)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.25>
		>>> tf.math.reduce_variance(x, 0)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([1., 1.], ...)>
		>>> tf.math.reduce_variance(x, 1)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([0.25, 0.25], ...)>
		
		Args:
		  input_tensor: The tensor to reduce. Should have real or complex type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name scope for the associated operations (optional).
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor. Note,  for
		  `complex64` or `complex128` input, the returned `Tensor` will be of type
		  `float32` or `float64`, respectively.
		
		@compatibility(numpy)
		Equivalent to np.var
		
		Please note `np.var` has a `dtype` parameter that could be used to specify the
		output type. By default this is `dtype=float64`. On the other hand,
		`tf.math.reduce_variance` has aggressive type inference from `input_tensor`.
		@end_compatibility
	**/
	static public function reduce_variance(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function for reduction ops.
		
		Args:
		  input_shape: 1-D Tensor, the shape of the Tensor being reduced.
		  axes: 1-D Tensor, the reduction axes.
		
		Returns:
		  A 1-D Tensor, the output shape as if keepdims were set to True.
	**/
	static public function reduced_shape(input_shape:Dynamic, axes:Dynamic):Dynamic;
	/**
		Computes a range that covers the actual values present in a quantized tensor.
		
		Given a quantized tensor described by `(input, input_min, input_max)`, outputs a
		range that covers the actual values present in that tensor. This op is typically
		used to produce the `requested_output_min` and `requested_output_max` for
		`Requantize`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_min, output_max).
		
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function requantization_range(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic):Dynamic;
	static public function requantization_range_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes requantization range per channel.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  input_min: A `Tensor` of type `float32`.
		    The minimum value of the input tensor
		  input_max: A `Tensor` of type `float32`.
		    The maximum value of the input tensor.
		  clip_value_max: A `float`.
		    The maximum value of the output that needs to be clipped.
		    Example: set this to 6 for Relu6.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_min, output_max).
		
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function requantization_range_per_channel(input:Dynamic, input_min:Dynamic, input_max:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	static public function requantization_range_per_channel_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, clip_value_max:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts the quantized `input` tensor into a lower-precision `output`.
		
		Converts the quantized `input` tensor into a lower-precision `output`, using the
		output range specified with `requested_output_min` and `requested_output_max`.
		
		`[input_min, input_max]` are scalar floats that specify the range for the float
		interpretation of the `input` data. For example, if `input_min` is -1.0f and
		`input_max` is 1.0f, and we are dealing with `quint16` quantized data, then a 0
		value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  input_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized input value represents.
		  input_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized input value represents.
		  requested_output_min: A `Tensor` of type `float32`.
		    The float value that the minimum quantized output value represents.
		  requested_output_max: A `Tensor` of type `float32`.
		    The float value that the maximum quantized output value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		    The type of the output. Should be a lower bit depth than Tinput.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function requantize(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function requantize_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Requantizes input with min and max values known per channel.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The original input tensor.
		  input_min: A `Tensor` of type `float32`.
		    The minimum value of the input tensor
		  input_max: A `Tensor` of type `float32`.
		    The maximum value of the input tensor.
		  requested_output_min: A `Tensor` of type `float32`.
		    The minimum value of the output tensor requested.
		  requested_output_max: A `Tensor` of type `float32`.
		    The maximum value of the output tensor requested.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		    The quantized type of output tensor that needs to be converted.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `out_type`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function requantize_per_channel(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function requantize_per_channel_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns element-wise integer closest to x.
		
		If the result is midway between two representable values,
		the even representable is chosen.
		For example:
		
		```
		rint(-1.5) ==> -2.0
		rint(0.5000001) ==> 1.0
		rint([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0]) ==> [-2., -2., -0., 0., 2., 2., 2.]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function rint(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function rint_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function round_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes reciprocal of square root of x element-wise.
		
		For example:
		
		>>> x = tf.constant([2., 0., -2.])
		>>> tf.math.rsqrt(x)
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0.707, inf, nan], dtype=float32)>
		
		Args:
		  x: A `tf.Tensor`. Must be one of the following types: `bfloat16`, `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.Tensor`. Has the same type as `x`.
	**/
	static public function rsqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function rsqrt_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the rsqrt of `x` wrt its input.
		
		Specifically, `grad = dy * -0.5 * y^3`, where `y = rsqrt(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function rsqrt_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	static public function rsqrt_grad_eager_fallback(y:Dynamic, dy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function scalar_mul_v2(scalar:Dynamic, x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \max_j(data_j)\\) where `max` is over `j` such
		that `segment_ids[j] == i`.
		
		If the max is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMax.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_max(c, tf.constant([0, 0, 1]))
		# ==> [[4, 3, 3, 4],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_max(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	static public function segment_max_eager_fallback(data:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \frac{\sum_j data_j}{N}\\) where `mean` is
		over `j` such that `segment_ids[j] == i` and `N` is the total number of
		values summed.
		
		If the mean is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMean.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1.0,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_mean(c, tf.constant([0, 0, 1]))
		# ==> [[2.5, 2.5, 2.5, 2.5],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_mean(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	static public function segment_mean_eager_fallback(data:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \min_j(data_j)\\) where `min` is over `j` such
		that `segment_ids[j] == i`.
		
		If the min is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMin.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_min(c, tf.constant([0, 0, 1]))
		# ==> [[1, 2, 2, 1],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_min(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	static public function segment_min_eager_fallback(data:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \prod_j data_j\\) where the product is over `j` such
		that `segment_ids[j] == i`.
		
		If the product is empty for a given segment ID `i`, `output[i] = 1`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentProd.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_prod(c, tf.constant([0, 0, 1]))
		# ==> [[4, 6, 6, 4],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_prod(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	static public function segment_prod_eager_fallback(data:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \sum_j data_j\\) where sum is over `j` such
		that `segment_ids[j] == i`.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentSum.png" alt>
		</div>
		
		For example:
		
		```
		c = tf.constant([[1,2,3,4], [4, 3, 2, 1], [5,6,7,8]])
		tf.segment_sum(c, tf.constant([0, 0, 1]))
		# ==> [[5, 5, 5, 5],
		#      [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor whose size is equal to the size of `data`'s
		    first dimension.  Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function segment_sum(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	static public function segment_sum_eager_fallback(data:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Selects elements from `x` or `y`, depending on `condition`.
		
		The `x`, and `y` tensors must all have the same shape, and the
		output will also have that shape.
		
		The `condition` tensor must be a scalar if `x` and `y` are scalars.
		If `x` and `y` are vectors or higher rank, then `condition` must be either a
		scalar, a vector with size matching the first dimension of `x`, or must have
		the same shape as `x`.
		
		The `condition` tensor acts as a mask that chooses, based on the value at each
		element, whether the corresponding element / row in the output should be
		taken from `x` (if true) or `y` (if false).
		
		If `condition` is a vector and `x` and `y` are higher rank matrices, then
		it chooses which row (outer dimension) to copy from `x` and `y`.
		If `condition` has the same shape as `x` and `y`, then it chooses which
		element to copy from `x` and `y`.
		
		For example:
		
		```python
		# 'condition' tensor is [[True,  False]
		#                        [False, True]]
		# 't' is [[1, 2],
		#         [3, 4]]
		# 'e' is [[5, 6],
		#         [7, 8]]
		select(condition, t, e)  # => [[1, 6], [7, 4]]
		
		
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
		  x:  A `Tensor` which may have the same shape as `condition`.
		    If `condition` is rank 1, `x` may have higher rank,
		    but its first dimension must match the size of `condition`.
		  y:  A `Tensor` with the same type and shape as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function select(condition:Dynamic, x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function select_eager_fallback(condition:Dynamic, x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  condition: A `Tensor` of type `bool`.
		  t: A `Tensor`.
		  e: A `Tensor`. Must have the same type as `t`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function select_v2(condition:Dynamic, t:Dynamic, e:Dynamic, ?name:Dynamic):Dynamic;
	static public function select_v2_eager_fallback(condition:Dynamic, t:Dynamic, e:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sigmoid_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of the sigmoid of `x` wrt its input.
		
		Specifically, `grad = dy * y * (1 - y)`, where `y = sigmoid(x)`, and
		`dy` is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function sigmoid_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	static public function sigmoid_grad_eager_fallback(y:Dynamic, dy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sign_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sin_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sinh_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Generates points from the Sobol sequence.
		
		Creates a Sobol sequence with `num_results` samples. Each sample has dimension
		`dim`. Skips the first `skip` samples.
		
		Args:
		  dim: Positive scalar `Tensor` representing each sample's dimension.
		  num_results: Positive scalar `Tensor` of dtype int32. The number of Sobol
		      points to return in the output.
		  skip: (Optional) Positive scalar `Tensor` of dtype int32. The number of
		      initial points of the Sobol sequence to skip. Default value is 0.
		  dtype: (Optional) The `tf.Dtype` of the sample. One of: `tf.float32` or
		      `tf.float64`. Defaults to `tf.float32`.
		  name: (Optional) Python `str` name prefixed to ops created by this function.
		
		Returns:
		  `Tensor` of samples from Sobol sequence with `shape` [num_results, dim].
	**/
	static public function sobol_sample(dim:Dynamic, num_results:Dynamic, ?skip:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function sobol_sample_eager_fallback(dim:Dynamic, num_results:Dynamic, skip:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes elementwise softplus: `softplus(x) = log(exp(x) + 1)`.
		
		`softplus` is a smooth approximation of `relu`. Like `relu`, `softplus` always
		takes on positive values.
		
		<img style="width:100%" src="https://www.tensorflow.org/images/softplus.png">
		
		Example:
		
		>>> import tensorflow as tf
		>>> tf.math.softplus(tf.range(0, 2, dtype=tf.float32)).numpy()
		array([0.6931472, 1.3132616], dtype=float32)
		
		Args:
		  features: `Tensor`
		  name: Optional: name to associate with this operation.
		Returns:
		  `Tensor`
	**/
	static public function softplus(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		Outputs a vector with length `size` and the same dtype as `weights`. If
		`weights` are empty, then index `i` stores the number of times the value `i` is
		counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
		the value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Values in `arr` outside of the range [0, size) are ignored.
		
		Args:
		  indices: A `Tensor` of type `int64`. 2D int64 `Tensor`.
		  values: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1D int `Tensor`.
		  dense_shape: A `Tensor` of type `int64`. 1D int64 `Tensor`.
		  size: A `Tensor`. Must have the same type as `values`.
		    non-negative int scalar `Tensor`.
		  weights: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    is an int32, int64, float32, or float64 `Tensor` with the same
		    shape as `input`, or a length-0 `Tensor`, in which case it acts as all weights
		    equal to 1.
		  binary_output: An optional `bool`. Defaults to `False`.
		    bool; Whether the kernel should count the appearance or number of occurrences.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function sparse_bincount(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, size:Dynamic, weights:Dynamic, ?binary_output:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_bincount_eager_fallback(indices:Dynamic, values:Dynamic, dense_shape:Dynamic, size:Dynamic, weights:Dynamic, binary_output:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiply matrix "a" by matrix "b".
		
		The inputs must be two-dimensional matrices and the inner dimension of "a" must
		match the outer dimension of "b". Both "a" and "b" must be `Tensor`s not
		`SparseTensor`s.  This op is optimized for the case where at least one of "a" or
		"b" is sparse, in the sense that they have a large proportion of zero values.
		The breakeven for using this versus a dense matrix multiply on one platform was
		30% zero values in the sparse matrix.
		
		The gradient computation of this operation will only take advantage of sparsity
		in the input gradient when that gradient comes from a Relu.
		
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
	static public function sparse_mat_mul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, transpose_a:Dynamic, transpose_b:Dynamic, a_is_sparse:Dynamic, b_is_sparse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiply matrix "a" by matrix "b". (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.linalg.matmul` instead
		
		The inputs must be two-dimensional matrices and the inner dimension of "a" must
		match the outer dimension of "b". Both "a" and "b" must be `Tensor`s not
		`SparseTensor`s.  This op is optimized for the case where at least one of "a" or
		"b" is sparse, in the sense that they have a large proportion of zero values.
		The breakeven for using this versus a dense matrix multiply on one platform was
		30% zero values in the sparse matrix.
		
		The gradient computation of this operation will only take advantage of sparsity
		in the input gradient when that gradient comes from a Relu.
		
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
		Computes the mean along sparse segments of a tensor.
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		Like `tf.math.segment_mean`, but `segment_ids` can have rank less than
		`data`'s first dimension, selecting a subset of dimension 0, specified by
		`indices`.
		`segment_ids` is allowed to have missing ids, in which case the output will
		be zeros at those indices. In those cases `num_segments` is used to determine
		the size of the output.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
		  name: A name for the operation (optional).
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_mean(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?num_segments:Dynamic):Dynamic;
	static public function sparse_segment_mean_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentMean.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    gradient propagated to the SparseSegmentMean op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentMean op.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    segment_ids passed to the corresponding SparseSegmentMean op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentMean op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function sparse_segment_mean_grad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_segment_mean_grad_eager_fallback(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		Like `tf.math.segment_mean`, but `segment_ids` can have rank less than
		`data`'s first dimension, selecting a subset of dimension 0, specified by
		`indices`.
		`segment_ids` is allowed to have missing ids, in which case the output will
		be zeros at those indices. In those cases `num_segments` is used to determine
		the size of the output.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_mean_v2(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Like `SparseSegmentMean`, but allows missing ids in `segment_ids`. If an id is
		missing, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_mean_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_segment_mean_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt(N).
		
		`N` is the size of the segment being reduced.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
		  name: A name for the operation (optional).
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_sqrt_n(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?num_segments:Dynamic):Dynamic;
	static public function sparse_segment_sqrt_n_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentSqrtN.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    gradient propagated to the SparseSegmentSqrtN op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentSqrtN op.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    segment_ids passed to the corresponding SparseSegmentSqrtN op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentSqrtN op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function sparse_segment_sqrt_n_grad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_segment_sqrt_n_grad_eager_fallback(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt(N).
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		Like `tf.sparse.segment_mean`, but instead of dividing by the size of the
		segment, `N`, divide by `sqrt(N)` instead.
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_sqrt_n_v2(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt of N.
		
		N is the size of the segment being reduced.
		
		Like `SparseSegmentSqrtN`, but allows missing ids in `segment_ids`. If an id is
		missing, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sqrt_n_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_segment_sqrt_n_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		Like `tf.math.segment_sum`, but `segment_ids` can have rank less than `data`'s
		first dimension, selecting a subset of dimension 0, specified by `indices`.
		`segment_ids` is allowed to have missing ids, in which case the output will
		be zeros at those indices. In those cases `num_segments` is used to determine
		the size of the output.
		
		For example:
		
		```python
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		# Select two rows, one segment.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 0]))
		# => [[0 0 0 0]]
		
		# Select two rows, two segment.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 1]))
		# => [[ 1  2  3  4]
		#     [-1 -2 -3 -4]]
		
		# With missing segment ids.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 2]),
		                      num_segments=4)
		# => [[ 1  2  3  4]
		#     [ 0  0  0  0]
		#     [-1 -2 -3 -4]
		#     [ 0  0  0  0]]
		
		# Select all rows, two segments.
		tf.sparse.segment_sum(c, tf.constant([0, 1, 2]), tf.constant([0, 0, 1]))
		# => [[0 0 0 0]
		#     [5 6 7 8]]
		
		# Which is equivalent to:
		tf.math.segment_sum(c, tf.constant([0, 0, 1]))
		```
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
		  name: A name for the operation (optional).
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_sum(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?num_segments:Dynamic):Dynamic;
	static public function sparse_segment_sum_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentSum.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    gradient propagated to the SparseSegmentSum op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    indices passed to the corresponding SparseSegmentSum op.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    segment_ids passed to the corresponding SparseSegmentSum op.
		  output_dim0: A `Tensor` of type `int32`.
		    dimension 0 of "data" passed to SparseSegmentSum op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function sparse_segment_sum_grad(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_segment_sum_grad_eager_fallback(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		Like `tf.math.segment_sum`, but `segment_ids` can have rank less than `data`'s
		first dimension, selecting a subset of dimension 0, specified by `indices`.
		`segment_ids` is allowed to have missing ids, in which case the output will
		be zeros at those indices. In those cases `num_segments` is used to determine
		the size of the output.
		
		For example:
		
		```python
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		# Select two rows, one segment.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 0]))
		# => [[0 0 0 0]]
		
		# Select two rows, two segment.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 1]))
		# => [[ 1  2  3  4]
		#     [-1 -2 -3 -4]]
		
		# With missing segment ids.
		tf.sparse.segment_sum(c, tf.constant([0, 1]), tf.constant([0, 2]),
		                      num_segments=4)
		# => [[ 1  2  3  4]
		#     [ 0  0  0  0]
		#     [-1 -2 -3 -4]
		#     [ 0  0  0  0]]
		
		# Select all rows, two segments.
		tf.sparse.segment_sum(c, tf.constant([0, 1, 2]), tf.constant([0, 0, 1]))
		# => [[0 0 0 0]
		#     [5 6 7 8]]
		
		# Which is equivalent to:
		tf.math.segment_sum(c, tf.constant([0, 0, 1]))
		```
		
		Args:
		  data: A `Tensor` with data that will be assembled in the output.
		  indices: A 1-D `Tensor` with indices into `data`. Has same rank as
		    `segment_ids`.
		  segment_ids: A 1-D `Tensor` with indices into the output `Tensor`. Values
		    should be sorted and can be repeated.
		  num_segments: An optional int32 scalar. Indicates the size of the output
		    `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tensor` of the shape as data, except for dimension 0 which
		  has size `k`, the number of segments specified via `num_segments` or
		  inferred for the last element in `segments_ids`.
	**/
	static public function sparse_segment_sum_v2(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Like `SparseSegmentSum`, but allows missing ids in `segment_ids`. If an id is
		missing, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/sparse#Segmentation)
		for an explanation of segments.
		
		For example:
		
		```python
		c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])
		
		tf.sparse_segment_sum_with_num_segments(
		    c, tf.constant([0, 1]), tf.constant([0, 0]), num_segments=3)
		# => [[0 0 0 0]
		#     [0 0 0 0]
		#     [0 0 0 0]]
		
		tf.sparse_segment_sum_with_num_segments(c,
		                                        tf.constant([0, 1]),
		                                        tf.constant([0, 2],
		                                        num_segments=4))
		# => [[ 1  2  3  4]
		#     [ 0  0  0  0]
		#     [-1 -2 -3 -4]
		#     [ 0  0  0  0]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sum_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_segment_sum_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sqrt_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the sqrt of `x` wrt its input.
		
		Specifically, `grad = dy * 0.5 / y`, where `y = sqrt(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function sqrt_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	static public function sqrt_grad_eager_fallback(y:Dynamic, dy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function square_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns conj(x - y)(x - y) element-wise.
		
		*NOTE*: `math.squared_difference` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function squared_difference(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function squared_difference_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sub(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function sub_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function tan_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function tanh_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient for the tanh of `x` wrt its input.
		
		Specifically, `grad = dy * (1 - y*y)`, where `y = tanh(x)`, and `dy`
		is the corresponding input gradient.
		
		Args:
		  y: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  dy: A `Tensor`. Must have the same type as `y`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `y`.
	**/
	static public function tanh_grad(y:Dynamic, dy:Dynamic, ?name:Dynamic):Dynamic;
	static public function tanh_grad_eager_fallback(y:Dynamic, dy:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The operation invoked by the `Tensor.__eq__` operator.
		
		Compares two tensors element-wise for equality if they are
		broadcast-compatible; or returns False if they are not broadcast-compatible.
		(Note that this behavior differs from `tf.math.equal`, which raises an
		exception if the two tensors are not broadcast-compatible.)
		
		Purpose in the API:
		
		  This method is exposed in TensorFlow's API so that library developers
		  can register dispatching for `Tensor.__eq__` to allow it to handle
		  custom composite tensors & other custom objects.
		
		  The API symbol is not intended to be called by users directly and does
		  appear in TensorFlow's generated documentation.
		
		Args:
		  self: The left-hand side of the `==` operator.
		  other: The right-hand side of the `==` operator.
		
		Returns:
		  The result of the elementwise `==` operation, or `False` if the arguments
		  are not broadcast-compatible.
	**/
	static public function tensor_equals(self:Dynamic, other:Dynamic):Dynamic;
	/**
		The operation invoked by the `Tensor.__ne__` operator.
		
		Compares two tensors element-wise for inequality if they are
		broadcast-compatible; or returns True if they are not broadcast-compatible.
		(Note that this behavior differs from `tf.math.not_equal`, which raises an
		exception if the two tensors are not broadcast-compatible.)
		
		Purpose in the API:
		
		  This method is exposed in TensorFlow's API so that library developers
		  can register dispatching for `Tensor.__ne__` to allow it to handle
		  custom composite tensors & other custom objects.
		
		  The API symbol is not intended to be called by users directly and does
		  appear in TensorFlow's generated documentation.
		
		Args:
		  self: The left-hand side of the `!=` operator.
		  other: The right-hand side of the `!=` operator.
		
		Returns:
		  The result of the elementwise `!=` operation, or `True` if the arguments
		  are not broadcast-compatible.
	**/
	static public function tensor_not_equals(self:Dynamic, other:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Casts a tensor to type `bfloat16`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `bfloat16`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `bfloat16`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.bfloat16)`. There are no further issues with eager execution
		or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_bfloat16(tf.constant(3.14, dtype=tf.float32))
		<tf.Tensor: shape=(), dtype=bfloat16, numpy=3.14>
		
		After:
		
		>>> tf.cast(tf.constant(3.14, dtype=tf.float32), tf.bfloat16)
		<tf.Tensor: shape=(), dtype=bfloat16, numpy=3.14>
		
		@end_compatibility
	**/
	static public function to_bfloat16(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `complex128`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `complex128`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `complex128`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.complex128)`. There are no further issues with eager
		execution or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_complex128(tf.constant(1. + 2.j, dtype=tf.complex64))
		<tf.Tensor: shape=(), dtype=complex128, numpy=(1+2j)>
		
		After:
		
		>>> tf.cast(tf.constant(1. + 2.j, dtype=tf.complex64), tf.complex128)
		<tf.Tensor: shape=(), dtype=complex128, numpy=(1+2j)>
		
		@end_compatibility
	**/
	static public function to_complex128(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `complex64`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `complex64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `complex64`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.complex64)`. There are no further issues with eager execution
		or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_complex64(tf.constant(1. + 2.j, dtype=tf.complex128))
		<tf.Tensor: shape=(), dtype=complex64, numpy=(1+2j)>
		
		After:
		
		>>> tf.cast(tf.constant(1. + 2.j, dtype=tf.complex128), tf.complex64)
		<tf.Tensor: shape=(), dtype=complex64, numpy=(1+2j)>
		
		@end_compatibility
	**/
	static public function to_complex64(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float64`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `float64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float64`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.double)`. There are no further issues with eager execution or
		tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_double(tf.constant(3.14, dtype=tf.float32))
		<tf.Tensor: shape=(), dtype=float64, numpy=3.14>
		
		After:
		
		>>> tf.cast(tf.constant(3.14, dtype=tf.float32), tf.double)
		<tf.Tensor: shape=(), dtype=float64, numpy=3.14>
		
		@end_compatibility
	**/
	static public function to_double(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `float32`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `float32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `float32`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.float32)`. There are no further issues with eager execution
		or tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_float(tf.constant(3.14, dtype=tf.double))
		<tf.Tensor: shape=(), dtype=float32, numpy=3.14>
		
		After:
		
		>>> tf.cast(tf.constant(3.14, dtype=tf.double), tf.float32)
		<tf.Tensor: shape=(), dtype=float32, numpy=3.14>
		
		@end_compatibility
	**/
	static public function to_float(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int32`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `int32`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int32`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.int32)`. There are no further issues with eager execution or
		tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_int32(tf.constant(1, dtype=tf.int64))
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		After:
		
		>>> tf.cast(tf.constant(1, dtype=tf.int64), tf.int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		@end_compatibility
	**/
	static public function to_int32(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Casts a tensor to type `int64`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.cast` instead.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` with
		  type `int64`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `int64`.
		
		@compatibility(TF2)
		
		This name was deprecated and removed in TF2, but has an exact replacement
		`tf.cast(..., tf.int64)`. There are no further issues with eager execution or
		tf.function.
		
		Before:
		
		>>> tf.compat.v1.to_int64(tf.constant(1, dtype=tf.int32))
		<tf.Tensor: shape=(), dtype=int64, numpy=1>
		
		After:
		
		>>> tf.cast(tf.constant(1, dtype=tf.int32), tf.int64)
		<tf.Tensor: shape=(), dtype=int64, numpy=1>
		
		@end_compatibility
	**/
	static public function to_int64(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the trace of a tensor `x`.
		
		`trace(x)` returns the sum along the main diagonal of each inner-most matrix
		in x. If x is of rank `k` with shape `[I, J, K, ..., L, M, N]`, then output
		is a tensor of rank `k-2` with dimensions `[I, J, K, ..., L]` where
		
		`output[i, j, k, ..., l] = trace(x[i, j, k, ..., l, :, :])`
		
		For example:
		
		```python
		x = tf.constant([[1, 2], [3, 4]])
		tf.linalg.trace(x)  # 5
		
		x = tf.constant([[1, 2, 3],
		                 [4, 5, 6],
		                 [7, 8, 9]])
		tf.linalg.trace(x)  # 15
		
		x = tf.constant([[[1, 2, 3],
		                  [4, 5, 6],
		                  [7, 8, 9]],
		                 [[-1, -2, -3],
		                  [-4, -5, -6],
		                  [-7, -8, -9]]])
		tf.linalg.trace(x)  # [15, -15]
		```
		
		Args:
		  x: tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  The trace of input tensor.
	**/
	static public function trace(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function truncate_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function truncate_div_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function truncate_mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function truncate_mod_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Computes the maximum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the maximum such that:
		
		\\(output_i = \max_{j...} data[j...]\\) where max is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the maximum is empty for a given segment ID `i`, it outputs the smallest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::lowest()`.
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/UnsortedSegmentMax.png" alt>
		</div>
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_max(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 4,  3, 3, 4],
		#       [5,  6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_max(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function unsorted_segment_max_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		This operator is similar to the `tf.math.unsorted_segment_sum` operator.
		Instead of computing the sum over segments, it computes the mean of all
		entries belonging to a segment such that:
		
		\\(output_i = 1/N_i \sum_{j...} data[j...]\\) where the sum is over tuples
		`j...` such that `segment_ids[j...] == i` with \\N_i\\ being the number of
		occurrences of id \\i\\.
		
		If there is no entry for a given segment ID `i`, it outputs 0.
		
		If the given segment ID `i` is negative, the value is dropped and will not
		be added to the sum of the segment.
		
		Args:
		  data: A `Tensor` with floating point or complex dtype.
		  segment_ids: An integer tensor whose shape is a prefix of `data.shape`.
		  num_segments: An integer scalar `Tensor`.  The number of distinct segment
		    IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has same shape as data, except for the first `segment_ids.rank`
		  dimensions, which are replaced with a single dimension which has size
		 `num_segments`.
	**/
	static public function unsorted_segment_mean(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the minimum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the minimum such that:
		
		\\(output_i = \min_{j...} data_[j...]\\) where min is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the minimum is empty for a given segment ID `i`, it outputs the largest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::max()`.
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_min(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 1,  2, 2, 1],
		#       [5,  6, 7, 8]]
		```
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_min(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function unsorted_segment_min_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the product along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the product of all
		entries belonging to a segment such that:
		
		\\(output_i = \prod_{j...} data[j...]\\) where the product is over tuples
		`j...` such that `segment_ids[j...] == i`.
		
		For example:
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.unsorted_segment_prod(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 4,  6, 6, 4],
		#       [5,  6, 7, 8]]
		```
		
		If there is no entry for a given segment ID `i`, it outputs 1.
		
		If the given segment ID `i` is negative, then the corresponding value is
		dropped, and will not be included in the result.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_prod(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function unsorted_segment_prod_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor divided by the sqrt(N).
		
		Read [the section on
		segmentation](https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/math#about_segmentation)
		for an explanation of segments.
		
		This operator is similar to the `tf.math.unsorted_segment_sum` operator.
		Additionally to computing the sum over segments, it divides the results by
		sqrt(N).
		
		\\(output_i = 1/sqrt(N_i) \sum_{j...} data[j...]\\) where the sum is over
		tuples `j...` such that `segment_ids[j...] == i` with \\N_i\\ being the
		number of occurrences of id \\i\\.
		
		If there is no entry for a given segment ID `i`, it outputs 0.
		
		Note that this op only supports floating point and complex dtypes,
		due to tf.sqrt only supporting these types.
		
		If the given segment ID `i` is negative, the value is dropped and will not
		be added to the sum of the segment.
		
		Args:
		  data: A `Tensor` with floating point or complex dtype.
		  segment_ids: An integer tensor whose shape is a prefix of `data.shape`.
		  num_segments: An integer scalar `Tensor`.  The number of distinct segment
		    IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has same shape as data, except for the first `segment_ids.rank`
		  dimensions, which are replaced with a single dimension which has size
		 `num_segments`.
	**/
	static public function unsorted_segment_sqrt_n(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum along segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_docs/python/tf/math#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output[i] = \sum_{j...} data[j...]\\) where the sum is over tuples `j...` such
		that `segment_ids[j...] == i`.  Unlike `SegmentSum`, `segment_ids`
		need not be sorted and need not cover all values in the full
		range of valid values.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		If the given segment ID `i` is negative, the value is dropped and will not be
		added to the sum of the segment.
		
		`num_segments` should equal the number of distinct segment IDs.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/UnsortedSegmentSum.png" alt>
		</div>
		
		``` python
		c = tf.constant([[1,2,3,4], [5,6,7,8], [4,3,2,1]])
		tf.math.unsorted_segment_sum(c, tf.constant([0, 1, 0]), num_segments=2)
		# ==> [[ 5, 5, 5, 5],
		#       [5, 6, 7, 8]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_sum(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function unsorted_segment_sum_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns 0 if x == 0, and x / y otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function xdivy(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function xdivy_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute x * log1p(y).
		
		Given `x` and `y`, compute `x * log1p(y)`. This function safely returns
		zero when `x = 0`, no matter what the value of `y` is.
		
		Example:
		
		>>> tf.math.xlog1py(0., 1.)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.>
		>>> tf.math.xlog1py(1., 1.)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.6931472>
		>>> tf.math.xlog1py(2., 2.)
		<tf.Tensor: shape=(), dtype=float32, numpy=2.1972246>
		>>> tf.math.xlog1py(0., -1.)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.>
		
		Args:
		  x: A `tf.Tensor` of type `bfloat16`, `half`, `float32`, `float64`,
		    `complex64`, `complex128`
		  y: A `tf.Tensor` of type `bfloat16`, `half`, `float32`, `float64`,
		    `complex64`, `complex128`
		  name: A name for the operation (optional).
		
		Returns:
		  `x * log1p(y)`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.xlog1py
		@end_compatibility
	**/
	static public function xlog1py(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function xlog1py_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns 0 if x == 0, and x * log(y) otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function xlogy(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function xlogy_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function xor_(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the Hurwitz zeta function \\(\zeta(x, q)\\).
		
		The Hurwitz zeta function is defined as:
		
		
		\\(\zeta(x, q) = \sum_{n=0}^{\infty} (q + n)^{-x}\\)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  q: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function zeta(x:Dynamic, q:Dynamic, ?name:Dynamic):Dynamic;
	static public function zeta_eager_fallback(x:Dynamic, q:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}