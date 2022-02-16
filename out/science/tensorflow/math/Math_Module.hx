/* This file is generated, do not edit! */
package tensorflow.math;
@:pythonImport("tensorflow.math") extern class Math_Module {
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
		Computes the Bessel i0 function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		It is preferable to use the numerically stabler function `i0e(x)` instead.
		
		>>> tf.math.special.bessel_i0([-1., -0.5, 0.5, 1.]).numpy()
		array([1.26606588, 1.06348337, 1.06348337, 1.26606588], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i0
		@end_compatibility
	**/
	static public function bessel_i0(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i0e function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		>>> tf.math.special.bessel_i0e([-1., -0.5, 0.5, 1.]).numpy()
		array([0.46575961, 0.64503527, 0.64503527, 0.46575961], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i0e
		@end_compatibility
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.bessel_i0e(x.values, ...), x.dense_shape)`
	**/
	static public function bessel_i0e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		It is preferable to use the numerically stabler function `i1e(x)` instead.
		
		>>> tf.math.special.bessel_i1([-1., -0.5, 0.5, 1.]).numpy()
		array([-0.5651591 , -0.25789431,  0.25789431,  0.5651591 ], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i1
		@end_compatibility
	**/
	static public function bessel_i1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i1e function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		>>> tf.math.special.bessel_i1e([-1., -0.5, 0.5, 1.]).numpy()
		array([-0.20791042, -0.15642083,  0.15642083,  0.20791042], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i1e
		@end_compatibility
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.bessel_i1e(x.values, ...), x.dense_shape)`
	**/
	static public function bessel_i1e(x:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Counts the number of occurrences of each value in an integer array.
		
		If `minlength` and `maxlength` are not given, returns a vector with length
		`tf.reduce_max(arr) + 1` if `arr` is non-empty, and length 0 otherwise.
		If `weights` are non-None, then index `i` of the output stores the sum of the
		value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		```python
		values = tf.constant([1,1,2,3,2,4,4,5])
		tf.math.bincount(values) #[0 2 2 1 2 1]
		```
		Vector length = Maximum element in vector `values` is 5. Adding 1, which is 6
		                will be the vector length.
		
		Each bin value in the output indicates number of occurrences of the particular
		index. Here, index 1 in output has a value 2. This indicates value 1 occurs
		two times in `values`.
		
		```python
		values = tf.constant([1,1,2,3,2,4,4,5])
		weights = tf.constant([1,5,0,1,0,5,4,5])
		tf.math.bincount(values, weights=weights) #[0 6 0 1 9 5]
		```
		Bin will be incremented by the corresponding weight instead of 1.
		Here, index 1 in output has a value 6. This is the summation of weights
		corresponding to the value in `values`.
		
		**Bin-counting on a certain axis**
		
		This example takes a 2 dimensional input and returns a `Tensor` with
		bincounting on each sample.
		
		>>> data = np.array([[1, 2, 3, 0], [0, 0, 1, 2]], dtype=np.int32)
		>>> tf.math.bincount(data, axis=-1)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		  array([[1, 1, 1, 1],
		         [2, 1, 1, 0]], dtype=int32)>
		
		
		**Bin-counting with binary_output**
		
		This example gives binary output instead of counting the occurrence.
		
		>>> data = np.array([[1, 2, 3, 0], [0, 0, 1, 2]], dtype=np.int32)
		>>> tf.math.bincount(data, axis=-1, binary_output=True)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		  array([[1, 1, 1, 1],
		         [1, 1, 1, 0]], dtype=int32)>
		
		Args:
		  arr: A Tensor, RaggedTensor, or SparseTensor whose values should be counted.
		    These tensors must have a rank of 2 if `axis=-1`.
		  weights: If non-None, must be the same shape as arr. For each value in
		    `arr`, the bin will be incremented by the corresponding weight instead of
		    1.
		  minlength: If given, ensures the output has length at least `minlength`,
		    padding with zeros at the end if necessary.
		  maxlength: If given, skips values in `arr` that are equal or greater than
		    `maxlength`, ensuring that the output has length at most `maxlength`.
		  dtype: If `weights` is None, determines the type of the output bins.
		  name: A name scope for the associated operations (optional).
		  axis: The axis to slice over. Axes at and below `axis` will be flattened
		    before bin counting. Currently, only `0`, and `-1` are supported. If None,
		    all axes will be flattened (identical to passing `0`).
		  binary_output: If True, this op will output 1 instead of the number of times
		    a token appears (equivalent to one_hot + reduce_any instead of one_hot +
		    reduce_add). Defaults to False.
		
		Returns:
		  A vector with the same dtype as `weights` or the given `dtype`. The bin
		  values.
		
		Raises:
		  `InvalidArgumentError` if negative values are provided as an input.
	**/
	static public function bincount(arr:Dynamic, ?weights:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?binary_output:Dynamic):Dynamic;
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
	/**
		Computes the confusion matrix from predictions and labels.
		
		The matrix columns represent the prediction labels and the rows represent the
		real labels. The confusion matrix is always a 2-D array of shape `[n, n]`,
		where `n` is the number of valid labels for a given classification task. Both
		prediction and labels must be 1-D arrays of the same shape in order for this
		function to work.
		
		If `num_classes` is `None`, then `num_classes` will be set to one plus the
		maximum value in either predictions or labels. Class labels are expected to
		start at 0. For example, if `num_classes` is 3, then the possible labels
		would be `[0, 1, 2]`.
		
		If `weights` is not `None`, then each prediction contributes its
		corresponding weight to the total value of the confusion matrix cell.
		
		For example:
		
		```python
		  tf.math.confusion_matrix([1, 2, 4], [2, 2, 4]) ==>
		      [[0 0 0 0 0]
		       [0 0 1 0 0]
		       [0 0 1 0 0]
		       [0 0 0 0 0]
		       [0 0 0 0 1]]
		```
		
		Note that the possible labels are assumed to be `[0, 1, 2, 3, 4]`,
		resulting in a 5x5 confusion matrix.
		
		Args:
		  labels: 1-D `Tensor` of real labels for the classification task.
		  predictions: 1-D `Tensor` of predictions for a given classification.
		  num_classes: The possible number of labels the classification task can
		               have. If this value is not provided, it will be calculated
		               using both predictions and labels array.
		  weights: An optional `Tensor` whose shape matches `predictions`.
		  dtype: Data type of the confusion matrix.
		  name: Scope name.
		
		Returns:
		  A `Tensor` of type `dtype` with shape `[n, n]` representing the confusion
		  matrix, where `n` is the number of possible labels in the classification
		  task.
		
		Raises:
		  ValueError: If both predictions and labels are not 1-D vectors and have
		    mismatched shapes, or if `weights` is not `None` and its shape doesn't
		    match `predictions`.
	**/
	static public function confusion_matrix(labels:Dynamic, predictions:Dynamic, ?num_classes:Dynamic, ?weights:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function count_nonzero(input:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function divide_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Computes the complementary error function of `x` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function erfc(x:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Says whether the targets are in the top `K` predictions.
		
		This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
		prediction for the target class is finite (not inf, -inf, or nan) and among
		the top `k` predictions among all predictions for example `i`. Note that the
		behavior of `InTopK` differs from the `TopK` op in its handling of ties; if
		multiple classes have the same prediction value and straddle the top-`k`
		boundary, all of those classes are considered to be in the top `k`.
		
		More formally, let
		
		  \\(predictions_i\\) be the predictions for all classes for example `i`,
		  \\(targets_i\\) be the target class for example `i`,
		  \\(out_i\\) be the output for example `i`,
		
		$$out_i = predictions_{i, targets_i} \in TopKIncludingTies(predictions_i)$$
		
		Args:
		  predictions: A `Tensor` of type `float32`.
		    A `batch_size` x `classes` tensor.
		  targets: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `batch_size` vector of class ids.
		  k: An `int`. Number of top elements to look at for computing precision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`. Computed Precision at `k` as a `bool Tensor`.
	**/
	static public function in_top_k(targets:Dynamic, predictions:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse permutation of a tensor.
		
		This operation computes the inverse of an index permutation. It takes a 1-D
		integer tensor `x`, which represents the indices of a zero-based array, and
		swaps each value with its index position. In other words, for an output tensor
		`y` and an input tensor `x`, this operation computes the following:
		
		`y[x[i]] = i for i in [0, 1, ..., len(x) - 1]`
		
		The values must include 0. There can be no duplicate values or negative values.
		
		For example:
		
		```
		# tensor `x` is [3, 4, 0, 2, 1]
		invert_permutation(x) ==> [2, 4, 3, 0, 1]
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function invert_permutation(x:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Normalizes along dimension `axis` using an L2 norm. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For a 1-D tensor with `axis = 0`, computes
		
		    output = x / sqrt(max(sum(x**2), epsilon))
		
		For `x` with more dimensions, independently normalizes each 1-D slice along
		dimension `axis`.
		
		1-D tensor example:
		>>> x = tf.constant([3.0, 4.0])
		>>> tf.math.l2_normalize(x).numpy()
		array([0.6, 0.8], dtype=float32)
		
		2-D tensor example:
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 0).numpy()
		array([[0.6],
		     [0.8]], dtype=float32)
		
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 1).numpy()
		array([[1.],
		     [1.]], dtype=float32)
		
		Args:
		  x: A `Tensor`.
		  axis: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		  dim: Deprecated, do not use.
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes \\(ln(|Beta(x)|)\\), reducing along the last dimension.
		
		Given one-dimensional $z = [z_1,...,z_K]$, we define
		
		$$Beta(z) = \frac{\prod_j \Gamma(z_j)}{\Gamma(\sum_j z_j)},$$
		
		where $\Gamma$ is the gamma function.
		
		And for $n + 1$ dimensional $x$ with shape $[N_1, ..., N_n, K]$, we define
		
		$$lbeta(x)[i_1, ..., i_n] = \log{|Beta(x[i_1, ..., i_n, :])|}.$$
		
		In other words, the last dimension is treated as the $z$ vector.
		
		Note that if $z = [u, v]$, then
		
		$$Beta(z) = \frac{\Gamma(u)\Gamma(v)}{\Gamma(u + v)}
		  = \int_0^1 t^{u-1} (1 - t)^{v-1} \mathrm{d}t,$$
		
		which defines the traditional bivariate beta function.
		
		If the last dimension is empty, we follow the convention that the sum over
		the empty set is zero, and the product is one.
		
		Args:
		  x: A rank `n + 1` `Tensor`, `n >= 0` with type `float`, or `double`.
		  name: A name for the operation (optional).
		
		Returns:
		  The logarithm of \\(|Beta(x)|\\) reducing along the last dimension.
	**/
	static public function lbeta(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes log softmax activations.
		
		For each batch `i` and class `j` we have
		
		    logsoftmax = logits - log(reduce_sum(exp(logits), axis))
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function log_softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function reciprocal(x:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Computes softmax activations.
		
		Used for multi-class predictions. The sum of all outputs generated by softmax
		is 1.
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Example usage:
		
		>>> softmax = tf.nn.softmax([-1, 0., 1.])
		>>> softmax
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0.09003057, 0.24472848, 0.66524094], dtype=float32)>
		>>> sum(softmax)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes softsign: `features / (abs(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softsign(features:Dynamic, ?name:Dynamic):Dynamic;
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
		Finds values and indices of the `k` largest entries for the last dimension.
		
		If the input is a vector (rank=1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		>>> result = tf.math.top_k([1, 2, 98, 1, 1, 99, 3, 1, 3, 96, 4, 1],
		...                         k=3)
		>>> result.values.numpy()
		array([99, 98, 96], dtype=int32)
		>>> result.indices.numpy()
		array([5, 2, 9], dtype=int32)
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		>>> input = tf.random.normal(shape=(3,4,5,6))
		>>> k = 2
		>>> values, indices  = tf.math.top_k(input, k=k)
		>>> values.shape.as_list()
		[3, 4, 5, 2]
		>>>
		>>> values.shape == indices.shape == input.shape[:-1] + [k]
		True
		
		The indices can be used to `gather` from a tensor who's shape matches `input`.
		
		>>> gathered_values = tf.gather(input, indices, batch_dims=-1)
		>>> assert tf.reduce_all(gathered_values == values)
		
		If two elements are equal, the lower-index element appears first.
		
		>>> result = tf.math.top_k([1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0],
		...                        k=3)
		>>> result.indices.numpy()
		array([0, 1, 3], dtype=int32)
		
		Args:
		  input: 1-D or higher `Tensor` with last dimension at least `k`.
		  k: 0-D `int32` `Tensor`.  Number of top elements to look for along the last
		    dimension (along each row for matrices).
		  sorted: If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: Optional name for the operation.
		
		Returns:
		  A tuple with two named fields:
		  values: The `k` largest elements along each last dimensional slice.
		  indices: The indices of `values` within the last dimension of `input`.
	**/
	static public function top_k(input:Dynamic, ?k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Returns the fraction of zeros in `value`.
		
		If `value` is empty, the result is `nan`.
		
		This is useful in summaries to measure and report sparsity.  For example,
		
		```python
		    z = tf.nn.relu(...)
		    summ = tf.compat.v1.summary.scalar('sparsity', tf.nn.zero_fraction(z))
		```
		
		Args:
		  value: A tensor of numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  The fraction of zeros in `value`, with type `float32`.
	**/
	static public function zero_fraction(value:Dynamic, ?name:Dynamic):Dynamic;
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
}