/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_math_ops;
@:pythonImport("tensorflow.python.ops.gen_math_ops") extern class Gen_math_ops_Module {
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function _abs(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function _abs_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _all(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function _all_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _any(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function _any_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _clip_by_value(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	static public function _clip_by_value_eager_fallback(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _complex(real:Dynamic, imag:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public function _complex_eager_fallback(real:Dynamic, imag:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_acosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_asin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_asinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_atan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_atan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_atanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_betainc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_cross(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_digamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_erf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_erfc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_floor_div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_floor_mod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_greater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_greater_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_igamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_igammac(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_is_finite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_is_inf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_is_nan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_less(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_less_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_lgamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_logical_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_logical_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_logical_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_neg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_next_after(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_polygamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_real_div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_reciprocal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_rint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_segment_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_segment_mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_segment_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_segment_prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_segment_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_square(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_squared_difference(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_truncate_div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_truncate_mod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_unsorted_segment_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_unsorted_segment_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_unsorted_segment_prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_unsorted_segment_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xdivy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xlogy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_zeta(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function _histogram_fixed_width(values:Dynamic, value_range:Dynamic, nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function _histogram_fixed_width_eager_fallback(values:Dynamic, value_range:Dynamic, nbins:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _max(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function _max_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _min(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function _min_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _pow(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function _pow_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _range(start:Dynamic, limit:Dynamic, delta:Dynamic, ?name:Dynamic):Dynamic;
	static public function _range_eager_fallback(start:Dynamic, limit:Dynamic, delta:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function _sum(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function _sum_eager_fallback(input:Dynamic, axis:Dynamic, keep_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		
		
		  Provided an input tensor, the `tf.math.acos` operation returns the inverse cosine of each element of the tensor. If `y = tf.math.cos(x)` then, `x = tf.math.acos(y)`.
		
		  Input range is `[-1, 1]` and the output has a range of `[0, pi]`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
	static public function add(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function add_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function angle(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function arg_max(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function arg_max_eager_fallback(input:Dynamic, dimension:Dynamic, output_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function arg_min(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function arg_min_eager_fallback(input:Dynamic, dimension:Dynamic, output_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Cast x of type SrcT to y of DstT.
		
		Args:
		  x: A `Tensor`.
		  DstT: A `tf.DType`.
		  Truncate: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `DstT`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, DstT:Dynamic, ?Truncate:Dynamic, ?name:Dynamic):Dynamic;
	static public function cast_eager_fallback(x:Dynamic, DstT:Dynamic, Truncate:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns element-wise smallest integer not less than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function ceil(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function ceil_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function conj(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function cumprod(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	static public function cumprod_eager_fallback(x:Dynamic, axis:Dynamic, exclusive:Dynamic, reverse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function cumsum(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	static public function cumsum_eager_fallback(x:Dynamic, axis:Dynamic, exclusive:Dynamic, reverse:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function cumulative_logsumexp(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function div_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function div_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function div_no_nan_eager_fallback(x:Dynamic, y:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function equal(x:Dynamic, y:Dynamic, ?incompatible_shape_error:Dynamic, ?name:Dynamic):Dynamic;
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
		TODO: add doc.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
	static public function imag(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
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
		TODO: add doc.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
	static public function not_equal(x:Dynamic, y:Dynamic, ?incompatible_shape_error:Dynamic, ?name:Dynamic):Dynamic;
	static public function not_equal_eager_fallback(x:Dynamic, y:Dynamic, incompatible_shape_error:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function real(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
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
		according to the current system rounding mode use std::cint.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function round(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function round_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes reciprocal of square root of x element-wise.
		
		I.e., \\(y = 1 / \sqrt{x}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
		
		Specifically, `y = 1 / (1 + exp(-x))`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
	static public function sobol_sample(dim:Dynamic, num_results:Dynamic, skip:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function sobol_sample_eager_fallback(dim:Dynamic, num_results:Dynamic, skip:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function sparse_segment_mean(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_segment_sqrt_n(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function sparse_segment_sum(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes square root of x element-wise.
		
		I.e., \\(y = \sqrt{x} = x^{1/2}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Returns 0 if x == 0, and x * log1p(y) otherwise, elementwise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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