/* This file is generated, do not edit! */
package tensorflow.compiler.tf2xla.python.xla;
@:pythonImport("tensorflow.compiler.tf2xla.python.xla") extern class Xla_Module {
	static public var _SIGNED_TO_UNSIGNED_TABLE : Dynamic;
	static public var _UNSIGNED_TO_SIGNED_TABLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wrapper that restricts `fn` to have the correct signature.
	**/
	static public function _binary_op(fn:Dynamic):Dynamic;
	/**
		Wraps a binary Tensorflow operator and performs XLA-style broadcasting.
	**/
	static public function _broadcasting_binary_op(fn:Dynamic):Dynamic;
	/**
		max(iterable, *[, default=obj, key=func]) -> value
		max(arg1, arg2, *args, *[, key=func]) -> value
		
		With a single iterable argument, return its biggest item. The
		default keyword-only argument specifies an object to return if
		the provided iterable is empty.
		With two or more arguments, return the largest argument.
	**/
	static public function _max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		min(iterable, *[, default=obj, key=func]) -> value
		min(arg1, arg2, *args, *[, key=func]) -> value
		
		With a single iterable argument, return its smallest item. The
		default keyword-only argument specifies an object to return if
		the provided iterable is empty.
		With two or more arguments, return the smallest argument.
	**/
	static public function _min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gradient for XlaSharding op.
	**/
	static public function _sharding_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Performs an integer right arithmetic shift irrespective of input type.
	**/
	static public function _shift_right_arithmetic_helper(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs an integer right logical shift irrespective of input type.
	**/
	static public function _shift_right_logical_helper(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	static public function _spmd_full_to_shard_shape_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _spmd_shard_to_full_shape_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Wrapper that restricts `fn` to have the correct signature.
	**/
	static public function _unary_op(fn:Dynamic):Dynamic;
	static public function abs(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function add(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function atan2(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function bessel_i0e(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function bessel_i1e(x:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function bitcast_convert_type(input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	static public function broadcast(x:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function ceil(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function clamp(a:Dynamic, x:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function complex(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function concatenate(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function conj(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Wraps the XLA ConvGeneralDilated operator.
		
		ConvGeneralDilated is the most general form of XLA convolution and is
		documented at
		https://www.tensorflow.org/performance/xla/operation_semantics#conv_convolution
		
		Args:
		  lhs: the input tensor
		  rhs: the kernel tensor
		  window_strides: the inter-window strides
		  padding: the padding to apply at the start and end of each input dimensions
		  lhs_dilation: dilation to apply between input elements
		  rhs_dilation: dilation to apply between kernel elements
		  dimension_numbers: a `ConvolutionDimensionNumbers` proto.
		  feature_group_count: number of feature groups for grouped convolution.
		  precision_config: a `xla.PrecisionConfig` proto.
		  preferred_element_type: the result `dtype`.
		  name: an optional name for the operator.
		  use_v2: an optional request to use the XlaConvV2 op even if not necessary.
		
		Returns:
		  A tensor representing the output of the convolution.
	**/
	static public function conv(lhs:Dynamic, rhs:Dynamic, window_strides:Dynamic, padding:Dynamic, lhs_dilation:Dynamic, rhs_dilation:Dynamic, dimension_numbers:Dynamic, ?feature_group_count:Dynamic, ?precision_config:Dynamic, ?preferred_element_type:Dynamic, ?name:Dynamic, ?use_v2:Dynamic):Dynamic;
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
	static public function convert_element_type(x:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function cos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Takes the packed uint32 input and unpacks the input to uint8 to do
		
		Dequantization on device.
		
		Args:
		  input: A `Tensor` of type `uint32`.
		    Input tensors whose types is uint32, shape is [d0, ..., dn].
		  min_range: A `float`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `float`.
		    The maximum scalar value possibly produced for the input.
		  mode: A `string`.
		    String to determine the dequantize mode in {"MIN_COMBINED", "MIN_FIRST", "SCALED"}.
		  transpose_output: A `bool`.
		    Boolean to determine if output is transposed. transpose_output
		    is faster when input is large and rank of input is higher than 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bfloat16`.
		  Output tensors whose types is bloat16. If transpose_output is true,
		  output shape is [dn * 4, dn-1, ..., d1, d0]. If transpose_output
		  is false, output shape is [d0,..., dn * 4].
	**/
	static public function dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, mode:Dynamic, transpose_output:Dynamic, ?name:Dynamic):Dynamic;
	static public function digamma(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function div(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dot(lhs:Dynamic, rhs:Dynamic, ?name:Dynamic):Dynamic;
	static public function dot_general(lhs:Dynamic, rhs:Dynamic, dimension_numbers:Dynamic, ?precision_config:Dynamic, ?preferred_element_type:Dynamic, ?name:Dynamic, ?use_v2:Dynamic):Dynamic;
	/**
		Wraps the XLA DynamicSlice operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dynamicslice
		.
		
		DynamicSlice extracts a sub-array from the input array at dynamic
		start_indices. The size of the slice in each dimension is passed in
		size_indices, which specify the end point of exclusive slice intervals in each
		dimension -- [start, start + size). The shape of start_indices must have rank 1,
		with dimension size equal to the rank of operand.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  start_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    List of N integers containing the slice size for each
		    dimension. Each value must be strictly greater than zero, and start + size
		    must be less than or equal to the size of the dimension to avoid
		    implementation defined behavior.
		  size_indices: A `Tensor`. Must have the same type as `start_indices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function dynamic_slice(input:Dynamic, start_indices:Dynamic, size_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA DynamicUpdateSlice operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dynamicupdateslice
		.
		
		XlaDynamicUpdateSlice generates a result which is the value of the `input`
		operand, with a slice update overwritten at `indices`. The shape of `update`
		determines the shape of the sub-array of the result which is updated. The shape
		of indices must be rank == 1, with dimension size equal to the rank of `input`.
		
		Handling of out-of-bounds slice indices is implementation-defined.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  update: A `Tensor`. Must have the same type as `input`.
		    A `Tensor` of type T. Same rank as `input`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into `input`. Must have length equal to the rank of
		    `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function dynamic_update_slice(input:Dynamic, update:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which supports basic einsum op with 2 inputs and 1 output.
		
		This op has better TPU performance since it doesn't have explicitly reshape and
		transpose operations as tf.einsum does.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `complex64`, `bfloat16`, `float32`.
		  b: A `Tensor`. Must have the same type as `a`.
		  equation: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function einsum(a:Dynamic, b:Dynamic, equation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function eq(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function erf(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function erfc(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function erfinv(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function exp(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function expm1(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function floor(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function gather(operand:Dynamic, start_indices:Dynamic, dimension_numbers:Dynamic, slice_sizes:Dynamic, ?indices_are_sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function ge(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function gt(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function igamma(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function igamma_grad_a(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function igammac(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function imag(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function is_finite(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts a tensor. Currently only sorts in ascending order are supported.
		
		Args:
		  keys: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A `Tensor` of type K.
		  values: A `Tensor`. A `Tensor` of type V.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sorted_keys, sorted_values).
		
		  sorted_keys: A `Tensor`. Has the same type as `keys`. A `Tensor` of type K.
		  sorted_values: A `Tensor`. Has the same type as `values`. A `Tensor` of type V.
	**/
	static public function key_value_sort(keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function le(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function lgamma(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function log(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function log1p(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function logical_and(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function logical_not(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function logical_or(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function logical_xor(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function lt(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function max(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function min(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function mul(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function ndtri(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function ne(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function neg(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Pad operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#pad
		.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  padding_value: A `Tensor`. Must have the same type as `input`.
		    A scalar `Tensor` of type T.
		  padding_low: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the padding to apply at the start of each input dimensions. Must
		    be a compile-time constant 1D tensor of length equal to rank of input.
		  padding_high: A `Tensor`. Must have the same type as `padding_low`.
		    the padding to apply at the end of each input dimension. Must
		    be a compile-time constant 1D tensor of length equal to rank of input.
		  padding_interior: A `Tensor`. Must have the same type as `padding_low`.
		    the padding to apply between each input element. Must
		    be a compile-time constant 1D tensor of length equal to rank of input,
		    containing only non-negative values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function pad(input:Dynamic, padding_value:Dynamic, padding_low:Dynamic, padding_high:Dynamic, padding_interior:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function polygamma(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function pow(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function random_gamma_grad(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_normal(mu:Dynamic, sigma:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function random_uniform(minval:Dynamic, maxval:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function real(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Receives the named tensor from another XLA computation. Wraps the XLA Recv
		
		operator documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#recv .
		
		Args:
		  dtype: A `tf.DType`. The type of the tensor.
		  tensor_name: A `string`. A string key that identifies the channel.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. The tensor to receive.
	**/
	static public function recv(dtype:Dynamic, tensor_name:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Reduce operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#reduce .
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    the input tensor
		  init_value: A `Tensor`. Must have the same type as `input`.
		    a scalar representing the initial value for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function reduce(input:Dynamic, init_value:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA ReduceWindow operator.
		
		ReduceWindow is documented at
		https://www.tensorflow.org/performance/xla/operation_semantics#reducewindow .
		
		Args:
		  operand: the input tensor
		  init: a scalar tensor representing the initial value for the reduction
		  reducer: a reduction function that combines a pair of scalars.
		  window_dimensions: shape of the window, as a list of integers
		  window_strides: inter-window strides, as a list of integers. Optional; if
		    omitted, defaults to strides of 1.
		  padding: padding to apply to 'operand'. List of (low, high) pairs of
		    integers that specify the padding to apply before and after each
		    dimension. Optional; if omitted, defaults to no padding.
		  name: the operator name, or None.
		
		Returns:
		  A tensor that represents the output of the reduce_window operator.
	**/
	static public function reduce_window(operand:Dynamic, init:Dynamic, reducer:Dynamic, window_dimensions:Dynamic, ?window_strides:Dynamic, ?base_dilations:Dynamic, ?window_dilations:Dynamic, ?padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function rem(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse of XlaSetDynamicDimensionSize.
		
		Make an xla bounded dynamic dimension into a static dimension. The bound of the
		size of dimension `dim_index` becomes the static dimension size.
		
		Args:
		  input: A `Tensor`.
		  dim_index: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function remove_dynamic_dimension_size(input:Dynamic, dim_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Replica ID.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function replica_id(?name:Dynamic):Dynamic;
	static public function reshape(x:Dynamic, new_sizes:Dynamic, ?dimensions:Dynamic, ?name:Dynamic):Dynamic;
	static public function rev(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stateless PRNG bit generator.
		
		Wraps the XLA RngBitGenerator operator, documented at
		  https://www.tensorflow.org/performance/xla/operation_semantics#rngbitgenerator.
		
		Args:
		  algorithm: The PRNG algorithm to use, one of
		    tf.random.Algorithm.{PHILOX, THREEFRY, AUTO_SELECT}.
		  initial_state: Initial state for the PRNG algorithm. For THREEFRY, it
		    should be a u64[2] and for PHILOX a u64[3].
		  shape: The output shape of the generated data.
		  dtype: The type of the tensor.
		
		Returns:
		  a tuple with a new state and generated data of the given shape.
	**/
	static public function rng_bit_generator(algorithm:Dynamic, initial_state:Dynamic, shape:Dynamic, dtype:Dynamic):Dynamic;
	static public function round(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter(operand:Dynamic, scatter_indices:Dynamic, updates:Dynamic, update_computation:Dynamic, dimension_numbers:Dynamic, ?indices_are_sorted:Dynamic, ?name:Dynamic):Dynamic;
	static public function select(condition:Dynamic, x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA SelectAndScatter operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#selectandscatter
		.
		
		Args:
		  operand: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor
		  window_dimensions: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the shape of the window
		  window_strides: A `Tensor`. Must have the same type as `window_dimensions`.
		    the inter-window strides
		  padding: A `Tensor`. Must have the same type as `window_dimensions`.
		    the padding to apply at the start and end of each input dimensions
		  source: A `Tensor`. Must have the same type as `operand`.
		    a tensor of values to scatter
		  init_value: A `Tensor`. Must have the same type as `operand`.
		    a scalar representing the initial value for the output tensor
		  select: A function decorated with @Defun. a selection function to apply
		  scatter: A function decorated with @Defun. a scatter function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `operand`.
	**/
	static public function select_and_scatter(operand:Dynamic, window_dimensions:Dynamic, window_strides:Dynamic, padding:Dynamic, source:Dynamic, init_value:Dynamic, select:Dynamic, scatter:Dynamic, ?name:Dynamic):Dynamic;
	static public function self_adjoint_eig(a:Dynamic, lower:Dynamic, max_iter:Dynamic, epsilon:Dynamic):Dynamic;
	/**
		Sends the named tensor to another XLA computation. Wraps the XLA Send operator
		
		documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#send .
		
		Args:
		  tensor: A `Tensor`. The tensor to send.
		  tensor_name: A `string`. A string key that identifies the channel.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function send(tensor:Dynamic, tensor_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Set a bound for the given input value as a hint to Xla compiler,
		
		        returns the same value.
		
		Args:
		  input: A `Tensor` of type `int32`.
		  bound: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function set_bound(input:Dynamic, bound:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Make a static dimension into a xla bounded dynamic dimension.
		
		        The current static dimension size will become the bound and the second
		        operand becomes the dynamic size of the dimension.
		
		Args:
		  input: A `Tensor`.
		  dim_index: A `Tensor` of type `int32`.
		  size: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function set_dynamic_dimension_size(input:Dynamic, dim_index:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which shards the input based on the given sharding attribute. It can
		
		selectively annotate a subset of tensor dimensions by skipping unspecified_dims,
		and the sharding annotation should be replicated in those dims.
		
		Args:
		  input: A `Tensor`.
		  sharding: An optional `string`. Defaults to `""`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function sharding(input:Dynamic, ?sharding:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function shift_left(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function shift_right_arithmetic(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function shift_right_logical(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function sign(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function sin(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function slice(x:Dynamic, start_dims:Dynamic, limit_dims:Dynamic, strides:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts a tensor. Currently only sorts in ascending order are supported.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function sort(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op used by XLA SPMD partitioner to switch from automatic partitioning to
		
		manual partitioning. It annotates the input (full-shape, to be automatically
		partitioned) with the same sharding used by manual partitioning, and outputs a
		shard-shaped tensor to be consumed by later manually-partitioned ops. If the
		shape is not evenly partitionable, the padding region will be masked with 0s.
		The conversion can happen partially in subgroups, by specifying the dim
		attribute, where only that dim will be converted.
		
		Args:
		  input: A `Tensor`.
		  manual_sharding: A `string`.
		  dim: An optional `int`. Defaults to `-1`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function spmd_full_to_shard_shape(input:Dynamic, manual_sharding:Dynamic, ?dim:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op used by XLA SPMD partitioner to switch from manual partitioning to
		
		automatic partitioning. It converts the shard-shaped, manually partitioned input
		into full-shaped tensor to be partitioned automatically with the same sharding
		used by manual partitioning. The conversion can happen partially in subgroups,
		by specifying the dim attribute, where only that dim will be converted.
		
		Args:
		  input: A `Tensor`.
		  manual_sharding: A `string`.
		  full_shape: A `tf.TensorShape` or list of `ints`.
		  dim: An optional `int`. Defaults to `-1`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function spmd_shard_to_full_shape(input:Dynamic, manual_sharding:Dynamic, full_shape:Dynamic, ?dim:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function sub(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function svd(a:Dynamic, max_iter:Dynamic, epsilon:Dynamic, ?precision_config:Dynamic):Dynamic;
	static public function tanh(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function transpose(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the variadic XLA Reduce operator.
		
		Semantics are documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#variadic_reduce.
		
		This is an expanded version of XlaVariadicReduce, with support for
		operands of different dtypes, and improved shape inference.
		
		Args:
		  inputs: A list of `Tensor` objects. the input tensor(s)
		  init_values: A list of `Tensor` objects. Must have the same type as `inputs`.
		    scalar initial value(s) for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `inputs`.
	**/
	static public function variadic_reduce(inputs:Dynamic, init_values:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts one or more tensors, with support for custom comparator, dimension, and
		is_stable attributes.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of `Tensor` of identical shape but possibly different types.
		  dimension: A `Tensor` of type `int32`.
		    The dimension along which to sort. Must be a compile-time constant.
		  comparator: A function decorated with @Defun.
		    A comparator function to apply to 2*N scalars and returning a
		    boolean. N is the number of sort inputs. If you want to sort in ascending
		    order then the comparator should perform a less-than comparison.
		  is_stable: A `bool`. Whether to use stable sort.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `inputs`.
		  A list of `Tensor` of same shape and types as the `input`.
	**/
	static public function variadic_sort(inputs:Dynamic, dimension:Dynamic, comparator:Dynamic, is_stable:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }
		
		Args:
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: A function decorated with @Defun.
		    A function takes 'input' and returns a tensor.  If the tensor is
		    a scalar of non-boolean, the scalar is converted to a boolean
		    according to the following rule: if the scalar is a numerical
		    value, non-zero means True and zero means False; if the scalar is
		    a string, non-empty means True and empty means False. If the
		    tensor is not a scalar, non-emptiness means True and False
		    otherwise.
		  body: A function decorated with @Defun.
		    A function that takes a list of tensors and returns another
		    list of tensors. Both lists have the same types as specified by T.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
		  A list of output tensors whose types are T.
	**/
	static public function while_loop(input:Dynamic, cond:Dynamic, body:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inner wrapper function.
	**/
	static public function zeta(x:Dynamic, y:Dynamic, ?broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
}