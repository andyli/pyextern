/* This file is generated, do not edit! */
package tensorflow.python.ops.math_ops;
@:pythonImport("tensorflow.python.ops.math_ops") extern class Math_ops_Module {
	static public function _AddNShape(op:Dynamic):Dynamic;
	/**
		Common shape function for arg-reduction ops.
	**/
	static public function _ArgOpShape(op:Dynamic):Dynamic;
	/**
		Shape function for BatchMatMul op.
	**/
	static public function _BatchMatMulShape(op:Dynamic):Dynamic;
	/**
		Common shape function for binary operators that broadcast their inputs.
	**/
	static public function _BroadcastShape(op:Dynamic):Dynamic;
	static public function _LinspaceShape(op:Dynamic):Dynamic;
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
	static public function _RangeShape(op:Dynamic):Dynamic;
	/**
		Returns range(0, rank(x)) if reduction_indices is None.
	**/
	static public function _ReductionDims(x:Dynamic, reduction_indices:Dynamic):Dynamic;
	/**
		Common shape function for reduction ops.
	**/
	static public function _ReductionShape(op:Dynamic):Dynamic;
	/**
		Common shape function for segment reduction ops.
	**/
	static public function _SegmentReductionShape(op:Dynamic):Dynamic;
	/**
		Shape function for SelectOp.
	**/
	static public function _SelectShape(op:Dynamic):Dynamic;
	/**
		Common shape for 'sparse <binary cwise op> dense -> sparse' operators.
	**/
	static public function _SparseDenseBinaryOpShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SparseSegment[Mean|SqrtN]Grad ops.
	**/
	static public function _SparseSegmentReductionGradShape(op:Dynamic):Dynamic;
	/**
		Common shape function for sparse segment reduction ops.
	**/
	static public function _SparseSegmentReductionShape(op:Dynamic):Dynamic;
	static public var _TRUEDIV_TABLE : Dynamic;
	/**
		Shape function for UnsortedSegmentSum.
	**/
	static public function _UnsortedSegmentSumShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert 'x' to IndexedSlices.
		
		Convert a dense Tensor to a block-sparse IndexedSlices.
		
		Args:
		  x: Either a Tensor object, or an IndexedSlices object.
		
		Returns:
		  An IndexedSlices object.
		
		Raises:
		  TypeError: If 'x' is not a Tensor or an IndexedSlices object.
	**/
	static public function _as_indexed_slices(x:Dynamic):Dynamic;
	/**
		Convert all elements of 'inputs' to IndexedSlices.
		
		Additionally, homogenize the types of all the indices to
		either int32 or int64.
		
		Args:
		  inputs: List containing either Tensor or IndexedSlices objects.
		
		Returns:
		  A list of IndexedSlices objects.
		
		Raises:
		  TypeError: If 'inputs' is not a list or a tuple.
	**/
	static public function _as_indexed_slices_list(inputs:Dynamic):Dynamic;
	/**
		Calculates the compute resources needed for MatMul.
	**/
	static public function _calc_mat_mul_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Calculates the on-disk size of the weights for MatMul.
	**/
	static public function _calc_mat_mul_weight_parameters(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Dispatches cwise mul for "Dense*Dense" and "Dense*Sparse".
	**/
	static public function _mul_dispatch(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Internal helper function for 'sp_t / dense_t'.
	**/
	static public function _sparse_dense_truediv(sp_indices:Dynamic, sp_values:Dynamic, sp_shape:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes asin of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function asin(x:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes cos of x element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function cos(x:Dynamic, ?name:Dynamic):Dynamic;
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