/* This file is generated, do not edit! */
package tensorflow.contrib.quantization;
@:pythonImport("tensorflow.contrib.quantization") extern class Quantization_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function accumulate_nv2
	**/
	static public function accumulate_nv2_eager_fallback(inputs:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function acos
	**/
	static public function acos_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function acosh
	**/
	static public function acosh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function add
	**/
	static public function add_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Add all input tensors element wise.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type in: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `variant`.
		    Must all be the same size and shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function add_n(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function add_n
	**/
	static public function add_n_eager_fallback(inputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function add_v2(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function add_v2
	**/
	static public function add_v2_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function angle
	**/
	static public function angle_eager_fallback(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function approximate_equal
	**/
	static public function approximate_equal_eager_fallback(x:Dynamic, y:Dynamic, ?tolerance:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the index with the largest value across dimensions of a tensor.
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
	/**
		This is the slowpath function for Eager mode.
		This is for function arg_max
	**/
	static public function arg_max_eager_fallback(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the index with the smallest value across dimensions of a tensor.
		
		Note that in case of ties the identity of the return value is not guaranteed.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
	/**
		This is the slowpath function for Eager mode.
		This is for function arg_min
	**/
	static public function arg_min_eager_fallback(input:Dynamic, dimension:Dynamic, ?output_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function asin
	**/
	static public function asin_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function asinh
	**/
	static public function asinh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function atan2
	**/
	static public function atan2_eager_fallback(y:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function atan
	**/
	static public function atan_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function atanh
	**/
	static public function atanh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `value`.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of `value`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function avg_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D average pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, channels]` tensor to pool over.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function avg_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool3d
	**/
	static public function avg_pool3d_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients of average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    The original input dimensions.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Output backprop of shape `[batch, depth, rows, cols, channels]`.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function avg_pool3d_grad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool3d_grad
	**/
	static public function avg_pool3d_grad_eager_fallback(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool
	**/
	static public function avg_pool_eager_fallback(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the average pooling function.
		
		Args:
		  orig_input_shape: A `Tensor` of type `int32`.
		    1-D.  Shape of the original input to `avg_pool`.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients w.r.t.
		    the output of `avg_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of the input.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function avg_pool_grad(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function avg_pool_grad
	**/
	static public function avg_pool_grad_eager_fallback(orig_input_shape:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_mat_mul
	**/
	static public function batch_mat_mul_eager_fallback(x:Dynamic, y:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gradients for batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A 4D input Tensor.
		  m: A `Tensor`. Must have the same type as `t`.
		    A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  v: A `Tensor`. Must have the same type as `t`.
		    A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  gamma: A `Tensor`. Must have the same type as `t`.
		    A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this Tensor will be multiplied
		    with the normalized Tensor.
		  backprop: A `Tensor`. Must have the same type as `t`. 4D backprop Tensor.
		  variance_epsilon: A `float`. A small float number to avoid dividing by 0.
		  scale_after_normalization: A `bool`.
		    A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (dx, dm, dv, db, dg).
		
		  dx: A `Tensor`. Has the same type as `t`.
		  dm: A `Tensor`. Has the same type as `t`.
		  dv: A `Tensor`. Has the same type as `t`.
		  db: A `Tensor`. Has the same type as `t`.
		  dg: A `Tensor`. Has the same type as `t`.
	**/
	static public function batch_norm_with_global_normalization_grad(t:Dynamic, m:Dynamic, v:Dynamic, gamma:Dynamic, backprop:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_norm_with_global_normalization_grad
	**/
	static public function batch_norm_with_global_normalization_grad_eager_fallback(t:Dynamic, m:Dynamic, v:Dynamic, gamma:Dynamic, backprop:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function bessel_i0e
	**/
	static public function bessel_i0e_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function bessel_i1e
	**/
	static public function bessel_i1e_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function betainc
	**/
	static public function betainc_eager_fallback(a:Dynamic, b:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is a special case of `tf.add` where `bias` is restricted to be 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Any number of dimensions.
		  bias: A `Tensor`. Must have the same type as `value`.
		    1-D with size the last dimension of `value`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the bias tensor will be added to the last dimension
		    of the value tensor.
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		    The tensor will be added to "in_channels", the third-to-the-last
		        dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function bias_add(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bias_add
	**/
	static public function bias_add_eager_fallback(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		The backward operation for "BiasAdd" on the "bias" tensor.
		
		It accumulates all the values from out_backprop into the feature dimension.
		For NHWC data format, the feature dimension is the last. For NCHW data format,
		the feature dimension is the third-to-last.
		
		Args:
		  out_backprop: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Any number of dimensions.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the bias tensor will be added to the last dimension
		    of the value tensor.
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		    The tensor will be added to "in_channels", the third-to-the-last
		        dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `out_backprop`.
	**/
	static public function bias_add_grad(out_backprop:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bias_add_grad
	**/
	static public function bias_add_grad_eager_fallback(out_backprop:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is a deprecated version of BiasAdd and will be soon removed.
		
		This is a special case of `tf.add` where `bias` is restricted to be 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Any number of dimensions.
		  bias: A `Tensor`. Must have the same type as `value`.
		    1-D with size the last dimension of `value`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function bias_add_v1(value:Dynamic, bias:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bias_add_v1
	**/
	static public function bias_add_v1_eager_fallback(value:Dynamic, bias:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function bincount
	**/
	static public function bincount_eager_fallback(arr:Dynamic, size:Dynamic, weights:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function bucketize
	**/
	static public function bucketize_eager_fallback(input:Dynamic, boundaries:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function cast
	**/
	static public function cast_eager_fallback(x:Dynamic, DstT:Dynamic, ?Truncate:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function ceil
	**/
	static public function ceil_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Compare values of `input` to `threshold` and pack resulting bits into a `uint8`.
		
		Each comparison returns a boolean `true` (if `input_value > threshold`)
		or and `false` otherwise.
		
		This operation is useful for Locality-Sensitive-Hashing (LSH) and other
		algorithms that use hashing approximations of cosine and `L2` distances;
		codes can be generated from an input via:
		
		```python
		codebook_size = 50
		codebook_bits = codebook_size * 32
		codebook = tf.get_variable('codebook', [x.shape[-1].value, codebook_bits],
		                           dtype=x.dtype,
		                           initializer=tf.orthogonal_initializer())
		codes = compare_and_threshold(tf.matmul(x, codebook), threshold=0.)
		codes = tf.bitcast(codes, tf.int32)  # go from uint8 to int32
		# now codes has shape x.shape[:-1] + [codebook_size]
		```
		
		**NOTE**: Currently, the innermost dimension of the tensor must be divisible
		by 8.
		
		Given an `input` shaped `[s0, s1, ..., s_n]`, the output is
		a `uint8` tensor shaped `[s0, s1, ..., s_n / 8]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bool`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`.
		    Values to compare against `threshold` and bitpack.
		  threshold: A `Tensor`. Must have the same type as `input`.
		    Threshold to compare against.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function compare_and_bitpack(input:Dynamic, threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function compare_and_bitpack
	**/
	static public function compare_and_bitpack_eager_fallback(input:Dynamic, threshold:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the complex absolute value of a tensor.
		
		Given a tensor `x` of complex numbers, this operation returns a tensor of type
		`float` or `double` that is the absolute value of each element in `x`. All
		elements in `x` must be complex numbers of the form \\(a + bj\\). The absolute
		value is computed as \\( \sqrt{a^2 + b^2}\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		  Tout: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tout`.
	**/
	static public function complex_abs(x:Dynamic, ?Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function complex_abs
	**/
	static public function complex_abs_eager_fallback(x:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function conj
	**/
	static public function conj_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes a 2-D convolution given 4-D `input` and `filter` tensors.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, out_channels]`, this op
		performs the following:
		
		1. Flattens the filter to a 2-D matrix with shape
		   `[filter_height * filter_width * in_channels, output_channels]`.
		2. Extracts image patches from the input tensor to form a *virtual*
		   tensor of shape `[batch, out_height, out_width,
		   filter_height * filter_width * in_channels]`.
		3. For each patch, right-multiplies the filter matrix and the image patch
		   vector.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k] =
		        sum_{di, dj, q} input[b, strides[1] * i + di, strides[2] * j + dj, q] *
		                        filter[di, dj, q, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    A 4-D tensor. The dimension order is interpreted according to the value
		    of `data_format`, see below for details.
		  filter: A `Tensor`. Must have the same type as `input`.
		    A 4-D tensor of shape
		    `[filter_height, filter_width, in_channels, out_channels]`
		  strides: A list of `ints`.
		    1-D tensor of length 4.  The stride of the sliding window for each
		    dimension of `input`. The dimension order is determined by the value of
		    `data_format`, see below for details.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape `[batch, in_height, in_width, in_channels]`.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 4-D
		    `[filter_height, filter_width, in_channels, out_channels]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified with
		    format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv2d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv2d_backprop_filter
	**/
	static public function conv2d_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`,
		    where `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified with
		    format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function conv2d_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv2d_backprop_input
	**/
	static public function conv2d_backprop_input_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv2d
	**/
	static public function conv2d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filter` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, in_depth, in_height, in_width, in_channels]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    Shape `[filter_depth, filter_height, filter_width, in_channels,
		    out_channels]`. `in_channels` must match between `input` and `filter`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    Shape `[depth, rows, cols, in_channels, out_channels]`.
		    `in_channels` must match between `input` and `filter`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_filter
	**/
	static public function conv3d_backprop_filter_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 5-D
		    `[filter_depth, filter_height, filter_width, in_channels, out_channels]`
		    tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter_v2(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_filter_v2
	**/
	static public function conv3d_backprop_filter_v2_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    Shape `[depth, rows, cols, in_channels, out_channels]`.
		    `in_channels` must match between `input` and `filter`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_input(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_input
	**/
	static public function conv3d_backprop_input_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    An integer vector representing the tensor shape of `input`,
		    where `input` is a 5-D
		    `[batch, depth, rows, cols, in_channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[depth, rows, cols, in_channels, out_channels]`.
		    `in_channels` must match between `input` and `filter`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function conv3d_backprop_input_v2(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d_backprop_input_v2
	**/
	static public function conv3d_backprop_input_v2_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function conv3d
	**/
	static public function conv3d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function cos
	**/
	static public function cos_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function cosh
	**/
	static public function cosh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function cross
	**/
	static public function cross_eager_fallback(a:Dynamic, b:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function cumprod
	**/
	static public function cumprod_eager_fallback(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function cumsum
	**/
	static public function cumsum_eager_fallback(x:Dynamic, axis:Dynamic, ?exclusive:Dynamic, ?reverse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the dimension index in the destination data format given the one in
		
		the source data format.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor with each element as a dimension index in source data format.
		    Must be in the range [-4, 4).
		  src_format: An optional `string`. Defaults to `"NHWC"`.
		    source data format.
		  dst_format: An optional `string`. Defaults to `"NCHW"`.
		    destination data format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function data_format_dim_map(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function data_format_dim_map
	**/
	static public function data_format_dim_map_eager_fallback(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the permuted vector/tensor in the destination data format given the
		
		one in the source data format.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Vector of size 4 or Tensor of shape (4, 2) in source data format.
		  src_format: An optional `string`. Defaults to `"NHWC"`.
		    source data format.
		  dst_format: An optional `string`. Defaults to `"NCHW"`.
		    destination data format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function data_format_vec_permute(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function data_format_vec_permute
	**/
	static public function data_format_vec_permute_eager_fallback(x:Dynamic, ?src_format:Dynamic, ?dst_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Computes a 2-D depthwise convolution given 4-D `input` and `filter` tensors.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`, containing
		`in_channels` convolutional filters of depth 1, `depthwise_conv2d` applies
		a different filter to each input channel (expanding from 1 channel to
		`channel_multiplier` channels for each), then concatenates the results
		together. Thus, the output has `in_channels * channel_multiplier` channels.
		
		```
		for k in 0..in_channels-1
		  for q in 0..channel_multiplier-1
		    output[b, i, j, k * channel_multiplier + q] =
		      sum_{di, dj} input[b, strides[1] * i + di, strides[2] * j + dj, k] *
		                        filter[di, dj, k, q]
		```
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  filter: A `Tensor`. Must have the same type as `input`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_native(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape based on `data_format`.  For example, if
		    `data_format` is 'NHWC' then `input` is a 4-D `[batch, in_height,
		    in_width, in_channels]` tensor.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 4-D
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_native_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depthwise_conv2d_native_backprop_filter
	**/
	static public function depthwise_conv2d_native_backprop_filter_eager_fallback(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`, based
		    on `data_format`.  For example, if `data_format` is 'NHWC' then
		     `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function depthwise_conv2d_native_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depthwise_conv2d_native_backprop_input
	**/
	static public function depthwise_conv2d_native_backprop_input_eager_fallback(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depthwise_conv2d_native
	**/
	static public function depthwise_conv2d_native_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Dequantize the 'input' tensor into a float Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		if T == qint8: in[i] += (range(T) + 1)/ 2.0
		out[i] = min_range + (in[i]* (max_range - min_range) / range(T))
		```
		here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`
		
		*MIN_COMBINED Mode Example*
		
		If the input comes from a QuantizedRelu6, the output type is
		quint8 (range of 0-255) but the possible range of QuantizedRelu6 is
		0-6.  The min_range and max_range values are therefore 0.0 and 6.0.
		Dequantize on quint8 will take each value, cast to float, and multiply
		by 6 / 255.
		Note that if quantizedtype is qint8, the operation will additionally add
		each value by 128 prior to casting.
		
		If the mode is 'MIN_FIRST', then this approach is used:
		
		```c++
		num_discrete_values = 1 << (# of bits in T)
		range_adjust = num_discrete_values / (num_discrete_values - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = range / num_discrete_values
		const double offset_input = static_cast<double>(input) - lowest_quantized;
		result = range_min + ((input - numeric_limits<T>::min()) * range_scale)
		```
		
		*SCALED mode Example*
		
		`SCALED` mode matches the quantization approach used in
		`QuantizeAndDequantize{V2|V3}`.
		
		If the mode is `SCALED`, we do not use the full range of the output type,
		choosing to elide the lowest possible value for symmetry (e.g., output range is
		-127 to 127, not -128 to 127 for signed 8 bit quantization), so that 0.0 maps to
		0.
		
		We first find the range of values in our tensor. The
		range we use is always centered on 0, so we find m such that
		```c++
		  m = max(abs(input_min), abs(input_max))
		```
		
		Our input tensor range is then `[-m, m]`.
		
		Next, we choose our fixed-point quantization buckets, `[min_fixed, max_fixed]`.
		If T is signed, this is
		```
		  num_bits = sizeof(T) * 8
		  [min_fixed, max_fixed] =
		      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1]
		```
		
		Otherwise, if T is unsigned, the fixed-point range is
		```
		  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1]
		```
		
		From this we compute our scaling factor, s:
		```c++
		  s = (2 * m) / (max_fixed - min_fixed)
		```
		
		Now we can dequantize the elements of our tensor:
		```c++
		result = input * s
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function digamma
	**/
	static public function digamma_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the grayscale dilation of 4-D `input` and 3-D `filter` tensors.
		
		The `input` tensor has shape `[batch, in_height, in_width, depth]` and the
		`filter` tensor has shape `[filter_height, filter_width, depth]`, i.e., each
		input channel is processed independently of the others with its own structuring
		function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the output
		tensor depend on the `padding` algorithm. We currently only support the default
		"NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D dilation is the max-sum correlation
		(for consistency with `conv2d`, we use unmirrored filters):
		
		    output[b, y, x, c] =
		       max_{dy, dx} input[b,
		                          strides[1] * y + rates[1] * dy,
		                          strides[2] * x + rates[2] * dx,
		                          c] +
		                    filter[dy, dx, c]
		
		Max-pooling is a special case when the filter has size equal to the pooling
		kernel size and contains all zeros.
		
		Note on duality: The dilation of `input` by the `filter` is equal to the
		negation of the erosion of `-input` by the reflected `filter`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the input
		    tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    The input stride for atrous morphological dilation. Must be:
		    `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function dilation2d(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, out_height, out_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function dilation2d_backprop_filter(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dilation2d_backprop_filter
	**/
	static public function dilation2d_backprop_filter_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the gradient of morphological 2-D dilation with respect to the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, out_height, out_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function dilation2d_backprop_input(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dilation2d_backprop_input
	**/
	static public function dilation2d_backprop_input_eager_fallback(input:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function dilation2d
	**/
	static public function dilation2d_eager_fallback(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x / y element-wise.
		
		*NOTE*: `Div` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function div
	**/
	static public function div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns 0 if the denominator is zero.
		
		
		*NOTE*: `DivNoNan` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function div_no_nan(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function div_no_nan
	**/
	static public function div_no_nan_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes exponential linear: `exp(features) - 1` if < 0, `features` otherwise.
		
		See [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
		](http://arxiv.org/abs/1511.07289)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function elu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function elu
	**/
	static public function elu_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients for the exponential linear (Elu) operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding Elu operation.
		  outputs: A `Tensor`. Must have the same type as `gradients`.
		    The outputs of the corresponding Elu operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function elu_grad(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function elu_grad
	**/
	static public function elu_grad_eager_fallback(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function equal
	**/
	static public function equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function erf
	**/
	static public function erf_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function erfc
	**/
	static public function erfc_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function exp
	**/
	static public function exp_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function expm1
	**/
	static public function expm1_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function floor_div
	**/
	static public function floor_div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function floor
	**/
	static public function floor_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `floormod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `bfloat16`, `half`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function floor_mod(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function floor_mod
	**/
	static public function floor_mod_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs fractional average pooling on the input.
		
		Fractional average pooling is similar to Fractional max pooling in the pooling
		region generation step. The only difference is that after pooling regions are
		generated, a mean operation is performed instead of a max operation in each
		pooling region.
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length `>= 4`.
		    Pooling ratio for each dimension of `value`, currently only
		    supports row and col dimension and should be >= 1.0. For example, a valid
		    pooling ratio looks like [1.0, 1.44, 1.73, 1.0]. The first and last elements
		    must be 1.0 because we don't allow pooling on batch and channels
		    dimensions. 1.44 and 1.73 are pooling ratio on height and width dimensions
		    respectively.
		  pseudo_random: An optional `bool`. Defaults to `False`.
		    When set to True, generates the pooling sequence in a
		    pseudorandom fashion, otherwise, in a random fashion. Check paper [Benjamin
		    Graham, Fractional Max-Pooling](http://arxiv.org/abs/1412.6071) for
		    difference between pseudorandom and random.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [41/3, 26/3] for fractional avg pooling.
		  deterministic: An optional `bool`. Defaults to `False`.
		    When set to True, a fixed pooling region will be used when
		    iterating over a FractionalAvgPool node in the computation graph. Mainly used
		    in unit test to make FractionalAvgPool deterministic.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, row_pooling_sequence, col_pooling_sequence).
		
		  output: A `Tensor`. Has the same type as `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
	**/
	static public function fractional_avg_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_avg_pool
	**/
	static public function fractional_avg_pool_eager_fallback(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradient of the FractionalAvgPool function.
		
		Unlike FractionalMaxPoolGrad, we don't need to find arg_max for
		FractionalAvgPoolGrad, we just need to evenly back-propagate each element of
		out_backprop to those indices that form the same pooling cell. Therefore, we
		just need to know the shape of original input tensor, instead of the whole
		tensor.
		
		Args:
		  orig_input_tensor_shape: A `Tensor` of type `int64`.
		    Original input tensor shape for `fractional_avg_pool`
		  out_backprop: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients
		    w.r.t. the output of `fractional_avg_pool`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		    row pooling sequence, form pooling region with
		    col_pooling_sequence.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		    column pooling sequence, form pooling region with
		    row_pooling sequence.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [41/3, 26/3] for fractional avg pooling.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `out_backprop`.
	**/
	static public function fractional_avg_pool_grad(orig_input_tensor_shape:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_avg_pool_grad
	**/
	static public function fractional_avg_pool_grad_eager_fallback(orig_input_tensor_shape:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs fractional max pooling on the input.
		
		Fractional max pooling is slightly different than regular max pooling.  In
		regular max pooling, you downsize an input set by taking the maximum value of
		smaller N x N subsections of the set (often 2x2), and try to reduce the set by
		a factor of N, where N is an integer.  Fractional max pooling, as you might
		expect from the word "fractional", means that the overall reduction ratio N
		does not have to be an integer.
		
		The sizes of the pooling regions are generated randomly but are fairly uniform.
		For example, let's look at the height dimension, and the constraints on the
		list of rows that will be pool boundaries.
		
		First we define the following:
		
		1.  input_row_length : the number of rows from the input set
		2.  output_row_length : which will be smaller than the input
		3.  alpha = input_row_length / output_row_length : our reduction ratio
		4.  K = floor(alpha)
		5.  row_pooling_sequence : this is the result list of pool boundary rows
		
		Then, row_pooling_sequence should satisfy:
		
		1.  a[0] = 0 : the first value of the sequence is 0
		2.  a[end] = input_row_length : the last value of the sequence is the size
		3.  K <= (a[i+1] - a[i]) <= K+1 : all intervals are K or K+1 size
		4.  length(row_pooling_sequence) = output_row_length+1
		
		For more details on fractional max pooling, see this paper:
		[Benjamin Graham, Fractional Max-Pooling](http://arxiv.org/abs/1412.6071)
		
		Args:
		  value: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length `>= 4`.
		    Pooling ratio for each dimension of `value`, currently only
		    supports row and col dimension and should be >= 1.0. For example, a valid
		    pooling ratio looks like [1.0, 1.44, 1.73, 1.0]. The first and last elements
		    must be 1.0 because we don't allow pooling on batch and channels
		    dimensions. 1.44 and 1.73 are pooling ratio on height and width dimensions
		    respectively.
		  pseudo_random: An optional `bool`. Defaults to `False`.
		    When set to True, generates the pooling sequence in a
		    pseudorandom fashion, otherwise, in a random fashion. Check paper [Benjamin
		    Graham, Fractional Max-Pooling](http://arxiv.org/abs/1412.6071) for
		    difference between pseudorandom and random.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [20, 16] for fractional max pooling.
		  deterministic: An optional `bool`. Defaults to `False`.
		    When set to True, a fixed pooling region will be used when
		    iterating over a FractionalMaxPool node in the computation graph. Mainly used
		    in unit test to make FractionalMaxPool deterministic.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, row_pooling_sequence, col_pooling_sequence).
		
		  output: A `Tensor`. Has the same type as `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
	**/
	static public function fractional_max_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_max_pool
	**/
	static public function fractional_max_pool_eager_fallback(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradient of the FractionalMaxPool function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`.
		    Original input for `fractional_max_pool`
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    Original output for `fractional_max_pool`
		  out_backprop: A `Tensor`. Must have the same type as `orig_input`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients
		    w.r.t. the output of `fractional_max_pool`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		    row pooling sequence, form pooling region with
		    col_pooling_sequence.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		    column pooling sequence, form pooling region with
		    row_pooling sequence.
		  overlapping: An optional `bool`. Defaults to `False`.
		    When set to True, it means when pooling, the values at the boundary
		    of adjacent pooling cells are used by both cells. For example:
		
		    `index  0  1  2  3  4`
		
		    `value  20 5  16 3  7`
		
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used twice.
		    The result would be [20, 16] for fractional max pooling.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function fractional_max_pool_grad(orig_input:Dynamic, orig_output:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fractional_max_pool_grad
	**/
	static public function fractional_max_pool_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, out_backprop:Dynamic, row_pooling_sequence:Dynamic, col_pooling_sequence:Dynamic, ?overlapping:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gradient for batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  y_backprop: A `Tensor`. Must be one of the following types: `float32`.
		    A 4D Tensor for the gradient with respect to y.
		  x: A `Tensor`. Must have the same type as `y_backprop`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must have the same type as `y_backprop`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  reserve_space_1: A `Tensor`. Must have the same type as `y_backprop`.
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `y_backprop`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_3, reserve_space_4).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  offset_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  reserve_space_3: A `Tensor`. Has the same type as `y_backprop`.
		  reserve_space_4: A `Tensor`. Has the same type as `y_backprop`.
	**/
	static public function fused_batch_norm_grad(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_batch_norm_grad
	**/
	static public function fused_batch_norm_grad_eager_fallback(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gradient for batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  y_backprop: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for the gradient with respect to y.
		  x: A `Tensor`. Must have the same type as `y_backprop`.
		    A 4D Tensor for input data.
		  scale: A `Tensor` of type `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  reserve_space_1: A `Tensor`. Must be one of the following types: `float32`.
		    When is_training is True, a 1D Tensor for the computed batch
		    mean to be reused in gradient computation. When is_training is
		    False, a 1D Tensor for the population mean to be reused in both
		    1st and 2nd order gradient computation.
		  reserve_space_2: A `Tensor`. Must have the same type as `reserve_space_1`.
		    When is_training is True, a 1D Tensor for the computed batch
		    variance (inverted variance in the cuDNN case) to be reused in
		    gradient computation. When is_training is False, a 1D Tensor
		    for the population variance to be reused in both 1st and 2nd
		    order gradient computation.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for y_backprop, x, x_backprop.
		    Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_backprop, scale_backprop, offset_backprop, reserve_space_3, reserve_space_4).
		
		  x_backprop: A `Tensor`. Has the same type as `y_backprop`.
		  scale_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  offset_backprop: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_3: A `Tensor`. Has the same type as `reserve_space_1`.
		  reserve_space_4: A `Tensor`. Has the same type as `reserve_space_1`.
	**/
	static public function fused_batch_norm_grad_v2(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_batch_norm_grad_v2
	**/
	static public function fused_batch_norm_grad_v2_eager_fallback(y_backprop:Dynamic, x:Dynamic, scale:Dynamic, reserve_space_1:Dynamic, reserve_space_2:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		Note that the size of 4D Tensors are defined by either "NHWC" or "NCHW".
		The size of 1D Tensors matches the dimension C of the 4D Tensors.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    A 4D Tensor for input data.
		  scale: A `Tensor`. Must be one of the following types: `float32`.
		    A 1D Tensor for scaling factor, to scale the normalized x.
		  offset: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for offset, to shift to the normalized x.
		  mean: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population mean. Used for inference only;
		    must be empty for training.
		  variance: A `Tensor`. Must have the same type as `scale`.
		    A 1D Tensor for population variance. Used for inference only;
		    must be empty for training.
		  epsilon: An optional `float`. Defaults to `0.0001`.
		    A small float number added to the variance of x.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    The data format for x and y. Either "NHWC" (default) or "NCHW".
		  is_training: An optional `bool`. Defaults to `True`.
		    A bool value to indicate the operation is for training (default)
		    or inference.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, batch_mean, batch_variance, reserve_space_1, reserve_space_2).
		
		  y: A `Tensor`. Has the same type as `x`.
		  batch_mean: A `Tensor`. Has the same type as `scale`.
		  batch_variance: A `Tensor`. Has the same type as `scale`.
		  reserve_space_1: A `Tensor`. Has the same type as `scale`.
		  reserve_space_2: A `Tensor`. Has the same type as `scale`.
	**/
	static public function fused_batch_norm_v2(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_batch_norm_v2
	**/
	static public function fused_batch_norm_v2_eager_fallback(x:Dynamic, scale:Dynamic, offset:Dynamic, mean:Dynamic, variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs a padding as a preprocess during a convolution.
		
		Similar to FusedResizeAndPadConv2d, this op allows for an optimized
		implementation where the spatial padding transformation stage is fused with the
		im2col lookup, but in this case without the bilinear filtering required for
		resizing. Fusing the padding prevents the need to write out the intermediate
		results as whole tensors, reducing memory pressure, and we can get some latency
		gains by merging the transformation calculations.
		The data_format attribute for Conv2D isn't supported by this op, and 'NHWC'
		order is used instead.
		Internally this op uses a single per-graph scratch buffer, which means that it
		will block if multiple versions are being run in parallel. This is because this
		operator is primarily an optimization to minimize memory usage.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    4-D with shape `[batch, in_height, in_width, in_channels]`.
		  paddings: A `Tensor` of type `int32`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  filter: A `Tensor`. Must have the same type as `input`. 4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`. Must be in the same order as the dimension specified with format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fused_pad_conv2d(input:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_pad_conv2d
	**/
	static public function fused_pad_conv2d_eager_fallback(input:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs a resize and padding as a preprocess during a convolution.
		
		It's often possible to do spatial transformations more efficiently as part of
		the packing stage of a convolution, so this op allows for an optimized
		implementation where these stages are fused together. This prevents the need to
		write out the intermediate results as whole tensors, reducing memory pressure,
		and we can get some latency gains by merging the transformation calculations.
		The data_format attribute for Conv2D isn't supported by this op, and defaults to
		'NHWC' order.
		Internally this op uses a single per-graph scratch buffer, which means that it
		will block if multiple versions are being run in parallel. This is because this
		operator is primarily an optimization to minimize memory usage.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    4-D with shape `[batch, in_height, in_width, in_channels]`.
		  size: A `Tensor` of type `int32`.
		    A 1-D int32 Tensor of 2 elements: `new_height, new_width`.  The
		    new size for the images.
		  paddings: A `Tensor` of type `int32`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  filter: A `Tensor`. Must have the same type as `input`. 4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`. Must be in the same order as the dimension specified with format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  resize_align_corners: An optional `bool`. Defaults to `False`.
		    If true, the centers of the 4 corner pixels of the input and output tensors are
		    aligned, preserving the values at the corner pixels. Defaults to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fused_resize_and_pad_conv2d(input:Dynamic, size:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?resize_align_corners:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_resize_and_pad_conv2d
	**/
	static public function fused_resize_and_pad_conv2d_eager_fallback(input:Dynamic, size:Dynamic, paddings:Dynamic, filter:Dynamic, mode:Dynamic, strides:Dynamic, padding:Dynamic, ?resize_align_corners:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function greater
	**/
	static public function greater_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function greater_equal
	**/
	static public function greater_equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function igamma
	**/
	static public function igamma_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function igamma_grad_a
	**/
	static public function igamma_grad_a_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function igammac
	**/
	static public function igammac_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function imag
	**/
	static public function imag_eager_fallback(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  A `Tensor` of type `bool`.
	**/
	static public function in_top_k(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function in_top_k
	**/
	static public function in_top_k_eager_fallback(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  k: A `Tensor`. Must have the same type as `targets`.
		    Number of top elements to look at for computing precision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function in_top_kv2(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function in_top_kv2
	**/
	static public function in_top_kv2_eager_fallback(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the reciprocal of x element-wise.
		
		I.e., \\(y = 1 / x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inv(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function inv
	**/
	static public function inv_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function inv_grad
	**/
	static public function inv_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function is_finite
	**/
	static public function is_finite_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function is_inf
	**/
	static public function is_inf_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function is_nan
	**/
	static public function is_nan_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		L2 Loss.
		
		Computes half the L2 norm of a tensor without the `sqrt`:
		
		    output = sum(t ** 2) / 2
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Typically 2-D, but may have any dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function l2_loss(t:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function l2_loss
	**/
	static public function l2_loss_eager_fallback(t:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, features * alpha)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  alpha: An optional `float`. Defaults to `0.2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function leaky_relu(features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function leaky_relu
	**/
	static public function leaky_relu_eager_fallback(features:Dynamic, ?alpha:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear gradients for a LeakyRelu operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding LeakyRelu operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding LeakyRelu operation,
		    OR the outputs of that operation (both work equivalently).
		  alpha: An optional `float`. Defaults to `0.2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function leaky_relu_grad(gradients:Dynamic, features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function leaky_relu_grad
	**/
	static public function leaky_relu_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?alpha:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function less
	**/
	static public function less_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function less_equal
	**/
	static public function less_equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function lgamma
	**/
	static public function lgamma_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  start: A `Tensor`. Must be one of the following types: `bfloat16`, `float32`, `float64`.
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lin_space
	**/
	static public function lin_space_eager_fallback(start:Dynamic, stop:Dynamic, num:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function log1p
	**/
	static public function log1p_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function log
	**/
	static public function log_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes log softmax activations.
		
		For each batch `i` and class `j` we have
		
		    logsoftmax[i, j] = logits[i, j] - log(sum(exp(logits[i])))
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    2-D with shape `[batch_size, num_classes]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`.
	**/
	static public function log_softmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function log_softmax
	**/
	static public function log_softmax_eager_fallback(logits:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function logical_and
	**/
	static public function logical_and_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function logical_not
	**/
	static public function logical_not_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function logical_or
	**/
	static public function logical_or_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Local Response Normalization.
		
		The 4-D `input` tensor is treated as a 3-D array of 1-D vectors (along the last
		dimension), and each vector is normalized independently.  Within a given vector,
		each component is divided by the weighted, squared sum of inputs within
		`depth_radius`.  In detail,
		
		    sqr_sum[a, b, c, d] =
		        sum(input[a, b, c, d - depth_radius : d + depth_radius + 1] ** 2)
		    output = input / (bias + alpha * sqr_sum) ** beta
		
		For details, see [Krizhevsky et al., ImageNet classification with deep
		convolutional neural networks (NIPS 2012)](http://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks).
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    4-D.
		  depth_radius: An optional `int`. Defaults to `5`.
		    0-D.  Half-width of the 1-D normalization window.
		  bias: An optional `float`. Defaults to `1`.
		    An offset (usually positive to avoid dividing by 0).
		  alpha: An optional `float`. Defaults to `1`.
		    A scale factor, usually positive.
		  beta: An optional `float`. Defaults to `0.5`. An exponent.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function lrn(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function lrn
	**/
	static public function lrn_eager_fallback(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gradients for Local Response Normalization.
		
		Args:
		  input_grads: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    4-D with shape `[batch, height, width, channels]`.
		  input_image: A `Tensor`. Must have the same type as `input_grads`.
		    4-D with shape `[batch, height, width, channels]`.
		  output_image: A `Tensor`. Must have the same type as `input_grads`.
		    4-D with shape `[batch, height, width, channels]`.
		  depth_radius: An optional `int`. Defaults to `5`. A depth radius.
		  bias: An optional `float`. Defaults to `1`.
		    An offset (usually > 0 to avoid dividing by 0).
		  alpha: An optional `float`. Defaults to `1`.
		    A scale factor, usually positive.
		  beta: An optional `float`. Defaults to `0.5`. An exponent.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input_grads`.
	**/
	static public function lrn_grad(input_grads:Dynamic, input_image:Dynamic, output_image:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function lrn_grad
	**/
	static public function lrn_grad_eager_fallback(input_grads:Dynamic, input_image:Dynamic, output_image:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function mat_mul
	**/
	static public function mat_mul_eager_fallback(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `qint8`.
		    4-D input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    Shape `[batch, depth, rows, cols, channels]` tensor to pool over.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool3d
	**/
	static public function max_pool3d_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients of max pooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    Output backprop of shape `[batch, depth, rows, cols, channels]`.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function max_pool3d_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool3d_grad
	**/
	static public function max_pool3d_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    Output backprop of shape `[batch, depth, rows, cols, channels]`.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function max_pool3d_grad_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool3d_grad_grad
	**/
	static public function max_pool3d_grad_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool
	**/
	static public function max_pool_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients w.r.t. the output of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function max_pool_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad
	**/
	static public function max_pool_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients of gradients w.r.t. the input of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function max_pool_grad_grad(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_grad
	**/
	static public function max_pool_grad_grad_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients of gradients w.r.t. the input of `max_pool`.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function max_pool_grad_grad_v2(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_grad_v2
	**/
	static public function max_pool_grad_grad_v2_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes second-order gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input.
		  grad: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients w.r.t. the
		    input of `max_pool`.
		  argmax: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The indices of the maximum values chosen for each output of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool_grad_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_grad_with_argmax
	**/
	static public function max_pool_grad_grad_with_argmax_eager_fallback(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  orig_input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input tensor.
		  orig_output: A `Tensor`. Must have the same type as `orig_input`.
		    The original output tensor.
		  grad: A `Tensor`. Must have the same type as `orig_input`.
		    4-D.  Gradients w.r.t. the output of `max_pool`.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `orig_input`.
	**/
	static public function max_pool_grad_v2(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_v2
	**/
	static public function max_pool_grad_v2_eager_fallback(orig_input:Dynamic, orig_output:Dynamic, grad:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients of the maxpooling function.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The original input.
		  grad: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, height, width, channels]`.  Gradients w.r.t. the
		    output of `max_pool`.
		  argmax: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The indices of the maximum values chosen for each output of `max_pool`.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool_grad_with_argmax(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_grad_with_argmax
	**/
	static public function max_pool_grad_with_argmax_eager_fallback(input:Dynamic, grad:Dynamic, argmax:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `qint8`.
		    4-D input to pool over.
		  ksize: A `Tensor` of type `int32`.
		    The size of the window for each dimension of the input tensor.
		  strides: A `Tensor` of type `int32`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool_v2(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_v2
	**/
	static public function max_pool_v2_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index
		`((b * height + y) * width + x) * channels + c`.
		
		The indices returned are always in `[0, height) x [0, width)` before flattening,
		even if padding is involved and the mathematically correct answer is outside
		(either negative or too large).  This is a bug, but fixing it is difficult to do
		in a safe backwards compatible way, especially due to flattening.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  Targmax: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `Targmax`.
	**/
	static public function max_pool_with_argmax(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function max_pool_with_argmax
	**/
	static public function max_pool_with_argmax_eager_fallback(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function maximum
	**/
	static public function maximum_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function mean
	**/
	static public function mean_eager_fallback(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function minimum
	**/
	static public function minimum_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function mod
	**/
	static public function mod_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x * y element-wise.
		
		*NOTE*: `Multiply` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function mul(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mul
	**/
	static public function mul_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function neg(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function neg
	**/
	static public function neg_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function not_equal
	**/
	static public function not_equal_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds values of the `n`-th order statistic for the last dimension.
		
		If the input is a vector (rank-1), finds the entries which is the nth-smallest
		value in the vector and outputs their values as scalar tensor.
		
		For matrices (resp. higher rank input), computes the entries which is the
		nth-smallest value in each row (resp. vector along the last dimension). Thus,
		
		    values.shape = input.shape[:-1]
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    1-D or higher with last dimension at least `n+1`.
		  n: A `Tensor` of type `int32`.
		    0-D. Position of sorted vector to select along the last dimension (along
		    each row for matrices). Valid range of n is `[0, input.shape[:-1])`
		  reverse: An optional `bool`. Defaults to `False`.
		    When set to True, find the nth-largest value in the vector and vice
		    versa.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function nth_element(input:Dynamic, n:Dynamic, ?reverse:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function nth_element
	**/
	static public function nth_element_eager_fallback(input:Dynamic, n:Dynamic, ?reverse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function polygamma
	**/
	static public function polygamma_eager_fallback(a:Dynamic, x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function prod
	**/
	static public function prod_eager_fallback(input:Dynamic, axis:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_down_and_shrink_range
	**/
	static public function quantize_down_and_shrink_range_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Quantize the 'input' tensor of type float to 'output' tensor of type 'T'.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.  The
		'round_mode' attribute controls which rounding tie-breaking algorithm is used
		when rounding float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		out[i] = (in[i] - min_range) * range(T) / (max_range - min_range)
		if T == qint8: out[i] -= (range(T) + 1) / 2.0
		```
		
		here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`
		
		*MIN_COMBINED Mode Example*
		
		Assume the input is type float and has a possible range of [0.0, 6.0] and the
		output type is quint8 ([0, 255]). The min_range and max_range values should be
		specified as 0.0 and 6.0. Quantizing from float to quint8 will multiply each
		value of the input by 255/6 and cast to quint8.
		
		If the output type was qint8 ([-128, 127]), the operation will additionally
		subtract each value by 128 prior to casting, so that the range of values aligns
		with the range of qint8.
		
		If the mode is 'MIN_FIRST', then this approach is used:
		
		```
		num_discrete_values = 1 << (# of bits in T)
		range_adjust = num_discrete_values / (num_discrete_values - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = num_discrete_values / range
		quantized = round(input * range_scale) - round(range_min * range_scale) +
		  numeric_limits<T>::min()
		quantized = max(quantized, numeric_limits<T>::min())
		quantized = min(quantized, numeric_limits<T>::max())
		```
		
		The biggest difference between this and MIN_COMBINED is that the minimum range
		is rounded first, before it's subtracted from the rounded value. With
		MIN_COMBINED, a small bias is introduced where repeated iterations of quantizing
		and dequantizing will introduce a larger and larger error.
		
		*SCALED mode Example*
		
		`SCALED` mode matches the quantization approach used in
		`QuantizeAndDequantize{V2|V3}`.
		
		If the mode is `SCALED`, we do not use the full range of the output type,
		choosing to elide the lowest possible value for symmetry (e.g., output range is
		-127 to 127, not -128 to 127 for signed 8 bit quantization), so that 0.0 maps to
		0.
		
		We first find the range of values in our tensor. The
		range we use is always centered on 0, so we find m such that
		
		```c++
		  m = max(abs(input_min), abs(input_max))
		```
		
		Our input tensor range is then `[-m, m]`.
		
		Next, we choose our fixed-point quantization buckets, `[min_fixed, max_fixed]`.
		If T is signed, this is
		
		```
		  num_bits = sizeof(T) * 8
		  [min_fixed, max_fixed] =
		      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1]
		```
		
		Otherwise, if T is unsigned, the fixed-point range is
		
		```
		  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1]
		```
		
		From this we compute our scaling factor, s:
		
		```c++
		  s = (max_fixed - min_fixed) / (2 * m)
		```
		
		Now we can quantize the elements of our tensor:
		
		```c++
		result = round(input * s)
		```
		
		One thing to watch out for is that the operator may choose to adjust the
		requested minimum and maximum values slightly during the quantization process,
		so you should always use the output ports as the range for further calculations.
		For example, if the requested minimum and maximum values are close to equal,
		they will be separated by a small epsilon value to prevent ill-formed quantized
		buffers from being created. Otherwise, you can end up with buffers where all the
		quantized values map to the same float value, which causes problems for
		operations that have to perform further calculations on them.
		
		Args:
		  input: A `Tensor` of type `float32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  T: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  round_mode: An optional `string` from: `"HALF_AWAY_FROM_ZERO", "HALF_TO_EVEN"`. Defaults to `"HALF_AWAY_FROM_ZERO"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `T`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantize_v2(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_add
	**/
	static public function quantized_add_eager_fallback(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Produces the average pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    4-D with shape `[batch, height, width, channels]`.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  ksize: A list of `ints`.
		    The size of the window for each dimension of the input tensor.
		    The length must be 4 to match the number of dimensions of the input.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor.  The length must be 4 to match the number of dimensions of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor`. Has the same type as `input`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_avg_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_avg_pool
	**/
	static public function quantized_avg_pool_eager_fallback(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Quantized Batch normalization.
		
		This op is deprecated and will be removed in the future. Prefer
		`tf.nn.batch_normalization`.
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    A 4D input Tensor.
		  t_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized input.
		  t_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized input.
		  m: A `Tensor`. Must have the same type as `t`.
		    A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  m_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized mean.
		  m_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized mean.
		  v: A `Tensor`. Must have the same type as `t`.
		    A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  v_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized variance.
		  v_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized variance.
		  beta: A `Tensor`. Must have the same type as `t`.
		    A 1D beta Tensor with size matching the last dimension of t.
		    An offset to be added to the normalized tensor.
		  beta_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized offset.
		  beta_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized offset.
		  gamma: A `Tensor`. Must have the same type as `t`.
		    A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this tensor will be multiplied
		    with the normalized tensor.
		  gamma_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized gamma.
		  gamma_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized gamma.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  variance_epsilon: A `float`. A small float number to avoid dividing by 0.
		  scale_after_normalization: A `bool`.
		    A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (result, result_min, result_max).
		
		  result: A `Tensor` of type `out_type`.
		  result_min: A `Tensor` of type `float32`.
		  result_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_batch_norm_with_global_normalization(t:Dynamic, t_min:Dynamic, t_max:Dynamic, m:Dynamic, m_min:Dynamic, m_max:Dynamic, v:Dynamic, v_min:Dynamic, v_max:Dynamic, beta:Dynamic, beta_min:Dynamic, beta_max:Dynamic, gamma:Dynamic, gamma_min:Dynamic, gamma_max:Dynamic, out_type:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_batch_norm_with_global_normalization
	**/
	static public function quantized_batch_norm_with_global_normalization_eager_fallback(t:Dynamic, t_min:Dynamic, t_max:Dynamic, m:Dynamic, m_min:Dynamic, m_max:Dynamic, v:Dynamic, v_min:Dynamic, v_max:Dynamic, beta:Dynamic, beta_min:Dynamic, beta_max:Dynamic, gamma:Dynamic, gamma_min:Dynamic, gamma_max:Dynamic, out_type:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds Tensor 'bias' to Tensor 'input' for Quantized types.
		
		Broadcasts the values of bias on dimensions 0..N-2 of 'input'.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  bias: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    A 1D bias Tensor with size matching the last dimension of 'input'.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  min_bias: A `Tensor` of type `float32`.
		    The float value that the lowest quantized bias value represents.
		  max_bias: A `Tensor` of type `float32`.
		    The float value that the highest quantized bias value represents.
		  out_type: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_out, max_out).
		
		  output: A `Tensor` of type `out_type`.
		  min_out: A `Tensor` of type `float32`.
		  max_out: A `Tensor` of type `float32`.
	**/
	static public function quantized_bias_add(input:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_bias:Dynamic, max_bias:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_bias_add
	**/
	static public function quantized_bias_add_eager_fallback(input:Dynamic, bias:Dynamic, min_input:Dynamic, max_input:Dynamic, min_bias:Dynamic, max_bias:Dynamic, out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Concatenates quantized tensors along one dimension.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [0, rank(values)).
		  values: A list of at least 2 `Tensor` objects with the same type.
		    The `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  input_mins: A list with the same length as `values` of `Tensor` objects with type `float32`.
		    The minimum scalar values for each of the input tensors.
		  input_maxes: A list with the same length as `values` of `Tensor` objects with type `float32`.
		    The maximum scalar values for each of the input tensors.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor`. Has the same type as `values`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_concat(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2D convolution given quantized 4D input and filter tensors.
		
		The inputs are quantized tensors where the lowest value represents the real
		number of the associated minimum, and the highest represents the maximum.
		This means that you can only interpret the quantized output in the same way, by
		taking the returned minimum and maximum values into account.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    filter's input_depth dimension must match input's depth dimensions.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the lowest quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the highest quantized filter value represents.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_conv2d
	**/
	static public function quantized_conv2d_eager_fallback(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_mat_mul
	**/
	static public function quantized_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, min_a:Dynamic, max_a:Dynamic, min_b:Dynamic, max_b:Dynamic, ?Toutput:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?Tactivation:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Produces the max pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The 4D (batch x rows x cols x depth) Tensor to MaxReduce over.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  ksize: A list of `ints`.
		    The size of the window for each dimension of the input tensor.
		    The length must be 4 to match the number of dimensions of the input.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor. The length must be 4 to match the number of dimensions of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor`. Has the same type as `input`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_max_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_max_pool
	**/
	static public function quantized_max_pool_eager_fallback(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_mul
	**/
	static public function quantized_mul_eager_fallback(x:Dynamic, y:Dynamic, min_x:Dynamic, max_x:Dynamic, min_y:Dynamic, max_y:Dynamic, ?Toutput:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear: `max(features, 0)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function quantized_relu(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear 6: `min(max(features, 0), 6)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function quantized_relu6(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_relu6
	**/
	static public function quantized_relu6_eager_fallback(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_relu
	**/
	static public function quantized_relu_eager_fallback(features:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear X: `min(max(features, 0), max_value)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  max_value: A `Tensor` of type `float32`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function quantized_relu_x(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_relu_x
	**/
	static public function quantized_relu_x_eager_fallback(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function real_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function real_div
	**/
	static public function real_div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function real
	**/
	static public function real_eager_fallback(input:Dynamic, ?Tout:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function reciprocal
	**/
	static public function reciprocal_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function reciprocal_grad
	**/
	static public function reciprocal_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, 0)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function relu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear 6: `min(max(features, 0), 6)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function relu6
	**/
	static public function relu6_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear 6 gradients for a Relu6 operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The backpropagated gradients to the corresponding Relu6 operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu6 operation, or
		    its output; using either one produces the same result.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function relu6_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function relu6_grad
	**/
	static public function relu6_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function relu
	**/
	static public function relu_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes rectified linear gradients for a Relu operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    The backpropagated gradients to the corresponding Relu operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding Relu operation, OR
		    the outputs of that operation (both work equivalently).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function relu_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function relu_grad
	**/
	static public function relu_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Given a quantized tensor described by (input, input_min, input_max), outputs a
		
		range that covers the actual values present in that tensor.  This op is
		typically used to produce the requested_output_min and requested_output_max for
		Requantize.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function requantization_range
	**/
	static public function requantization_range_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Convert the quantized 'input' tensor into a lower-precision 'output', using the
		
		output range specified with 'requested_output_min' and 'requested_output_max'.
		
		[input_min, input_max] are scalar floats that specify the range for the float
		interpretation of the 'input' data. For example, if input_min is -1.0f and
		input_max is 1.0f, and we are dealing with quint16 quantized data, then a 0
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
	/**
		This is the slowpath function for Eager mode.
		This is for function requantize
	**/
	static public function requantize_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, requested_output_min:Dynamic, requested_output_max:Dynamic, out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function rint
	**/
	static public function rint_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Rounds the values of a tensor to the nearest integer, element-wise.
		
		Rounds half to even.  Also known as bankers rounding. If you want to round
		according to the current system rounding mode use std::cint.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function round(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function round
	**/
	static public function round_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function rsqrt
	**/
	static public function rsqrt_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function rsqrt_grad
	**/
	static public function rsqrt_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function segment_max
	**/
	static public function segment_max_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function segment_mean
	**/
	static public function segment_mean_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function segment_min
	**/
	static public function segment_min_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function segment_prod
	**/
	static public function segment_prod_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function segment_sum
	**/
	static public function segment_sum_eager_fallback(data:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function select
	**/
	static public function select_eager_fallback(condition:Dynamic, x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes scaled exponential linear: `scale * alpha * (exp(features) - 1)`
		
		if < 0, `scale * features` otherwise.
		
		To be used together with
		`initializer = tf.variance_scaling_initializer(factor=1.0, mode='FAN_IN')`.
		For correct dropout, use `tf.contrib.nn.alpha_dropout`.
		
		See [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function selu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function selu
	**/
	static public function selu_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients for the scaled exponential linear (Selu) operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding Selu operation.
		  outputs: A `Tensor`. Must have the same type as `gradients`.
		    The outputs of the corresponding Selu operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function selu_grad(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function selu_grad
	**/
	static public function selu_grad_eager_fallback(gradients:Dynamic, outputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function sigmoid
	**/
	static public function sigmoid_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function sigmoid_grad
	**/
	static public function sigmoid_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function sign
	**/
	static public function sign_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function sin
	**/
	static public function sin_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function sinh
	**/
	static public function sinh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes softmax activations.
		
		For each batch `i` and class `j` we have
		
		    $$softmax[i, j] = exp(logits[i, j]) / sum_j(exp(logits[i, j]))$$
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    2-D with shape `[batch_size, num_classes]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`.
	**/
	static public function softmax(logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy cost and gradients to backpropagate.
		
		Inputs are the logits, not probabilities.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    batch_size x num_classes matrix
		  labels: A `Tensor`. Must have the same type as `features`.
		    batch_size x num_classes matrix
		    The caller must ensure that each batch of labels represents a valid
		    probability distribution.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, backprop).
		
		  loss: A `Tensor`. Has the same type as `features`.
		  backprop: A `Tensor`. Has the same type as `features`.
	**/
	static public function softmax_cross_entropy_with_logits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softmax_cross_entropy_with_logits
	**/
	static public function softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softmax
	**/
	static public function softmax_eager_fallback(logits:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function softplus
	**/
	static public function softplus_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes softplus gradients for a softplus operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding softplus operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softplus operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function softplus_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softplus_grad
	**/
	static public function softplus_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function softsign
	**/
	static public function softsign_eager_fallback(features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes softsign gradients for a softsign operation.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    The backpropagated gradients to the corresponding softsign operation.
		  features: A `Tensor`. Must have the same type as `gradients`.
		    The features passed as input to the corresponding softsign operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `gradients`.
	**/
	static public function softsign_grad(gradients:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function softsign_grad
	**/
	static public function softsign_grad_eager_fallback(gradients:Dynamic, features:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_mat_mul
	**/
	static public function sparse_mat_mul_eager_fallback(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Like `SegmentMean`, but `segment_ids` can have rank less than `data`'s first
		dimension, selecting a subset of dimension 0, specified by `indices`.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_mean(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_mean
	**/
	static public function sparse_segment_mean_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentMean.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    gradient propagated to the SparseSegmentMean op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
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
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_mean_grad
	**/
	static public function sparse_segment_mean_grad_eager_fallback(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the mean along sparse segments of a tensor.
		
		Like `SparseSegmentMean`, but allows missing ids in `segment_ids`. If an id is
		misisng, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_mean_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_mean_with_num_segments
	**/
	static public function sparse_segment_mean_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt of N.
		
		N is the size of the segment being reduced.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sqrt_n(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sqrt_n
	**/
	static public function sparse_segment_sqrt_n_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes gradients for SparseSegmentSqrtN.
		
		Returns tensor "output" with same shape as grad, except for dimension 0 whose
		value is output_dim0.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    gradient propagated to the SparseSegmentSqrtN op.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
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
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sqrt_n_grad
	**/
	static public function sparse_segment_sqrt_n_grad_eager_fallback(grad:Dynamic, indices:Dynamic, segment_ids:Dynamic, output_dim0:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor divided by the sqrt of N.
		
		N is the size of the segment being reduced.
		
		Like `SparseSegmentSqrtN`, but allows missing ids in `segment_ids`. If an id is
		misisng, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
		for an explanation of segments.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A 1-D tensor. Has same rank as `segment_ids`.
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sqrt_n_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sqrt_n_with_num_segments
	**/
	static public function sparse_segment_sqrt_n_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
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
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sum(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sum
	**/
	static public function sparse_segment_sum_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes the sum along sparse segments of a tensor.
		
		Like `SparseSegmentSum`, but allows missing ids in `segment_ids`. If an id is
		misisng, the `output` tensor at that position will be zeroed.
		
		Read
		[the section on segmentation](https://tensorflow.org/api_guides/python/math_ops#Segmentation)
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
		  segment_ids: A `Tensor` of type `int32`.
		    A 1-D tensor. Values should be sorted and can be repeated.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should equal the number of distinct segment IDs.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function sparse_segment_sum_with_num_segments(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_segment_sum_with_num_segments
	**/
	static public function sparse_segment_sum_with_num_segments_eager_fallback(data:Dynamic, indices:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy cost and gradients to backpropagate.
		
		Unlike `SoftmaxCrossEntropyWithLogits`, this operation does not accept
		a matrix of label probabilities, but rather a single label per row
		of features.  This label is considered to have probability 1.0 for the
		given row.
		
		Inputs are the logits, not probabilities.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    batch_size x num_classes matrix
		  labels: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    batch_size vector with values in [0, num_classes).
		    This is the label for the given minibatch entry.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (loss, backprop).
		
		  loss: A `Tensor`. Has the same type as `features`.
		  backprop: A `Tensor`. Has the same type as `features`.
	**/
	static public function sparse_softmax_cross_entropy_with_logits(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_softmax_cross_entropy_with_logits
	**/
	static public function sparse_softmax_cross_entropy_with_logits_eager_fallback(features:Dynamic, labels:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function sqrt
	**/
	static public function sqrt_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function sqrt_grad
	**/
	static public function sqrt_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function square
	**/
	static public function square_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function squared_difference
	**/
	static public function squared_difference_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function sub(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sub
	**/
	static public function sub_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function tan
	**/
	static public function tan_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function tanh
	**/
	static public function tanh_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function tanh_grad
	**/
	static public function tanh_grad_eager_fallback(y:Dynamic, dy:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Finds values and indices of the `k` largest elements for the last dimension.
		
		If the input is a vector (rank-1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		    values.shape = indices.shape = input.shape[:-1] + [k]
		
		If two elements are equal, the lower-index element appears first.
		
		If `k` varies dynamically, use `TopKV2` below.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    1-D or higher with last dimension at least `k`.
		  k: An `int` that is `>= 0`.
		    Number of top elements to look for along the last dimension (along each
		    row for matrices).
		  sorted: An optional `bool`. Defaults to `True`.
		    If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (values, indices).
		
		  values: A `Tensor`. Has the same type as `input`.
		  indices: A `Tensor` of type `int32`.
	**/
	static public function top_k(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function top_k
	**/
	static public function top_k_eager_fallback(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds values and indices of the `k` largest elements for the last dimension.
		
		If the input is a vector (rank-1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		    values.shape = indices.shape = input.shape[:-1] + [k]
		
		If two elements are equal, the lower-index element appears first.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    1-D or higher with last dimension at least `k`.
		  k: A `Tensor` of type `int32`.
		    0-D.  Number of top elements to look for along the last dimension (along each
		    row for matrices).
		  sorted: An optional `bool`. Defaults to `True`.
		    If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (values, indices).
		
		  values: A `Tensor`. Has the same type as `input`.
		  indices: A `Tensor` of type `int32`.
	**/
	static public function top_kv2(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function top_kv2
	**/
	static public function top_kv2_eager_fallback(input:Dynamic, k:Dynamic, ?sorted:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns x / y element-wise for integer types.
		
		Truncation designates that negative numbers will round fractional quantities
		toward zero. I.e. -7 / 5 = -1. This matches C semantics but it is different
		than Python semantics. See `FloorDiv` for a division function that matches
		Python Semantics.
		
		*NOTE*: `truncatediv` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function truncate_div(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function truncate_div
	**/
	static public function truncate_div_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function truncate_mod
	**/
	static public function truncate_mod_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_max
	**/
	static public function unsorted_segment_max_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_min
	**/
	static public function unsorted_segment_min_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_prod
	**/
	static public function unsorted_segment_prod_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function unsorted_segment_sum
	**/
	static public function unsorted_segment_sum_eager_fallback(data:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function xdivy
	**/
	static public function xdivy_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function xlogy
	**/
	static public function xlogy_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function zeta
	**/
	static public function zeta_eager_fallback(x:Dynamic, q:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}