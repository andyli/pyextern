/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.math;
@:pythonImport("tensorflow._api.v1.compat.v1.math") extern class Math_Module {
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
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float32` or `float64` that is the absolute value of each element in `x`. All
		elements in `x` must be complex numbers of the form \\(a + bj\\). The
		absolute value is computed as \\( \sqrt{a^2 + b^2}\\).  For example:
		```python
		x = tf.constant([[-2.25 + 4.75j], [-3.25 + 5.75j]])
		tf.abs(x)  # [5.25594902, 6.60492229]
		```
		
		Args:
		  x: A `Tensor` or `SparseTensor` of type `float16`, `float32`, `float64`,
		    `int32`, `int64`, `complex64` or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` the same size and type as `x` with absolute
		    values.
		  Note, for `complex64` or `complex128` input, the returned `Tensor` will be
		    of type `float32` or `float64`, respectively.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.abs(x.values, ...), x.dense_shape)`
	**/
	static public function abs(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the element-wise sum of a list of tensors.
		
		Optionally, pass `shape` and `tensor_dtype` for shape and type checking,
		otherwise, these are inferred.
		
		`tf.math.accumulate_n` performs the same operation as `tf.add_n`, but does not
		wait for all of its inputs to be ready before beginning to sum. This can
		save memory if inputs are ready at different times, since minimum temporary
		storage is proportional to the output size rather than the inputs size.
		
		`accumulate_n` is differentiable (but wasn't previous to TensorFlow 1.7).
		
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
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function acos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic cosine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function acosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `math.add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `string`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function add(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds all input tensors element-wise.
		
		Converts `IndexedSlices` objects into dense tensors prior to adding.
		
		Args:
		  inputs: A list of `Tensor` or `IndexedSlices` objects, each with same shape
		    and type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of same shape and type as the elements of `inputs`.
		
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
		# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		tf.angle(input) ==> [2.0132, 1.056]
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
		Returns the index with the largest value across axes of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dimension)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		Returns the index with the smallest value across axes of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dimension)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		Computes asin of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes inverse hyperbolic sine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asinh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes atan of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function atan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes arctangent of `y/x` element-wise, respecting signs of the arguments.
		
		This is the angle \( \theta \in [-\pi, \pi] \) such that
		\[ x = r \cos(\theta) \]
		and
		\[ y = r \sin(\theta) \]
		where \(r = \sqrt(x^2 + y^2) \).
		
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
		
		Exponentially scaled modified Bessel function of order 0 defined as
		`bessel_i0e(x) = exp(-abs(x)) bessel_i0(x)`.
		
		This function is faster and numerically stabler than `bessel_i0(x)`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.bessel_i0e(x.values, ...), x.dense_shape)`
	**/
	static public function bessel_i0e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		It is preferable to use the numerically stabler function `i1e(x)` instead.
		
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
		
		Exponentially scaled modified Bessel function of order 0 defined as
		`bessel_i1e(x) = exp(-abs(x)) bessel_i1(x)`.
		
		This function is faster and numerically stabler than `bessel_i1(x)`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
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
		
		Args:
		  arr: An int32 tensor of non-negative values.
		  weights: If non-None, must be the same shape as arr. For each value in
		    `arr`, the bin will be incremented by the corresponding weight instead of
		    1.
		  minlength: If given, ensures the output has length at least `minlength`,
		    padding with zeros at the end if necessary.
		  maxlength: If given, skips values in `arr` that are equal or greater than
		    `maxlength`, ensuring that the output has length at most `maxlength`.
		  dtype: If `weights` is None, determines the type of the output bins.
		
		Returns:
		  A vector with the same dtype as `weights` or the given `dtype`. The bin
		  values.
	**/
	static public function bincount(arr:Dynamic, ?weights:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns element-wise smallest integer not less than x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
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
		  tf.confusion_matrix([1, 2, 4], [2, 2, 4]) ==>
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
		  num_classes: The possible number of labels the classification task can have.
		    If this value is not provided, it will be calculated using both
		    predictions and labels array.
		  dtype: Data type of the confusion matrix.
		  name: Scope name.
		  weights: An optional `Tensor` whose shape matches `predictions`.
		
		Returns:
		  A `Tensor` of type `dtype` with shape `[n, n]` representing the confusion
		  matrix, where `n` is the number of possible labels in the classification
		  task.
		
		Raises:
		  ValueError: If both predictions and labels are not 1-D vectors and have
		    mismatched shapes, or if `weights` is not `None` and its shape doesn't
		    match `predictions`.
	**/
	static public function confusion_matrix(labels:Dynamic, predictions:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Returns the complex conjugate of a complex number.
		
		Given a tensor `input` of complex numbers, this operation returns a tensor of
		complex numbers that are the complex conjugate of each element in `input`. The
		complex numbers in `input` must be of the form \\(a + bj\\), where *a* is the
		real part and *b* is the imaginary part.
		
		The complex conjugate returned by this operation is of the form \\(a - bj\\).
		
		For example:
		
		    # tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
		    tf.math.conj(input) ==> [-2.25 - 4.75j, 3.25 - 5.75j]
		
		If `x` is real, it is returned unchanged.
		
		Args:
		  x: `Tensor` to conjugate.  Must have numeric or variant type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that is the conjugate of `x` (with the same type).
		
		Raises:
		  TypeError: If `x` is not a numeric tensor.
	**/
	static public function conj(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes cos of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic cosine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cosh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes number of nonzero elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
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
		tf.count_nonzero(x)  # 3
		tf.count_nonzero(x, 0)  # [1, 2, 0]
		tf.count_nonzero(x, 1)  # [1, 2]
		tf.count_nonzero(x, 1, keepdims=True)  # [[1], [2]]
		tf.count_nonzero(x, [0, 1])  # 3
		```
		
		**NOTE** Strings are compared against zero-length empty string `""`. Any
		string with a size greater than zero is already considered as nonzero.
		
		For example:
		```python
		x = tf.constant(["", "a", "  ", "b", ""])
		tf.count_nonzero(x) # 3, with "a", "  ", and "b" as nonzero strings.
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should be of numeric type, `bool`,
		    or `string`.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  dtype: The output dtype; defaults to `tf.int64`.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor (number of nonzero values).
	**/
	static public function count_nonzero(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
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
		
		```python
		tf.cumsum([a, b, c])  # [a, a + b, a + b + c]
		```
		
		By setting the `exclusive` kwarg to `True`, an exclusive cumsum is performed
		instead:
		
		```python
		tf.cumsum([a, b, c], exclusive=True)  # [0, a, a + b]
		```
		
		By setting the `reverse` kwarg to `True`, the cumsum is performed in the
		opposite direction:
		
		```python
		tf.cumsum([a, b, c], reverse=True)  # [a + b + c, b + c, c]
		```
		
		This is more efficient than using separate `tf.reverse` ops.
		
		The `reverse` and `exclusive` kwargs can also be combined:
		
		```python
		tf.cumsum([a, b, c], exclusive=True, reverse=True)  # [b + c, c, 0]
		```
		
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
	**/
	static public function divide(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x == y) element-wise.
		
		*NOTE*: `math.equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `quint8`, `qint8`, `qint32`, `string`, `bool`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Gauss error function of `x` element-wise.
		
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
		Computes exponential of x element-wise.  \\(y = e^x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function exp(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes exponential of x - 1 element-wise.
		
		I.e., \\(y = (\exp x) - 1\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function expm1(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Divides `x / y` elementwise, rounding toward the most negative integer.
		
		The same as `tf.div(x,y)` for integers, but uses `tf.floor(tf.div(x,y))` for
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
		Returns the truth value of (x > y) element-wise.
		
		*NOTE*: `math.greater` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
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
		
		\\(Q(a, x) = Gamma(a, x) / Gamma(a) = 1 - P(a, x)\\)
		
		where
		
		\\(Gamma(a, x) = int_{x}^{\infty} t^{a-1} exp(-t) dt\\)
		
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
		Returns the imaginary part of a complex (or real) tensor.
		
		Given a tensor `input`, this operation returns a tensor of type `float` that
		is the imaginary part of each element in `input` considered as a complex
		number. If `input` is real, a tensor of all zeros is returned.
		
		For example:
		
		```python
		x = tf.constant([-2.25 + 4.75j, 3.25 + 5.75j])
		tf.imag(x)  # [4.75, 5.75]
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
		prediction for the target class is among the top `k` predictions among
		all predictions for example `i`. Note that the behavior of `InTopK` differs
		from the `TopK` op in its handling of ties; if multiple classes have the
		same prediction value and straddle the top-`k` boundary, all of those
		classes are considered to be in the top `k`.
		
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
	static public function in_top_k(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
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
		Normalizes along dimension `axis` using an L2 norm. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For a 1-D tensor with `axis = 0`, computes
		
		    output = x / sqrt(max(sum(x**2), epsilon))
		
		For `x` with more dimensions, independently normalizes each 1-D slice along
		dimension `axis`.
		
		Args:
		  x: A `Tensor`.
		  axis: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		  dim: Deprecated alias for axis.
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes \\(ln(|Beta(x)|)\\), reducing along the last dimension.
		
		Given one-dimensional `z = [z_0,...,z_{K-1}]`, we define
		
		$$Beta(z) = \prod_j Gamma(z_j) / Gamma(\sum_j z_j)$$
		
		And for `n + 1` dimensional `x` with shape `[N1, ..., Nn, K]`, we define
		$$lbeta(x)[i1, ..., in] = Log(|Beta(x[i1, ..., in, :])|)$$.
		
		In other words, the last dimension is treated as the `z` vector.
		
		Note that if `z = [u, v]`, then
		\\(Beta(z) = int_0^1 t^{u-1} (1 - t)^{v-1} dt\\), which defines the
		traditional bivariate beta function.
		
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
	**/
	static public function log_sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes log softmax activations. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For each batch `i` and class `j` we have
		
		    logsoftmax = logits - log(reduce_sum(exp(logits), axis))
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for `axis`.
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function log_softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Returns the truth value of x AND y element-wise.
		
		*NOTE*: `math.logical_and` supports broadcasting. More about broadcasting
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
		
		*NOTE*: `math.logical_or` supports broadcasting. More about broadcasting
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
		Returns the max of x and y (i.e. x > y ? x : y) element-wise.
		
		*NOTE*: `math.maximum` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function maximum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the min of x and y (i.e. x < y ? x : y) element-wise.
		
		*NOTE*: `math.minimum` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function minimum(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns x * y element-wise.
		
		*NOTE*: ``tf.multiply`` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function multiply(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \\(y = -x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.negative(x.values, ...), x.dense_shape)`
	**/
	static public function negative(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the truth value of (x != y) element-wise.
		
		*NOTE*: `math.not_equal` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `quint8`, `qint8`, `qint32`, `string`, `bool`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function not_equal(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the polygamma function \\(\psi^{(n)}(x)\\).
		
		The polygamma function is defined as:
		
		
		\\(\psi^{(n)}(x) = \frac{d^n}{dx^n} \psi(x)\\)
		
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
		Computes the elementwise value of a polynomial.
		
		If `x` is a tensor and `coeffs` is a list n + 1 tensors, this function returns
		the value of the n-th order polynomial
		
		   p(x) = coeffs[n-1] + coeffs[n-2] * x + ...  + coeffs[0] * x**(n-1)
		
		evaluated using Horner's method, i.e.
		
		   p(x) = coeffs[n-1] + x * (coeffs[n-2] + ... + x * (coeffs[1] +
		          x * coeffs[0]))
		
		Args:
		  coeffs: A list of `Tensor` representing the coefficients of the polynomial.
		  x: A `Tensor` representing the variable of the polynomial.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tensor` of the shape as the expression p(x) with usual broadcasting rules
		  for element-wise addition and multiplication applied.
		
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
		tf.real(x)  # [-2.25, 3.25]
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
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function reciprocal(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the "logical and" of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[True,  True], [False, False]])
		tf.reduce_all(x)  # False
		tf.reduce_all(x, 0)  # [False, False]
		tf.reduce_all(x, 1)  # [True, False]
		```
		
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
	static public function reduce_all(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the "logical or" of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[True,  True], [False, False]])
		tf.reduce_any(x)  # True
		tf.reduce_any(x, 0)  # [True, True]
		tf.reduce_any(x, 1)  # [True, False]
		```
		
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
	static public function reduce_any(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes log(sum(exp(elements across dimensions of a tensor))). (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
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
	static public function reduce_logsumexp(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the maximum of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		Args:
		  input_tensor: The tensor to reduce. Should have real numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name for the operation (optional).
		  reduction_indices: The old (deprecated) name for axis.
		  keep_dims: Deprecated alias for `keepdims`.
		
		Returns:
		  The reduced tensor.
		
		@compatibility(numpy)
		Equivalent to np.max
		@end_compatibility
	**/
	static public function reduce_max(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the mean of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[1., 1.], [2., 2.]])
		tf.reduce_mean(x)  # 1.5
		tf.reduce_mean(x, 0)  # [1.5, 1.5]
		tf.reduce_mean(x, 1)  # [1.,  2.]
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
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
		
		```python
		x = tf.constant([1, 0, 1, 0])
		tf.reduce_mean(x)  # 0
		y = tf.constant([1., 0., 1., 0.])
		tf.reduce_mean(y)  # 0.5
		```
		
		@end_compatibility
	**/
	static public function reduce_mean(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the minimum of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
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
		
		@compatibility(numpy)
		Equivalent to np.min
		@end_compatibility
	**/
	static public function reduce_min(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the product of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
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
	static public function reduce_prod(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the standard deviation of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[1., 2.], [3., 4.]])
		tf.reduce_std(x)  # 1.1180339887498949
		tf.reduce_std(x, 0)  # [1., 1.]
		tf.reduce_std(x, 1)  # [0.5,  0.5]
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name scope for the associated operations (optional).
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor.
		
		@compatibility(numpy)
		Equivalent to np.std
		
		Please note that `np.std` has a `dtype` parameter that could be used to
		specify the output type. By default this is `dtype=float64`. On the other
		hand, `tf.reduce_std` has an aggressive type inference from `input_tensor`,
		@end_compatibility
	**/
	static public function reduce_std(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the sum of elements across dimensions of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_dims)`. They will be removed in a future version.
		Instructions for updating:
		keep_dims is deprecated, use keepdims instead
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[1, 1, 1], [1, 1, 1]])
		tf.reduce_sum(x)  # 6
		tf.reduce_sum(x, 0)  # [2, 2, 2]
		tf.reduce_sum(x, 1)  # [3, 3]
		tf.reduce_sum(x, 1, keepdims=True)  # [[3], [3]]
		tf.reduce_sum(x, [0, 1])  # 6
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default),
		    reduces all dimensions. Must be in the range
		    `[-rank(input_tensor), rank(input_tensor))`.
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
	static public function reduce_sum(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes the variance of elements across dimensions of a tensor.
		
		Reduces `input_tensor` along the dimensions given in `axis`.
		Unless `keepdims` is true, the rank of the tensor is reduced by 1 for each
		entry in `axis`. If `keepdims` is true, the reduced dimensions
		are retained with length 1.
		
		If `axis` is None, all dimensions are reduced, and a
		tensor with a single element is returned.
		
		For example:
		
		```python
		x = tf.constant([[1., 2.], [3., 4.]])
		tf.reduce_variance(x)  # 1.25
		tf.reduce_variance(x, 0)  # [1., 1.]
		tf.reduce_variance(x, 1)  # [0.25,  0.25]
		```
		
		Args:
		  input_tensor: The tensor to reduce. Should have numeric type.
		  axis: The dimensions to reduce. If `None` (the default), reduces all
		    dimensions. Must be in the range `[-rank(input_tensor),
		    rank(input_tensor))`.
		  keepdims: If true, retains reduced dimensions with length 1.
		  name: A name scope for the associated operations (optional).
		
		Returns:
		  The reduced tensor, of the same dtype as the input_tensor.
		
		@compatibility(numpy)
		Equivalent to np.var
		
		Please note that `np.var` has a `dtype` parameter that could be used to
		specify the output type. By default this is `dtype=float64`. On the other
		hand, `tf.reduce_variance` has an aggressive type inference from
		`input_tensor`,
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
		
		I.e., \\(y = 1 / \sqrt{x}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function rsqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies a scalar times a `Tensor` or `IndexedSlices` object.
		
		Intended for use in gradient code which might deal with `IndexedSlices`
		objects, which are easy to multiply by a scalar but more expensive to
		multiply with arbitrary tensors.
		
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \max_j(data_j)\\) where `max` is over `j` such
		that `segment_ids[j] == i`.
		
		If the max is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMax.png" alt>
		</div>
		
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \frac{\sum_j data_j}{N}\\) where `mean` is
		over `j` such that `segment_ids[j] == i` and `N` is the total number of
		values summed.
		
		If the mean is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMean.png" alt>
		</div>
		
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \min_j(data_j)\\) where `min` is over `j` such
		that `segment_ids[j] == i`.
		
		If the min is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentMin.png" alt>
		</div>
		
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \prod_j data_j\\) where the product is over `j` such
		that `segment_ids[j] == i`.
		
		If the product is empty for a given segment ID `i`, `output[i] = 1`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentProd.png" alt>
		</div>
		
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Computes a tensor such that
		\\(output_i = \sum_j data_j\\) where sum is over `j` such
		that `segment_ids[j] == i`.
		
		If the sum is empty for a given segment ID `i`, `output[i] = 0`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/SegmentSum.png" alt>
		</div>
		
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
		
		Specifically, `y = 1 / (1 + exp(-x))`.
		
		Args:
		  x: A Tensor with type `float16`, `float32`, `float64`, `complex64`,
		    or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.expit
		@end_compatibility
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an element-wise indication of the sign of a number.
		
		`y = sign(x) = -1` if `x < 0`; 0 if `x == 0`; 1 if `x > 0`.
		
		For complex numbers, `y = sign(x) = x / |x|` if `x != 0`, otherwise `y = 0`.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.sign(x.values, ...), x.dense_shape)`
	**/
	static public function sign(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sin of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic sine of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function sinh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax activations. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for `axis`.
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes softplus: `log(exp(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
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
		Computes square root of x element-wise.
		
		I.e., \\(y = \sqrt{x} = x^{1/2}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.sqrt(x.values, ...), x.dense_shape)`
	**/
	static public function sqrt(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes square of x element-wise.
		
		I.e., \\(y = x * x = x^2\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.square(x.values, ...), x.dense_shape)`
	**/
	static public function square(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns (x - y)(x - y) element-wise.
		
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
		
		*NOTE*: `Subtract` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function subtract(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes tan of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function tan(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
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
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		    values.shape = indices.shape = input.shape[:-1] + [k]
		
		If two elements are equal, the lower-index element appears first.
		
		Args:
		  input: 1-D or higher `Tensor` with last dimension at least `k`.
		  k: 0-D `int32` `Tensor`.  Number of top elements to look for along the last
		    dimension (along each row for matrices).
		  sorted: If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: Optional name for the operation.
		
		Returns:
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
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
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of `data.shape`.END
		      }
		      out_arg {
		        name: "output"
		        description: <<END
		    Has same shape as data, except for the first `segment_ids.rank`
		    dimensions, which are replaced with a single dimension which has size
		    `num_segments`.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function unsorted_segment_max(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the mean along segments of a tensor.
		
		Read [the section on
		segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[here](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
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
		  num_segments: An integer scalar `Tensor`.  The number of distinct
		    segment IDs.
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the minimum such that:
		
		\\(output_i = \min_{j...} data_[j...]\\) where min is over tuples `j...` such
		that `segment_ids[j...] == i`.
		
		If the minimum is empty for a given segment ID `i`, it outputs the largest
		possible value for the specific numeric type,
		`output[i] = numeric_limits<T>::max()`.
		
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[(here)](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
		Instead of computing the sum over segments, it computes the product of all
		entries belonging to a segment such that:
		
		\\(output_i = \prod_{j...} data[j...]\\) where the product is over tuples
		`j...` such that `segment_ids[j...] == i`.
		
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
		segmentation](https://tensorflow.org/api_guides/python/math_ops#segmentation)
		for an explanation of segments.
		
		This operator is similar to the unsorted segment sum operator found
		[here](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
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
		  num_segments: An integer scalar `Tensor`.  The number of distinct
		    segment IDs.
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
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
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
		    summ = tf.summary.scalar('sparsity', tf.nn.zero_fraction(z))
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