/* This file is generated, do not edit! */
package tensorflow.python.ops.array_ops;
@:pythonImport("tensorflow.python.ops.array_ops") extern class Array_ops_Module {
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  num_lower: A `Tensor` of type `int64`.
		  num_upper: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchMatrixBandPart(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  diagonal: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function BatchMatrixDiag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchMatrixDiagPart(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchMatrixSetDiag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		BatchToSpace for 4-D tensors of type T.
		
		This is a legacy version of the more general BatchToSpaceND.
		
		Rearranges (permutes) data from batch into blocks of spatial data, followed by
		cropping. This is the reverse transformation of SpaceToBatch. More specifically,
		this op outputs a copy of the input tensor where values from the `batch`
		dimension are moved in spatial blocks to the `height` and `width` dimensions,
		followed by cropping along the `height` and `width` dimensions.
		
		Args:
		  input: A `Tensor`. 4-D tensor with shape
		    `[batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		      depth]`. Note that the batch size of the input tensor must be divisible by
		    `block_size * block_size`.
		  crops: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		    how many elements to crop from the intermediate result across the spatial
		    dimensions as follows:
		
		        crops = [[crop_top, crop_bottom], [crop_left, crop_right]]
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchToSpace(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		BatchToSpace for N-D tensors of type T.
		
		This operation reshapes the "batch" dimension 0 into `M + 1` dimensions of shape
		`block_shape + [batch]`, interleaves these blocks back into the grid defined by
		the spatial dimensions `[1, ..., M]`, to obtain a result with the same rank as
		the input.  The spatial dimensions of this intermediate result are then
		optionally cropped according to `crops` to produce the output.  This is the
		reverse of SpaceToBatch.  See below for a precise description.
		
		Args:
		  input: A `Tensor`.
		    N-D with shape `input_shape = [batch] + spatial_shape + remaining_shape`,
		    where spatial_shape has M dimensions.
		  block_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[M]`, all values must be >= 1.
		  crops: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D with shape `[M, 2]`, all values must be >= 0.
		      `crops[i] = [crop_start, crop_end]` specifies the amount to crop from input
		      dimension `i + 1`, which corresponds to spatial dimension `i`.  It is
		      required that
		      `crop_start[i] + crop_end[i] <= block_shape[i] * input_shape[i + 1]`.
		
		    This operation is equivalent to the following steps:
		
		    1. Reshape `input` to `reshaped` of shape:
		         [block_shape[0], ..., block_shape[M-1],
		          batch / prod(block_shape),
		          input_shape[1], ..., input_shape[N-1]]
		
		    2. Permute dimensions of `reshaped` to produce `permuted` of shape
		         [batch / prod(block_shape),
		
		          input_shape[1], block_shape[0],
		          ...,
		          input_shape[M], block_shape[M-1],
		
		          input_shape[M+1], ..., input_shape[N-1]]
		
		    3. Reshape `permuted` to produce `reshaped_permuted` of shape
		         [batch / prod(block_shape),
		
		          input_shape[1] * block_shape[0],
		          ...,
		          input_shape[M] * block_shape[M-1],
		
		          input_shape[M+1],
		          ...,
		          input_shape[N-1]]
		
		    4. Crop the start and end of dimensions `[1, ..., M]` of
		       `reshaped_permuted` according to `crops` to produce the output of shape:
		         [batch / prod(block_shape),
		
		          input_shape[1] * block_shape[0] - crops[0,0] - crops[0,1],
		          ...,
		          input_shape[M] * block_shape[M-1] - crops[M-1,0] - crops[M-1,1],
		
		          input_shape[M+1], ..., input_shape[N-1]]
		
		    Some examples:
		
		    (1) For the following input of shape `[4, 1, 1, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    The output tensor has shape `[1, 2, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    (2) For the following input of shape `[4, 1, 1, 3]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    [[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
		    ```
		
		    The output tensor has shape `[1, 2, 2, 3]` and value:
		
		    ```
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    (3) For the following input of shape `[4, 2, 2, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    x = [[[[1], [3]], [[9], [11]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    The output tensor has shape `[1, 4, 4, 1]` and value:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		         [[5],   [6],  [7],  [8]],
		         [[9],  [10], [11],  [12]],
		         [[13], [14], [15],  [16]]]]
		    ```
		
		    (4) For the following input of shape `[8, 1, 3, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [2, 0]]`:
		
		    ```
		    x = [[[[0], [1], [3]]], [[[0], [9], [11]]],
		         [[[0], [2], [4]]], [[[0], [10], [12]]],
		         [[[0], [5], [7]]], [[[0], [13], [15]]],
		         [[[0], [6], [8]]], [[[0], [14], [16]]]]
		    ```
		
		    The output tensor has shape `[2, 2, 4, 1]` and value:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function BatchToSpaceND(input:Dynamic, block_shape:Dynamic, crops:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Bitcast(input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the shape of s0 op s1 with broadcast.
		
		Given `s0` and `s1`, tensors that represent shapes, compute `r0`, the
		broadcasted shape. `s0`, `s1` and `r0` are all integer vectors.
		
		Args:
		  s0: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  s1: A `Tensor`. Must have the same type as `s0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `s0`.
	**/
	static public function BroadcastArgs(s0:Dynamic, s1:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the reduction indices for computing gradients of s0 op s1 with broadcast.
		
		This is typically used by gradient computations for a broadcasting operation.
		
		Args:
		  s0: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  s1: A `Tensor`. Must have the same type as `s0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (r0, r1).
		
		  r0: A `Tensor`. Has the same type as `s0`.
		  r1: A `Tensor`. Has the same type as `s0`.
	**/
	static public function BroadcastGradientArgs(s0:Dynamic, s1:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function BroadcastTo(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function CheckNumerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN, -Inf and +Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, returns the input
		tensor. Unlike CheckNumerics (V1), CheckNumericsV2 distinguishes -Inf and +Inf
		in the errors it throws.
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function CheckNumericsV2(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [0, rank(values)).
		  values: A list of at least 2 `Tensor` objects with the same type.
		    The `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function Concat(concat_dim:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes offsets of concat inputs within its output.
		
		For example:
		
		```
		# 'x' is [2, 2, 7]
		# 'y' is [2, 3, 7]
		# 'z' is [2, 5, 7]
		concat_offset(2, [x, y, z]) => [0, 0, 0], [0, 2, 0], [0, 5, 0]
		```
		
		This is typically used by gradient computations for a concat operation.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    The dimension along which to concatenate.
		  shape: A list of at least 2 `Tensor` objects with type `int32`.
		    The `N` int32 vectors representing shape of tensors being concatenated.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `shape` of `Tensor` objects with type `int32`.
	**/
	static public function ConcatOffset(concat_dim:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Args:
		  values: A list of at least 2 `Tensor` objects with the same type.
		    List of `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [-rank(values), rank(values)).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function ConcatV2(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shuffle dimensions of x according to a permutation and conjugate the result.
		
		The output `y` has the same rank as `x`. The shapes of `x` and `y` satisfy:
		  `y.shape[i] == x.shape[perm[i]] for i in [0, 1, ..., rank(x) - 1]`
		  `y[i,j,k,...,s,t,u] == conj(x[perm[i], perm[j], perm[k],...,perm[s], perm[t], perm[u]])`
		
		Args:
		  x: A `Tensor`.
		  perm: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function ConjugateTranspose(x:Dynamic, perm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a constant tensor.
		
		Args:
		  value: A `tf.TensorProto`. Attr `value` is the tensor to return.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function Const(value:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Identity op for gradient debugging.
		
		This op is hidden from public in Python. It is used by TensorFlow Debugger to
		register gradient tensors for gradient debugging.
		This op operates on non-reference-type tensors.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function DebugGradientIdentity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Identity op for gradient debugging.
		
		This op is hidden from public in Python. It is used by TensorFlow Debugger to
		register gradient tensors for gradient debugging.
		This op operates on reference-type tensors.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function DebugGradientRefIdentity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes a copy of `x`.
		
		Args:
		  x: A `Tensor`. The source tensor of type `T`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function DeepCopy(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DepthToSpace for tensors of type T.
		
		Rearranges data from depth into blocks of spatial data.
		This is the reverse transformation of SpaceToDepth. More specifically,
		this op outputs a copy of the input tensor where values from the `depth`
		dimension are moved in spatial blocks to the `height` and `width` dimensions.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Chunks of data of size `block_size * block_size` from depth are rearranged
		    into non-overlapping blocks of size `block_size x block_size`
		  * The width the output tensor is `input_depth * block_size`, whereas the
		    height is `input_height * block_size`.
		  * The Y, X coordinates within each block of the output image are determined
		    by the high order component of the input channel index.
		  * The depth of the input tensor must be divisible by
		    `block_size * block_size`.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,iY,iX,bY,bX,oC  (where n=batch index, iX, iY means X or Y coordinates
		                        within the input image, bX, bY means coordinates
		                        within the output block, oC means output channels).
		     The output would be the input transposed to the following layout:
		     n,iY,bY,iX,bX,oC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 1, 1, 4]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1, 2, 3, 4]]]]
		
		```
		
		This operation will output a tensor of shape `[1, 2, 2, 1]`:
		
		```
		   [[[[1], [2]],
		     [[3], [4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
		the corresponding output will have 2x2 elements and will have a depth of
		1 channel (1 = `4 / (block_size * block_size)`).
		The output element shape is `[2, 2, 1]`.
		
		For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.
		
		```
		x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		This operation, for block size of 2, will return the following tensor of shape
		`[1, 2, 2, 3]`
		
		```
		   [[[[1, 2, 3], [4, 5, 6]],
		     [[7, 8, 9], [10, 11, 12]]]]
		
		```
		
		Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:
		
		```
		x =  [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		the operator will return the following tensor of shape `[1 4 4 1]`:
		
		```
		x = [[[ [1],   [2],  [5],  [6]],
		      [ [3],   [4],  [7],  [8]],
		      [ [9],  [10], [13],  [14]],
		      [ [11], [12], [15],  [16]]]]
		
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`.
		    The size of the spatial block, same as in Space2Depth.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function DepthToSpace(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequantize the 'input' tensor into a float or bfloat16 Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the output. The 'mode' attribute controls exactly which calculations are
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
		
		If the mode is `SCALED`, dequantization is performed by multiplying each
		input value by a scaling_factor. (Thus an input of 0 always maps to 0.0).
		
		The scaling_factor is determined from `min_range`, `max_range`, and
		`narrow_range` in a way that is compatible with `QuantizeAndDequantize{V2|V3}`
		and `QuantizeV2`, using the following algorithm:
		
		```c++
		
		  const int min_expected_T = std::numeric_limits<T>::min() +
		    (narrow_range ? 1 : 0);
		  const int max_expected_T = std::numeric_limits<T>::max();
		  const float max_expected_T = std::numeric_limits<float>::max();
		
		  const float scale_factor =
		    (std::numeric_limits<T>::min() == 0) ? (max_range / max_expected_T)
		                                         : std::max(min_range / min_expected_T,
		                                                    max_range / max_expected_T);
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  dtype: An optional `tf.DType` from: `tf.bfloat16, tf.float32`. Defaults to `tf.float32`.
		    Type of the output tensor. Currently Dequantize supports float and bfloat16.
		    If 'dtype' is 'bfloat16', it only supports 'MIN_COMBINED' mode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function Dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a diagonal tensor with a given diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has dimensions [D1,..., Dk], then the output is a tensor of
		rank 2k with dimensions [D1,..., Dk, D1,..., Dk] where:
		
		`output[i1,..., ik, i1,..., ik] = diagonal[i1, ..., ik]` and 0 everywhere else.
		
		For example:
		
		```
		# 'diagonal' is [1, 2, 3, 4]
		tf.diag(diagonal) ==> [[1, 0, 0, 0]
		                       [0, 2, 0, 0]
		                       [0, 0, 3, 0]
		                       [0, 0, 0, 4]]
		```
		
		Args:
		  diagonal: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is at most 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function Diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For example:
		
		```
		# 'input' is [[1, 0, 0, 0]
		              [0, 2, 0, 0]
		              [0, 0, 3, 0]
		              [0, 0, 0, 4]]
		
		tf.diag_part(input) ==> [1, 2, 3, 4]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is even and not zero.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function DiagPart(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the (possibly normalized) Levenshtein Edit Distance.
		
		The inputs are variable-length sequences provided by SparseTensors
		  (hypothesis_indices, hypothesis_values, hypothesis_shape)
		and
		  (truth_indices, truth_values, truth_shape).
		
		The inputs are:
		
		Args:
		  hypothesis_indices: A `Tensor` of type `int64`.
		    The indices of the hypothesis list SparseTensor.
		    This is an N x R int64 matrix.
		  hypothesis_values: A `Tensor`.
		    The values of the hypothesis list SparseTensor.
		    This is an N-length vector.
		  hypothesis_shape: A `Tensor` of type `int64`.
		    The shape of the hypothesis list SparseTensor.
		    This is an R-length vector.
		  truth_indices: A `Tensor` of type `int64`.
		    The indices of the truth list SparseTensor.
		    This is an M x R int64 matrix.
		  truth_values: A `Tensor`. Must have the same type as `hypothesis_values`.
		    The values of the truth list SparseTensor.
		    This is an M-length vector.
		  truth_shape: A `Tensor` of type `int64`. truth indices, vector.
		  normalize: An optional `bool`. Defaults to `True`.
		    boolean (if true, edit distances are normalized by length of truth).
		
		    The output is:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function EditDistance(hypothesis_indices:Dynamic, hypothesis_values:Dynamic, hypothesis_shape:Dynamic, truth_indices:Dynamic, truth_values:Dynamic, truth_shape:Dynamic, ?normalize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with the given shape.
		
		This operation creates a tensor of `shape` and `dtype`.
		
		  Args:
		    shape: A `Tensor` of type `int32`.
		      1-D. Represents the shape of the output tensor.
		    dtype: A `tf.DType`.
		    init: An optional `bool`. Defaults to `False`.
		      If True, initialize the returned tensor with the default value of dtype.  Otherwise, the implementation is free not to initializethe tensor's content.
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor` of type `dtype`.
		  
	**/
	static public function Empty(shape:Dynamic, dtype:Dynamic, ?init:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Ensures that the tensor's shape matches the expected shape.
		
		Raises an error if the input tensor's shape does not match the specified shape.
		Returns the input tensor otherwise.
		
		Args:
		  input: A `Tensor`. A tensor, whose shape is to be validated.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The expected (possibly partially specified) shape of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function EnsureShape(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a dimension of 1 into a tensor's shape.
		
		Given a tensor `input`, this operation inserts a dimension of 1 at the
		dimension index `axis` of `input`'s shape. The dimension index `axis` starts at
		zero; if you specify a negative number for `axis` it is counted backward from
		the end.
		
		This operation is useful if you want to add a batch dimension to a single
		element. For example, if you have a single image of shape `[height, width,
		channels]`, you can make it a batch of 1 image with `expand_dims(image, 0)`,
		which will make the shape `[1, height, width, channels]`.
		
		Other examples:
		
		```
		# 't' is a tensor of shape [2]
		shape(expand_dims(t, 0)) ==> [1, 2]
		shape(expand_dims(t, 1)) ==> [2, 1]
		shape(expand_dims(t, -1)) ==> [2, 1]
		
		# 't2' is a tensor of shape [2, 3, 5]
		shape(expand_dims(t2, 0)) ==> [1, 2, 3, 5]
		shape(expand_dims(t2, 2)) ==> [2, 3, 1, 5]
		shape(expand_dims(t2, 3)) ==> [2, 3, 5, 1]
		```
		
		This operation requires that:
		
		`-1-input.dims() <= dim <= input.dims()`
		
		This operation is related to `squeeze()`, which removes dimensions of
		size 1.
		
		Args:
		  input: A `Tensor`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D (scalar). Specifies the dimension index at which to
		    expand the shape of `input`. Must be in the range
		    `[-rank(input) - 1, rank(input)]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ExpandDims(input:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract `patches` from `images` and put them in the "depth" output dimension.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `complex64`, `complex128`, `bool`.
		    4-D Tensor with shape `[batch, in_rows, in_cols, depth]`.
		  ksizes: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `images`.
		  strides: A list of `ints` that has length `>= 4`.
		    How far the centers of two consecutive patches are in
		    the images. Must be: `[1, stride_rows, stride_cols, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    Must be: `[1, rate_rows, rate_cols, 1]`. This is the
		    input stride, specifying how far two consecutive patch samples are in the
		    input. Equivalent to extracting patches with
		    `patch_sizes_eff = patch_sizes + (patch_sizes - 1) * (rates - 1)`, followed by
		    subsampling them spatially by a factor of `rates`. This is equivalent to
		    `rate` in dilated (a.k.a. Atrous) convolutions.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function ExtractImagePatches(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ExtractVolumePatches(input:Dynamic, ksizes:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor, type float to 'outputs' tensor of same type.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		Quantization is called fake since the output is still in floating point.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function FakeQuantWithMinMaxArgs(inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxArgs operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxArgs operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxArgs operation.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function FakeQuantWithMinMaxArgsGradient(gradients:Dynamic, inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via global float scalars
		
		Fake-quantize the `inputs` tensor of type float via global float scalars
		`min` and `max` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function FakeQuantWithMinMaxVars(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVars operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation.
		    min, max: Quantization interval, scalar floats.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 8, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function FakeQuantWithMinMaxVarsGradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via per-channel floats
		
		Fake-quantize the `inputs` tensor of type float per-channel and one of the
		shapes: `[d]`, `[b, d]` `[b, h, w, d]` via per-channel floats `min` and `max`
		of shape `[d]` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function FakeQuantWithMinMaxVarsPerChannel(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVarsPerChannel operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation,
		    shape one of: `[d]`, `[b, d]`,  `[b, h, w, d]`.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation, shape
		      same as `gradients`.
		    min, max: Quantization interval, floats of shape `[d]`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 16, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function FakeQuantWithMinMaxVarsPerChannelGradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor filled with a scalar value.
		
		This operation creates a tensor of shape `dims` and fills it with `value`.
		
		For example:
		
		```
		# Output tensor has shape [2, 3].
		fill([2, 3], 9) ==> [[9, 9, 9]
		                     [9, 9, 9]]
		```
		
		`tf.fill` differs from `tf.constant` in a few ways:
		
		*   `tf.fill` only supports scalar contents, whereas `tf.constant` supports
		    Tensor values.
		*   `tf.fill` creates an Op in the computation graph that constructs the actual
		    Tensor value at runtime. This is in contrast to `tf.constant` which embeds
		    the entire Tensor into the graph with a `Const` node.
		*   Because `tf.fill` evaluates at graph runtime, it supports dynamic shapes
		    based on other runtime Tensors, unlike `tf.constant`.
		
		Args:
		  dims: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. Represents the shape of the output tensor.
		  value: A `Tensor`. 0-D (scalar). Value to fill the returned tensor.
		
		    @compatibility(numpy)
		    Equivalent to np.full
		    @end_compatibility
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function Fill(dims:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates fingerprint values.
		
		Generates fingerprint values of `data`.
		
		Fingerprint op considers the first dimension of `data` as the batch dimension,
		and `output[i]` contains the fingerprint value generated from contents in
		`data[i, ...]` for all `i`.
		
		Fingerprint op writes fingerprint values as byte arrays. For example, the
		default method `farmhash64` generates a 64-bit fingerprint value at a time.
		This 8-byte value is written out as an `uint8` array of size 8, in little-endian
		order.
		
		For example, suppose that `data` has data type `DT_INT32` and shape (2, 3, 4),
		and that the fingerprint method is `farmhash64`. In this case, the output shape
		is (2, 8), where 2 is the batch dimension size of `data`, and 8 is the size of
		each fingerprint value in bytes. `output[0, :]` is generated from 12 integers in
		`data[0, :, :]` and similarly `output[1, :]` is generated from other 12 integers
		in `data[1, :, :]`.
		
		Note that this op fingerprints the raw underlying buffer, and it does not
		fingerprint Tensor's metadata such as data type and/or shape. For example, the
		fingerprint values are invariant under reshapes and bitcasts as long as the
		batch dimension remain the same:
		
		```
		Fingerprint(data) == Fingerprint(Reshape(data, ...))
		Fingerprint(data) == Fingerprint(Bitcast(data, ...))
		```
		
		For string data, one should expect `Fingerprint(data) !=
		Fingerprint(ReduceJoin(data))` in general.
		
		Args:
		  data: A `Tensor`. Must have rank 1 or higher.
		  method: A `Tensor` of type `string`.
		    Fingerprint method used by this op. Currently available method is
		    `farmhash::fingerprint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function Fingerprint(data:Dynamic, method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `indices.shape + params.shape[1:]` where:
		
		```python
		    # Scalar indices
		    output[:, ..., :] = params[indices, :, ... :]
		
		    # Vector indices
		    output[i, :, ..., :] = params[indices[i], :, ... :]
		
		    # Higher rank indices
		    output[i, ..., j, :, ... :] = params[indices[i, ..., j], :, ..., :]
		```
		
		If `indices` is a permutation and `len(indices) == params.shape[0]` then
		this operation will permute `params` accordingly.
		
		`validate_indices`: DEPRECATED. If this operation is assigned to CPU, values in
		`indices` are always validated to be within range. If assigned to GPU,
		out-of-bound indices result in safe but unspecified behavior, which may include
		raising an error.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/Gather.png" alt>
		</div>
		
		Args:
		  params: A `Tensor`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function Gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` into a Tensor with shape specified by `indices`.
		
		`indices` is a K-dimensional integer tensor, best thought of as a
		(K-1)-dimensional tensor of indices into `params`, where each element defines a
		slice of `params`:
		
		    output[\\(i_0, ..., i_{K-2}\\)] = params[indices[\\(i_0, ..., i_{K-2}\\)]]
		
		Whereas in `tf.gather` `indices` defines slices into the `axis`
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
		
		See also `tf.gather` and `tf.batch_gather`.
		
		Args:
		  params: A `Tensor`. The tensor from which to gather values.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function GatherNd(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` axis `axis` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `params.shape[:axis] +
		indices.shape[batch_dims:] + params.shape[axis + 1:]` where:
		
		```python
		    # Scalar indices (output is rank(params) - 1).
		    output[a_0, ..., a_n, b_0, ..., b_n] =
		      params[a_0, ..., a_n, indices, b_0, ..., b_n]
		
		    # Vector indices (output is rank(params)).
		    output[a_0, ..., a_n, i, b_0, ..., b_n] =
		      params[a_0, ..., a_n, indices[i], b_0, ..., b_n]
		
		    # Higher rank indices (output is rank(params) + rank(indices) - 1).
		    output[a_0, ..., a_n, i, ..., j, b_0, ... b_n] =
		      params[a_0, ..., a_n, indices[i, ..., j], b_0, ..., b_n]
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/Gather.png" alt>
		</div>
		
		Note that on CPU, if an out of bound index is found, an error is returned.
		On GPU, if an out of bound index is found, a 0 is stored in the
		corresponding output value.
		
		See also `tf.batch_gather` and `tf.gather_nd`.
		
		Args:
		  params: A `Tensor`.
		    The tensor from which to gather values. Must be at least rank
		    `axis + 1`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Index tensor. Must be in range `[0, params.shape[axis])`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The axis in `params` to gather `indices` from. Defaults to the first
		    dimension. Supports negative indexes.
		  batch_dims: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function GatherV2(params:Dynamic, indices:Dynamic, axis:Dynamic, ?batch_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gives a guarantee to the TF runtime that the input tensor is a constant.
		
		The runtime is then free to make optimizations based on this.
		
		Only accepts value typed tensors as inputs and rejects resource variable handles
		as input.
		
		Returns the input tensor without modification.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function GuaranteeConst(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a tensor with the same shape and contents as the input tensor or value.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Identity(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function IdentityN(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns immutable tensor from memory region.
		
		The current implementation memmaps the tensor from a file.
		
		Args:
		  dtype: A `tf.DType`. Type of the returned tensor.
		  shape: A `tf.TensorShape` or list of `ints`. Shape of the returned tensor.
		  memory_region_name: A `string`.
		    Name of readonly memory region used by the tensor, see
		    NewReadOnlyMemoryRegionFromFile in tensorflow::Env.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function ImmutableConst(dtype:Dynamic, shape:Dynamic, memory_region_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds v into specified rows of x.
		
		    Computes y = x; y[i, :] += v; return y.
		
		Args:
		  x: A `Tensor`. A `Tensor` of type T.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function InplaceAdd(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts `v` into specified rows of `x`.
		
		  Computes y = x; y[i, :] -= v; return y.
		
		Args:
		  x: A `Tensor`. A `Tensor` of type T.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function InplaceSub(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates specified rows 'i' with values 'v'.
		
		Computes `x[i, :] = v; return x`.
		
		Originally this function is mutative however for compilation we make this
		operation create / operate on a copy of `x`.
		
		Args:
		  x: A `Tensor`. A tensor of type `T`.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function InplaceUpdate(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function InvertPermutation(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		
		  out: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function ListDiff(x:Dynamic, y:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies lower_bound(sorted_search_values, values) along each row.
		
		Each set of rows with the same index in (sorted_inputs, values) is treated
		independently.  The resulting row is the equivalent of calling
		`np.searchsorted(sorted_inputs, values, side='left')`.
		
		The result is not a global index to the entire
		`Tensor`, but rather just the index in the last dimension.
		
		A 2-D example:
		  sorted_sequence = [[0, 3, 9, 9, 10],
		                     [1, 2, 3, 4, 5]]
		  values = [[2, 4, 9],
		            [0, 2, 6]]
		
		  result = LowerBound(sorted_sequence, values)
		
		  result == [[1, 2, 2],
		             [0, 1, 5]]
		
		Args:
		  sorted_inputs: A `Tensor`. 2-D Tensor where each row is ordered.
		  values: A `Tensor`. Must have the same type as `sorted_inputs`.
		    2-D Tensor with the same numbers of rows as `sorted_search_values`. Contains
		    the values that will be searched for in `sorted_search_values`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function LowerBound(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix to zero.
		
		The `band` part is computed as follows:
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor with the same shape where
		
		`band[i, j, k, ..., m, n] = in_band(m, n) * input[i, j, k, ..., m, n]`.
		
		The indicator function
		
		`in_band(m, n) = (num_lower < 0 || (m-n) <= num_lower)) &&
		                 (num_upper < 0 || (n-m) <= num_upper)`.
		
		For example:
		
		```
		# if 'input' is [[ 0,  1,  2, 3]
		#                [-1,  0,  1, 2]
		#                [-2, -1,  0, 1]
		#                [-3, -2, -1, 0]],
		
		tf.linalg.band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                       [-1,  0,  1, 2]
		                                       [ 0, -1,  0, 1]
		                                       [ 0,  0, -1, 0]],
		
		tf.linalg.band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                      [-1,  0,  1, 0]
		                                      [-2, -1,  0, 1]
		                                      [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```
		 tf.linalg.band_part(input, 0, -1) ==> Upper triangular part.
		 tf.linalg.band_part(input, -1, 0) ==> Lower triangular part.
		 tf.linalg.band_part(input, 0, 0) ==> Diagonal.
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor.
		  num_lower: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of subdiagonals to keep. If negative, keep entire
		    lower triangle.
		  num_upper: A `Tensor`. Must have the same type as `num_lower`.
		    0-D tensor. Number of superdiagonals to keep. If negative, keep
		    entire upper triangle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixBandPart(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with a given batched diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has `k` dimensions `[I, J, K, ..., N]`, then the output is a
		tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:
		
		`output[i, j, k, ..., m, n] = 1{m=n} * diagonal[i, j, k, ..., n]`.
		
		For example:
		
		```
		# 'diagonal' is [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		and diagonal.shape = (2, 4)
		
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0]
		                                     [0, 2, 0, 0]
		                                     [0, 0, 3, 0]
		                                     [0, 0, 0, 4]],
		                                    [[5, 0, 0, 0]
		                                     [0, 6, 0, 0]
		                                     [0, 0, 7, 0]
		                                     [0, 0, 0, 8]]]
		
		which has shape (2, 4, 4)
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function MatrixDiag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the batched `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor of rank `k - 1` with dimensions `[I, J, K, ..., min(M, N)]` where:
		
		`diagonal[i, j, k, ..., n] = input[i, j, k, ..., n, n]`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		# 'input' is [[[1, 0, 0, 0]
		               [0, 2, 0, 0]
		               [0, 0, 3, 0]
		               [0, 0, 0, 4]],
		              [[5, 0, 0, 0]
		               [0, 6, 0, 0]
		               [0, 0, 7, 0]
		               [0, 0, 0, 8]]]
		
		and input.shape = (2, 4, 4)
		
		tf.matrix_diag_part(input) ==> [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		which has shape (2, 4)
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor where `k >= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixDiagPart(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		Returns a tensor with the `k[0]`-th to `k[1]`-th diagonals of the batched
		`input`.
		
		Assume `input` has `r` dimensions `[I, J, ..., L, M, N]`.
		Let `max_diag_len` be the maximum length among all diagonals to be extracted,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		Let `num_diags` be the number of diagonals to extract,
		`num_diags = k[1] - k[0] + 1`.
		
		If `num_diags == 1`, the output tensor is of rank `r - 1` with shape
		`[I, J, ..., L, max_diag_len]` and values:
		
		```
		diagonal[i, j, ..., l, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `y = max(-k[1], 0)`, `x = max(k[1], 0)`.
		
		Otherwise, the output tensor has rank `r` with dimensions
		`[I, J, ..., L, num_diags, max_diag_len]` with values:
		
		```
		diagonal[i, j, ..., l, m, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `d = k[1] - m`, `y = max(-d, 0)`, and `x = max(d, 0)`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		input = np.array([[[1, 2, 3, 4],  # Input shape: (2, 3, 4)
		                   [5, 6, 7, 8],
		                   [9, 8, 7, 6]],
		                  [[5, 4, 3, 2],
		                   [1, 2, 3, 4],
		                   [5, 6, 7, 8]]])
		
		# A main diagonal from each batch.
		tf.matrix_diag_part(input) ==> [[1, 6, 7],  # Output shape: (2, 3)
		                                [5, 2, 7]]
		
		# A superdiagonal from each batch.
		tf.matrix_diag_part(input, k = 1)
		  ==> [[2, 7, 6],  # Output shape: (2, 3)
		       [4, 3, 8]]
		
		# A tridiagonal band from each batch.
		tf.matrix_diag_part(input, k = (-1, 1))
		  ==> [[[2, 7, 6],  # Output shape: (2, 3, 3)
		        [1, 6, 7],
		        [5, 8, 0]],
		       [[4, 3, 8],
		        [5, 2, 7],
		        [1, 6, 0]]]
		
		# Padding value = 9
		tf.matrix_diag_part(input, k = (1, 3), padding_value = 9)
		  ==> [[[4, 9, 9],  # Output shape: (2, 3, 3)
		        [3, 8, 9],
		        [2, 7, 6]],
		       [[2, 9, 9],
		        [3, 4, 9],
		        [4, 3, 8]]]
		```
		
		Args:
		  input: A `Tensor`. Rank `r` tensor where `r >= 2`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  padding_value: A `Tensor`. Must have the same type as `input`.
		    The value to fill the area outside the specified diagonal band with.
		    Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixDiagPartV2(input:Dynamic, k:Dynamic, padding_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		Returns a tensor with the `k[0]`-th to `k[1]`-th diagonals of the batched
		`input`.
		
		Assume `input` has `r` dimensions `[I, J, ..., L, M, N]`.
		Let `max_diag_len` be the maximum length among all diagonals to be extracted,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		Let `num_diags` be the number of diagonals to extract,
		`num_diags = k[1] - k[0] + 1`.
		
		If `num_diags == 1`, the output tensor is of rank `r - 1` with shape
		`[I, J, ..., L, max_diag_len]` and values:
		
		```
		diagonal[i, j, ..., l, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `y = max(-k[1], 0)`, `x = max(k[1], 0)`.
		
		Otherwise, the output tensor has rank `r` with dimensions
		`[I, J, ..., L, num_diags, max_diag_len]` with values:
		
		```
		diagonal[i, j, ..., l, m, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `d = k[1] - m`, `y = max(-d, 0) - offset`, and `x = max(d, 0) - offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		input = np.array([[[1, 2, 3, 4],  # Input shape: (2, 3, 4)
		                   [5, 6, 7, 8],
		                   [9, 8, 7, 6]],
		                  [[5, 4, 3, 2],
		                   [1, 2, 3, 4],
		                   [5, 6, 7, 8]]])
		
		# A main diagonal from each batch.
		tf.matrix_diag_part(input) ==> [[1, 6, 7],  # Output shape: (2, 3)
		                                [5, 2, 7]]
		
		# A superdiagonal from each batch.
		tf.matrix_diag_part(input, k = 1)
		  ==> [[2, 7, 6],  # Output shape: (2, 3)
		       [4, 3, 8]]
		
		# A band from each batch.
		tf.matrix_diag_part(input, k = (-1, 2))
		  ==> [[[0, 3, 8],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [5, 8, 0]],
		       [[0, 3, 4],
		        [4, 3, 8],
		        [5, 2, 7],
		        [1, 6, 0]]]
		
		# LEFT_RIGHT alignment.
		tf.matrix_diag_part(input, k = (-1, 2), align="LEFT_RIGHT")
		  ==> [[[3, 8, 0],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [0, 5, 8]],
		       [[3, 4, 0],
		        [4, 3, 8],
		        [5, 2, 7],
		        [0, 1, 6]]]
		
		# max_diag_len can be shorter than the main diagonal.
		tf.matrix_diag_part(input, k = (-2, -1))
		  ==> [[[5, 8],
		        [9, 0]],
		       [[1, 6],
		        [5, 0]]]
		
		# padding_value = 9
		tf.matrix_diag_part(input, k = (1, 3), padding_value = 9)
		  ==> [[[9, 9, 4],  # Output shape: (2, 3, 3)
		        [9, 3, 8],
		        [2, 7, 6]],
		       [[9, 9, 2],
		        [9, 3, 4],
		        [4, 3, 8]]]
		
		```
		
		Args:
		  input: A `Tensor`. Rank `r` tensor where `r >= 2`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  padding_value: A `Tensor`. Must have the same type as `input`.
		    The value to fill the area outside the specified diagonal band with.
		    Default is 0.
		  align: An optional `string` from: `"LEFT_RIGHT", "RIGHT_LEFT", "LEFT_LEFT", "RIGHT_RIGHT"`. Defaults to `"RIGHT_LEFT"`.
		    Some diagonals are shorter than `max_diag_len` and need to be padded. `align` is
		    a string specifying how superdiagonals and subdiagonals should be aligned,
		    respectively. There are four possible alignments: "RIGHT_LEFT" (default),
		    "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT" aligns superdiagonals
		    to the right (left-pads the row) and subdiagonals to the left (right-pads the
		    row). It is the packing format LAPACK uses. cuSPARSE uses "LEFT_RIGHT", which is
		    the opposite alignment.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixDiagPartV3(input:Dynamic, k:Dynamic, padding_value:Dynamic, ?align:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with given batched diagonal values.
		
		Returns a tensor with the contents in `diagonal` as `k[0]`-th to `k[1]`-th
		diagonals of a matrix, with everything else padded with `padding`. `num_rows`
		and `num_cols` specify the dimension of the innermost matrix of the output. If
		both are not specified, the op assumes the innermost matrix is square and infers
		its size from `k` and the innermost dimension of `diagonal`. If only one of them
		is specified, the op assumes the unspecified value is the smallest possible
		based on other criteria.
		
		Let `diagonal` have `r` dimensions `[I, J, ..., L, M, N]`. The output tensor has
		rank `r+1` with shape `[I, J, ..., L, M, num_rows, num_cols]` when only one
		diagonal is given (`k` is an integer or `k[0] == k[1]`). Otherwise, it has rank
		`r` with shape `[I, J, ..., L, num_rows, num_cols]`.
		
		The second innermost dimension of `diagonal` has double meaning.
		When `k` is scalar or `k[0] == k[1]`, `M` is part of the batch size
		[I, J, ..., M], and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(d_upper, 0)] ; if n - m == d_upper
		    padding_value                             ; otherwise
		```
		
		Otherwise, `M` is treated as the number of diagonals for the matrix in the
		same batch (`M = k[1]-k[0]+1`), and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    padding_value                                     ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and `index_in_diag = n - max(d, 0)`.
		
		For example:
		
		```
		# The main diagonal.
		diagonal = np.array([[1, 2, 3, 4],            # Input shape: (2, 4)
		                     [5, 6, 7, 8]])
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0],  # Output shape: (2, 4, 4)
		                               [0, 2, 0, 0],
		                               [0, 0, 3, 0],
		                               [0, 0, 0, 4]],
		                              [[5, 0, 0, 0],
		                               [0, 6, 0, 0],
		                               [0, 0, 7, 0],
		                               [0, 0, 0, 8]]]
		
		# A superdiagonal (per batch).
		diagonal = np.array([[1, 2, 3],  # Input shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_diag(diagonal, k = 1)
		  ==> [[[0, 1, 0, 0],  # Output shape: (2, 4, 4)
		        [0, 0, 2, 0],
		        [0, 0, 0, 3],
		        [0, 0, 0, 0]],
		       [[0, 4, 0, 0],
		        [0, 0, 5, 0],
		        [0, 0, 0, 6],
		        [0, 0, 0, 0]]]
		
		# A band of diagonals.
		diagonals = np.array([[[1, 2, 3],  # Input shape: (2, 2, 3)
		                       [4, 5, 0]],
		                      [[6, 7, 9],
		                       [9, 1, 0]]])
		tf.matrix_diag(diagonals, k = (-1, 0))
		  ==> [[[1, 0, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 0],
		        [0, 5, 3]],
		       [[6, 0, 0],
		        [9, 7, 0],
		        [0, 1, 9]]]
		
		# Rectangular matrix.
		diagonal = np.array([1, 2])  # Input shape: (2)
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, num_cols = 4)
		  ==> [[0, 0, 0, 0],  # Output shape: (3, 4)
		       [1, 0, 0, 0],
		       [0, 2, 0, 0]]
		
		# Rectangular matrix with inferred num_cols and padding_value = 9.
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, padding_value = 9)
		  ==> [[9, 9],  # Output shape: (3, 2)
		       [1, 9],
		       [9, 2]]
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `r`, where `r >= 1`
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  num_rows: A `Tensor` of type `int32`.
		    The number of rows of the output matrix. If it is not provided, the op assumes
		    the output matrix is a square matrix and infers the matrix size from k and the
		    innermost dimension of `diagonal`.
		  num_cols: A `Tensor` of type `int32`.
		    The number of columns of the output matrix. If it is not provided, the op
		    assumes the output matrix is a square matrix and infers the matrix size from
		    k and the innermost dimension of `diagonal`.
		  padding_value: A `Tensor`. Must have the same type as `diagonal`.
		    The number to fill the area outside the specified diagonal band with.
		    Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function MatrixDiagV2(diagonal:Dynamic, k:Dynamic, num_rows:Dynamic, num_cols:Dynamic, padding_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with given batched diagonal values.
		
		Returns a tensor with the contents in `diagonal` as `k[0]`-th to `k[1]`-th
		diagonals of a matrix, with everything else padded with `padding`. `num_rows`
		and `num_cols` specify the dimension of the innermost matrix of the output. If
		both are not specified, the op assumes the innermost matrix is square and infers
		its size from `k` and the innermost dimension of `diagonal`. If only one of them
		is specified, the op assumes the unspecified value is the smallest possible
		based on other criteria.
		
		Let `diagonal` have `r` dimensions `[I, J, ..., L, M, N]`. The output tensor has
		rank `r+1` with shape `[I, J, ..., L, M, num_rows, num_cols]` when only one
		diagonal is given (`k` is an integer or `k[0] == k[1]`). Otherwise, it has rank
		`r` with shape `[I, J, ..., L, num_rows, num_cols]`.
		
		The second innermost dimension of `diagonal` has double meaning.
		When `k` is scalar or `k[0] == k[1]`, `M` is part of the batch size
		[I, J, ..., M], and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(d_upper, 0)] ; if n - m == d_upper
		    padding_value                             ; otherwise
		```
		
		Otherwise, `M` is treated as the number of diagonals for the matrix in the
		same batch (`M = k[1]-k[0]+1`), and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    padding_value                                     ; otherwise
		```
		where `d = n - m`, `diag_index = [k] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		diagonal = np.array([[1, 2, 3, 4],            # Input shape: (2, 4)
		                     [5, 6, 7, 8]])
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0],  # Output shape: (2, 4, 4)
		                               [0, 2, 0, 0],
		                               [0, 0, 3, 0],
		                               [0, 0, 0, 4]],
		                              [[5, 0, 0, 0],
		                               [0, 6, 0, 0],
		                               [0, 0, 7, 0],
		                               [0, 0, 0, 8]]]
		
		# A superdiagonal (per batch).
		diagonal = np.array([[1, 2, 3],  # Input shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_diag(diagonal, k = 1)
		  ==> [[[0, 1, 0, 0],  # Output shape: (2, 4, 4)
		        [0, 0, 2, 0],
		        [0, 0, 0, 3],
		        [0, 0, 0, 0]],
		       [[0, 4, 0, 0],
		        [0, 0, 5, 0],
		        [0, 0, 0, 6],
		        [0, 0, 0, 0]]]
		
		# A tridiagonal band (per batch).
		diagonals = np.array([[[0, 8, 9],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 2, 3],
		                       [6, 7, 9],
		                       [9, 1, 0]]])
		tf.matrix_diag(diagonals, k = (-1, 1))
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# LEFT_RIGHT alignment.
		diagonals = np.array([[[8, 9, 0],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[2, 3, 0],
		                       [6, 7, 9],
		                       [0, 9, 1]]])
		tf.matrix_diag(diagonals, k = (-1, 1), align="LEFT_RIGHT")
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# Rectangular matrix.
		diagonal = np.array([1, 2])  # Input shape: (2)
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, num_cols = 4)
		  ==> [[0, 0, 0, 0],  # Output shape: (3, 4)
		       [1, 0, 0, 0],
		       [0, 2, 0, 0]]
		
		# Rectangular matrix with inferred num_cols and padding_value = 9.
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, padding_value = 9)
		  ==> [[9, 9],  # Output shape: (3, 2)
		       [1, 9],
		       [9, 2]]
		
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `r`, where `r >= 1`
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  num_rows: A `Tensor` of type `int32`.
		    The number of rows of the output matrix. If it is not provided, the op assumes
		    the output matrix is a square matrix and infers the matrix size from k and the
		    innermost dimension of `diagonal`.
		  num_cols: A `Tensor` of type `int32`.
		    The number of columns of the output matrix. If it is not provided, the op
		    assumes the output matrix is a square matrix and infers the matrix size from
		    k and the innermost dimension of `diagonal`.
		  padding_value: A `Tensor`. Must have the same type as `diagonal`.
		    The number to fill the area outside the specified diagonal band with.
		    Default is 0.
		  align: An optional `string` from: `"LEFT_RIGHT", "RIGHT_LEFT", "LEFT_LEFT", "RIGHT_RIGHT"`. Defaults to `"RIGHT_LEFT"`.
		    Some diagonals are shorter than `max_diag_len` and need to be padded. `align` is
		    a string specifying how superdiagonals and subdiagonals should be aligned,
		    respectively. There are four possible alignments: "RIGHT_LEFT" (default),
		    "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT" aligns superdiagonals
		    to the right (left-pads the row) and subdiagonals to the left (right-pads the
		    row). It is the packing format LAPACK uses. cuSPARSE uses "LEFT_RIGHT", which is
		    the opposite alignment.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function MatrixDiagV3(diagonal:Dynamic, k:Dynamic, num_rows:Dynamic, num_cols:Dynamic, padding_value:Dynamic, ?align:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the main diagonal of the
		innermost matrices.  These will be overwritten by the values in `diagonal`.
		
		The output is computed as follows:
		
		Assume `input` has `k+1` dimensions `[I, J, K, ..., M, N]` and `diagonal` has
		`k` dimensions `[I, J, K, ..., min(M, N)]`.  Then the output is a
		tensor of rank `k+1` with dimensions `[I, J, K, ..., M, N]` where:
		
		  * `output[i, j, k, ..., m, n] = diagonal[i, j, k, ..., n]` for `m == n`.
		  * `output[i, j, k, ..., m, n] = input[i, j, k, ..., m, n]` for `m != n`.
		
		Args:
		  input: A `Tensor`. Rank `k+1`, where `k >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixSetDiag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the specified diagonals of the
		innermost matrices. These will be overwritten by the values in `diagonal`.
		
		`input` has `r+1` dimensions `[I, J, ..., L, M, N]`. When `k` is scalar or
		`k[0] == k[1]`, `diagonal` has `r` dimensions `[I, J, ..., L, max_diag_len]`.
		Otherwise, it has `r+1` dimensions `[I, J, ..., L, num_diags, max_diag_len]`.
		`num_diags` is the number of diagonals, `num_diags = k[1] - k[0] + 1`.
		`max_diag_len` is the longest diagonal in the range `[k[0], k[1]]`,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		
		The output is a tensor of rank `k+1` with dimensions `[I, J, ..., L, M, N]`.
		If `k` is scalar or `k[0] == k[1]`:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(k[1], 0)] ; if n - m == k[1]
		    input[i, j, ..., l, m, n]              ; otherwise
		```
		
		Otherwise,
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    input[i, j, ..., l, m, n]                         ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and `index_in_diag = n - max(d, 0)`.
		
		For example:
		
		```
		# The main diagonal.
		input = np.array([[[7, 7, 7, 7],              # Input shape: (2, 3, 4)
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]],
		                  [[7, 7, 7, 7],
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]]])
		diagonal = np.array([[1, 2, 3],               # Diagonal shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_set_diag(diagonal) ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		                                   [7, 2, 7, 7],
		                                   [7, 7, 3, 7]],
		                                  [[4, 7, 7, 7],
		                                   [7, 5, 7, 7],
		                                   [7, 7, 6, 7]]]
		
		# A superdiagonal (per batch).
		tf.matrix_set_diag(diagonal, k = 1)
		  ==> [[[7, 1, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 7, 2, 7],
		        [7, 7, 7, 3]],
		       [[7, 4, 7, 7],
		        [7, 7, 5, 7],
		        [7, 7, 7, 6]]]
		
		# A band of diagonals.
		diagonals = np.array([[[1, 2, 3],  # Diagonal shape: (2, 2, 3)
		                       [4, 5, 0]],
		                      [[6, 1, 2],
		                       [3, 4, 0]]])
		tf.matrix_set_diag(diagonals, k = (-1, 0))
		  ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 7, 7],
		        [0, 5, 3, 7]],
		       [[6, 7, 7, 7],
		        [3, 1, 7, 7],
		        [7, 4, 2, 7]]]
		
		```
		
		Args:
		  input: A `Tensor`. Rank `r+1`, where `r >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `r` when `k` is an integer or `k[0] == k[1]`. Otherwise, it has rank `r+1`.
		    `k >= 1`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixSetDiagV2(input:Dynamic, diagonal:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the specified diagonals of the
		innermost matrices. These will be overwritten by the values in `diagonal`.
		
		`input` has `r+1` dimensions `[I, J, ..., L, M, N]`. When `k` is scalar or
		`k[0] == k[1]`, `diagonal` has `r` dimensions `[I, J, ..., L, max_diag_len]`.
		Otherwise, it has `r+1` dimensions `[I, J, ..., L, num_diags, max_diag_len]`.
		`num_diags` is the number of diagonals, `num_diags = k[1] - k[0] + 1`.
		`max_diag_len` is the longest diagonal in the range `[k[0], k[1]]`,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		
		The output is a tensor of rank `k+1` with dimensions `[I, J, ..., L, M, N]`.
		If `k` is scalar or `k[0] == k[1]`:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(k[1], 0)] ; if n - m == k[1]
		    input[i, j, ..., l, m, n]              ; otherwise
		```
		
		Otherwise,
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    input[i, j, ..., l, m, n]                         ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		input = np.array([[[7, 7, 7, 7],              # Input shape: (2, 3, 4)
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]],
		                  [[7, 7, 7, 7],
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]]])
		diagonal = np.array([[1, 2, 3],               # Diagonal shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_set_diag(input, diagonal)
		  ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 2, 7, 7],
		        [7, 7, 3, 7]],
		       [[4, 7, 7, 7],
		        [7, 5, 7, 7],
		        [7, 7, 6, 7]]]
		
		# A superdiagonal (per batch).
		tf.matrix_set_diag(input, diagonal, k = 1)
		  ==> [[[7, 1, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 7, 2, 7],
		        [7, 7, 7, 3]],
		       [[7, 4, 7, 7],
		        [7, 7, 5, 7],
		        [7, 7, 7, 6]]]
		
		# A band of diagonals.
		diagonals = np.array([[[0, 9, 1],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 1, 2],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [3, 4, 0]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2))
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		# LEFT_RIGHT alignment.
		diagonals = np.array([[[9, 1, 0],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[1, 2, 0],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [0, 3, 4]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2), align="LEFT_RIGHT")
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		```
		
		Args:
		  input: A `Tensor`. Rank `r+1`, where `r >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `r` when `k` is an integer or `k[0] == k[1]`. Otherwise, it has rank `r+1`.
		    `k >= 1`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  align: An optional `string` from: `"LEFT_RIGHT", "RIGHT_LEFT", "LEFT_LEFT", "RIGHT_RIGHT"`. Defaults to `"RIGHT_LEFT"`.
		    Some diagonals are shorter than `max_diag_len` and need to be padded. `align` is
		    a string specifying how superdiagonals and subdiagonals should be aligned,
		    respectively. There are four possible alignments: "RIGHT_LEFT" (default),
		    "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT" aligns superdiagonals
		    to the right (left-pads the row) and subdiagonals to the left (right-pads the
		    row). It is the packing format LAPACK uses. cuSPARSE uses "LEFT_RIGHT", which is
		    the opposite alignment.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MatrixSetDiagV3(input:Dynamic, diagonal:Dynamic, k:Dynamic, ?align:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pads a tensor with mirrored values.
		
		This operation pads a `input` with mirrored values according to the `paddings`
		you specify. `paddings` is an integer tensor with shape `[n, 2]`, where n is
		the rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
		how many values to add before the contents of `input` in that dimension, and
		`paddings[D, 1]` indicates how many values to add after the contents of `input`
		in that dimension. Both `paddings[D, 0]` and `paddings[D, 1]` must be no greater
		than `input.dim_size(D)` (or `input.dim_size(D) - 1`) if `copy_border` is true
		(if false, respectively).
		
		The padded size of each dimension D of the output is:
		
		`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 2, 3], [4, 5, 6]].
		# 'paddings' is [[1, 1]], [2, 2]].
		# 'mode' is SYMMETRIC.
		# rank of 't' is 2.
		pad(t, paddings) ==> [[2, 1, 1, 2, 3, 3, 2]
		                      [2, 1, 1, 2, 3, 3, 2]
		                      [5, 4, 4, 5, 6, 6, 5]
		                      [5, 4, 4, 5, 6, 6, 5]]
		```
		
		Args:
		  input: A `Tensor`. The input tensor to be padded.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		    Either `REFLECT` or `SYMMETRIC`. In reflect mode the padded regions
		    do not include the borders, while in symmetric mode the padded regions
		    do include the borders. For example, if `input` is `[1, 2, 3]` and `paddings`
		    is `[0, 2]`, then the output is `[1, 2, 3, 2, 1]` in reflect mode, and
		    it is `[1, 2, 3, 3, 2]` in symmetric mode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MirrorPad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradient op for `MirrorPad` op. This op folds a mirror-padded tensor.
		
		This operation folds the padded areas of `input` by `MirrorPad` according to the
		`paddings` you specify. `paddings` must be the same as `paddings` argument
		given to the corresponding `MirrorPad` op.
		
		The folded size of each dimension D of the output is:
		
		`input.dim_size(D) - paddings(D, 0) - paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 2, 3], [4, 5, 6], [7, 8, 9]].
		# 'paddings' is [[0, 1]], [0, 1]].
		# 'mode' is SYMMETRIC.
		# rank of 't' is 2.
		pad(t, paddings) ==> [[ 1,  5]
		                      [11, 28]]
		```
		
		Args:
		  input: A `Tensor`. The input tensor to be folded.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		    The mode used in the `MirrorPad` op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function MirrorPadGrad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
	static public var NEW_AXIS : Dynamic;
	/**
		Returns a one-hot tensor.
		
		The locations represented by indices in `indices` take value `on_value`,
		while all other locations take value `off_value`.
		
		If the input `indices` is rank `N`, the output will have rank `N+1`,
		The new axis is created at dimension `axis` (default: the new axis is
		appended at the end).
		
		If `indices` is a scalar the output shape will be a vector of length `depth`.
		
		If `indices` is a vector of length `features`, the output shape will be:
		```
		  features x depth if axis == -1
		  depth x features if axis == 0
		```
		
		If `indices` is a matrix (batch) with shape `[batch, features]`,
		the output shape will be:
		```
		  batch x features x depth if axis == -1
		  batch x depth x features if axis == 1
		  depth x batch x features if axis == 0
		```
		
		
		Examples
		=========
		
		Suppose that
		```
		  indices = [0, 2, -1, 1]
		  depth = 3
		  on_value = 5.0
		  off_value = 0.0
		  axis = -1
		```
		
		Then output is `[4 x 3]`:
		```
		output =
		  [5.0 0.0 0.0]  // one_hot(0)
		  [0.0 0.0 5.0]  // one_hot(2)
		  [0.0 0.0 0.0]  // one_hot(-1)
		  [0.0 5.0 0.0]  // one_hot(1)
		```
		
		Suppose that
		```
		  indices = [0, 2, -1, 1]
		  depth = 3
		  on_value = 0.0
		  off_value = 3.0
		  axis = 0
		```
		
		Then output is `[3 x 4]`:
		```
		output =
		  [0.0 3.0 3.0 3.0]
		  [3.0 3.0 3.0 0.0]
		  [3.0 3.0 3.0 3.0]
		  [3.0 0.0 3.0 3.0]
		//  ^                one_hot(0)
		//      ^            one_hot(2)
		//          ^        one_hot(-1)
		//              ^    one_hot(1)
		```
		
		Suppose that
		```
		  indices = [[0, 2], [1, -1]]
		  depth = 3
		  on_value = 1.0
		  off_value = 0.0
		  axis = -1
		```
		
		Then output is `[2 x 2 x 3]`:
		```
		output =
		  [
		    [1.0, 0.0, 0.0]  // one_hot(0)
		    [0.0, 0.0, 1.0]  // one_hot(2)
		  ][
		    [0.0, 1.0, 0.0]  // one_hot(1)
		    [0.0, 0.0, 0.0]  // one_hot(-1)
		  ]
		```
		
		Args:
		  indices: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`.
		    A tensor of indices.
		  depth: A `Tensor` of type `int32`.
		    A scalar defining the depth of the one hot dimension.
		  on_value: A `Tensor`.
		    A scalar defining the value to fill in output when `indices[j] = i`.
		  off_value: A `Tensor`. Must have the same type as `on_value`.
		    A scalar defining the value to fill in output when `indices[j] != i`.
		  axis: An optional `int`. Defaults to `-1`.
		    The axis to fill (default: -1, a new inner-most axis).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `on_value`.
	**/
	static public function OneHot(indices:Dynamic, depth:Dynamic, on_value:Dynamic, off_value:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a tensor of ones with the same shape and type as x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `complex64`, `complex128`, `bool`.
		    a tensor of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function OnesLike(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Packs a list of `N` rank-`R` tensors into one rank-`(R+1)` tensor.
		
		Packs the `N` tensors in `values` into a tensor with rank one higher than each
		tensor in `values`, by packing them along the `axis` dimension.
		Given a list of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		```
		# 'x' is [1, 4]
		# 'y' is [2, 5]
		# 'z' is [3, 6]
		pack([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		pack([x, y, z], axis=1) => [[1, 2, 3], [4, 5, 6]]
		```
		
		This is the opposite of `unpack`.
		
		Args:
		  values: A list of at least 1 `Tensor` objects with the same type.
		    Must be of same shape and type.
		  axis: An optional `int`. Defaults to `0`.
		    Dimension along which to pack.  Negative values wrap around, so the
		    valid range is `[-(R+1), R+1)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function Pack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pads a tensor with zeros.
		
		This operation pads a `input` with zeros according to the `paddings` you
		specify. `paddings` is an integer tensor with shape `[Dn, 2]`, where n is the
		rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
		how many zeros to add before the contents of `input` in that dimension, and
		`paddings[D, 1]` indicates how many zeros to add after the contents of `input`
		in that dimension.
		
		The padded size of each dimension D of the output is:
		
		`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 1], [2, 2]]
		# 'paddings' is [[1, 1], [2, 2]]
		# rank of 't' is 2
		pad(t, paddings) ==> [[0, 0, 0, 0, 0, 0]
		                      [0, 0, 1, 1, 0, 0]
		                      [0, 0, 2, 2, 0, 0]
		                      [0, 0, 0, 0, 0, 0]]
		```
		
		Args:
		  input: A `Tensor`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Pad(input:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pads a tensor.
		
		This operation pads `input` according to the `paddings` and `constant_values`
		you specify. `paddings` is an integer tensor with shape `[Dn, 2]`, where n is
		the rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
		how many padding values to add before the contents of `input` in that dimension,
		and `paddings[D, 1]` indicates how many padding values to add after the contents
		of `input` in that dimension. `constant_values` is a scalar tensor of the same
		type as `input` that indicates the value to use for padding `input`.
		
		The padded size of each dimension D of the output is:
		
		`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 1], [2, 2]]
		# 'paddings' is [[1, 1], [2, 2]]
		# 'constant_values' is 0
		# rank of 't' is 2
		pad(t, paddings) ==> [[0, 0, 0, 0, 0, 0]
		                      [0, 0, 1, 1, 0, 0]
		                      [0, 0, 2, 2, 0, 0]
		                      [0, 0, 0, 0, 0, 0]]
		```
		
		Args:
		  input: A `Tensor`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  constant_values: A `Tensor`. Must have the same type as `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function PadV2(input:Dynamic, paddings:Dynamic, constant_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates a list of `N` tensors along the first dimension.
		
		The input tensors are all required to have size 1 in the first dimension.
		
		For example:
		
		```
		# 'x' is [[1, 4]]
		# 'y' is [[2, 5]]
		# 'z' is [[3, 6]]
		parallel_concat([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		```
		
		The difference between concat and parallel_concat is that concat requires all
		of the inputs be computed before the operation will begin but doesn't require
		that the input shapes be known during graph construction.  Parallel concat
		will copy pieces of the input into the output as they become available, in
		some situations this can provide a performance benefit.
		
		Args:
		  values: A list of at least 1 `Tensor` objects with the same type.
		    Tensors to be concatenated. All must have size 1 in the first dimension
		    and same shape.
		  shape: A `tf.TensorShape` or list of `ints`.
		    the final shape of the result; should be equal to the shapes of any input
		    but with the number of input values in the first dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function ParallelConcat(values:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op for a value that will be fed into the computation.
		
		N.B. This operation will fail with an error if it is executed. It is
		intended as a way to represent a value that will always be fed, and to
		provide attrs that enable the fed value to be checked at runtime.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		    (Optional) The shape of the tensor. If the shape has 0 dimensions, the
		    shape is unconstrained.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function Placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op for a value that will be fed into the computation.
		
		N.B. This operation will fail with an error if it is executed. It is
		intended as a way to represent a value that will always be fed, and to
		provide attrs that enable the fed value to be checked at runtime.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the tensor. The shape can be any partially-specified
		    shape.  To be unconstrained, pass in a shape with unknown rank.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function PlaceholderV2(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op that passes through `input` when its output is not fed.
		
		Args:
		  input: A `Tensor`. The default value to produce when `output` is not fed.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The (possibly partial) shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function PlaceholderWithDefault(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An identity op that triggers an error if a gradient is requested.
		
		When executed in a graph, this op outputs its input tensor as-is.
		
		When building ops to compute gradients, the TensorFlow gradient system
		will return an error when trying to lookup the gradient of this op,
		because no gradient must ever be registered for this function.  This
		op exists to prevent subtle bugs from silently returning unimplemented
		gradients in some corner cases.
		
		Args:
		  input: A `Tensor`. any tensor.
		  message: An optional `string`. Defaults to `""`.
		    Will be printed in the error when anyone tries to differentiate
		    this operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function PreventGradient(input:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use QuantizeAndDequantizeV2 instead.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  signed_input: An optional `bool`. Defaults to `True`.
		  num_bits: An optional `int`. Defaults to `8`.
		  range_given: An optional `bool`. Defaults to `False`.
		  input_min: An optional `float`. Defaults to `0`.
		  input_max: An optional `float`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function QuantizeAndDequantize(input:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?input_min:Dynamic, ?input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This op simulates the precision loss from the quantized forward pass by:
		
		1. Quantizing the tensor to fixed point numbers, which should match the target
		   quantization method when it is used in inference.
		2. Dequantizing it back to floating point numbers for the following ops, most
		   likely matmul.
		
		There are different ways to quantize. This version uses only scaling, so 0.0
		maps to 0.
		
		From the specified 'num_bits' in the quantized output type, it determines
		minimum and maximum representable quantized values.
		
		e.g.
		
		*   [-128, 127] for signed, num_bits = 8, or
		*   [0, 255] for unsigned, num_bits = 8.
		
		If range_given == False, the initial input_min, input_max will be determined
		automatically as the minimum and maximum values in the input tensor, otherwise
		the specified values of input_min, input_max are used.
		
		Note: If the input_min, input_max are specified, they do not need to equal the
		actual minimum and maximum values in the tensor. e.g. in some cases it may be
		beneficial to specify these values such that the low probability extremes of the
		input distribution are clipped.
		
		This op determines the maximum scale_factor that would map the initial
		[input_min, input_max] range to a range that lies within the representable
		quantized range.
		
		It determines the scale from one of input_min and input_max, then updates the
		other one to maximize the representable range.
		
		e.g.
		
		*   if the output is signed, num_bits = 8, [input_min, input_max] = [-10.0,
		    5.0]: it would use a scale_factor of -128 / -10.0 = 12.8 In this case, it
		    would update input_max to be 127 / 12.8 = 9.921875
		*   if the output is signed, num_bits = 8, [input_min, input_max] = [-10.0,
		    10.0]: it would use a scale_factor of 127 / 10.0 = 12.7 In this case, it
		    would update input_min to be 128.0 / 12.7 = -10.07874
		*   if the output is unsigned, input_min is forced to be 0, and only the
		    specified input_max is used.
		
		After determining the scale_factor and updating the input range, it applies the
		following to each value in the 'input' tensor.
		
		output = round(clamp(value, input_min, input_max) * scale_factor) / scale_factor.
		
		The above round function rounds the value based on the given round_mode.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    Tensor to quantize and then dequantize.
		  input_min: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the minimum input value that needs to
		    be represented, otherwise it is determined from the min value of the `input`
		    tensor.
		  input_max: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the maximum input value that needs to
		    be represented, otherwise it is determined from the max value of the `input`
		    tensor.
		  signed_input: An optional `bool`. Defaults to `True`.
		    Whether the quantization is signed or unsigned. (actually this parameter should
		    have been called <b>`signed_output`</b>)
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization.
		  range_given: An optional `bool`. Defaults to `False`.
		    Whether the range is given or should be determined from the `input` tensor.
		  round_mode: An optional `string` from: `"HALF_TO_EVEN", "HALF_UP"`. Defaults to `"HALF_TO_EVEN"`.
		    The 'round_mode' attribute controls which rounding tie-breaking algorithm is
		    used when rounding float values to their quantized equivalents. The following
		    rounding modes are currently supported:
		
		    *   HALF_TO_EVEN: this is the default round_mode.
		    *   HALF_UP: round towards positive. In this mode 7.5 rounds up to 8 and -7.5
		        rounds up to -7.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    If True, then the absolute value of the quantized minimum value is the same as
		    the quantized maximum value, instead of 1 greater.
		    i.e. for 8 bit quantization, the minimum value is -127 instead of -128.
		  axis: An optional `int`. Defaults to `-1`.
		    If specified, this axis is treated as a channel or slice axis, and a separate
		    quantization range is used for each channel or slice along this axis.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function QuantizeAndDequantizeV2(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?round_mode:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This is almost identical to QuantizeAndDequantizeV2, except that num_bits is a
		tensor, so its value can change during training.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  input_min: A `Tensor`. Must have the same type as `input`.
		  input_max: A `Tensor`. Must have the same type as `input`.
		  num_bits: A `Tensor` of type `int32`.
		  signed_input: An optional `bool`. Defaults to `True`.
		  range_given: An optional `bool`. Defaults to `True`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function QuantizeAndDequantizeV3(input:Dynamic, input_min:Dynamic, input_max:Dynamic, num_bits:Dynamic, ?signed_input:Dynamic, ?range_given:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This is almost identical to QuantizeAndDequantizeV2, except that it returns a
		gradient of 1 for inputs that are within the quantization range, or 0 otherwise.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    Tensor to quantize and then dequantize.
		  input_min: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the minimum input value that needs to
		    be represented, otherwise it is determined from the min value of the `input`
		    tensor.
		  input_max: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the maximum input value that needs to
		    be represented, otherwise it is determined from the max value of the `input`
		    tensor.
		  signed_input: An optional `bool`. Defaults to `True`.
		    Whether the quantization is signed or unsigned. (actually this parameter should
		    have been called <b>`signed_output`</b>)
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization.
		  range_given: An optional `bool`. Defaults to `False`.
		    Whether the range is given or should be determined from the `input` tensor.
		  round_mode: An optional `string` from: `"HALF_TO_EVEN", "HALF_UP"`. Defaults to `"HALF_TO_EVEN"`.
		    The 'round_mode' attribute controls which rounding tie-breaking algorithm is
		    used when rounding float values to their quantized equivalents. The following
		    rounding modes are currently supported:
		
		    *   HALF_TO_EVEN: this is the default round_mode.
		    *   HALF_UP: round towards positive. In this mode 7.5 rounds up to 8 and -7.5
		        rounds up to -7.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    If True, then the absolute value of the quantized minimum value is the same as
		    the quantized maximum value, instead of 1 greater.
		    i.e. for 8 bit quantization, the minimum value is -127 instead of -128.
		  axis: An optional `int`. Defaults to `-1`.
		    If specified, this axis is treated as a channel or slice axis, and a separate
		    quantization range is used for each channel or slice along this axis.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function QuantizeAndDequantizeV4(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?round_mode:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the gradient of `QuantizeAndDequantizeV4`.
		
		Returns a gradient of 1 for inputs that are within the quantization range,
		or 0 otherwise.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  input: A `Tensor`. Must have the same type as `gradients`.
		  input_min: A `Tensor`. Must have the same type as `gradients`.
		  input_max: A `Tensor`. Must have the same type as `gradients`.
		  axis: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (input_backprop, input_min_backprop, input_max_backprop).
		
		  input_backprop: A `Tensor`. Has the same type as `gradients`.
		  input_min_backprop: A `Tensor`. Has the same type as `gradients`.
		  input_max_backprop: A `Tensor`. Has the same type as `gradients`.
	**/
	static public function QuantizeAndDequantizeV4Grad(gradients:Dynamic, input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		
		If the mode is `SCALED`, the quantization is performed by multiplying each
		input value by a scaling_factor.
		The scaling_factor is determined from `min_range` and `max_range` to be as large
		as possible such that the range from `min_range` to `max_range` is representable
		within values of type T.
		
		```c++
		
		  const int min_T = std::numeric_limits<T>::min();
		  const int max_T = std::numeric_limits<T>::max();
		  const float max_float = std::numeric_limits<float>::max();
		
		  const float scale_factor_from_min_side =
		      (min_T * min_range > 0) ? min_T / min_range : max_float;
		  const float scale_factor_from_max_side =
		      (max_T * max_range > 0) ? max_T / max_range : max_float;
		
		  const float scale_factor = std::min(scale_factor_from_min_side,
		                                      scale_factor_from_max_side);
		```
		
		We next use the scale_factor to adjust min_range and max_range as follows:
		
		```c++
		      min_range = min_T / scale_factor;
		      max_range = max_T / scale_factor;
		```
		
		
		e.g. if T = qint8, and initially min_range = -10, and max_range = 9, we would
		compare -128/-10.0 = 12.8 to 127/9.0 = 14.11, and set scaling_factor = 12.8
		In this case, min_range would remain -10, but max_range would be adjusted to
		127 / 12.8 = 9.921875
		
		So we will quantize input values in the range (-10, 9.921875) to (-128, 127).
		
		The input tensor can now be quantized by clipping values to the range
		`min_range` to `max_range`, then multiplying by scale_factor as follows:
		
		```c++
		result = round(min(max_range, max(min_range, input)) * scale_factor)
		```
		
		The adjusted `min_range` and `max_range` are returned as outputs 2 and 3 of
		this operation. These outputs should be used as the range for any further
		calculations.
		
		
		*narrow_range (bool) attribute*
		
		If true, we do not use the minimum quantized value.
		i.e. for int8 the quantized output, it would be restricted to the range
		-127..127 instead of the full -128..127 range.
		This is provided for compatibility with certain inference backends.
		(Only applies to SCALED mode)
		
		
		*axis (int) attribute*
		
		An optional `axis` attribute can specify a dimension index of the input tensor,
		such that quantization ranges will be calculated and applied separately for each
		slice of the tensor along that dimension. This is useful for per-channel
		quantization.
		
		If axis is specified, min_range and max_range
		
		if `axis`=None, per-tensor quantization is performed as normal.
		
		
		*ensure_minimum_range (float) attribute*
		
		Ensures the minimum quantization range is at least this value.
		The legacy default value for this is 0.01, but it is strongly suggested to
		set it to 0 for new uses.
		
		Args:
		  input: A `Tensor` of type `float32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_min`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  max_range: A `Tensor` of type `float32`.
		    The maximum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_max`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  T: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  round_mode: An optional `string` from: `"HALF_AWAY_FROM_ZERO", "HALF_TO_EVEN"`. Defaults to `"HALF_AWAY_FROM_ZERO"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  ensure_minimum_range: An optional `float`. Defaults to `0.01`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `T`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function QuantizeV2(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?ensure_minimum_range:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function QuantizedConcat(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Quantized Instance normalization.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    A 4D input Tensor.
		  x_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized input.
		  x_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized input.
		  output_range_given: An optional `bool`. Defaults to `False`.
		    If True, `given_y_min` and `given_y_min`
		    and `given_y_max` are used as the output range. Otherwise,
		    the implementation computes the output range.
		  given_y_min: An optional `float`. Defaults to `0`.
		    Output in `y_min` if `output_range_given` is True.
		  given_y_max: An optional `float`. Defaults to `0`.
		    Output in `y_max` if `output_range_given` is True.
		  variance_epsilon: An optional `float`. Defaults to `1e-05`.
		    A small float number to avoid dividing by 0.
		  min_separation: An optional `float`. Defaults to `0.001`.
		    Minimum value of `y_max - y_min`
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, y_min, y_max).
		
		  y: A `Tensor`. Has the same type as `x`.
		  y_min: A `Tensor` of type `float32`.
		  y_max: A `Tensor` of type `float32`.
	**/
	static public function QuantizedInstanceNorm(x:Dynamic, x_min:Dynamic, x_max:Dynamic, ?output_range_given:Dynamic, ?given_y_min:Dynamic, ?given_y_max:Dynamic, ?variance_epsilon:Dynamic, ?min_separation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reshapes a quantized tensor as per the Reshape op.
		
		```
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Defines the shape of the output tensor.
		  input_min: A `Tensor` of type `float32`. The minimum value of the input.
		  input_max: A `Tensor` of type `float32`. The maximum value of the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor`. Has the same type as `tensor`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function QuantizedReshape(tensor:Dynamic, shape:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
		
		This operation returns an integer representing the rank of `input`.
		
		For example:
		
		```
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		# shape of tensor 't' is [2, 2, 3]
		rank(t) ==> 3
		```
		
		**Note**: The rank of a tensor is not the same as the rank of a matrix. The rank
		of a tensor is the number of indices required to uniquely select each element
		of the tensor. Rank is also known as "order", "degree", or "ndims."
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function Rank(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the same ref tensor as the input ref tensor.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function RefIdentity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reshapes a tensor.
		
		Given `tensor`, this operation returns a tensor that has the same values
		as `tensor` with shape `shape`.
		
		If one component of 1-D tensor `shape` is the special value -1, the size of that
		dimension is computed so that the total size remains constant.  In particular, a
		`shape` of `[-1]` flattens into 1-D.  At most one component of `shape` may be
		unknown.
		
		The `shape` must be 1-D and the operation returns a tensor with shape
		`shape` filled with the values of `tensor`. In this case, the number of elements
		implied by `shape` must be the same as the number of elements in `tensor`.
		
		It is an error if `shape` is not 1-D.
		
		For example:
		
		```
		# tensor 't' is [1, 2, 3, 4, 5, 6, 7, 8, 9]
		# tensor 't' has shape [9]
		reshape(t, [3, 3]) ==> [[1, 2, 3],
		                        [4, 5, 6],
		                        [7, 8, 9]]
		
		# tensor 't' is [[[1, 1], [2, 2]],
		#                [[3, 3], [4, 4]]]
		# tensor 't' has shape [2, 2, 2]
		reshape(t, [2, 4]) ==> [[1, 1, 2, 2],
		                        [3, 3, 4, 4]]
		
		# tensor 't' is [[[1, 1, 1],
		#                 [2, 2, 2]],
		#                [[3, 3, 3],
		#                 [4, 4, 4]],
		#                [[5, 5, 5],
		#                 [6, 6, 6]]]
		# tensor 't' has shape [3, 2, 3]
		# pass '[-1]' to flatten 't'
		reshape(t, [-1]) ==> [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]
		
		# -1 can also be used to infer the shape
		
		# -1 is inferred to be 9:
		reshape(t, [2, -1]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
		                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
		# -1 is inferred to be 2:
		reshape(t, [-1, 9]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
		                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
		# -1 is inferred to be 3:
		reshape(t, [ 2, -1, 3]) ==> [[[1, 1, 1],
		                              [2, 2, 2],
		                              [3, 3, 3]],
		                             [[4, 4, 4],
		                              [5, 5, 5],
		                              [6, 6, 6]]]
		
		# tensor 't' is [7]
		# shape `[]` reshapes to a scalar
		reshape(t, []) ==> 7
		```
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Defines the shape of the output tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function Reshape(tensor:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `ref`.
		
		The values of `value` are assigned to the positions in the variable
		`ref` that are selected by the slice parameters. The slice parameters
		`begin, `end`, `strides`, etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s
		shape must be exactly the shape produced by the slice of `ref`.
		
		Args:
		  ref: A `Tensor` of type `resource`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceStridedSliceAssign(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
		Given a `tensor`, and a `bool` tensor `dims` representing the dimensions
		of `tensor`, this operation reverses each dimension i of `tensor` where
		`dims[i]` is `True`.
		
		`tensor` can have up to 8 dimensions. The number of dimensions
		of `tensor` must equal the number of elements in `dims`. In other words:
		
		`rank(tensor) = size(dims)`
		
		For example:
		
		```
		# tensor 't' is [[[[ 0,  1,  2,  3],
		#                  [ 4,  5,  6,  7],
		#                  [ 8,  9, 10, 11]],
		#                 [[12, 13, 14, 15],
		#                  [16, 17, 18, 19],
		#                  [20, 21, 22, 23]]]]
		# tensor 't' shape is [1, 2, 3, 4]
		
		# 'dims' is [False, False, False, True]
		reverse(t, dims) ==> [[[[ 3,  2,  1,  0],
		                        [ 7,  6,  5,  4],
		                        [ 11, 10, 9, 8]],
		                       [[15, 14, 13, 12],
		                        [19, 18, 17, 16],
		                        [23, 22, 21, 20]]]]
		
		# 'dims' is [False, True, False, False]
		reverse(t, dims) ==> [[[[12, 13, 14, 15],
		                        [16, 17, 18, 19],
		                        [20, 21, 22, 23]
		                       [[ 0,  1,  2,  3],
		                        [ 4,  5,  6,  7],
		                        [ 8,  9, 10, 11]]]]
		
		# 'dims' is [False, False, True, False]
		reverse(t, dims) ==> [[[[8, 9, 10, 11],
		                        [4, 5, 6, 7],
		                        [0, 1, 2, 3]]
		                       [[20, 21, 22, 23],
		                        [16, 17, 18, 19],
		                        [12, 13, 14, 15]]]]
		```
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `uint32`, `int32`, `uint64`, `int64`, `bool`, `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
		    Up to 8-D.
		  dims: A `Tensor` of type `bool`. 1-D. The dimensions to reverse.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function Reverse(tensor:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses variable length slices.
		
		This op first slices `input` along the dimension `batch_dim`, and for each
		slice `i`, reverses the first `seq_lengths[i]` elements along
		the dimension `seq_dim`.
		
		The elements of `seq_lengths` must obey `seq_lengths[i] <= input.dims[seq_dim]`,
		and `seq_lengths` must be a vector of length `input.dims[batch_dim]`.
		
		The output slice `i` along dimension `batch_dim` is then given by input
		slice `i`, with the first `seq_lengths[i]` slices along dimension
		`seq_dim` reversed.
		
		For example:
		
		```
		# Given this:
		batch_dim = 0
		seq_dim = 1
		input.dims = (4, 8, ...)
		seq_lengths = [7, 2, 3, 5]
		
		# then slices of input are reversed on seq_dim, but only up to seq_lengths:
		output[0, 0:7, :, ...] = input[0, 7:0:-1, :, ...]
		output[1, 0:2, :, ...] = input[1, 2:0:-1, :, ...]
		output[2, 0:3, :, ...] = input[2, 3:0:-1, :, ...]
		output[3, 0:5, :, ...] = input[3, 5:0:-1, :, ...]
		
		# while entries past seq_lens are copied through:
		output[0, 7:, :, ...] = input[0, 7:, :, ...]
		output[1, 2:, :, ...] = input[1, 2:, :, ...]
		output[2, 3:, :, ...] = input[2, 3:, :, ...]
		output[3, 2:, :, ...] = input[3, 2:, :, ...]
		```
		
		In contrast, if:
		
		```
		# Given this:
		batch_dim = 2
		seq_dim = 0
		input.dims = (8, ?, 4, ...)
		seq_lengths = [7, 2, 3, 5]
		
		# then slices of input are reversed on seq_dim, but only up to seq_lengths:
		output[0:7, :, 0, :, ...] = input[7:0:-1, :, 0, :, ...]
		output[0:2, :, 1, :, ...] = input[2:0:-1, :, 1, :, ...]
		output[0:3, :, 2, :, ...] = input[3:0:-1, :, 2, :, ...]
		output[0:5, :, 3, :, ...] = input[5:0:-1, :, 3, :, ...]
		
		# while entries past seq_lens are copied through:
		output[7:, :, 0, :, ...] = input[7:, :, 0, :, ...]
		output[2:, :, 1, :, ...] = input[2:, :, 1, :, ...]
		output[3:, :, 2, :, ...] = input[3:, :, 2, :, ...]
		output[2:, :, 3, :, ...] = input[2:, :, 3, :, ...]
		```
		
		Args:
		  input: A `Tensor`. The input to reverse.
		  seq_lengths: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with length `input.dims(batch_dim)` and
		    `max(seq_lengths) <= input.dims(seq_dim)`
		  seq_dim: An `int`. The dimension which is partially reversed.
		  batch_dim: An optional `int`. Defaults to `0`.
		    The dimension along which reversal is performed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ReverseSequence(input:Dynamic, seq_lengths:Dynamic, seq_dim:Dynamic, ?batch_dim:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function ReverseV2(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var SHRINK_AXIS : Dynamic;
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
	static public function ScatterNd(indices:Dynamic, updates:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse addition to `input` using individual values or slices
		
		from `updates` according to indices `indices`.  The updates are non-aliasing:
		`input` is only modified in-place if no other operations will use it.
		Otherwise, a copy of `input` is made.  This operation has a gradient with
		respect to both `input` and `updates`.
		
		`input` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `input`.
		It must be shape \\([d_0, ..., d_{Q-2}, K]\\) where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or `(P-K)`-dimensional slices
		(if `K < P`) along the `K`th dimension of `input`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		$$[d_0, ..., d_{Q-2}, input.shape[K], ..., input.shape[P-1]].$$
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to 8
		elements. In Python, that addition would look like this:
		
		    input = tf.constant([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    output = tf.scatter_nd_non_aliasing_add(input, indices, updates)
		    with tf.Session() as sess:
		      print(sess.run(output))
		
		The resulting value `output` would look like this:
		
		    [1, 13, 3, 14, 14, 6, 7, 20]
		
		See `tf.scatter_nd` for more details about how to make updates to slices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    A Tensor.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into `input`.
		  updates: A `Tensor`. Must have the same type as `input`.
		    A Tensor. Must have the same type as ref. A tensor of updated values
		    to add to `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ScatterNdNonAliasingAdd(input:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		This operation returns a 1-D integer tensor representing the shape of `input`.
		
		For example:
		
		```
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		shape(t) ==> [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function Shape(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns shape of tensors.
		
		This operation returns N 1-D integer tensors representing shape of `input[i]s`.
		
		Args:
		  input: A list of at least 1 `Tensor` objects with the same type.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `input` of `Tensor` objects with type `out_type`.
	**/
	static public function ShapeN(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		This operation returns an integer representing the number of elements in
		`input`.
		
		For example:
		
		```
		# 't' is [[[1, 1,, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]]
		size(t) ==> 12
		```
		
		Args:
		  input: A `Tensor`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function Size(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a slice from 'input'.
		
		The output tensor is a tensor with dimensions described by 'size'
		whose values are extracted from 'input' starting at the offsets in
		'begin'.
		
		*Requirements*:
		  0 <= begin[i] <= begin[i] + size[i] <= Di  for i in [0, n)
		
		Args:
		  input: A `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    begin[i] specifies the offset into the 'i'th dimension of
		    'input' to slice from.
		  size: A `Tensor`. Must have the same type as `begin`.
		    size[i] specifies the number of elements of the 'i'th dimension
		    of 'input' to slice. If size[i] is -1, all remaining elements in dimension
		    i are included in the slice (i.e. this is equivalent to setting
		    size[i] = input.dim_size(i) - begin[i]).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Slice(input:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a copy of the input tensor.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Snapshot(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		This is a legacy version of the more general SpaceToBatchND.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
		The attr `block_size` must be greater than one. It indicates the block size.
		
		  * Non-overlapping blocks of size `block_size x block size` in the height and
		    width dimensions are rearranged into the batch dimension at each location.
		  * The batch of the output tensor is `batch * block_size * block_size`.
		  * Both height_pad and width_pad must be divisible by block_size.
		
		The shape of the output will be:
		
		    [batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		     depth]
		
		Some examples:
		
		(1) For the following input of shape `[1, 2, 2, 1]` and block_size of 2:
		
		```
		x = [[[[1], [2]], [[3], [4]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 1]` and value:
		
		```
		[[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		```
		
		(2) For the following input of shape `[1, 2, 2, 3]` and block_size of 2:
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 3]` and value:
		
		```
		[[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
		```
		
		(3) For the following input of shape `[1, 4, 4, 1]` and block_size of 2:
		
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
		
		(4) For the following input of shape `[2, 2, 4, 1]` and block_size of 2:
		
		```
		x = [[[[1],   [2],  [3],  [4]],
		      [[5],   [6],  [7],  [8]]],
		     [[[9],  [10], [11],  [12]],
		      [[13], [14], [15],  [16]]]]
		```
		
		The output tensor has shape `[8, 1, 2, 1]` and value:
		
		```
		x = [[[[1], [3]]], [[[9], [11]]], [[[2], [4]]], [[[10], [12]]],
		     [[[5], [7]]], [[[13], [15]]], [[[6], [8]]], [[[14], [16]]]]
		```
		
		Among others, this operation is useful for reducing atrous convolution into
		regular convolution.
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		      the padding of the input with zeros across the spatial dimensions as follows:
		
		          paddings = [[pad_top, pad_bottom], [pad_left, pad_right]]
		
		      The effective spatial dimensions of the zero-padded input tensor will be:
		
		          height_pad = pad_top + height + pad_bottom
		          width_pad = pad_left + width + pad_right
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function SpaceToBatch(input:Dynamic, paddings:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function SpaceToBatchND(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToDepth for tensors of type T.
		
		Rearranges blocks of spatial data, into depth. More specifically,
		this op outputs a copy of the input tensor where values from the `height`
		and `width` dimensions are moved to the `depth` dimension.
		The attr `block_size` indicates the input block size.
		
		  * Non-overlapping blocks of size `block_size x block size` are rearranged
		    into depth at each location.
		  * The depth of the output tensor is `block_size * block_size * input_depth`.
		  * The Y, X coordinates within each block of the input become the high order
		    component of the output channel index.
		  * The input tensor's height and width must be divisible by block_size.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,oY,bY,oX,bX,iC  (where n=batch index, oX, oY means X or Y coordinates
		                        within the output image, bX, bY means coordinates
		                        within the input block, iC means input channels).
		     The output would be a transpose to the following layout:
		     n,oY,oX,bY,bX,iC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 2, 2, 1]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1], [2]],
		      [[3], [4]]]]
		```
		
		This operation will output a tensor of shape `[1, 1, 1, 4]`:
		
		```
		[[[[1, 2, 3, 4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
		the corresponding output will have a single element (i.e. width and height are
		both 1) and will have a depth of 4 channels (1 * block_size * block_size).
		The output element shape is `[1, 1, 4]`.
		
		For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		This operation, for block_size of 2, will return the following tensor of shape
		`[1, 1, 1, 12]`
		
		```
		[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:
		
		```
		x = [[[[1],   [2],  [5],  [6]],
		      [[3],   [4],  [7],  [8]],
		      [[9],  [10], [13],  [14]],
		      [[11], [12], [15],  [16]]]]
		```
		
		the operator will return the following tensor of shape `[1 2 2 4]`:
		
		```
		x = [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`. The size of the spatial block.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function SpaceToDepth(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits a tensor into `num_split` tensors along one dimension.
		
		Args:
		  axis: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to split.  Must be in the range
		    `[-rank(value), rank(value))`.
		  value: A `Tensor`. The tensor to split.
		  num_split: An `int` that is `>= 1`.
		    The number of ways to split.  Must evenly divide
		    `value.shape[split_dim]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_split` `Tensor` objects with the same type as `value`.
	**/
	static public function Split(axis:Dynamic, value:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits a tensor into `num_split` tensors along one dimension.
		
		Args:
		  value: A `Tensor`. The tensor to split.
		  size_splits: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    list containing the sizes of each output tensor along the split
		    dimension. Must sum to the dimension of value along split_dim.
		    Can contain one -1 indicating that dimension is to be inferred.
		  axis: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to split.  Must be in the range
		    `[-rank(value), rank(value))`.
		  num_split: An `int` that is `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_split` `Tensor` objects with the same type as `value`.
	**/
	static public function SplitV(value:Dynamic, size_splits:Dynamic, axis:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Removes dimensions of size 1 from the shape of a tensor.
		
		Given a tensor `input`, this operation returns a tensor of the same type with
		all dimensions of size 1 removed. If you don't want to remove all size 1
		dimensions, you can remove specific size 1 dimensions by specifying
		`axis`.
		
		For example:
		
		```
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		shape(squeeze(t)) ==> [2, 3]
		```
		
		Or, to remove specific size 1 dimensions:
		
		```
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		shape(squeeze(t, [2, 4])) ==> [1, 2, 3, 1]
		```
		
		Args:
		  input: A `Tensor`. The `input` to squeeze.
		  axis: An optional list of `ints`. Defaults to `[]`.
		    If specified, only squeezes the dimensions listed. The dimension
		    index starts at 0. It is an error to squeeze a dimension that is not 1. Must
		    be in the range `[-rank(input), rank(input))`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function Squeeze(input:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function StopGradient(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a strided slice from `input`.
		
		Note, most python users will want to use the Python `Tensor.__getitem__`
		or `Variable.__getitem__` rather than this op directly.
		
		The goal of this op is to produce a new tensor with a subset of
		the elements from the `n` dimensional `input` tensor. The subset is chosen using
		a sequence of `m` sparse range specifications encoded into the arguments
		of this function. Note, in some cases
		`m` could be equal to `n`, but this need not be the case. Each
		range specification entry can be one of the following:
		
		- An ellipsis (...). Ellipses are used to imply zero or more
		  dimensions of full-dimension selection and are produced using
		  `ellipsis_mask`. For example, `foo[...]` is the identity slice.
		
		- A new axis. This is used to insert a new shape=1 dimension and is
		  produced using `new_axis_mask`. For example, `foo[:, ...]` where
		  `foo` is shape `(3, 4)` produces a `(1, 3, 4)` tensor.
		
		
		- A range `begin:end:stride`. This is used to specify how much to choose from
		  a given dimension. `stride` can be any integer but 0.  `begin` is an integer
		  which represents the index of the first value to select while `end` represents
		  the index of the last value to select. The number of values selected in each
		  dimension is `end - begin` if `stride > 0` and `begin - end` if `stride < 0`.
		  `begin` and `end` can be negative where `-1` is the last element, `-2` is
		  the second to last. `begin_mask` controls whether to replace the explicitly
		  given `begin` with an implicit effective value of `0` if `stride > 0` and
		  `-1` if `stride < 0`. `end_mask` is analogous but produces the number
		  required to create the largest open interval. For example, given a shape
		  `(3,)` tensor `foo[:]`, the effective `begin` and `end` are `0` and `3`. Do
		  not assume this is equivalent to `foo[0:-1]` which has an effective `begin`
		  and `end` of `0` and `2`. Another example is `foo[-2::-1]` which reverses the
		  first dimension of a tensor while dropping the last two (in the original
		  order elements). For example `foo = [1,2,3,4]; foo[-2::-1]` is `[4,3]`.
		
		- A single index. This is used to keep only elements that have a given
		  index. For example (`foo[2, :]` on a shape `(5,6)` tensor produces a
		  shape `(6,)` tensor. This is encoded in `begin` and `end` and
		  `shrink_axis_mask`.
		
		Each conceptual range specification is encoded in the op's argument. This
		encoding is best understand by considering a non-trivial example. In
		particular,
		`foo[1, 2:4, None, ..., :-3:-1, :]` will be encoded as
		
		```
		begin = [1, 2, x, x, 0, x] # x denotes don't care (usually 0)
		end = [2, 4, x, x, -3, x]
		strides = [1, 1, x, x, -1, 1]
		begin_mask = 1<<4 | 1<<5 = 48
		end_mask = 1<<5 = 32
		ellipsis_mask = 1<<3 = 8
		new_axis_mask = 1<<2 = 4
		shrink_axis_mask = 1<<0 = 1
		```
		
		In this case if `foo.shape` is (5, 5, 5, 5, 5, 5) the final shape of
		the slice becomes (2, 1, 5, 5, 2, 5).
		Let us walk step by step through each argument specification.
		
		1.  The first argument in the example slice is turned into `begin = 1` and
		`end = begin + 1 = 2`. To disambiguate from the original spec `2:4` we
		also set the appropriate bit in `shrink_axis_mask`.
		
		2. `2:4` is contributes 2, 4, 1 to begin, end, and stride. All masks have
		zero bits contributed.
		
		3. None is a synonym for `tf.newaxis`. This means insert a dimension of size 1
		dimension in the final shape. Dummy values are contributed to begin,
		end and stride, while the new_axis_mask bit is set.
		
		4. `...` grab the full ranges from as many dimensions as needed to
		fully specify a slice for every dimension of the input shape.
		
		5. `:-3:-1` shows the use of negative indices. A negative index `i` associated
		with a dimension that has shape `s` is converted to a positive index
		`s + i`. So `-1` becomes `s-1` (i.e. the last element). This conversion
		is done internally so begin, end and strides receive x, -3, and -1.
		The appropriate begin_mask bit is set to indicate the start range is the
		full range (ignoring the x).
		
		6. `:` indicates that the entire contents of the corresponding dimension
		is selected. This is equivalent to `::` or `0::1`. begin, end, and strides
		receive 0, 0, and 1, respectively. The appropriate bits in `begin_mask` and
		`end_mask` are also set.
		
		*Requirements*:
		  `0 != strides[i] for i in [0, m)`
		  `ellipsis_mask must be a power of two (only one ellipsis)`
		
		Args:
		  input: A `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    `begin[k]` specifies the offset into the `k`th range specification.
		    The exact dimension this corresponds to will be determined by context.
		    Out-of-bounds values will be silently clamped. If the `k`th bit of
		    `begin_mask` then `begin[k]` is ignored and the full range of the
		    appropriate dimension is used instead. Negative values causes indexing
		    to start from the highest element e.g. If `foo==[1,2,3]` then `foo[-1]==3`.
		  end: A `Tensor`. Must have the same type as `begin`.
		    `end[i]` is like `begin` with the exception that `end_mask` is
		    used to determine full ranges.
		  strides: A `Tensor`. Must have the same type as `begin`.
		    `strides[i]` specifies the increment in the `i`th specification
		    after extracting a given element. Negative indices will reverse
		    the original order. Out or range values are
		    clamped to `[0,dim[i]) if slice[i]>0` or `[-1,dim[i]-1] if slice[i] < 0`
		  begin_mask: An optional `int`. Defaults to `0`.
		    a bitmask where a bit i being 1 means to ignore the begin
		    value and instead use the largest interval possible. At runtime
		    begin[i] will be replaced with `[0, n-1)` if `stride[i] > 0` or
		    `[-1, n-1]` if `stride[i] < 0`
		  end_mask: An optional `int`. Defaults to `0`. analogous to `begin_mask`
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		    a bitmask where bit `i` being 1 means the `i`th
		    position is actually an ellipsis. One bit at most can be 1.
		    If `ellipsis_mask == 0`, then an implicit ellipsis mask of `1 << (m+1)`
		    is provided. This means that `foo[3:5] == foo[3:5, ...]`. An ellipsis
		    implicitly creates as many range specifications as necessary to fully
		    specify the sliced range for every dimension. For example for a 4-dimensional
		    tensor `foo` the slice `foo[2, ..., 5:8]` implies `foo[2, :, :, 5:8]`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		    a bitmask where bit `i` being 1 means the `i`th
		    specification creates a new shape 1 dimension. For example
		    `foo[:4, tf.newaxis, :2]` would produce a shape `(4, 1, 2)` tensor.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		    a bitmask where bit `i` implies that the `i`th
		    specification should shrink the dimensionality. begin and end
		    must imply a slice of size 1 in the dimension. For example in
		    python one might do `foo[:, 3, :]` which would result in
		    `shrink_axis_mask` being 2.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function StridedSlice(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `ref`.
		
		The values of `value` are assigned to the positions in the variable
		`ref` that are selected by the slice parameters. The slice parameters
		`begin`, `end`, `strides`, etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s
		shape must be exactly the shape produced by the slice of `ref`.
		
		Args:
		  ref: A mutable `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`. Must have the same type as `ref`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function StridedSliceAssign(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the gradient of `StridedSlice`.
		
		Since `StridedSlice` cuts out pieces of its `input` which is size
		`shape`, its gradient will have the same shape (which is passed here
		as `shape`). The gradient will be zero in any element that the slice
		does not select.
		
		Arguments are the same as StridedSliceGrad with the exception that
		`dy` is the input gradient to be propagated and `shape` is the
		shape of `StridedSlice`'s `input`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  begin: A `Tensor`. Must have the same type as `shape`.
		  end: A `Tensor`. Must have the same type as `shape`.
		  strides: A `Tensor`. Must have the same type as `shape`.
		  dy: A `Tensor`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `dy`.
	**/
	static public function StridedSliceGrad(shape:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, dy:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function TensorScatterAdd(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function TensorScatterMax(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function TensorScatterMin(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function TensorScatterSub(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scatter `updates` into an existing tensor according to `indices`.
		
		This operation creates a new tensor by applying sparse `updates` to the passed
		in `tensor`.
		This operation is very similar to `tf.scatter_nd`, except that the updates are
		scattered onto an existing tensor (as opposed to a zero-tensor). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		If `indices` contains duplicates, then we pick the last update for the index.
		
		If an out of bound index is found on CPU, an error is returned.
		
		**WARNING**: There are some GPU specific semantics for this operation.
		- If an out of bound index is found, the index is ignored.
		- The order in which updates are applied is nondeterministic, so the output
		will be nondeterministic if `indices` contains duplicates.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`shape`.
		
		* `indices` must have at least 2 axes: `(num_updates, index_depth)`.
		* The last axis of `indices` is how deep to index into `tensor` so  this index
		  depth must be less than the rank of `tensor`: `indices.shape[-1] <= tensor.ndim`
		
		if `indices.shape[-1] = tensor.rank` this Op indexes and updates scalar elements.
		if `indices.shape[-1] < tensor.rank` it indexes and updates slices of the input
		`tensor`.
		
		Each `update` has a rank of `tensor.rank - indices.shape[-1]`.
		The overall shape of `updates` is:
		
		```
		indices.shape[:-1] + tensor.shape[indices.shape[-1]:]
		```
		
		For usage examples see the python [tf.tensor_scatter_nd_update](
		https://www.tensorflow.org/api_docs/python/tf/tensor_scatter_nd_update) function
		
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
	static public function TensorScatterUpdate(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `input`.
		
		The values of `value` are assigned to the positions in the tensor `input` that
		are selected by the slice parameters. The slice parameters `begin` `end`
		`strides` etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s shape
		must be exactly the shape produced by the slice of `input`.
		
		Args:
		  input: A `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`. Must have the same type as `input`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function TensorStridedSliceUpdate(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Tile(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the gradient of `Tile`.
		
		Since `Tile` takes an input and repeats the input `multiples` times
		along each dimension, `TileGrad` takes in `multiples` and aggregates
		each repeated tile of `input` into `output`.
		
		Args:
		  input: A `Tensor`.
		  multiples: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function TileGrad(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shuffle dimensions of x according to a permutation.
		
		The output `y` has the same rank as `x`. The shapes of `x` and `y` satisfy:
		  `y.shape[i] == x.shape[perm[i]] for i in [0, 1, ..., rank(x) - 1]`
		
		Args:
		  x: A `Tensor`.
		  perm: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function Transpose(x:Dynamic, perm:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function Unique(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds unique elements along an axis of a tensor.
		
		This operation either returns a tensor `y` containing unique elements
		along the `axis` of a tensor. The returned unique elements is sorted
		in the same order as they occur along `axis` in `x`.
		This operation also returns a tensor `idx` that is the same size as
		the number of the elements in `x` along the `axis` dimension. It
		contains the index in the unique output `y`.
		In other words, for an `1-D` tensor `x` with `axis = None:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		For an `2-D` tensor `x` with `axis = 0`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx = unique(x, axis=0)
		y ==> [[1, 0, 0],
		       [2, 0, 0]]
		idx ==> [0, 0, 1]
		```
		
		For an `2-D` tensor `x` with `axis = 1`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx = unique(x, axis=1)
		y ==> [[1, 0],
		       [1, 0],
		       [2, 0]]
		idx ==> [0, 1, 1]
		```
		
		Args:
		  x: A `Tensor`. A `Tensor`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: None). The axis of the Tensor to
		    find the unique elements.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function UniqueV2(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function UniqueWithCounts(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds unique elements along an axis of a tensor.
		
		This operation either returns a tensor `y` containing unique elements
		along the `axis` of a tensor. The returned unique elements is sorted
		in the same order as they occur along `axis` in `x`.
		This operation also returns a tensor `idx` and a tensor `count`
		that are the same size as the number of the elements in `x` along the
		`axis` dimension. The `idx` contains the index in the unique output `y`
		and the `count` contains the count in the unique output `y`.
		In other words, for an `1-D` tensor `x` with `axis = None:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		x = tf.constant([1, 1, 2, 4, 4, 4, 7, 8, 8])
		y, idx, count = UniqueWithCountsV2(x, axis = [0])
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		For a `2-D` tensor `x` with `axis = 0`:
		
		```
		x = tf.constant([[1, 0, 0],
		                [1, 0, 0],
		                [2, 0, 0]])
		y, idx, count = UniqueWithCountsV2(x, axis=[0])
		y ==> [[1, 0, 0],
		       [2, 0, 0]]
		idx ==> [0, 0, 1]
		count ==> [2, 1]
		```
		
		For a `2-D` tensor `x` with `axis = 1`:
		
		```
		x = tf.constant([[1, 0, 0],
		                [1, 0, 0],
		                [2, 0, 0]])
		y, idx, count = UniqueWithCountsV2(x, axis=[1])
		y ==> [[1, 0],
		       [1, 0],
		       [2, 0]]
		idx ==> [0, 1, 1]
		count ==> [1, 2]
		```
		
		Args:
		  x: A `Tensor`. A `Tensor`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: None). The axis of the Tensor to
		    find the unique elements.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx, count).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
		  count: A `Tensor` of type `out_idx`.
	**/
	static public function UniqueWithCountsV2(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Unpacks a given dimension of a rank-`R` tensor into `num` rank-`(R-1)` tensors.
		
		Unpacks `num` tensors from `value` by chipping it along the `axis` dimension.
		For example, given a tensor of shape `(A, B, C, D)`;
		
		If `axis == 0` then the i'th tensor in `output` is the slice `value[i, :, :, :]`
		  and each tensor in `output` will have shape `(B, C, D)`. (Note that the
		  dimension unpacked along is gone, unlike `split`).
		
		If `axis == 1` then the i'th tensor in `output` is the slice `value[:, i, :, :]`
		  and each tensor in `output` will have shape `(A, C, D)`.
		Etc.
		
		This is the opposite of `pack`.
		
		Args:
		  value: A `Tensor`.
		    1-D or higher, with `axis` dimension size equal to `num`.
		  num: An `int` that is `>= 0`.
		  axis: An optional `int`. Defaults to `0`.
		    Dimension along which to unpack.  Negative values wrap around, so the
		    valid range is `[-R, R)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num` `Tensor` objects with the same type as `value`.
	**/
	static public function Unpack(value:Dynamic, num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function UnravelIndex(indices:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies upper_bound(sorted_search_values, values) along each row.
		
		Each set of rows with the same index in (sorted_inputs, values) is treated
		independently.  The resulting row is the equivalent of calling
		`np.searchsorted(sorted_inputs, values, side='right')`.
		
		The result is not a global index to the entire
		`Tensor`, but rather just the index in the last dimension.
		
		A 2-D example:
		  sorted_sequence = [[0, 3, 9, 9, 10],
		                     [1, 2, 3, 4, 5]]
		  values = [[2, 4, 9],
		            [0, 2, 6]]
		
		  result = UpperBound(sorted_sequence, values)
		
		  result == [[1, 2, 4],
		             [0, 2, 5]]
		
		Args:
		  sorted_inputs: A `Tensor`. 2-D Tensor where each row is ordered.
		  values: A `Tensor`. Must have the same type as `sorted_inputs`.
		    2-D Tensor with the same numbers of rows as `sorted_search_values`. Contains
		    the values that will be searched for in `sorted_search_values`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function UpperBound(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns locations of nonzero / true values in a tensor.
		
		This operation returns the coordinates of true elements in `condition`. The
		coordinates are returned in a 2-D tensor where the first dimension (rows)
		represents the number of true elements, and the second dimension (columns)
		represents the coordinates of the true elements. Keep in mind, the shape of
		the output tensor can vary depending on how many true values there are in
		`condition`. Indices are output in row-major order.
		
		For example:
		
		```
		# 'input' tensor is [[True, False]
		#                    [True, False]]
		# 'input' has two true values, so output has two coordinates.
		# 'input' has rank of 2, so coordinates have two indices.
		where(input) ==> [[0, 0],
		                  [1, 0]]
		
		# `condition` tensor is [[[True, False]
		#                     [True, False]]
		#                    [[False, True]
		#                     [False, True]]
		#                    [[False, False]
		#                     [False, True]]]
		# 'input' has 5 true values, so output has 5 coordinates.
		# 'input' has rank of 3, so coordinates have three indices.
		where(input) ==> [[0, 0, 0],
		                  [0, 1, 0],
		                  [1, 0, 1],
		                  [1, 1, 1],
		                  [2, 1, 1]]
		
		# `condition` tensor is [[[1.5,  0.0]
		#                     [-0.5, 0.0]]
		#                    [[0.0,  0.25]
		#                     [0.0,  0.75]]
		#                    [[0.0,  0.0]
		#                     [0.0,  0.01]]]
		# 'input' has 5 nonzero values, so output has 5 coordinates.
		# 'input' has rank of 3, so coordinates have three indices.
		where(input) ==> [[0, 0, 0],
		                  [0, 1, 0],
		                  [1, 0, 1],
		                  [1, 1, 1],
		                  [2, 1, 1]]
		
		# `condition` tensor is [[[1.5 + 0.0j, 0.0  + 0.0j]
		#                     [0.0 + 0.5j, 0.0  + 0.0j]]
		#                    [[0.0 + 0.0j, 0.25 + 1.5j]
		#                     [0.0 + 0.0j, 0.75 + 0.0j]]
		#                    [[0.0 + 0.0j, 0.0  + 0.0j]
		#                     [0.0 + 0.0j, 0.01 + 0.0j]]]
		# 'input' has 5 nonzero magnitude values, so output has 5 coordinates.
		# 'input' has rank of 3, so coordinates have three indices.
		where(input) ==> [[0, 0, 0],
		                  [0, 1, 0],
		                  [1, 0, 1],
		                  [1, 1, 1],
		                  [2, 1, 1]]
		```
		
		Args:
		  condition: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function Where(condition:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a tensor of zeros with the same shape and type as x.
		
		Args:
		  x: A `Tensor`. a tensor of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function ZerosLike(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradient for FakeQuantWithMinMaxArgs op.
	**/
	static public function _FakeQuantWithMinMaxArgsGradient(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for FakeQuantWithMinMaxVars op.
	**/
	static public function _FakeQuantWithMinMaxVarsGradient(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for FakeQuantWithMinMaxVarsPerChannel op.
	**/
	static public function _FakeQuantWithMinMaxVarsPerChannelGradient(op:Dynamic, grad:Dynamic):Dynamic;
	static public var _NON_AUTOPACKABLE_TYPES : Dynamic;
	/**
		Gradient for QuantizeAndDequantizeV4 op.
	**/
	static public function _QuantizeAndDequantizeV4Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for QuantizeAndDequantizeV4Grad op.
	**/
	static public function _QuantizeAndDequantizeV4GradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var _SLICE_TYPE_ERROR : Dynamic;
	static public var _SUPPORTED_SLICE_DTYPES : Dynamic;
	/**
		Creates a slice helper object given a variable.
		
		This allows creating a sub-tensor from part of the current contents
		of a variable. See `tf.Tensor.__getitem__` for detailed examples
		of slicing.
		
		This function in addition also allows assignment to a sliced range.
		This is similar to `__setitem__` functionality in Python. However,
		the syntax is different so that the user can capture the assignment
		operation for grouping or passing to `sess.run()`.
		For example,
		
		```python
		import tensorflow as tf
		A = tf.Variable([[1,2,3], [4,5,6], [7,8,9]], dtype=tf.float32)
		with tf.compat.v1.Session() as sess:
		  sess.run(tf.compat.v1.global_variables_initializer())
		  print(sess.run(A[:2, :2]))  # => [[1,2], [4,5]]
		
		  op = A[:2,:2].assign(22. * tf.ones((2, 2)))
		  print(sess.run(op))  # => [[22, 22, 3], [22, 22, 6], [7,8,9]]
		```
		
		Note that assignments currently do not support NumPy broadcasting
		semantics.
		
		Args:
		  var: An `ops.Variable` object.
		  slice_spec: The arguments to `Tensor.__getitem__`.
		
		Returns:
		  The appropriate slice of "tensor", based on "slice_spec".
		  As an operator. The operator also has a `assign()` method
		  that can be used to generate an assignment operator.
		
		Raises:
		  ValueError: If a slice range is negative size.
		  TypeError: TypeError: If the slice indices aren't int, slice,
		    ellipsis, tf.newaxis or int32/int64 tensors.
	**/
	static public function _SliceHelperVar(_var:Dynamic, slice_spec:Dynamic):Dynamic;
	/**
		Shape function for the TileGrad op.
	**/
	static public function _TileGradShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a 1D-tensor listing all dimensions in x.
	**/
	static public function _all_dimensions(x:Dynamic):Dynamic;
	/**
		Tensor conversion function that automatically packs arguments.
	**/
	static public function _autopacking_conversion_function(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Converts the given list or tuple to a tensor by packing.
		
		Args:
		  list_or_tuple: A (possibly nested) list or tuple containing a tensor.
		  dtype: The element type of the returned tensor.
		  name: A name for the returned tensor.
		
		Returns:
		  A `tf.Tensor` with value equivalent to `list_or_tuple`.
	**/
	static public function _autopacking_helper(list_or_tuple:Dynamic, dtype:Dynamic, name:Dynamic):Dynamic;
	/**
		Gather slices from params according to indices with leading batch dims.
		
		This operation assumes that the leading `batch_dims` dimensions of `indices`
		and `params` are batch dimensions; and performs a `tf.gather` operation within
		each batch. (If `batch_dims` is not specified, then it defaults to
		`rank(indices)-1`.)  In the case in which `batch_dims==0`, this operation
		is equivalent to `tf.gather`.
		
		Args:
		  params: A Tensor. The tensor from which to gather values.
		  indices: A Tensor. Must be one of the following types: int32, int64. Index
		    tensor. Must be in range `[0, params.shape[batch_dims]]`.
		  batch_dims: An integer or none.  The number of batch dimensions.  Must be
		    less than `rank(indices)`.  Defaults to `rank(indices) - 1` if None.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`. The
		    `axis` in `params` to gather `indices` from. Must be greater than or equal
		    to `batch_dims`.  Defaults to the first non-batch dimension. Supports
		    negative indexes.
		
		Returns:
		  A Tensor. Has the same type as `params`.
		
		Raises:
		  ValueError: if `indices` has an unknown shape.
	**/
	static public function _batch_gather(params:Dynamic, indices:Dynamic, batch_dims:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _cast_nested_seqs_to_dtype(dtype:Dynamic):Dynamic;
	/**
		Check if a given value is a valid index into a tensor.
	**/
	static public function _check_index(idx:Dynamic):Dynamic;
	/**
		Computes the size of a single strided slice dimension.
	**/
	static public function _compute_size_of_strided_dim(shrink:Dynamic, spec:Dynamic, size:Dynamic):Dynamic;
	static public function _constant_if_small(value:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns the dtype of any tensor-like object in `list_or_tuple`, if found.
		
		Args:
		  list_or_tuple: A list or tuple representing an object that can be converted
		    to a `tf.Tensor`.
		
		Returns:
		  The dtype of any tensor-like object in `list_or_tuple`, or `None` if no
		  such object exists.
	**/
	static public function _get_dtype_from_nested_lists(list_or_tuple:Dynamic):Dynamic;
	/**
		Helper to get the constant values of the paddings arg to pad().
		
		Used under V1 graph mode to facilitate computation of the shape of the output
		tensor of `pad()`.
		
		Args:
		  paddings: The same paddings arg as passed to pad(). Can be a Tensor, or
		    a nested list or tuple of Tensor and/or numbers.
		
		Returns:
		  A nested list or numbers or `None`, in which `None` indicates unknown
		  padding size.
	**/
	static public function _get_paddings_constant(paddings:Dynamic):Dynamic;
	static public function _is_undefined_dimension(d:Dynamic):Dynamic;
	static public function _should_not_autopack(v:Dynamic):Dynamic;
	/**
		Overload for Tensor.__getitem__.
		
		This operation extracts the specified region from the tensor.
		The notation is similar to NumPy with the restriction that
		currently only support basic indexing. That means that
		using a non-scalar tensor as input is not currently allowed.
		
		Some useful examples:
		
		```python
		# Strip leading and trailing 2 elements
		foo = tf.constant([1,2,3,4,5,6])
		print(foo[2:-2].eval())  # => [3,4]
		
		# Skip every other row and reverse the order of the columns
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[::2,::-1].eval())  # => [[3,2,1], [9,8,7]]
		
		# Use scalar tensors as indices on both dimensions
		print(foo[tf.constant(0), tf.constant(2)].eval())  # => 3
		
		# Insert another dimension
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[tf.newaxis, :, :].eval()) # => [[[1,2,3], [4,5,6], [7,8,9]]]
		print(foo[:, tf.newaxis, :].eval()) # => [[[1,2,3]], [[4,5,6]], [[7,8,9]]]
		print(foo[:, :, tf.newaxis].eval()) # => [[[1],[2],[3]], [[4],[5],[6]],
		[[7],[8],[9]]]
		
		# Ellipses (3 equivalent operations)
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[tf.newaxis, :, :].eval())  # => [[[1,2,3], [4,5,6], [7,8,9]]]
		print(foo[tf.newaxis, ...].eval())  # => [[[1,2,3], [4,5,6], [7,8,9]]]
		print(foo[tf.newaxis].eval())  # => [[[1,2,3], [4,5,6], [7,8,9]]]
		
		# Masks
		foo = tf.constant([[1,2,3], [4,5,6], [7,8,9]])
		print(foo[foo > 2].eval())  # => [3, 4, 5, 6, 7, 8, 9]
		```
		
		Notes:
		  - `tf.newaxis` is `None` as in NumPy.
		  - An implicit ellipsis is placed at the end of the `slice_spec`
		  - NumPy advanced indexing is currently not supported.
		
		Purpose in the API:
		
		  This method is exposed in TensorFlow's API so that library developers
		  can register dispatching for `Tensor.__getitem__` to allow it to handle
		  custom composite tensors & other custom objects.
		
		  The API symbol is not intended to be called by users directly and does
		  appear in TensorFlow's generated documentation.
		
		Args:
		  tensor: An ops.Tensor object.
		  slice_spec: The arguments to Tensor.__getitem__.
		  var: In the case of variable slice assignment, the Variable object to slice
		    (i.e. tensor is the read-only view of this variable).
		
		Returns:
		  The appropriate slice of "tensor", based on "slice_spec".
		
		Raises:
		  ValueError: If a slice range is negative size.
		  TypeError: If the slice indices aren't int, slice, ellipsis,
		    tf.newaxis or scalar int32/int64 tensors.
	**/
	static public function _slice_helper(tensor:Dynamic, slice_spec:Dynamic, ?_var:Dynamic):Dynamic;
	/**
		Tags the result of function by setting _is_zeros_tensor attribute.
		
		This is useful to compute Hessians of fused ops such as cross_entropy.
	**/
	static public function _tag_zeros_tensor(fun:Dynamic):Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	/**
		If `data` is scalar, then add a dimension; otherwise return as-is.
	**/
	static public function _with_nonzero_rank(data:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Gather slices from params according to indices with leading batch dims. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-10-25.
		Instructions for updating:
		`tf.batch_gather` is deprecated, please use `tf.gather` with `batch_dims=-1` instead.
	**/
	static public function batch_gather(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		gather_nd implementation with batch support.
	**/
	static public function batch_gather_nd(params:Dynamic, indices:Dynamic, batch_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  num_lower: A `Tensor` of type `int64`.
		  num_upper: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_band_part(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_matrix_band_part_eager_fallback(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  diagonal: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function batch_matrix_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_matrix_diag_eager_fallback(diagonal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_matrix_diag_part_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_matrix_set_diag_eager_fallback(input:Dynamic, diagonal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		BatchToSpace for 4-D tensors of type T.
		
		This is a legacy version of the more general BatchToSpaceND.
		
		Rearranges (permutes) data from batch into blocks of spatial data, followed by
		cropping. This is the reverse transformation of SpaceToBatch. More specifically,
		this op outputs a copy of the input tensor where values from the `batch`
		dimension are moved in spatial blocks to the `height` and `width` dimensions,
		followed by cropping along the `height` and `width` dimensions.
		
		Args:
		  input: A `Tensor`. 4-D tensor with shape
		    `[batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		      depth]`. Note that the batch size of the input tensor must be divisible by
		    `block_size * block_size`.
		  crops: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		    how many elements to crop from the intermediate result across the spatial
		    dimensions as follows:
		
		        crops = [[crop_top, crop_bottom], [crop_left, crop_right]]
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_to_space(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic, ?block_shape:Dynamic):Dynamic;
	static public function batch_to_space_eager_fallback(input:Dynamic, crops:Dynamic, block_size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		BatchToSpace for N-D tensors of type T.
		
		This operation reshapes the "batch" dimension 0 into `M + 1` dimensions of shape
		`block_shape + [batch]`, interleaves these blocks back into the grid defined by
		the spatial dimensions `[1, ..., M]`, to obtain a result with the same rank as
		the input.  The spatial dimensions of this intermediate result are then
		optionally cropped according to `crops` to produce the output.  This is the
		reverse of SpaceToBatch.  See below for a precise description.
		
		Args:
		  input: A `Tensor`.
		    N-D with shape `input_shape = [batch] + spatial_shape + remaining_shape`,
		    where spatial_shape has M dimensions.
		  block_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[M]`, all values must be >= 1.
		  crops: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D with shape `[M, 2]`, all values must be >= 0.
		      `crops[i] = [crop_start, crop_end]` specifies the amount to crop from input
		      dimension `i + 1`, which corresponds to spatial dimension `i`.  It is
		      required that
		      `crop_start[i] + crop_end[i] <= block_shape[i] * input_shape[i + 1]`.
		
		    This operation is equivalent to the following steps:
		
		    1. Reshape `input` to `reshaped` of shape:
		         [block_shape[0], ..., block_shape[M-1],
		          batch / prod(block_shape),
		          input_shape[1], ..., input_shape[N-1]]
		
		    2. Permute dimensions of `reshaped` to produce `permuted` of shape
		         [batch / prod(block_shape),
		
		          input_shape[1], block_shape[0],
		          ...,
		          input_shape[M], block_shape[M-1],
		
		          input_shape[M+1], ..., input_shape[N-1]]
		
		    3. Reshape `permuted` to produce `reshaped_permuted` of shape
		         [batch / prod(block_shape),
		
		          input_shape[1] * block_shape[0],
		          ...,
		          input_shape[M] * block_shape[M-1],
		
		          input_shape[M+1],
		          ...,
		          input_shape[N-1]]
		
		    4. Crop the start and end of dimensions `[1, ..., M]` of
		       `reshaped_permuted` according to `crops` to produce the output of shape:
		         [batch / prod(block_shape),
		
		          input_shape[1] * block_shape[0] - crops[0,0] - crops[0,1],
		          ...,
		          input_shape[M] * block_shape[M-1] - crops[M-1,0] - crops[M-1,1],
		
		          input_shape[M+1], ..., input_shape[N-1]]
		
		    Some examples:
		
		    (1) For the following input of shape `[4, 1, 1, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    The output tensor has shape `[1, 2, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    (2) For the following input of shape `[4, 1, 1, 3]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    [[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
		    ```
		
		    The output tensor has shape `[1, 2, 2, 3]` and value:
		
		    ```
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    (3) For the following input of shape `[4, 2, 2, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [0, 0]]`:
		
		    ```
		    x = [[[[1], [3]], [[9], [11]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    The output tensor has shape `[1, 4, 4, 1]` and value:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		         [[5],   [6],  [7],  [8]],
		         [[9],  [10], [11],  [12]],
		         [[13], [14], [15],  [16]]]]
		    ```
		
		    (4) For the following input of shape `[8, 1, 3, 1]`, `block_shape = [2, 2]`, and
		        `crops = [[0, 0], [2, 0]]`:
		
		    ```
		    x = [[[[0], [1], [3]]], [[[0], [9], [11]]],
		         [[[0], [2], [4]]], [[[0], [10], [12]]],
		         [[[0], [5], [7]]], [[[0], [13], [15]]],
		         [[[0], [6], [8]]], [[[0], [14], [16]]]]
		    ```
		
		    The output tensor has shape `[2, 2, 4, 1]` and value:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_to_space_nd(input:Dynamic, block_shape:Dynamic, crops:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_to_space_nd_eager_fallback(input:Dynamic, block_shape:Dynamic, crops:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function batch_to_space_v2(input:Dynamic, block_shape:Dynamic, crops:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function bitcast_eager_fallback(input:Dynamic, type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		
		```python
		# 1-D example
		tensor = [0, 1, 2, 3]
		mask = np.array([True, False, True, False])
		tf.boolean_mask(tensor, mask)  # [0, 2]
		
		# 2-D example
		tensor = [[1, 2], [3, 4], [5, 6]]
		mask = np.array([True, False, True])
		tf.boolean_mask(tensor, mask)  # [[1, 2], [5, 6]]
		```
		
		Args:
		  tensor:  N-D Tensor.
		  mask:  K-D boolean Tensor, K <= N and K must be known statically.
		  name:  A name for this operation (optional).
		  axis:  A 0-D int Tensor representing the axis in `tensor` to mask from. By
		    default, axis is 0 which will mask from the first dimension. Otherwise K +
		    axis <= N.
		
		Returns:
		  (N-K+1)-dimensional tensor populated by entries in `tensor` corresponding
		  to `True` values in `mask`.
		
		Raises:
		  ValueError:  If shapes do not conform.
	**/
	static public function boolean_mask(tensor:Dynamic, mask:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
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
	static public function boolean_mask_v2(tensor:Dynamic, mask:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the shape of s0 op s1 with broadcast.
		
		Given `s0` and `s1`, tensors that represent shapes, compute `r0`, the
		broadcasted shape. `s0`, `s1` and `r0` are all integer vectors.
		
		Args:
		  s0: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  s1: A `Tensor`. Must have the same type as `s0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `s0`.
	**/
	static public function broadcast_args(s0:Dynamic, s1:Dynamic, ?name:Dynamic):Dynamic;
	static public function broadcast_args_eager_fallback(s0:Dynamic, s1:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Return the reduction indices for computing gradients of s0 op s1 with broadcast.
		
		This is typically used by gradient computations for a broadcasting operation.
		
		Args:
		  s0: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  s1: A `Tensor`. Must have the same type as `s0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (r0, r1).
		
		  r0: A `Tensor`. Has the same type as `s0`.
		  r1: A `Tensor`. Has the same type as `s0`.
	**/
	static public function broadcast_gradient_args(s0:Dynamic, s1:Dynamic, ?name:Dynamic):Dynamic;
	static public function broadcast_gradient_args_eager_fallback(s0:Dynamic, s1:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function broadcast_to_eager_fallback(input:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function check_numerics_eager_fallback(tensor:Dynamic, message:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN, -Inf and +Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, returns the input
		tensor. Unlike CheckNumerics (V1), CheckNumericsV2 distinguishes -Inf and +Inf
		in the errors it throws.
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics_v2(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	static public function check_numerics_v2_eager_fallback(tensor:Dynamic, message:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function concat_eager_fallback(concat_dim:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes offsets of concat inputs within its output.
		
		For example:
		
		```
		# 'x' is [2, 2, 7]
		# 'y' is [2, 3, 7]
		# 'z' is [2, 5, 7]
		concat_offset(2, [x, y, z]) => [0, 0, 0], [0, 2, 0], [0, 5, 0]
		```
		
		This is typically used by gradient computations for a concat operation.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    The dimension along which to concatenate.
		  shape: A list of at least 2 `Tensor` objects with type `int32`.
		    The `N` int32 vectors representing shape of tensors being concatenated.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `shape` of `Tensor` objects with type `int32`.
	**/
	static public function concat_offset(concat_dim:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function concat_offset_eager_fallback(concat_dim:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Args:
		  values: A list of at least 2 `Tensor` objects with the same type.
		    List of `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [-rank(values), rank(values)).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function concat_v2(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function concat_v2_eager_fallback(values:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Shuffle dimensions of x according to a permutation and conjugate the result.
		
		The output `y` has the same rank as `x`. The shapes of `x` and `y` satisfy:
		  `y.shape[i] == x.shape[perm[i]] for i in [0, 1, ..., rank(x) - 1]`
		  `y[i,j,k,...,s,t,u] == conj(x[perm[i], perm[j], perm[k],...,perm[s], perm[t], perm[u]])`
		
		Args:
		  x: A `Tensor`.
		  perm: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function conjugate_transpose(x:Dynamic, perm:Dynamic, ?name:Dynamic):Dynamic;
	static public function conjugate_transpose_eager_fallback(x:Dynamic, perm:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a constant tensor.
		
		Args:
		  value: A `tf.TensorProto`. Attr `value` is the tensor to return.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function const(value:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function const_eager_fallback(value:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Converts the given value to an integer Tensor.
	**/
	static public function convert_to_int_tensor(tensor:Dynamic, name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Identity op for gradient debugging.
		
		This op is hidden from public in Python. It is used by TensorFlow Debugger to
		register gradient tensors for gradient debugging.
		This op operates on non-reference-type tensors.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function debug_gradient_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function debug_gradient_identity_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Identity op for gradient debugging.
		
		This op is hidden from public in Python. It is used by TensorFlow Debugger to
		register gradient tensors for gradient debugging.
		This op operates on reference-type tensors.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function debug_gradient_ref_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function debug_gradient_ref_identity_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Makes a copy of `x`.
		
		Args:
		  x: A `Tensor`. The source tensor of type `T`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function deep_copy(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function deep_copy_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		DepthToSpace for tensors of type T.
		
		Rearranges data from depth into blocks of spatial data.
		This is the reverse transformation of SpaceToDepth. More specifically,
		this op outputs a copy of the input tensor where values from the `depth`
		dimension are moved in spatial blocks to the `height` and `width` dimensions.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Chunks of data of size `block_size * block_size` from depth are rearranged
		    into non-overlapping blocks of size `block_size x block_size`
		  * The width the output tensor is `input_depth * block_size`, whereas the
		    height is `input_height * block_size`.
		  * The Y, X coordinates within each block of the output image are determined
		    by the high order component of the input channel index.
		  * The depth of the input tensor must be divisible by
		    `block_size * block_size`.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,iY,iX,bY,bX,oC  (where n=batch index, iX, iY means X or Y coordinates
		                        within the input image, bX, bY means coordinates
		                        within the output block, oC means output channels).
		     The output would be the input transposed to the following layout:
		     n,iY,bY,iX,bX,oC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 1, 1, 4]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1, 2, 3, 4]]]]
		
		```
		
		This operation will output a tensor of shape `[1, 2, 2, 1]`:
		
		```
		   [[[[1], [2]],
		     [[3], [4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
		the corresponding output will have 2x2 elements and will have a depth of
		1 channel (1 = `4 / (block_size * block_size)`).
		The output element shape is `[2, 2, 1]`.
		
		For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.
		
		```
		x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		This operation, for block size of 2, will return the following tensor of shape
		`[1, 2, 2, 3]`
		
		```
		   [[[[1, 2, 3], [4, 5, 6]],
		     [[7, 8, 9], [10, 11, 12]]]]
		
		```
		
		Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:
		
		```
		x =  [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		the operator will return the following tensor of shape `[1 4 4 1]`:
		
		```
		x = [[[ [1],   [2],  [5],  [6]],
		      [ [3],   [4],  [7],  [8]],
		      [ [9],  [10], [13],  [14]],
		      [ [11], [12], [15],  [16]]]]
		
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`.
		    The size of the spatial block, same as in Space2Depth.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depth_to_space(input:Dynamic, block_size:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function depth_to_space_eager_fallback(input:Dynamic, block_size:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		DepthToSpace for tensors of type T.
		
		Rearranges data from depth into blocks of spatial data.
		This is the reverse transformation of SpaceToDepth. More specifically,
		this op outputs a copy of the input tensor where values from the `depth`
		dimension are moved in spatial blocks to the `height` and `width` dimensions.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Chunks of data of size `block_size * block_size` from depth are rearranged
		    into non-overlapping blocks of size `block_size x block_size`
		  * The width the output tensor is `input_depth * block_size`, whereas the
		    height is `input_height * block_size`.
		  * The Y, X coordinates within each block of the output image are determined
		    by the high order component of the input channel index.
		  * The depth of the input tensor must be divisible by
		    `block_size * block_size`.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,iY,iX,bY,bX,oC  (where n=batch index, iX, iY means X or Y coordinates
		                        within the input image, bX, bY means coordinates
		                        within the output block, oC means output channels).
		     The output would be the input transposed to the following layout:
		     n,iY,bY,iX,bX,oC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 1, 1, 4]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1, 2, 3, 4]]]]
		
		```
		
		This operation will output a tensor of shape `[1, 2, 2, 1]`:
		
		```
		   [[[[1], [2]],
		     [[3], [4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
		the corresponding output will have 2x2 elements and will have a depth of
		1 channel (1 = `4 / (block_size * block_size)`).
		The output element shape is `[2, 2, 1]`.
		
		For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.
		
		```
		x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		This operation, for block size of 2, will return the following tensor of shape
		`[1, 2, 2, 3]`
		
		```
		   [[[[1, 2, 3], [4, 5, 6]],
		     [[7, 8, 9], [10, 11, 12]]]]
		
		```
		
		Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:
		
		```
		x =  [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		the operator will return the following tensor of shape `[1 4 4 1]`:
		
		```
		x = [[[ [1],   [2],  [5],  [6]],
		      [ [3],   [4],  [7],  [8]],
		      [ [9],  [10], [13],  [14]],
		      [ [11], [12], [15],  [16]]]]
		
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`.
		    The size of the spatial block, same as in Space2Depth.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depth_to_space_v2(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequantize the 'input' tensor into a float or bfloat16 Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the output. The 'mode' attribute controls exactly which calculations are
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
		
		If the mode is `SCALED`, dequantization is performed by multiplying each
		input value by a scaling_factor. (Thus an input of 0 always maps to 0.0).
		
		The scaling_factor is determined from `min_range`, `max_range`, and
		`narrow_range` in a way that is compatible with `QuantizeAndDequantize{V2|V3}`
		and `QuantizeV2`, using the following algorithm:
		
		```c++
		
		  const int min_expected_T = std::numeric_limits<T>::min() +
		    (narrow_range ? 1 : 0);
		  const int max_expected_T = std::numeric_limits<T>::max();
		  const float max_expected_T = std::numeric_limits<float>::max();
		
		  const float scale_factor =
		    (std::numeric_limits<T>::min() == 0) ? (max_range / max_expected_T)
		                                         : std::max(min_range / min_expected_T,
		                                                    max_range / max_expected_T);
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  dtype: An optional `tf.DType` from: `tf.bfloat16, tf.float32`. Defaults to `tf.float32`.
		    Type of the output tensor. Currently Dequantize supports float and bfloat16.
		    If 'dtype' is 'bfloat16', it only supports 'MIN_COMBINED' mode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?narrow_range:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function dequantize_eager_fallback(input:Dynamic, min_range:Dynamic, max_range:Dynamic, mode:Dynamic, narrow_range:Dynamic, axis:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a diagonal tensor with a given diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has dimensions [D1,..., Dk], then the output is a tensor of
		rank 2k with dimensions [D1,..., Dk, D1,..., Dk] where:
		
		`output[i1,..., ik, i1,..., ik] = diagonal[i1, ..., ik]` and 0 everywhere else.
		
		For example:
		
		```
		# 'diagonal' is [1, 2, 3, 4]
		tf.diag(diagonal) ==> [[1, 0, 0, 0]
		                       [0, 2, 0, 0]
		                       [0, 0, 3, 0]
		                       [0, 0, 0, 4]]
		```
		
		Args:
		  diagonal: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is at most 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	static public function diag_eager_fallback(diagonal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For example:
		
		```
		# 'input' is [[1, 0, 0, 0]
		              [0, 2, 0, 0]
		              [0, 0, 3, 0]
		              [0, 0, 0, 4]]
		
		tf.diag_part(input) ==> [1, 2, 3, 4]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		    Rank k tensor where k is even and not zero.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function diag_part_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	static public function edit_distance_eager_fallback(hypothesis_indices:Dynamic, hypothesis_values:Dynamic, hypothesis_shape:Dynamic, truth_indices:Dynamic, truth_values:Dynamic, truth_shape:Dynamic, normalize:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a tensor with the given shape.
		
		This operation creates a tensor of `shape` and `dtype`.
		
		  Args:
		    shape: A `Tensor` of type `int32`.
		      1-D. Represents the shape of the output tensor.
		    dtype: A `tf.DType`.
		    init: An optional `bool`. Defaults to `False`.
		      If True, initialize the returned tensor with the default value of dtype.  Otherwise, the implementation is free not to initializethe tensor's content.
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor` of type `dtype`.
		  
	**/
	static public function empty(shape:Dynamic, dtype:Dynamic, ?init:Dynamic, ?name:Dynamic):Dynamic;
	static public function empty_eager_fallback(shape:Dynamic, dtype:Dynamic, init:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Ensures that the tensor's shape matches the expected shape.
		
		Raises an error if the input tensor's shape does not match the specified shape.
		Returns the input tensor otherwise.
		
		Args:
		  input: A `Tensor`. A tensor, whose shape is to be validated.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The expected (possibly partially specified) shape of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ensure_shape(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function ensure_shape_eager_fallback(input:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a tensor with a length 1 axis inserted at index `axis`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
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
		  axis: 0-D (scalar). Specifies the dimension index at which to expand the
		    shape of `input`. Must be in the range `[-rank(input) - 1, rank(input)]`.
		  name: The name of the output `Tensor` (optional).
		  dim: 0-D (scalar). Equivalent to `axis`, to be deprecated.
		
		Returns:
		  A `Tensor` with the same data as `input`, but its shape has an additional
		  dimension of size 1 added.
		
		Raises:
		  ValueError: if either both or neither of `dim` and `axis` are specified.
	**/
	static public function expand_dims(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	static public function expand_dims_eager_fallback(input:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function expand_dims_v2(input:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract `patches` from `images` and put them in the "depth" output dimension.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`, `complex64`, `complex128`, `bool`.
		    4-D Tensor with shape `[batch, in_rows, in_cols, depth]`.
		  ksizes: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `images`.
		  strides: A list of `ints` that has length `>= 4`.
		    How far the centers of two consecutive patches are in
		    the images. Must be: `[1, stride_rows, stride_cols, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    Must be: `[1, rate_rows, rate_cols, 1]`. This is the
		    input stride, specifying how far two consecutive patch samples are in the
		    input. Equivalent to extracting patches with
		    `patch_sizes_eff = patch_sizes + (patch_sizes - 1) * (rates - 1)`, followed by
		    subsampling them spatially by a factor of `rates`. This is equivalent to
		    `rate` in dilated (a.k.a. Atrous) convolutions.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function extract_image_patches(images:Dynamic, ?ksizes:Dynamic, ?strides:Dynamic, ?rates:Dynamic, ?padding:Dynamic, ?name:Dynamic, ?sizes:Dynamic):Dynamic;
	static public function extract_image_patches_eager_fallback(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Extract `patches` from `images`.
		
		This op collects patches from the input image, as if applying a
		convolution. All extracted patches are stacked in the depth (last) dimension
		of the output.
		
		Specifically, the op extracts patches of shape `sizes` which are `strides`
		apart in the input image. The output is subsampled using the `rates` argument,
		in the same manner as "atrous" or "dilated" convolutions.
		
		The result is a 4D tensor which is indexed by batch, row, and column.
		`output[i, x, y]` contains a flattened patch of size `sizes[1], sizes[2]`
		which is taken from the input starting at
		`images[i, x*strides[1], y*strides[2]]`.
		
		Each output patch can be reshaped to `sizes[1], sizes[2], depth`, where
		`depth` is `images.shape[3]`.
		
		The output elements are taken from the input at intervals given by the `rate`
		argument, as in dilated convolutions.
		
		The `padding` argument has no effect on the size of each patch, it determines
		how many patches are extracted. If `VALID`, only patches which are fully
		contained in the input image are included. If `SAME`, all patches whose
		starting point is inside the input are included, and areas outside the input
		default to zero.
		
		Example:
		
		```
		  n = 10
		  # images is a 1 x 10 x 10 x 1 array that contains the numbers 1 through 100
		  images = [[[[x * n + y + 1] for y in range(n)] for x in range(n)]]
		
		  # We generate two outputs as follows:
		  # 1. 3x3 patches with stride length 5
		  # 2. Same as above, but the rate is increased to 2
		  tf.image.extract_patches(images=images,
		                           sizes=[1, 3, 3, 1],
		                           strides=[1, 5, 5, 1],
		                           rates=[1, 1, 1, 1],
		                           padding='VALID')
		
		  # Yields:
		  [[[[ 1  2  3 11 12 13 21 22 23]
		     [ 6  7  8 16 17 18 26 27 28]]
		    [[51 52 53 61 62 63 71 72 73]
		     [56 57 58 66 67 68 76 77 78]]]]
		```
		
		If we mark the pixels in the input image which are taken for the output with
		`*`, we see the pattern:
		
		```
		   *  *  *  4  5  *  *  *  9 10
		   *  *  * 14 15  *  *  * 19 20
		   *  *  * 24 25  *  *  * 29 30
		  31 32 33 34 35 36 37 38 39 40
		  41 42 43 44 45 46 47 48 49 50
		   *  *  * 54 55  *  *  * 59 60
		   *  *  * 64 65  *  *  * 69 70
		   *  *  * 74 75  *  *  * 79 80
		  81 82 83 84 85 86 87 88 89 90
		  91 92 93 94 95 96 97 98 99 100
		```
		
		```
		  tf.image.extract_patches(images=images,
		                           sizes=[1, 3, 3, 1],
		                           strides=[1, 5, 5, 1],
		                           rates=[1, 2, 2, 1],
		                           padding='VALID')
		
		  # Yields:
		  [[[[  1   3   5  21  23  25  41  43  45]
		     [  6   8  10  26  28  30  46  48  50]]
		
		    [[ 51  53  55  71  73  75  91  93  95]
		     [ 56  58  60  76  78  80  96  98 100]]]]
		```
		
		We can again draw the effect, this time using the symbols `*`, `x`, `+` and
		`o` to distinguish the patches:
		
		```
		   *  2  *  4  *  x  7  x  9  x
		  11 12 13 14 15 16 17 18 19 20
		   * 22  * 24  *  x 27  x 29  x
		  31 32 33 34 35 36 37 38 39 40
		   * 42  * 44  *  x 47  x 49  x
		   + 52  + 54  +  o 57  o 59  o
		  61 62 63 64 65 66 67 68 69 70
		   + 72  + 74  +  o 77  o 79  o
		  81 82 83 84 85 86 87 88 89 90
		   + 92  + 94  +  o 97  o 99  o
		```
		
		Args:
		  images: A 4-D Tensor with shape `[batch, in_rows, in_cols, depth]`.
		  sizes: The size of the extracted patches. Must be
		    `[1, size_rows, size_cols, 1]`.
		  strides: A 1-D Tensor of length 4. How far the centers of two consecutive
		    patches are in the images. Must be: `[1, stride_rows, stride_cols, 1]`.
		  rates: A 1-D Tensor of length 4. Must be: `[1, rate_rows, rate_cols, 1]`.
		    This is the input stride, specifying how far two consecutive patch samples
		    are in the input. Equivalent to extracting patches with `patch_sizes_eff =
		    patch_sizes + (patch_sizes - 1) * (rates - 1)`, followed by subsampling
		    them spatially by a factor of `rates`. This is equivalent to `rate` in
		    dilated (a.k.a. Atrous) convolutions.
		  padding: The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A 4-D Tensor of the same type as the input.
	**/
	static public function extract_image_patches_v2(images:Dynamic, sizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function extract_volume_patches_eager_fallback(input:Dynamic, ksizes:Dynamic, strides:Dynamic, padding:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor, type float to 'outputs' tensor of same type.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		Quantization is called fake since the output is still in floating point.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_args(inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	static public function fake_quant_with_min_max_args_eager_fallback(inputs:Dynamic, min:Dynamic, max:Dynamic, num_bits:Dynamic, narrow_range:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxArgs operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxArgs operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxArgs operation.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_args_gradient(gradients:Dynamic, inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	static public function fake_quant_with_min_max_args_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, num_bits:Dynamic, narrow_range:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via global float scalars
		
		Fake-quantize the `inputs` tensor of type float via global float scalars
		`min` and `max` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	static public function fake_quant_with_min_max_vars_eager_fallback(inputs:Dynamic, min:Dynamic, max:Dynamic, num_bits:Dynamic, narrow_range:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVars operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation.
		    min, max: Quantization interval, scalar floats.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 8, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_gradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	static public function fake_quant_with_min_max_vars_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, num_bits:Dynamic, narrow_range:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via per-channel floats
		
		Fake-quantize the `inputs` tensor of type float per-channel and one of the
		shapes: `[d]`, `[b, d]` `[b, h, w, d]` via per-channel floats `min` and `max`
		of shape `[d]` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_per_channel(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	static public function fake_quant_with_min_max_vars_per_channel_eager_fallback(inputs:Dynamic, min:Dynamic, max:Dynamic, num_bits:Dynamic, narrow_range:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVarsPerChannel operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation,
		    shape one of: `[d]`, `[b, d]`,  `[b, h, w, d]`.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation, shape
		      same as `gradients`.
		    min, max: Quantization interval, floats of shape `[d]`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 16, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_per_channel_gradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	static public function fake_quant_with_min_max_vars_per_channel_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, num_bits:Dynamic, narrow_range:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function fill_eager_fallback(dims:Dynamic, value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function fingerprint_eager_fallback(data:Dynamic, method:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?batch_dims:Dynamic):Dynamic;
	static public function gather_eager_fallback(params:Dynamic, indices:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?name:Dynamic, ?batch_dims:Dynamic):Dynamic;
	static public function gather_nd_eager_fallback(params:Dynamic, indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function gather_nd_v2(params:Dynamic, indices:Dynamic, ?batch_dims:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function gather_v2(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?axis:Dynamic, ?batch_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function gather_v2_eager_fallback(params:Dynamic, indices:Dynamic, axis:Dynamic, batch_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Validate an `axis` parameter, and normalize it to be positive.
		
		If `ndims` is known (i.e., not `None`), then check that `axis` is in the
		range `-ndims <= axis < ndims`, and return `axis` (if `axis >= 0`) or
		`axis + ndims` (otherwise).
		If `ndims` is not known, and `axis` is positive, then return it as-is.
		If `ndims` is not known, and `axis` is negative, then report an error.
		
		Args:
		  axis: An integer constant
		  ndims: An integer constant, or `None`
		  axis_name: The name of `axis` (for error messages).
		  ndims_name: The name of `ndims` (for error messages).
		
		Returns:
		  The normalized `axis` value.
		
		Raises:
		  ValueError: If `axis` is out-of-bounds, or if `axis` is negative and
		    `ndims is None`.
	**/
	static public function get_positive_axis(axis:Dynamic, ndims:Dynamic, ?axis_name:Dynamic, ?ndims_name:Dynamic):Dynamic;
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
	static public function guarantee_const_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function identity_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function identity_n_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns immutable tensor from memory region.
		
		The current implementation memmaps the tensor from a file.
		
		Args:
		  dtype: A `tf.DType`. Type of the returned tensor.
		  shape: A `tf.TensorShape` or list of `ints`. Shape of the returned tensor.
		  memory_region_name: A `string`.
		    Name of readonly memory region used by the tensor, see
		    NewReadOnlyMemoryRegionFromFile in tensorflow::Env.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function immutable_const(dtype:Dynamic, shape:Dynamic, memory_region_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function immutable_const_eager_fallback(dtype:Dynamic, shape:Dynamic, memory_region_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adds v into specified rows of x.
		
		    Computes y = x; y[i, :] += v; return y.
		
		Args:
		  x: A `Tensor`. A `Tensor` of type T.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inplace_add(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	static public function inplace_add_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Subtracts `v` into specified rows of `x`.
		
		  Computes y = x; y[i, :] -= v; return y.
		
		Args:
		  x: A `Tensor`. A `Tensor` of type T.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inplace_sub(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	static public function inplace_sub_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Updates specified rows 'i' with values 'v'.
		
		Computes `x[i, :] = v; return x`.
		
		Originally this function is mutative however for compilation we make this
		operation create / operate on a copy of `x`.
		
		Args:
		  x: A `Tensor`. A tensor of type `T`.
		  i: A `Tensor` of type `int32`.
		    A vector. Indices into the left-most dimension of `x`.
		  v: A `Tensor`. Must have the same type as `x`.
		    A `Tensor` of type T. Same dimension sizes as x except the first dimension, which must be the same as i's size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function inplace_update(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic):Dynamic;
	static public function inplace_update_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function invert_permutation_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		
		  out: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function list_diff(x:Dynamic, y:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	static public function list_diff_eager_fallback(x:Dynamic, y:Dynamic, out_idx:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		  Given a list `x` and a list `y`, this operation returns a list `out` that
		  represents all values that are in `x` but not in `y`. The returned list `out`
		  is sorted in the same order that the numbers appear in `x` (duplicates are
		  preserved). This operation also returns a list `idx` that represents the
		  position of each `out` element in `x`. In other words:
		
		  `out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		  For example, given this input:
		
		  ```
		  x = [1, 2, 3, 4, 5, 6]
		  y = [1, 3, 5]
		  ```
		
		  This operation would return:
		
		  ```
		  out ==> [2, 4, 6]
		  idx ==> [1, 3, 5]
		  ```
		
		  Args:
		    x: A `Tensor`. 1-D. Values to keep.
		    y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		    out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (out, idx).
		
		    out: A `Tensor`. Has the same type as `x`.
		    idx: A `Tensor` of type `out_idx`.
		  
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-30.
		Instructions for updating:
		This op will be removed after the deprecation date. Please switch to tf.setdiff1d().
	**/
	static public function listdiff(x:Dynamic, y:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies lower_bound(sorted_search_values, values) along each row.
		
		Each set of rows with the same index in (sorted_inputs, values) is treated
		independently.  The resulting row is the equivalent of calling
		`np.searchsorted(sorted_inputs, values, side='left')`.
		
		The result is not a global index to the entire
		`Tensor`, but rather just the index in the last dimension.
		
		A 2-D example:
		  sorted_sequence = [[0, 3, 9, 9, 10],
		                     [1, 2, 3, 4, 5]]
		  values = [[2, 4, 9],
		            [0, 2, 6]]
		
		  result = LowerBound(sorted_sequence, values)
		
		  result == [[1, 2, 2],
		             [0, 1, 5]]
		
		Args:
		  sorted_inputs: A `Tensor`. 2-D Tensor where each row is ordered.
		  values: A `Tensor`. Must have the same type as `sorted_inputs`.
		    2-D Tensor with the same numbers of rows as `sorted_search_values`. Contains
		    the values that will be searched for in `sorted_search_values`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function lower_bound(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function lower_bound_eager_fallback(sorted_inputs:Dynamic, values:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix to zero.
		
		The `band` part is computed as follows:
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor with the same shape where
		
		`band[i, j, k, ..., m, n] = in_band(m, n) * input[i, j, k, ..., m, n]`.
		
		The indicator function
		
		`in_band(m, n) = (num_lower < 0 || (m-n) <= num_lower)) &&
		                 (num_upper < 0 || (n-m) <= num_upper)`.
		
		For example:
		
		```
		# if 'input' is [[ 0,  1,  2, 3]
		#                [-1,  0,  1, 2]
		#                [-2, -1,  0, 1]
		#                [-3, -2, -1, 0]],
		
		tf.linalg.band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                       [-1,  0,  1, 2]
		                                       [ 0, -1,  0, 1]
		                                       [ 0,  0, -1, 0]],
		
		tf.linalg.band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                      [-1,  0,  1, 0]
		                                      [-2, -1,  0, 1]
		                                      [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```
		 tf.linalg.band_part(input, 0, -1) ==> Upper triangular part.
		 tf.linalg.band_part(input, -1, 0) ==> Lower triangular part.
		 tf.linalg.band_part(input, 0, 0) ==> Diagonal.
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor.
		  num_lower: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D tensor. Number of subdiagonals to keep. If negative, keep entire
		    lower triangle.
		  num_upper: A `Tensor`. Must have the same type as `num_lower`.
		    0-D tensor. Number of superdiagonals to keep. If negative, keep
		    entire upper triangle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_band_part(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_band_part_eager_fallback(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with given batched diagonal values.
		
		Returns a tensor with the contents in `diagonal` as `k[0]`-th to `k[1]`-th
		diagonals of a matrix, with everything else padded with `padding`. `num_rows`
		and `num_cols` specify the dimension of the innermost matrix of the output. If
		both are not specified, the op assumes the innermost matrix is square and
		infers its size from `k` and the innermost dimension of `diagonal`. If only
		one of them is specified, the op assumes the unspecified value is the smallest
		possible based on other criteria.
		
		Let `diagonal` have `r` dimensions `[I, J, ..., L, M, N]`. The output tensor
		has rank `r+1` with shape `[I, J, ..., L, M, num_rows, num_cols]` when only
		one diagonal is given (`k` is an integer or `k[0] == k[1]`). Otherwise, it has
		rank `r` with shape `[I, J, ..., L, num_rows, num_cols]`.
		
		The second innermost dimension of `diagonal` has double meaning. When `k` is
		scalar or `k[0] == k[1]`, `M` is part of the batch size [I, J, ..., M], and
		the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(d_upper, 0)] ; if n - m == d_upper
		    padding_value                             ; otherwise
		```
		
		Otherwise, `M` is treated as the number of diagonals for the matrix in the
		same batch (`M = k[1]-k[0]+1`), and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    padding_value                                     ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		diagonal = np.array([[1, 2, 3, 4],            # Input shape: (2, 4)
		                     [5, 6, 7, 8]])
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0],  # Output shape: (2, 4, 4)
		                               [0, 2, 0, 0],
		                               [0, 0, 3, 0],
		                               [0, 0, 0, 4]],
		                              [[5, 0, 0, 0],
		                               [0, 6, 0, 0],
		                               [0, 0, 7, 0],
		                               [0, 0, 0, 8]]]
		
		# A superdiagonal (per batch).
		diagonal = np.array([[1, 2, 3],  # Input shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_diag(diagonal, k = 1)
		  ==> [[[0, 1, 0, 0],  # Output shape: (2, 4, 4)
		        [0, 0, 2, 0],
		        [0, 0, 0, 3],
		        [0, 0, 0, 0]],
		       [[0, 4, 0, 0],
		        [0, 0, 5, 0],
		        [0, 0, 0, 6],
		        [0, 0, 0, 0]]]
		
		# A tridiagonal band (per batch).
		diagonals = np.array([[[8, 9, 0],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[2, 3, 0],
		                       [6, 7, 9],
		                       [0, 9, 1]]])
		tf.matrix_diag(diagonals, k = (-1, 1))
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# RIGHT_LEFT alignment.
		diagonals = np.array([[[0, 8, 9],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 2, 3],
		                       [6, 7, 9],
		                       [9, 1, 0]]])
		tf.matrix_diag(diagonals, k = (-1, 1), align="RIGHT_LEFT")
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# Rectangular matrix.
		diagonal = np.array([1, 2])  # Input shape: (2)
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, num_cols = 4)
		  ==> [[0, 0, 0, 0],  # Output shape: (3, 4)
		       [1, 0, 0, 0],
		       [0, 2, 0, 0]]
		
		# Rectangular matrix with inferred num_cols and padding_value = 9.
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, padding_value = 9)
		  ==> [[9, 9],  # Output shape: (3, 2)
		       [1, 9],
		       [9, 2]]
		```
		
		Args:
		  diagonal: A `Tensor` with `rank k >= 1`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  num_rows: The number of rows of the output matrix. If it is not provided,
		    the op assumes the output matrix is a square matrix and infers the matrix
		    size from `d_lower`, `d_upper`, and the innermost dimension of `diagonal`.
		  num_cols: The number of columns of the output matrix. If it is not provided,
		    the op assumes the output matrix is a square matrix and infers the matrix
		    size from `d_lower`, `d_upper`, and the innermost dimension of `diagonal`.
		  padding_value: The value to fill the area outside the specified diagonal
		    band with. Default is 0.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
		
		Returns:
		  A Tensor. Has the same type as `diagonal`.
	**/
	static public function matrix_diag(diagonal:Dynamic, ?name:Dynamic, ?k:Dynamic, ?num_rows:Dynamic, ?num_cols:Dynamic, ?padding_value:Dynamic, ?align:Dynamic):Dynamic;
	static public function matrix_diag_eager_fallback(diagonal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		Returns a tensor with the `k[0]`-th to `k[1]`-th diagonals of the batched
		`input`.
		
		Assume `input` has `r` dimensions `[I, J, ..., L, M, N]`.
		Let `max_diag_len` be the maximum length among all diagonals to be extracted,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		Let `num_diags` be the number of diagonals to extract,
		`num_diags = k[1] - k[0] + 1`.
		
		If `num_diags == 1`, the output tensor is of rank `r - 1` with shape
		`[I, J, ..., L, max_diag_len]` and values:
		
		```
		diagonal[i, j, ..., l, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `y = max(-k[1], 0)`, `x = max(k[1], 0)`.
		
		Otherwise, the output tensor has rank `r` with dimensions
		`[I, J, ..., L, num_diags, max_diag_len]` with values:
		
		```
		diagonal[i, j, ..., l, m, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `d = k[1] - m`, `y = max(-d, 0) - offset`, and `x = max(d, 0) - offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		input = np.array([[[1, 2, 3, 4],  # Input shape: (2, 3, 4)
		                   [5, 6, 7, 8],
		                   [9, 8, 7, 6]],
		                  [[5, 4, 3, 2],
		                   [1, 2, 3, 4],
		                   [5, 6, 7, 8]]])
		
		# A main diagonal from each batch.
		tf.linalg.diag_part(input) ==> [[1, 6, 7],  # Output shape: (2, 3)
		                                [5, 2, 7]]
		
		# A superdiagonal from each batch.
		tf.linalg.diag_part(input, k = 1)
		  ==> [[2, 7, 6],  # Output shape: (2, 3)
		       [4, 3, 8]]
		
		# A band from each batch.
		tf.linalg.diag_part(input, k = (-1, 2))
		  ==> [[[3, 8, 0],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [0, 5, 8]],
		       [[3, 4, 0],
		        [4, 3, 8],
		        [5, 2, 7],
		        [0, 1, 6]]]
		
		# RIGHT_LEFT alignment.
		tf.linalg.diag_part(input, k = (-1, 2), align="RIGHT_LEFT")
		  ==> [[[0, 3, 8],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [5, 8, 0]],
		       [[0, 3, 4],
		        [4, 3, 8],
		        [5, 2, 7],
		        [1, 6, 0]]]
		
		# max_diag_len can be shorter than the main diagonal.
		tf.linalg.diag_part(input, k = (-2, -1))
		  ==> [[[5, 8],
		        [0, 9]],
		       [[1, 6],
		        [0, 5]]]
		
		# padding_value = 9
		tf.linalg.diag_part(input, k = (1, 3), padding_value = 9)
		  ==> [[[4, 9, 9],  # Output shape: (2, 3, 3)
		        [3, 8, 9],
		        [2, 7, 6]],
		       [[2, 9, 9],
		        [3, 4, 9],
		        [4, 3, 8]]]
		
		```
		
		Args:
		  input: A `Tensor` with `rank k >= 2`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  padding_value: The value to fill the area outside the specified diagonal
		    band with. Default is 0.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
		
		Returns:
		  A Tensor containing diagonals of `input`. Has the same type as `input`.
		
		Raises:
		  InvalidArgumentError: When `k` is out of bound or when `k[0]>k[1:]`.
	**/
	static public function matrix_diag_part(input:Dynamic, ?name:Dynamic, ?k:Dynamic, ?padding_value:Dynamic, ?align:Dynamic):Dynamic;
	static public function matrix_diag_part_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		Returns a tensor with the `k[0]`-th to `k[1]`-th diagonals of the batched
		`input`.
		
		Assume `input` has `r` dimensions `[I, J, ..., L, M, N]`.
		Let `max_diag_len` be the maximum length among all diagonals to be extracted,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		Let `num_diags` be the number of diagonals to extract,
		`num_diags = k[1] - k[0] + 1`.
		
		If `num_diags == 1`, the output tensor is of rank `r - 1` with shape
		`[I, J, ..., L, max_diag_len]` and values:
		
		```
		diagonal[i, j, ..., l, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `y = max(-k[1], 0)`, `x = max(k[1], 0)`.
		
		Otherwise, the output tensor has rank `r` with dimensions
		`[I, J, ..., L, num_diags, max_diag_len]` with values:
		
		```
		diagonal[i, j, ..., l, m, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `d = k[1] - m`, `y = max(-d, 0)`, and `x = max(d, 0)`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		input = np.array([[[1, 2, 3, 4],  # Input shape: (2, 3, 4)
		                   [5, 6, 7, 8],
		                   [9, 8, 7, 6]],
		                  [[5, 4, 3, 2],
		                   [1, 2, 3, 4],
		                   [5, 6, 7, 8]]])
		
		# A main diagonal from each batch.
		tf.matrix_diag_part(input) ==> [[1, 6, 7],  # Output shape: (2, 3)
		                                [5, 2, 7]]
		
		# A superdiagonal from each batch.
		tf.matrix_diag_part(input, k = 1)
		  ==> [[2, 7, 6],  # Output shape: (2, 3)
		       [4, 3, 8]]
		
		# A tridiagonal band from each batch.
		tf.matrix_diag_part(input, k = (-1, 1))
		  ==> [[[2, 7, 6],  # Output shape: (2, 3, 3)
		        [1, 6, 7],
		        [5, 8, 0]],
		       [[4, 3, 8],
		        [5, 2, 7],
		        [1, 6, 0]]]
		
		# Padding value = 9
		tf.matrix_diag_part(input, k = (1, 3), padding_value = 9)
		  ==> [[[4, 9, 9],  # Output shape: (2, 3, 3)
		        [3, 8, 9],
		        [2, 7, 6]],
		       [[2, 9, 9],
		        [3, 4, 9],
		        [4, 3, 8]]]
		```
		
		Args:
		  input: A `Tensor`. Rank `r` tensor where `r >= 2`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  padding_value: A `Tensor`. Must have the same type as `input`.
		    The value to fill the area outside the specified diagonal band with.
		    Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_diag_part_v2(input:Dynamic, k:Dynamic, padding_value:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_diag_part_v2_eager_fallback(input:Dynamic, k:Dynamic, padding_value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		Returns a tensor with the `k[0]`-th to `k[1]`-th diagonals of the batched
		`input`.
		
		Assume `input` has `r` dimensions `[I, J, ..., L, M, N]`.
		Let `max_diag_len` be the maximum length among all diagonals to be extracted,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		Let `num_diags` be the number of diagonals to extract,
		`num_diags = k[1] - k[0] + 1`.
		
		If `num_diags == 1`, the output tensor is of rank `r - 1` with shape
		`[I, J, ..., L, max_diag_len]` and values:
		
		```
		diagonal[i, j, ..., l, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `y = max(-k[1], 0)`, `x = max(k[1], 0)`.
		
		Otherwise, the output tensor has rank `r` with dimensions
		`[I, J, ..., L, num_diags, max_diag_len]` with values:
		
		```
		diagonal[i, j, ..., l, m, n]
		  = input[i, j, ..., l, n+y, n+x] ; if 0 <= n+y < M and 0 <= n+x < N,
		    padding_value                 ; otherwise.
		```
		where `d = k[1] - m`, `y = max(-d, 0) - offset`, and `x = max(d, 0) - offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		The input must be at least a matrix.
		
		For example:
		
		```
		input = np.array([[[1, 2, 3, 4],  # Input shape: (2, 3, 4)
		                   [5, 6, 7, 8],
		                   [9, 8, 7, 6]],
		                  [[5, 4, 3, 2],
		                   [1, 2, 3, 4],
		                   [5, 6, 7, 8]]])
		
		# A main diagonal from each batch.
		tf.matrix_diag_part(input) ==> [[1, 6, 7],  # Output shape: (2, 3)
		                                [5, 2, 7]]
		
		# A superdiagonal from each batch.
		tf.matrix_diag_part(input, k = 1)
		  ==> [[2, 7, 6],  # Output shape: (2, 3)
		       [4, 3, 8]]
		
		# A band from each batch.
		tf.matrix_diag_part(input, k = (-1, 2))
		  ==> [[[0, 3, 8],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [5, 8, 0]],
		       [[0, 3, 4],
		        [4, 3, 8],
		        [5, 2, 7],
		        [1, 6, 0]]]
		
		# LEFT_RIGHT alignment.
		tf.matrix_diag_part(input, k = (-1, 2), align="LEFT_RIGHT")
		  ==> [[[3, 8, 0],  # Output shape: (2, 4, 3)
		        [2, 7, 6],
		        [1, 6, 7],
		        [0, 5, 8]],
		       [[3, 4, 0],
		        [4, 3, 8],
		        [5, 2, 7],
		        [0, 1, 6]]]
		
		# max_diag_len can be shorter than the main diagonal.
		tf.matrix_diag_part(input, k = (-2, -1))
		  ==> [[[5, 8],
		        [9, 0]],
		       [[1, 6],
		        [5, 0]]]
		
		# padding_value = 9
		tf.matrix_diag_part(input, k = (1, 3), padding_value = 9)
		  ==> [[[9, 9, 4],  # Output shape: (2, 3, 3)
		        [9, 3, 8],
		        [2, 7, 6]],
		       [[9, 9, 2],
		        [9, 3, 4],
		        [4, 3, 8]]]
		
		```
		
		Args:
		  input: A `Tensor`. Rank `r` tensor where `r >= 2`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  padding_value: A `Tensor`. Must have the same type as `input`.
		    The value to fill the area outside the specified diagonal band with.
		    Default is 0.
		  align: An optional `string` from: `"LEFT_RIGHT", "RIGHT_LEFT", "LEFT_LEFT", "RIGHT_RIGHT"`. Defaults to `"RIGHT_LEFT"`.
		    Some diagonals are shorter than `max_diag_len` and need to be padded. `align` is
		    a string specifying how superdiagonals and subdiagonals should be aligned,
		    respectively. There are four possible alignments: "RIGHT_LEFT" (default),
		    "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT" aligns superdiagonals
		    to the right (left-pads the row) and subdiagonals to the left (right-pads the
		    row). It is the packing format LAPACK uses. cuSPARSE uses "LEFT_RIGHT", which is
		    the opposite alignment.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_diag_part_v3(input:Dynamic, k:Dynamic, padding_value:Dynamic, ?align:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_diag_part_v3_eager_fallback(input:Dynamic, k:Dynamic, padding_value:Dynamic, align:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with given batched diagonal values.
		
		Returns a tensor with the contents in `diagonal` as `k[0]`-th to `k[1]`-th
		diagonals of a matrix, with everything else padded with `padding`. `num_rows`
		and `num_cols` specify the dimension of the innermost matrix of the output. If
		both are not specified, the op assumes the innermost matrix is square and infers
		its size from `k` and the innermost dimension of `diagonal`. If only one of them
		is specified, the op assumes the unspecified value is the smallest possible
		based on other criteria.
		
		Let `diagonal` have `r` dimensions `[I, J, ..., L, M, N]`. The output tensor has
		rank `r+1` with shape `[I, J, ..., L, M, num_rows, num_cols]` when only one
		diagonal is given (`k` is an integer or `k[0] == k[1]`). Otherwise, it has rank
		`r` with shape `[I, J, ..., L, num_rows, num_cols]`.
		
		The second innermost dimension of `diagonal` has double meaning.
		When `k` is scalar or `k[0] == k[1]`, `M` is part of the batch size
		[I, J, ..., M], and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(d_upper, 0)] ; if n - m == d_upper
		    padding_value                             ; otherwise
		```
		
		Otherwise, `M` is treated as the number of diagonals for the matrix in the
		same batch (`M = k[1]-k[0]+1`), and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    padding_value                                     ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and `index_in_diag = n - max(d, 0)`.
		
		For example:
		
		```
		# The main diagonal.
		diagonal = np.array([[1, 2, 3, 4],            # Input shape: (2, 4)
		                     [5, 6, 7, 8]])
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0],  # Output shape: (2, 4, 4)
		                               [0, 2, 0, 0],
		                               [0, 0, 3, 0],
		                               [0, 0, 0, 4]],
		                              [[5, 0, 0, 0],
		                               [0, 6, 0, 0],
		                               [0, 0, 7, 0],
		                               [0, 0, 0, 8]]]
		
		# A superdiagonal (per batch).
		diagonal = np.array([[1, 2, 3],  # Input shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_diag(diagonal, k = 1)
		  ==> [[[0, 1, 0, 0],  # Output shape: (2, 4, 4)
		        [0, 0, 2, 0],
		        [0, 0, 0, 3],
		        [0, 0, 0, 0]],
		       [[0, 4, 0, 0],
		        [0, 0, 5, 0],
		        [0, 0, 0, 6],
		        [0, 0, 0, 0]]]
		
		# A band of diagonals.
		diagonals = np.array([[[1, 2, 3],  # Input shape: (2, 2, 3)
		                       [4, 5, 0]],
		                      [[6, 7, 9],
		                       [9, 1, 0]]])
		tf.matrix_diag(diagonals, k = (-1, 0))
		  ==> [[[1, 0, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 0],
		        [0, 5, 3]],
		       [[6, 0, 0],
		        [9, 7, 0],
		        [0, 1, 9]]]
		
		# Rectangular matrix.
		diagonal = np.array([1, 2])  # Input shape: (2)
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, num_cols = 4)
		  ==> [[0, 0, 0, 0],  # Output shape: (3, 4)
		       [1, 0, 0, 0],
		       [0, 2, 0, 0]]
		
		# Rectangular matrix with inferred num_cols and padding_value = 9.
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, padding_value = 9)
		  ==> [[9, 9],  # Output shape: (3, 2)
		       [1, 9],
		       [9, 2]]
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `r`, where `r >= 1`
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  num_rows: A `Tensor` of type `int32`.
		    The number of rows of the output matrix. If it is not provided, the op assumes
		    the output matrix is a square matrix and infers the matrix size from k and the
		    innermost dimension of `diagonal`.
		  num_cols: A `Tensor` of type `int32`.
		    The number of columns of the output matrix. If it is not provided, the op
		    assumes the output matrix is a square matrix and infers the matrix size from
		    k and the innermost dimension of `diagonal`.
		  padding_value: A `Tensor`. Must have the same type as `diagonal`.
		    The number to fill the area outside the specified diagonal band with.
		    Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function matrix_diag_v2(diagonal:Dynamic, k:Dynamic, num_rows:Dynamic, num_cols:Dynamic, padding_value:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_diag_v2_eager_fallback(diagonal:Dynamic, k:Dynamic, num_rows:Dynamic, num_cols:Dynamic, padding_value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with given batched diagonal values.
		
		Returns a tensor with the contents in `diagonal` as `k[0]`-th to `k[1]`-th
		diagonals of a matrix, with everything else padded with `padding`. `num_rows`
		and `num_cols` specify the dimension of the innermost matrix of the output. If
		both are not specified, the op assumes the innermost matrix is square and infers
		its size from `k` and the innermost dimension of `diagonal`. If only one of them
		is specified, the op assumes the unspecified value is the smallest possible
		based on other criteria.
		
		Let `diagonal` have `r` dimensions `[I, J, ..., L, M, N]`. The output tensor has
		rank `r+1` with shape `[I, J, ..., L, M, num_rows, num_cols]` when only one
		diagonal is given (`k` is an integer or `k[0] == k[1]`). Otherwise, it has rank
		`r` with shape `[I, J, ..., L, num_rows, num_cols]`.
		
		The second innermost dimension of `diagonal` has double meaning.
		When `k` is scalar or `k[0] == k[1]`, `M` is part of the batch size
		[I, J, ..., M], and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(d_upper, 0)] ; if n - m == d_upper
		    padding_value                             ; otherwise
		```
		
		Otherwise, `M` is treated as the number of diagonals for the matrix in the
		same batch (`M = k[1]-k[0]+1`), and the output tensor is:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    padding_value                                     ; otherwise
		```
		where `d = n - m`, `diag_index = [k] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		diagonal = np.array([[1, 2, 3, 4],            # Input shape: (2, 4)
		                     [5, 6, 7, 8]])
		tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0],  # Output shape: (2, 4, 4)
		                               [0, 2, 0, 0],
		                               [0, 0, 3, 0],
		                               [0, 0, 0, 4]],
		                              [[5, 0, 0, 0],
		                               [0, 6, 0, 0],
		                               [0, 0, 7, 0],
		                               [0, 0, 0, 8]]]
		
		# A superdiagonal (per batch).
		diagonal = np.array([[1, 2, 3],  # Input shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_diag(diagonal, k = 1)
		  ==> [[[0, 1, 0, 0],  # Output shape: (2, 4, 4)
		        [0, 0, 2, 0],
		        [0, 0, 0, 3],
		        [0, 0, 0, 0]],
		       [[0, 4, 0, 0],
		        [0, 0, 5, 0],
		        [0, 0, 0, 6],
		        [0, 0, 0, 0]]]
		
		# A tridiagonal band (per batch).
		diagonals = np.array([[[0, 8, 9],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 2, 3],
		                       [6, 7, 9],
		                       [9, 1, 0]]])
		tf.matrix_diag(diagonals, k = (-1, 1))
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# LEFT_RIGHT alignment.
		diagonals = np.array([[[8, 9, 0],  # Input shape: (2, 2, 3)
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[2, 3, 0],
		                       [6, 7, 9],
		                       [0, 9, 1]]])
		tf.matrix_diag(diagonals, k = (-1, 1), align="LEFT_RIGHT")
		  ==> [[[1, 8, 0],  # Output shape: (2, 3, 3)
		        [4, 2, 9],
		        [0, 5, 3]],
		       [[6, 2, 0],
		        [9, 7, 3],
		        [0, 1, 9]]]
		
		# Rectangular matrix.
		diagonal = np.array([1, 2])  # Input shape: (2)
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, num_cols = 4)
		  ==> [[0, 0, 0, 0],  # Output shape: (3, 4)
		       [1, 0, 0, 0],
		       [0, 2, 0, 0]]
		
		# Rectangular matrix with inferred num_cols and padding_value = 9.
		tf.matrix_diag(diagonal, k = -1, num_rows = 3, padding_value = 9)
		  ==> [[9, 9],  # Output shape: (3, 2)
		       [1, 9],
		       [9, 2]]
		
		```
		
		Args:
		  diagonal: A `Tensor`. Rank `r`, where `r >= 1`
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  num_rows: A `Tensor` of type `int32`.
		    The number of rows of the output matrix. If it is not provided, the op assumes
		    the output matrix is a square matrix and infers the matrix size from k and the
		    innermost dimension of `diagonal`.
		  num_cols: A `Tensor` of type `int32`.
		    The number of columns of the output matrix. If it is not provided, the op
		    assumes the output matrix is a square matrix and infers the matrix size from
		    k and the innermost dimension of `diagonal`.
		  padding_value: A `Tensor`. Must have the same type as `diagonal`.
		    The number to fill the area outside the specified diagonal band with.
		    Default is 0.
		  align: An optional `string` from: `"LEFT_RIGHT", "RIGHT_LEFT", "LEFT_LEFT", "RIGHT_RIGHT"`. Defaults to `"RIGHT_LEFT"`.
		    Some diagonals are shorter than `max_diag_len` and need to be padded. `align` is
		    a string specifying how superdiagonals and subdiagonals should be aligned,
		    respectively. There are four possible alignments: "RIGHT_LEFT" (default),
		    "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT" aligns superdiagonals
		    to the right (left-pads the row) and subdiagonals to the left (right-pads the
		    row). It is the packing format LAPACK uses. cuSPARSE uses "LEFT_RIGHT", which is
		    the opposite alignment.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function matrix_diag_v3(diagonal:Dynamic, k:Dynamic, num_rows:Dynamic, num_cols:Dynamic, padding_value:Dynamic, ?align:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_diag_v3_eager_fallback(diagonal:Dynamic, k:Dynamic, num_rows:Dynamic, num_cols:Dynamic, padding_value:Dynamic, align:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the specified diagonals of the
		innermost matrices. These will be overwritten by the values in `diagonal`.
		
		`input` has `r+1` dimensions `[I, J, ..., L, M, N]`. When `k` is scalar or
		`k[0] == k[1]`, `diagonal` has `r` dimensions `[I, J, ..., L, max_diag_len]`.
		Otherwise, it has `r+1` dimensions `[I, J, ..., L, num_diags, max_diag_len]`.
		`num_diags` is the number of diagonals, `num_diags = k[1] - k[0] + 1`.
		`max_diag_len` is the longest diagonal in the range `[k[0], k[1]]`,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		
		The output is a tensor of rank `k+1` with dimensions `[I, J, ..., L, M, N]`.
		If `k` is scalar or `k[0] == k[1]`:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(k[1], 0)] ; if n - m == k[1]
		    input[i, j, ..., l, m, n]              ; otherwise
		```
		
		Otherwise,
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    input[i, j, ..., l, m, n]                         ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		input = np.array([[[7, 7, 7, 7],              # Input shape: (2, 3, 4)
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]],
		                  [[7, 7, 7, 7],
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]]])
		diagonal = np.array([[1, 2, 3],               # Diagonal shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_set_diag(input, diagonal)
		  ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 2, 7, 7],
		        [7, 7, 3, 7]],
		       [[4, 7, 7, 7],
		        [7, 5, 7, 7],
		        [7, 7, 6, 7]]]
		
		# A superdiagonal (per batch).
		tf.matrix_set_diag(input, diagonal, k = 1)
		  ==> [[[7, 1, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 7, 2, 7],
		        [7, 7, 7, 3]],
		       [[7, 4, 7, 7],
		        [7, 7, 5, 7],
		        [7, 7, 7, 6]]]
		
		# A band of diagonals.
		diagonals = np.array([[[9, 1, 0],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[1, 2, 0],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [0, 3, 4]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2))
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		# RIGHT_LEFT alignment.
		diagonals = np.array([[[0, 9, 1],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 1, 2],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [3, 4, 0]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2), align="RIGHT_LEFT")
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		```
		
		Args:
		  input: A `Tensor` with rank `k + 1`, where `k >= 1`.
		  diagonal:  A `Tensor` with rank `k`, when `d_lower == d_upper`, or `k + 1`,
		    otherwise. `k >= 1`.
		  name: A name for the operation (optional).
		  k: Diagonal offset(s). Positive value means superdiagonal, 0 refers to the
		    main diagonal, and negative value means subdiagonals. `k` can be a single
		    integer (for a single diagonal) or a pair of integers specifying the low
		    and high ends of a matrix band. `k[0]` must not be larger than `k[1]`.
		  align: Some diagonals are shorter than `max_diag_len` and need to be padded.
		    `align` is a string specifying how superdiagonals and subdiagonals should
		    be aligned, respectively. There are four possible alignments: "RIGHT_LEFT"
		    (default), "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT"
		    aligns superdiagonals to the right (left-pads the row) and subdiagonals to
		    the left (right-pads the row). It is the packing format LAPACK uses.
		    cuSPARSE uses "LEFT_RIGHT", which is the opposite alignment.
	**/
	static public function matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic, ?k:Dynamic, ?align:Dynamic):Dynamic;
	static public function matrix_set_diag_eager_fallback(input:Dynamic, diagonal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the specified diagonals of the
		innermost matrices. These will be overwritten by the values in `diagonal`.
		
		`input` has `r+1` dimensions `[I, J, ..., L, M, N]`. When `k` is scalar or
		`k[0] == k[1]`, `diagonal` has `r` dimensions `[I, J, ..., L, max_diag_len]`.
		Otherwise, it has `r+1` dimensions `[I, J, ..., L, num_diags, max_diag_len]`.
		`num_diags` is the number of diagonals, `num_diags = k[1] - k[0] + 1`.
		`max_diag_len` is the longest diagonal in the range `[k[0], k[1]]`,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		
		The output is a tensor of rank `k+1` with dimensions `[I, J, ..., L, M, N]`.
		If `k` is scalar or `k[0] == k[1]`:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(k[1], 0)] ; if n - m == k[1]
		    input[i, j, ..., l, m, n]              ; otherwise
		```
		
		Otherwise,
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    input[i, j, ..., l, m, n]                         ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and `index_in_diag = n - max(d, 0)`.
		
		For example:
		
		```
		# The main diagonal.
		input = np.array([[[7, 7, 7, 7],              # Input shape: (2, 3, 4)
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]],
		                  [[7, 7, 7, 7],
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]]])
		diagonal = np.array([[1, 2, 3],               # Diagonal shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_set_diag(diagonal) ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		                                   [7, 2, 7, 7],
		                                   [7, 7, 3, 7]],
		                                  [[4, 7, 7, 7],
		                                   [7, 5, 7, 7],
		                                   [7, 7, 6, 7]]]
		
		# A superdiagonal (per batch).
		tf.matrix_set_diag(diagonal, k = 1)
		  ==> [[[7, 1, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 7, 2, 7],
		        [7, 7, 7, 3]],
		       [[7, 4, 7, 7],
		        [7, 7, 5, 7],
		        [7, 7, 7, 6]]]
		
		# A band of diagonals.
		diagonals = np.array([[[1, 2, 3],  # Diagonal shape: (2, 2, 3)
		                       [4, 5, 0]],
		                      [[6, 1, 2],
		                       [3, 4, 0]]])
		tf.matrix_set_diag(diagonals, k = (-1, 0))
		  ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 7, 7],
		        [0, 5, 3, 7]],
		       [[6, 7, 7, 7],
		        [3, 1, 7, 7],
		        [7, 4, 2, 7]]]
		
		```
		
		Args:
		  input: A `Tensor`. Rank `r+1`, where `r >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `r` when `k` is an integer or `k[0] == k[1]`. Otherwise, it has rank `r+1`.
		    `k >= 1`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_set_diag_v2(input:Dynamic, diagonal:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_set_diag_v2_eager_fallback(input:Dynamic, diagonal:Dynamic, k:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the specified diagonals of the
		innermost matrices. These will be overwritten by the values in `diagonal`.
		
		`input` has `r+1` dimensions `[I, J, ..., L, M, N]`. When `k` is scalar or
		`k[0] == k[1]`, `diagonal` has `r` dimensions `[I, J, ..., L, max_diag_len]`.
		Otherwise, it has `r+1` dimensions `[I, J, ..., L, num_diags, max_diag_len]`.
		`num_diags` is the number of diagonals, `num_diags = k[1] - k[0] + 1`.
		`max_diag_len` is the longest diagonal in the range `[k[0], k[1]]`,
		`max_diag_len = min(M + min(k[1], 0), N + min(-k[0], 0))`
		
		The output is a tensor of rank `k+1` with dimensions `[I, J, ..., L, M, N]`.
		If `k` is scalar or `k[0] == k[1]`:
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, n-max(k[1], 0)] ; if n - m == k[1]
		    input[i, j, ..., l, m, n]              ; otherwise
		```
		
		Otherwise,
		
		```
		output[i, j, ..., l, m, n]
		  = diagonal[i, j, ..., l, diag_index, index_in_diag] ; if k[0] <= d <= k[1]
		    input[i, j, ..., l, m, n]                         ; otherwise
		```
		where `d = n - m`, `diag_index = k[1] - d`, and
		`index_in_diag = n - max(d, 0) + offset`.
		
		`offset` is zero except when the alignment of the diagonal is to the right.
		```
		offset = max_diag_len - diag_len(d) ; if (`align` in {RIGHT_LEFT, RIGHT_RIGHT}
		                                           and `d >= 0`) or
		                                         (`align` in {LEFT_RIGHT, RIGHT_RIGHT}
		                                           and `d <= 0`)
		         0                          ; otherwise
		```
		where `diag_len(d) = min(cols - max(d, 0), rows + min(d, 0))`.
		
		For example:
		
		```
		# The main diagonal.
		input = np.array([[[7, 7, 7, 7],              # Input shape: (2, 3, 4)
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]],
		                  [[7, 7, 7, 7],
		                   [7, 7, 7, 7],
		                   [7, 7, 7, 7]]])
		diagonal = np.array([[1, 2, 3],               # Diagonal shape: (2, 3)
		                     [4, 5, 6]])
		tf.matrix_set_diag(input, diagonal)
		  ==> [[[1, 7, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 2, 7, 7],
		        [7, 7, 3, 7]],
		       [[4, 7, 7, 7],
		        [7, 5, 7, 7],
		        [7, 7, 6, 7]]]
		
		# A superdiagonal (per batch).
		tf.matrix_set_diag(input, diagonal, k = 1)
		  ==> [[[7, 1, 7, 7],  # Output shape: (2, 3, 4)
		        [7, 7, 2, 7],
		        [7, 7, 7, 3]],
		       [[7, 4, 7, 7],
		        [7, 7, 5, 7],
		        [7, 7, 7, 6]]]
		
		# A band of diagonals.
		diagonals = np.array([[[0, 9, 1],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [4, 5, 0]],
		                      [[0, 1, 2],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [3, 4, 0]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2))
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		# LEFT_RIGHT alignment.
		diagonals = np.array([[[9, 1, 0],  # Diagonal shape: (2, 4, 3)
		                       [6, 5, 8],
		                       [1, 2, 3],
		                       [0, 4, 5]],
		                      [[1, 2, 0],
		                       [5, 6, 4],
		                       [6, 1, 2],
		                       [0, 3, 4]]])
		tf.matrix_set_diag(input, diagonals, k = (-1, 2), align="LEFT_RIGHT")
		  ==> [[[1, 6, 9, 7],  # Output shape: (2, 3, 4)
		        [4, 2, 5, 1],
		        [7, 5, 3, 8]],
		       [[6, 5, 1, 7],
		        [3, 1, 6, 2],
		        [7, 4, 2, 4]]]
		
		```
		
		Args:
		  input: A `Tensor`. Rank `r+1`, where `r >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `r` when `k` is an integer or `k[0] == k[1]`. Otherwise, it has rank `r+1`.
		    `k >= 1`.
		  k: A `Tensor` of type `int32`.
		    Diagonal offset(s). Positive value means superdiagonal, 0 refers to the main
		    diagonal, and negative value means subdiagonals. `k` can be a single integer
		    (for a single diagonal) or a pair of integers specifying the low and high ends
		    of a matrix band. `k[0]` must not be larger than `k[1]`.
		  align: An optional `string` from: `"LEFT_RIGHT", "RIGHT_LEFT", "LEFT_LEFT", "RIGHT_RIGHT"`. Defaults to `"RIGHT_LEFT"`.
		    Some diagonals are shorter than `max_diag_len` and need to be padded. `align` is
		    a string specifying how superdiagonals and subdiagonals should be aligned,
		    respectively. There are four possible alignments: "RIGHT_LEFT" (default),
		    "LEFT_RIGHT", "LEFT_LEFT", and "RIGHT_RIGHT". "RIGHT_LEFT" aligns superdiagonals
		    to the right (left-pads the row) and subdiagonals to the left (right-pads the
		    row). It is the packing format LAPACK uses. cuSPARSE uses "LEFT_RIGHT", which is
		    the opposite alignment.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function matrix_set_diag_v3(input:Dynamic, diagonal:Dynamic, k:Dynamic, ?align:Dynamic, ?name:Dynamic):Dynamic;
	static public function matrix_set_diag_v3_eager_fallback(input:Dynamic, diagonal:Dynamic, k:Dynamic, align:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Transposes last two dimensions of tensor `a`.
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.linalg.matrix_transpose(x)  # [[1, 4],
		                               #  [2, 5],
		                               #  [3, 6]]
		
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.linalg.matrix_transpose(x, conjugate=True)  # [[1 - 1j, 4 - 4j],
		                                               #  [2 - 2j, 5 - 5j],
		                                               #  [3 - 3j, 6 - 6j]]
		
		# Matrix with two batch dimensions.
		# x.shape is [1, 2, 3, 4]
		# tf.linalg.matrix_transpose(x) is shape [1, 2, 4, 3]
		```
		
		Note that `tf.matmul` provides kwargs allowing for transpose of arguments.
		This is done with minimal cost, and is preferable to using this function. E.g.
		
		```python
		# Good!  Transpose is taken at minimal additional cost.
		tf.matmul(matrix, b, transpose_b=True)
		
		# Inefficient!
		tf.matmul(matrix, tf.linalg.matrix_transpose(b))
		```
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, `linalg.matrix_transpose` returns a new
		tensor with the items permuted.
		@end_compatibility
		
		Args:
		  a: A `Tensor` with `rank >= 2`.
		  name: A name for the operation (optional).
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.math.conj(tf.linalg.matrix_transpose(input)).
		
		Returns:
		  A transposed batch matrix `Tensor`.
		
		Raises:
		  ValueError:  If `a` is determined statically to have `rank < 2`.
	**/
	static public function matrix_transpose(a:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
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
		Pads a tensor with mirrored values.
		
		This operation pads a `input` with mirrored values according to the `paddings`
		you specify. `paddings` is an integer tensor with shape `[n, 2]`, where n is
		the rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
		how many values to add before the contents of `input` in that dimension, and
		`paddings[D, 1]` indicates how many values to add after the contents of `input`
		in that dimension. Both `paddings[D, 0]` and `paddings[D, 1]` must be no greater
		than `input.dim_size(D)` (or `input.dim_size(D) - 1`) if `copy_border` is true
		(if false, respectively).
		
		The padded size of each dimension D of the output is:
		
		`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 2, 3], [4, 5, 6]].
		# 'paddings' is [[1, 1]], [2, 2]].
		# 'mode' is SYMMETRIC.
		# rank of 't' is 2.
		pad(t, paddings) ==> [[2, 1, 1, 2, 3, 3, 2]
		                      [2, 1, 1, 2, 3, 3, 2]
		                      [5, 4, 4, 5, 6, 6, 5]
		                      [5, 4, 4, 5, 6, 6, 5]]
		```
		
		Args:
		  input: A `Tensor`. The input tensor to be padded.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		    Either `REFLECT` or `SYMMETRIC`. In reflect mode the padded regions
		    do not include the borders, while in symmetric mode the padded regions
		    do include the borders. For example, if `input` is `[1, 2, 3]` and `paddings`
		    is `[0, 2]`, then the output is `[1, 2, 3, 2, 1]` in reflect mode, and
		    it is `[1, 2, 3, 3, 2]` in symmetric mode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function mirror_pad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function mirror_pad_eager_fallback(input:Dynamic, paddings:Dynamic, mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Gradient op for `MirrorPad` op. This op folds a mirror-padded tensor.
		
		This operation folds the padded areas of `input` by `MirrorPad` according to the
		`paddings` you specify. `paddings` must be the same as `paddings` argument
		given to the corresponding `MirrorPad` op.
		
		The folded size of each dimension D of the output is:
		
		`input.dim_size(D) - paddings(D, 0) - paddings(D, 1)`
		
		For example:
		
		```
		# 't' is [[1, 2, 3], [4, 5, 6], [7, 8, 9]].
		# 'paddings' is [[0, 1]], [0, 1]].
		# 'mode' is SYMMETRIC.
		# rank of 't' is 2.
		pad(t, paddings) ==> [[ 1,  5]
		                      [11, 28]]
		```
		
		Args:
		  input: A `Tensor`. The input tensor to be folded.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		    The mode used in the `MirrorPad` op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function mirror_pad_grad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function mirror_pad_grad_eager_fallback(input:Dynamic, paddings:Dynamic, mode:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
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
	static public function one_hot_eager_fallback(indices:Dynamic, depth:Dynamic, on_value:Dynamic, off_value:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Creates a tensor with all elements set to 1.
		
		See also `tf.ones`.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the same
		type and shape as `tensor` with all elements set to 1. Optionally, you can
		specify a new type (`dtype`) for the returned tensor.
		
		For example:
		
		```python
		tensor = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.ones_like(tensor)  # [[1, 1, 1], [1, 1, 1]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float32`, `float64`,
		    `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `complex64`,
		    `complex128` or `bool`.
		  name: A name for the operation (optional).
		  optimize: if true, attempt to statically determine the shape of 'tensor' and
		    encode it as a constant.
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	static public function ones_like_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Internal implementation for the v1/v2 ones_like API calls.
	**/
	static public function ones_like_impl(tensor:Dynamic, dtype:Dynamic, name:Dynamic, ?optimize:Dynamic):Dynamic;
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
	static public function ones_like_v2(input:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Packs a list of `N` rank-`R` tensors into one rank-`(R+1)` tensor.
		
		Packs the `N` tensors in `values` into a tensor with rank one higher than each
		tensor in `values`, by packing them along the `axis` dimension.
		Given a list of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		```
		# 'x' is [1, 4]
		# 'y' is [2, 5]
		# 'z' is [3, 6]
		pack([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		pack([x, y, z], axis=1) => [[1, 2, 3], [4, 5, 6]]
		```
		
		This is the opposite of `unpack`.
		
		Args:
		  values: A list of at least 1 `Tensor` objects with the same type.
		    Must be of same shape and type.
		  axis: An optional `int`. Defaults to `0`.
		    Dimension along which to pack.  Negative values wrap around, so the
		    valid range is `[-(R+1), R+1)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function pack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function pack_eager_fallback(values:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  name: A name for the operation (optional).
		  constant_values: In "CONSTANT" mode, the scalar pad value to use. Must be
		    same type as `tensor`.
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
		
		Raises:
		  ValueError: When mode is not one of "CONSTANT", "REFLECT", or "SYMMETRIC".
	**/
	static public function pad(tensor:Dynamic, paddings:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?constant_values:Dynamic):Dynamic;
	static public function pad_eager_fallback(input:Dynamic, paddings:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function pad_v2(tensor:Dynamic, paddings:Dynamic, ?mode:Dynamic, ?constant_values:Dynamic, ?name:Dynamic):Dynamic;
	static public function pad_v2_eager_fallback(input:Dynamic, paddings:Dynamic, constant_values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Concatenates a list of `N` tensors along the first dimension.
		
		The input tensors are all required to have size 1 in the first dimension.
		
		For example:
		
		```
		# 'x' is [[1, 4]]
		# 'y' is [[2, 5]]
		# 'z' is [[3, 6]]
		parallel_concat([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		```
		
		The difference between concat and parallel_concat is that concat requires all
		of the inputs be computed before the operation will begin but doesn't require
		that the input shapes be known during graph construction.  Parallel concat
		will copy pieces of the input into the output as they become available, in
		some situations this can provide a performance benefit.
		
		Args:
		  values: A list of at least 1 `Tensor` objects with the same type.
		    Tensors to be concatenated. All must have size 1 in the first dimension
		    and same shape.
		  shape: A `tf.TensorShape` or list of `ints`.
		    the final shape of the result; should be equal to the shapes of any input
		    but with the number of input values in the first dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function parallel_concat(values:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function parallel_concat_eager_fallback(values:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Inserts a placeholder for a tensor that will be always fed.
		
		**Important**: This tensor will produce an error if evaluated. Its value must
		be fed using the `feed_dict` optional argument to `Session.run()`,
		`Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.compat.v1.placeholder(tf.float32, shape=(1024, 1024))
		y = tf.matmul(x, x)
		
		with tf.compat.v1.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  rand_array = np.random.rand(1024, 1024)
		  print(sess.run(y, feed_dict={x: rand_array}))  # Will succeed.
		```
		
		Args:
		  dtype: The type of elements in the tensor to be fed.
		  shape: The shape of the tensor to be fed (optional). If the shape is not
		    specified, you can feed a tensor of any shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that may be used as a handle for feeding a value, but not
		  evaluated directly.
		
		Raises:
		  RuntimeError: if eager execution is enabled
		
		@compatibility(TF2)
		This API is not compatible with eager execution and `tf.function`. To migrate
		to TF2, rewrite the code to be compatible with eager execution. Check the
		[migration
		guide](https://www.tensorflow.org/guide/migrate#1_replace_v1sessionrun_calls)
		on replacing `Session.run` calls. In TF2, you can just pass tensors directly
		into ops and layers. If you want to explicitly set up your inputs, also see
		[Keras functional API](https://www.tensorflow.org/guide/keras/functional) on
		how to use `tf.keras.Input` to replace `tf.compat.v1.placeholder`.
		`tf.function` arguments also do the job of `tf.compat.v1.placeholder`.
		For more details please read [Better
		performance with tf.function](https://www.tensorflow.org/guide/function).
		@end_compatibility
	**/
	static public function placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function placeholder_eager_fallback(dtype:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		A placeholder op for a value that will be fed into the computation.
		
		N.B. This operation will fail with an error if it is executed. It is
		intended as a way to represent a value that will always be fed, and to
		provide attrs that enable the fed value to be checked at runtime.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the tensor. The shape can be any partially-specified
		    shape.  To be unconstrained, pass in a shape with unknown rank.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function placeholder_v2(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function placeholder_v2_eager_fallback(dtype:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		A placeholder op that passes through `input` when its output is not fed.
		
		@compatibility(TF2)
		This API is strongly discouraged for use with eager execution and
		`tf.function`. The primary use of this API is for testing computation wrapped
		within a `tf.function` where the input tensors might not have statically known
		fully-defined shapes. The same can be achieved by creating a
		[concrete function](
		https://www.tensorflow.org/guide/function#obtaining_concrete_functions)
		from the `tf.function` with a `tf.TensorSpec` input which has partially
		defined shapes. For example, the code
		
		>>> @tf.function
		... def f():
		...   x = tf.compat.v1.placeholder_with_default(
		...       tf.constant([[1., 2., 3.], [4., 5., 6.]]), [None, 3])
		...   y = tf.constant([[1.],[2.], [3.]])
		...   z = tf.matmul(x, y)
		...   assert z.shape[0] == None
		...   assert z.shape[1] == 1
		
		>>> f()
		
		can easily be replaced by
		
		>>> @tf.function
		... def f(x):
		...   y = tf.constant([[1.],[2.], [3.]])
		...   z = tf.matmul(x, y)
		...   assert z.shape[0] == None
		...   assert z.shape[1] == 1
		
		>>> g = f.get_concrete_function(tf.TensorSpec([None, 3]))
		
		You can learn more about `tf.function` at [Better
		performance with tf.function](https://www.tensorflow.org/guide/function).
		@end_compatibility
		
		Args:
		  input: A `Tensor`. The default value to produce when output is not fed.
		  shape: A `tf.TensorShape` or list of `int`s. The (possibly partial) shape of
		    the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function placeholder_with_default(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function placeholder_with_default_eager_fallback(input:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An identity op that triggers an error if a gradient is requested.
		
		When executed in a graph, this op outputs its input tensor as-is.
		
		When building ops to compute gradients, the TensorFlow gradient system
		will return an error when trying to lookup the gradient of this op,
		because no gradient must ever be registered for this function.  This
		op exists to prevent subtle bugs from silently returning unimplemented
		gradients in some corner cases.
		
		Args:
		  input: A `Tensor`. any tensor.
		  message: An optional `string`. Defaults to `""`.
		    Will be printed in the error when anyone tries to differentiate
		    this operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function prevent_gradient(input:Dynamic, ?message:Dynamic, ?name:Dynamic):Dynamic;
	static public function prevent_gradient_eager_fallback(input:Dynamic, message:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		
		If the mode is `SCALED`, the quantization is performed by multiplying each
		input value by a scaling_factor.
		The scaling_factor is determined from `min_range` and `max_range` to be as large
		as possible such that the range from `min_range` to `max_range` is representable
		within values of type T.
		
		```c++
		
		  const int min_T = std::numeric_limits<T>::min();
		  const int max_T = std::numeric_limits<T>::max();
		  const float max_float = std::numeric_limits<float>::max();
		
		  const float scale_factor_from_min_side =
		      (min_T * min_range > 0) ? min_T / min_range : max_float;
		  const float scale_factor_from_max_side =
		      (max_T * max_range > 0) ? max_T / max_range : max_float;
		
		  const float scale_factor = std::min(scale_factor_from_min_side,
		                                      scale_factor_from_max_side);
		```
		
		We next use the scale_factor to adjust min_range and max_range as follows:
		
		```c++
		      min_range = min_T / scale_factor;
		      max_range = max_T / scale_factor;
		```
		
		
		e.g. if T = qint8, and initially min_range = -10, and max_range = 9, we would
		compare -128/-10.0 = 12.8 to 127/9.0 = 14.11, and set scaling_factor = 12.8
		In this case, min_range would remain -10, but max_range would be adjusted to
		127 / 12.8 = 9.921875
		
		So we will quantize input values in the range (-10, 9.921875) to (-128, 127).
		
		The input tensor can now be quantized by clipping values to the range
		`min_range` to `max_range`, then multiplying by scale_factor as follows:
		
		```c++
		result = round(min(max_range, max(min_range, input)) * scale_factor)
		```
		
		The adjusted `min_range` and `max_range` are returned as outputs 2 and 3 of
		this operation. These outputs should be used as the range for any further
		calculations.
		
		
		*narrow_range (bool) attribute*
		
		If true, we do not use the minimum quantized value.
		i.e. for int8 the quantized output, it would be restricted to the range
		-127..127 instead of the full -128..127 range.
		This is provided for compatibility with certain inference backends.
		(Only applies to SCALED mode)
		
		
		*axis (int) attribute*
		
		An optional `axis` attribute can specify a dimension index of the input tensor,
		such that quantization ranges will be calculated and applied separately for each
		slice of the tensor along that dimension. This is useful for per-channel
		quantization.
		
		If axis is specified, min_range and max_range
		
		if `axis`=None, per-tensor quantization is performed as normal.
		
		
		*ensure_minimum_range (float) attribute*
		
		Ensures the minimum quantization range is at least this value.
		The legacy default value for this is 0.01, but it is strongly suggested to
		set it to 0 for new uses.
		
		Args:
		  input: A `Tensor` of type `float32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_min`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  max_range: A `Tensor` of type `float32`.
		    The maximum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_max`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  T: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  round_mode: An optional `string` from: `"HALF_AWAY_FROM_ZERO", "HALF_TO_EVEN"`. Defaults to `"HALF_AWAY_FROM_ZERO"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  ensure_minimum_range: An optional `float`. Defaults to `0.01`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `T`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?ensure_minimum_range:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This Op has been deprecated, use`quantize_and_dequantize_v2` instead. To To simulate the V1 the behavior of tf.quantization.quantize_and_dequantize(...) use tf.grad_pass_through(tf.quantization.quantize_and_dequantize_v2)(...).
		
		Args:
		  input: A `Tensor` to quantize and dequantize.
		  input_min: If range_given=True, the minimum input value, that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of minimum values for each slice along axis.
		  input_max: If range_given=True, the maximum input value that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of maximum values for each slice along axis.
		  signed_input: True if the quantization is signed or unsigned.
		  num_bits: The bitwidth of the quantization.
		  range_given: If true use `input_min` and `input_max` for the range of the
		    input, otherwise determine min and max from the input `Tensor`.
		  round_mode: Rounding mode when rounding from float values to quantized ones.
		    one of ['HALF_TO_EVEN', 'HALF_UP']
		  name: Optional name for the operation.
		  narrow_range: If true, then the absolute value of the quantized minimum
		    value is the same as the quantized maximum value, instead of 1 greater.
		    i.e. for 8 bit quantization, the minimum value is -127 instead of -128.
		  axis: Integer. If specified, refers to a dimension of the input tensor, such
		    that quantization will be per slice along that dimension.
		
		Returns:
		  A `Tensor`. Each element is the result of quantizing and dequantizing the
		  corresponding element of `input`.
	**/
	static public function quantize_and_dequantize(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic):Dynamic;
	static public function quantize_and_dequantize_eager_fallback(input:Dynamic, signed_input:Dynamic, num_bits:Dynamic, range_given:Dynamic, input_min:Dynamic, input_max:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		Updates the gradient definition for quantization that is outside the range to
		be 0.To simulate the V1 the behavior of
		tf.quantization.quantize_and_dequantize(...) use
		tf.grad_pass_through(tf.quantization.quantize_and_dequantize_v2)(...).
		
		Example usage:
		
		```python
		def getQuantizeOp(input):
		    input_tensor = tf.placeholder(tf.float32, shape=[4, 4])
		    net = tf.quantization.quantize_and_dequantize(input,
		                                                  input_min=min_threshold,
		                                                  input_max=max_threshold,
		                                                  range_given=True)
		
		To simulate v1 behavior:
		
		def testDecomposeQuantizeDequantize(self):
		    def f(input_tensor):
		      return tf.quantization.quantize_and_dequantize_v2(input_tensor,
		                                                        input_min = 5.0,
		                                                        input_max= -10.0,
		                                                        range_given=True)
		    input_tensor = tf.placeholder(tf.float32, shape=[4, 4])
		    net = tf.grad_pass_through(f)(input_tensor)
		```
		
		Args:
		  input: A `Tensor` to quantize and dequantize.
		  input_min: If range_given=True, the minimum input value, that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of minimum values for each slice along axis.
		  input_max: If range_given=True, the maximum input value that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of maximum values for each slice along axis.
		  signed_input: True if the quantization is signed or unsigned.
		  num_bits: The bitwidth of the quantization.
		  range_given: If true use `input_min` and `input_max` for the range of the
		    input, otherwise determine min and max from the input `Tensor`.
		  round_mode: Rounding mode when rounding from float values to quantized ones.
		    one of ['HALF_TO_EVEN', 'HALF_UP']
		  name: Optional name for the operation.
		  narrow_range: If true, then the absolute value of the quantized minimum
		    value is the same as the quantized maximum value, instead of 1 greater.
		    i.e. for 8 bit quantization, the minimum value is -127 instead of -128.
		  axis: Integer. If specified, refers to a dimension of the input tensor, such
		    that quantization will be per slice along that dimension.
		
		Returns:
		  A `Tensor`. Each element is the result of quantizing and dequantizing the
		  corresponding element of `input`.
	**/
	static public function quantize_and_dequantize_v2(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic):Dynamic;
	static public function quantize_and_dequantize_v2_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, signed_input:Dynamic, num_bits:Dynamic, range_given:Dynamic, round_mode:Dynamic, narrow_range:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This is almost identical to QuantizeAndDequantizeV2, except that num_bits is a
		tensor, so its value can change during training.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  input_min: A `Tensor`. Must have the same type as `input`.
		  input_max: A `Tensor`. Must have the same type as `input`.
		  num_bits: A `Tensor` of type `int32`.
		  signed_input: An optional `bool`. Defaults to `True`.
		  range_given: An optional `bool`. Defaults to `True`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize_v3(input:Dynamic, input_min:Dynamic, input_max:Dynamic, num_bits:Dynamic, ?signed_input:Dynamic, ?range_given:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantize_and_dequantize_v3_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, num_bits:Dynamic, signed_input:Dynamic, range_given:Dynamic, narrow_range:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This is almost identical to QuantizeAndDequantizeV2, except that it returns a
		gradient of 1 for inputs that are within the quantization range, or 0 otherwise.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		    Tensor to quantize and then dequantize.
		  input_min: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the minimum input value that needs to
		    be represented, otherwise it is determined from the min value of the `input`
		    tensor.
		  input_max: A `Tensor`. Must have the same type as `input`.
		    If `range_given == True`, this specifies the maximum input value that needs to
		    be represented, otherwise it is determined from the max value of the `input`
		    tensor.
		  signed_input: An optional `bool`. Defaults to `True`.
		    Whether the quantization is signed or unsigned. (actually this parameter should
		    have been called <b>`signed_output`</b>)
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization.
		  range_given: An optional `bool`. Defaults to `False`.
		    Whether the range is given or should be determined from the `input` tensor.
		  round_mode: An optional `string` from: `"HALF_TO_EVEN", "HALF_UP"`. Defaults to `"HALF_TO_EVEN"`.
		    The 'round_mode' attribute controls which rounding tie-breaking algorithm is
		    used when rounding float values to their quantized equivalents. The following
		    rounding modes are currently supported:
		
		    *   HALF_TO_EVEN: this is the default round_mode.
		    *   HALF_UP: round towards positive. In this mode 7.5 rounds up to 8 and -7.5
		        rounds up to -7.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    If True, then the absolute value of the quantized minimum value is the same as
		    the quantized maximum value, instead of 1 greater.
		    i.e. for 8 bit quantization, the minimum value is -127 instead of -128.
		  axis: An optional `int`. Defaults to `-1`.
		    If specified, this axis is treated as a channel or slice axis, and a separate
		    quantization range is used for each channel or slice along this axis.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize_v4(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?round_mode:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantize_and_dequantize_v4_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, signed_input:Dynamic, num_bits:Dynamic, range_given:Dynamic, round_mode:Dynamic, narrow_range:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the gradient of `QuantizeAndDequantizeV4`.
		
		Returns a gradient of 1 for inputs that are within the quantization range,
		or 0 otherwise.
		
		Args:
		  gradients: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  input: A `Tensor`. Must have the same type as `gradients`.
		  input_min: A `Tensor`. Must have the same type as `gradients`.
		  input_max: A `Tensor`. Must have the same type as `gradients`.
		  axis: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (input_backprop, input_min_backprop, input_max_backprop).
		
		  input_backprop: A `Tensor`. Has the same type as `gradients`.
		  input_min_backprop: A `Tensor`. Has the same type as `gradients`.
		  input_max_backprop: A `Tensor`. Has the same type as `gradients`.
	**/
	static public function quantize_and_dequantize_v4_grad(gradients:Dynamic, input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantize_and_dequantize_v4_grad_eager_fallback(gradients:Dynamic, input:Dynamic, input_min:Dynamic, input_max:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Please use `tf.quantization.quantize` instead.
	**/
	static public function quantize_v2(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?round_mode:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?ensure_minimum_range:Dynamic):Dynamic;
	static public function quantize_v2_eager_fallback(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, mode:Dynamic, round_mode:Dynamic, narrow_range:Dynamic, axis:Dynamic, ensure_minimum_range:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function quantized_concat_eager_fallback(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Quantized Instance normalization.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    A 4D input Tensor.
		  x_min: A `Tensor` of type `float32`.
		    The value represented by the lowest quantized input.
		  x_max: A `Tensor` of type `float32`.
		    The value represented by the highest quantized input.
		  output_range_given: An optional `bool`. Defaults to `False`.
		    If True, `given_y_min` and `given_y_min`
		    and `given_y_max` are used as the output range. Otherwise,
		    the implementation computes the output range.
		  given_y_min: An optional `float`. Defaults to `0`.
		    Output in `y_min` if `output_range_given` is True.
		  given_y_max: An optional `float`. Defaults to `0`.
		    Output in `y_max` if `output_range_given` is True.
		  variance_epsilon: An optional `float`. Defaults to `1e-05`.
		    A small float number to avoid dividing by 0.
		  min_separation: An optional `float`. Defaults to `0.001`.
		    Minimum value of `y_max - y_min`
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, y_min, y_max).
		
		  y: A `Tensor`. Has the same type as `x`.
		  y_min: A `Tensor` of type `float32`.
		  y_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_instance_norm(x:Dynamic, x_min:Dynamic, x_max:Dynamic, ?output_range_given:Dynamic, ?given_y_min:Dynamic, ?given_y_max:Dynamic, ?variance_epsilon:Dynamic, ?min_separation:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_instance_norm_eager_fallback(x:Dynamic, x_min:Dynamic, x_max:Dynamic, output_range_given:Dynamic, given_y_min:Dynamic, given_y_max:Dynamic, variance_epsilon:Dynamic, min_separation:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Reshapes a quantized tensor as per the Reshape op.
		
		```
		
		Args:
		  tensor: A `Tensor`.
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Defines the shape of the output tensor.
		  input_min: A `Tensor` of type `float32`. The minimum value of the input.
		  input_max: A `Tensor` of type `float32`. The maximum value of the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor`. Has the same type as `tensor`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_reshape(tensor:Dynamic, shape:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic):Dynamic;
	static public function quantized_reshape_eager_fallback(tensor:Dynamic, shape:Dynamic, input_min:Dynamic, input_max:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function rank_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  optimize: if true, encode the rank as a constant when possible.
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function rank_internal(input:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		Return the same ref tensor as the input ref tensor.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function ref_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function ref_identity_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Repeats elements of `data`.
		
		Args:
		  data: An `N`-dimensional tensor.
		  repeats: A 1-D integer tensor specifying how many times each element in
		    `axis` should be repeated.  `len(repeats)` must equal `data.shape[axis]`.
		    Supports broadcasting from a scalar value.
		  axis: `int`.  The axis along which to repeat values.  Must be less than
		    `max(N, 1)`.
		  name: A name for the operation.
		
		Returns:
		  A tensor with `max(N, 1)` dimensions.  Has the same shape as `data`,
		  except that dimension `axis` has size `sum(repeats)`.
		
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
	**/
	static public function repeat_with_axis(data:Dynamic, repeats:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function reshape_eager_fallback(tensor:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `ref`.
		
		The values of `value` are assigned to the positions in the variable
		`ref` that are selected by the slice parameters. The slice parameters
		`begin, `end`, `strides`, etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s
		shape must be exactly the shape produced by the slice of `ref`.
		
		Args:
		  ref: A `Tensor` of type `resource`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_strided_slice_assign(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_strided_slice_assign_eager_fallback(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, begin_mask:Dynamic, end_mask:Dynamic, ellipsis_mask:Dynamic, new_axis_mask:Dynamic, shrink_axis_mask:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function reverse_eager_fallback(tensor:Dynamic, dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Reverses variable length slices. (deprecated arguments) (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(seq_dim)`. They will be removed in a future version.
		Instructions for updating:
		seq_dim is deprecated, use seq_axis instead
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(batch_dim)`. They will be removed in a future version.
		Instructions for updating:
		batch_dim is deprecated, use batch_axis instead
		
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
	static public function reverse_sequence(input:Dynamic, seq_lengths:Dynamic, ?seq_axis:Dynamic, ?batch_axis:Dynamic, ?name:Dynamic, ?seq_dim:Dynamic, ?batch_dim:Dynamic):Dynamic;
	static public function reverse_sequence_eager_fallback(input:Dynamic, seq_lengths:Dynamic, seq_dim:Dynamic, batch_dim:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function reverse_sequence_v2(input:Dynamic, seq_lengths:Dynamic, ?seq_axis:Dynamic, ?batch_axis:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function reverse_v2(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function reverse_v2_eager_fallback(tensor:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function scatter_nd_eager_fallback(indices:Dynamic, updates:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Applies sparse addition to `input` using individual values or slices
		
		from `updates` according to indices `indices`.  The updates are non-aliasing:
		`input` is only modified in-place if no other operations will use it.
		Otherwise, a copy of `input` is made.  This operation has a gradient with
		respect to both `input` and `updates`.
		
		`input` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `input`.
		It must be shape \\([d_0, ..., d_{Q-2}, K]\\) where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or `(P-K)`-dimensional slices
		(if `K < P`) along the `K`th dimension of `input`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		$$[d_0, ..., d_{Q-2}, input.shape[K], ..., input.shape[P-1]].$$
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to 8
		elements. In Python, that addition would look like this:
		
		    input = tf.constant([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    output = tf.scatter_nd_non_aliasing_add(input, indices, updates)
		    with tf.Session() as sess:
		      print(sess.run(output))
		
		The resulting value `output` would look like this:
		
		    [1, 13, 3, 14, 14, 6, 7, 20]
		
		See `tf.scatter_nd` for more details about how to make updates to slices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    A Tensor.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into `input`.
		  updates: A `Tensor`. Must have the same type as `input`.
		    A Tensor. Must have the same type as ref. A tensor of updated values
		    to add to `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function scatter_nd_non_aliasing_add(input:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter_nd_non_aliasing_add_eager_fallback(input:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		
		  out: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function setdiff1d(x:Dynamic, y:Dynamic, ?index_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		This operation returns a 1-D integer tensor representing the shape of `input`.
		
		For example:
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		tf.shape(t)  # [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  out_type: (Optional) The specified output type of the operation (`int32`
		  or `int64`). Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function shape(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function shape_eager_fallback(input:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  optimize: if true, encode the shape as a constant when possible.
		  out_type: (Optional) The specified output type of the operation (`int32` or
		    `int64`). Defaults to tf.int32.
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function shape_internal(input:Dynamic, ?name:Dynamic, ?optimize:Dynamic, ?out_type:Dynamic):Dynamic;
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
	static public function shape_n_eager_fallback(input:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function shape_v2(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		Returns a 0-D `Tensor` representing the number of elements in `input`
		of type `out_type`. Defaults to tf.int32.
		
		For example:
		
		```python
		t = tf.constant([[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]])
		tf.size(t)  # 12
		```
		
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
	static public function size(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function size_eager_fallback(input:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		  optimize: if true, encode the size as a constant when possible.
		  out_type: (Optional) The specified non-quantized numeric output type of the
		    operation. Defaults to `tf.int32`.
		
		Returns:
		  A `Tensor` of type `out_type`. Defaults to `tf.int32`.
	**/
	static public function size_internal(input:Dynamic, ?name:Dynamic, ?optimize:Dynamic, ?out_type:Dynamic):Dynamic;
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
	static public function size_v2(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
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
		Returns a copy of the input tensor.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function snapshot(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function snapshot_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		This is a legacy version of the more general SpaceToBatchND.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
		The attr `block_size` must be greater than one. It indicates the block size.
		
		  * Non-overlapping blocks of size `block_size x block size` in the height and
		    width dimensions are rearranged into the batch dimension at each location.
		  * The batch of the output tensor is `batch * block_size * block_size`.
		  * Both height_pad and width_pad must be divisible by block_size.
		
		The shape of the output will be:
		
		    [batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		     depth]
		
		Some examples:
		
		(1) For the following input of shape `[1, 2, 2, 1]` and block_size of 2:
		
		```
		x = [[[[1], [2]], [[3], [4]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 1]` and value:
		
		```
		[[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		```
		
		(2) For the following input of shape `[1, 2, 2, 3]` and block_size of 2:
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 3]` and value:
		
		```
		[[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
		```
		
		(3) For the following input of shape `[1, 4, 4, 1]` and block_size of 2:
		
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
		
		(4) For the following input of shape `[2, 2, 4, 1]` and block_size of 2:
		
		```
		x = [[[[1],   [2],  [3],  [4]],
		      [[5],   [6],  [7],  [8]]],
		     [[[9],  [10], [11],  [12]],
		      [[13], [14], [15],  [16]]]]
		```
		
		The output tensor has shape `[8, 1, 2, 1]` and value:
		
		```
		x = [[[[1], [3]]], [[[9], [11]]], [[[2], [4]]], [[[10], [12]]],
		     [[[5], [7]]], [[[13], [15]]], [[[6], [8]]], [[[14], [16]]]]
		```
		
		Among others, this operation is useful for reducing atrous convolution into
		regular convolution.
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		      the padding of the input with zeros across the spatial dimensions as follows:
		
		          paddings = [[pad_top, pad_bottom], [pad_left, pad_right]]
		
		      The effective spatial dimensions of the zero-padded input tensor will be:
		
		          height_pad = pad_top + height + pad_bottom
		          width_pad = pad_left + width + pad_right
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, paddings:Dynamic, ?block_size:Dynamic, ?name:Dynamic, ?block_shape:Dynamic):Dynamic;
	static public function space_to_batch_eager_fallback(input:Dynamic, paddings:Dynamic, block_size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function space_to_batch_nd_eager_fallback(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function space_to_batch_v2(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToDepth for tensors of type T.
		
		Rearranges blocks of spatial data, into depth. More specifically,
		this op outputs a copy of the input tensor where values from the `height`
		and `width` dimensions are moved to the `depth` dimension.
		The attr `block_size` indicates the input block size.
		
		  * Non-overlapping blocks of size `block_size x block size` are rearranged
		    into depth at each location.
		  * The depth of the output tensor is `block_size * block_size * input_depth`.
		  * The Y, X coordinates within each block of the input become the high order
		    component of the output channel index.
		  * The input tensor's height and width must be divisible by block_size.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,oY,bY,oX,bX,iC  (where n=batch index, oX, oY means X or Y coordinates
		                        within the output image, bX, bY means coordinates
		                        within the input block, iC means input channels).
		     The output would be a transpose to the following layout:
		     n,oY,oX,bY,bX,iC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 2, 2, 1]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1], [2]],
		      [[3], [4]]]]
		```
		
		This operation will output a tensor of shape `[1, 1, 1, 4]`:
		
		```
		[[[[1, 2, 3, 4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
		the corresponding output will have a single element (i.e. width and height are
		both 1) and will have a depth of 4 channels (1 * block_size * block_size).
		The output element shape is `[1, 1, 4]`.
		
		For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		This operation, for block_size of 2, will return the following tensor of shape
		`[1, 1, 1, 12]`
		
		```
		[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:
		
		```
		x = [[[[1],   [2],  [5],  [6]],
		      [[3],   [4],  [7],  [8]],
		      [[9],  [10], [13],  [14]],
		      [[11], [12], [15],  [16]]]]
		```
		
		the operator will return the following tensor of shape `[1 2 2 4]`:
		
		```
		x = [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`. The size of the spatial block.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_depth(input:Dynamic, block_size:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function space_to_depth_eager_fallback(input:Dynamic, block_size:Dynamic, data_format:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		SpaceToDepth for tensors of type T.
		
		Rearranges blocks of spatial data, into depth. More specifically,
		this op outputs a copy of the input tensor where values from the `height`
		and `width` dimensions are moved to the `depth` dimension.
		The attr `block_size` indicates the input block size.
		
		  * Non-overlapping blocks of size `block_size x block size` are rearranged
		    into depth at each location.
		  * The depth of the output tensor is `block_size * block_size * input_depth`.
		  * The Y, X coordinates within each block of the input become the high order
		    component of the output channel index.
		  * The input tensor's height and width must be divisible by block_size.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,oY,bY,oX,bX,iC  (where n=batch index, oX, oY means X or Y coordinates
		                        within the output image, bX, bY means coordinates
		                        within the input block, iC means input channels).
		     The output would be a transpose to the following layout:
		     n,oY,oX,bY,bX,iC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 2, 2, 1]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1], [2]],
		      [[3], [4]]]]
		```
		
		This operation will output a tensor of shape `[1, 1, 1, 4]`:
		
		```
		[[[[1, 2, 3, 4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
		the corresponding output will have a single element (i.e. width and height are
		both 1) and will have a depth of 4 channels (1 * block_size * block_size).
		The output element shape is `[1, 1, 4]`.
		
		For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		This operation, for block_size of 2, will return the following tensor of shape
		`[1, 1, 1, 12]`
		
		```
		[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:
		
		```
		x = [[[[1],   [2],  [5],  [6]],
		      [[3],   [4],  [7],  [8]],
		      [[9],  [10], [13],  [14]],
		      [[11], [12], [15],  [16]]]]
		```
		
		the operator will return the following tensor of shape `[1 2 2 4]`:
		
		```
		x = [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`. The size of the spatial block.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_depth_v2(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Masks elements of `IndexedSlices`.
		
		Given an `IndexedSlices` instance `a`, returns another `IndexedSlices` that
		contains a subset of the slices of `a`. Only the slices at indices not
		specified in `mask_indices` are returned.
		
		This is useful when you need to extract a subset of slices in an
		`IndexedSlices` object.
		
		For example:
		
		```python
		# `a` contains slices at indices [12, 26, 37, 45] from a large tensor
		# with shape [1000, 10]
		a.indices  # [12, 26, 37, 45]
		tf.shape(a.values)  # [4, 10]
		
		# `b` will be the subset of `a` slices at its second and third indices, so
		# we want to mask its first and last indices (which are at absolute
		# indices 12, 45)
		b = tf.sparse.mask(a, [12, 45])
		
		b.indices  # [26, 37]
		tf.shape(b.values)  # [2, 10]
		```
		
		Args:
		  a: An `IndexedSlices` instance.
		  mask_indices: Indices of elements to mask.
		  name: A name for the operation (optional).
		
		Returns:
		  The masked `IndexedSlices` instance.
	**/
	static public function sparse_mask(a:Dynamic, mask_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a placeholder for a sparse tensor that will be always fed.
		
		**Important**: This sparse tensor will produce an error if evaluated.
		Its value must be fed using the `feed_dict` optional argument to
		`Session.run()`, `Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.compat.v1.sparse.placeholder(tf.float32)
		y = tf.sparse.reduce_sum(x)
		
		with tf.compat.v1.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  indices = np.array([[3, 2, 0], [4, 5, 1]], dtype=np.int64)
		  values = np.array([1.0, 2.0], dtype=np.float32)
		  shape = np.array([7, 9, 2], dtype=np.int64)
		  print(sess.run(y, feed_dict={
		    x: tf.compat.v1.SparseTensorValue(indices, values, shape)}))  # Will
		    succeed.
		  print(sess.run(y, feed_dict={
		    x: (indices, values, shape)}))  # Will succeed.
		
		  sp = tf.sparse.SparseTensor(indices=indices, values=values,
		                              dense_shape=shape)
		  sp_value = sp.eval(session=sess)
		  print(sess.run(y, feed_dict={x: sp_value}))  # Will succeed.
		```
		
		@compatibility{eager} Placeholders are not compatible with eager execution.
		
		Args:
		  dtype: The type of `values` elements in the tensor to be fed.
		  shape: The shape of the tensor to be fed (optional). If the shape is not
		    specified, you can feed a sparse tensor of any shape.
		  name: A name for prefixing the operations (optional).
		
		Returns:
		  A `SparseTensor` that may be used as a handle for feeding a value, but not
		  evaluated directly.
		
		Raises:
		  RuntimeError: if eager execution is enabled
	**/
	static public function sparse_placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function split_eager_fallback(axis:Dynamic, value:Dynamic, num_split:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Splits a tensor into `num_split` tensors along one dimension.
		
		Args:
		  value: A `Tensor`. The tensor to split.
		  size_splits: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    list containing the sizes of each output tensor along the split
		    dimension. Must sum to the dimension of value along split_dim.
		    Can contain one -1 indicating that dimension is to be inferred.
		  axis: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to split.  Must be in the range
		    `[-rank(value), rank(value))`.
		  num_split: An `int` that is `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_split` `Tensor` objects with the same type as `value`.
	**/
	static public function split_v(value:Dynamic, size_splits:Dynamic, axis:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	static public function split_v_eager_fallback(value:Dynamic, size_splits:Dynamic, axis:Dynamic, num_split:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Removes dimensions of size 1 from the shape of a tensor. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(squeeze_dims)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		Given a tensor `input`, this operation returns a tensor of the same type with
		all dimensions of size 1 removed. If you don't want to remove all size 1
		dimensions, you can remove specific size 1 dimensions by specifying
		`axis`.
		
		For example:
		
		>>> # 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		>>> t = tf.ones([1, 2, 1, 3, 1, 1])
		>>> print(tf.shape(tf.squeeze(t)).numpy())
		[2 3]
		
		Or, to remove specific size 1 dimensions:
		
		>>> # 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		>>> t = tf.ones([1, 2, 1, 3, 1, 1])
		>>> print(tf.shape(tf.squeeze(t, [2, 4])).numpy())
		[1 2 3 1]
		
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
		  squeeze_dims: Deprecated keyword argument that is now axis.
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Contains the same data as `input`, but has one or more dimensions of
		  size 1 removed.
		
		Raises:
		  ValueError: When both `squeeze_dims` and `axis` are specified.
	**/
	static public function squeeze(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?squeeze_dims:Dynamic):Dynamic;
	static public function squeeze_eager_fallback(input:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function squeeze_v2(input:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function stop_gradient_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	/**
		Assign `value` to the sliced l-value reference of `ref`.
		
		The values of `value` are assigned to the positions in the variable
		`ref` that are selected by the slice parameters. The slice parameters
		`begin`, `end`, `strides`, etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s
		shape must be exactly the shape produced by the slice of `ref`.
		
		Args:
		  ref: A mutable `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`. Must have the same type as `ref`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function strided_slice_assign(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	static public function strided_slice_assign_eager_fallback(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, begin_mask:Dynamic, end_mask:Dynamic, ellipsis_mask:Dynamic, new_axis_mask:Dynamic, shrink_axis_mask:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function strided_slice_eager_fallback(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, begin_mask:Dynamic, end_mask:Dynamic, ellipsis_mask:Dynamic, new_axis_mask:Dynamic, shrink_axis_mask:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the gradient of `StridedSlice`.
		
		Since `StridedSlice` cuts out pieces of its `input` which is size
		`shape`, its gradient will have the same shape (which is passed here
		as `shape`). The gradient will be zero in any element that the slice
		does not select.
		
		Arguments are the same as StridedSliceGrad with the exception that
		`dy` is the input gradient to be propagated and `shape` is the
		shape of `StridedSlice`'s `input`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  begin: A `Tensor`. Must have the same type as `shape`.
		  end: A `Tensor`. Must have the same type as `shape`.
		  strides: A `Tensor`. Must have the same type as `shape`.
		  dy: A `Tensor`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `dy`.
	**/
	static public function strided_slice_grad(shape:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, dy:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	static public function strided_slice_grad_eager_fallback(shape:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, dy:Dynamic, begin_mask:Dynamic, end_mask:Dynamic, ellipsis_mask:Dynamic, new_axis_mask:Dynamic, shrink_axis_mask:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For a rank 2 tensor, `linalg.diag_part` and `linalg.tensor_diag_part`
		produce the same result. For rank 3 and higher, linalg.diag_part extracts
		the diagonal of each inner-most matrix in the tensor. An example where
		they differ is given below.
		
		>>> x = [[[[1111,1112],[1121,1122]],
		...       [[1211,1212],[1221,1222]]],
		...      [[[2111, 2112], [2121, 2122]],
		...       [[2211, 2212], [2221, 2222]]]
		...      ]
		>>> tf.linalg.tensor_diag_part(x)
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[1111, 1212],
		       [2121, 2222]], dtype=int32)>
		>>> tf.linalg.diag_part(x).shape
		TensorShape([2, 2, 2])
		
		Args:
		  input: A `Tensor` with rank `2k`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor containing diagonals of `input`. Has the same type as `input`, and
		  rank `k`.
	**/
	static public function tensor_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function tensor_scatter_add(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_scatter_add_eager_fallback(tensor:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function tensor_scatter_max(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_scatter_max_eager_fallback(tensor:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function tensor_scatter_min(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_scatter_min_eager_fallback(tensor:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function tensor_scatter_sub(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_scatter_sub_eager_fallback(tensor:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Scatter `updates` into an existing tensor according to `indices`.
		
		This operation creates a new tensor by applying sparse `updates` to the passed
		in `tensor`.
		This operation is very similar to `tf.scatter_nd`, except that the updates are
		scattered onto an existing tensor (as opposed to a zero-tensor). If the memory
		for the existing tensor cannot be re-used, a copy is made and updated.
		
		If `indices` contains duplicates, then we pick the last update for the index.
		
		If an out of bound index is found on CPU, an error is returned.
		
		**WARNING**: There are some GPU specific semantics for this operation.
		- If an out of bound index is found, the index is ignored.
		- The order in which updates are applied is nondeterministic, so the output
		will be nondeterministic if `indices` contains duplicates.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`shape`.
		
		* `indices` must have at least 2 axes: `(num_updates, index_depth)`.
		* The last axis of `indices` is how deep to index into `tensor` so  this index
		  depth must be less than the rank of `tensor`: `indices.shape[-1] <= tensor.ndim`
		
		if `indices.shape[-1] = tensor.rank` this Op indexes and updates scalar elements.
		if `indices.shape[-1] < tensor.rank` it indexes and updates slices of the input
		`tensor`.
		
		Each `update` has a rank of `tensor.rank - indices.shape[-1]`.
		The overall shape of `updates` is:
		
		```
		indices.shape[:-1] + tensor.shape[indices.shape[-1]:]
		```
		
		For usage examples see the python [tf.tensor_scatter_nd_update](
		https://www.tensorflow.org/api_docs/python/tf/tensor_scatter_nd_update) function
		
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
	static public function tensor_scatter_update(tensor:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_scatter_update_eager_fallback(tensor:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `input`.
		
		The values of `value` are assigned to the positions in the tensor `input` that
		are selected by the slice parameters. The slice parameters `begin` `end`
		`strides` etc. work exactly as in `StridedSlice`.
		
		NOTE this op currently does not support broadcasting and so `value`'s shape
		must be exactly the shape produced by the slice of `input`.
		
		Args:
		  input: A `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  end: A `Tensor`. Must have the same type as `begin`.
		  strides: A `Tensor`. Must have the same type as `begin`.
		  value: A `Tensor`. Must have the same type as `input`.
		  begin_mask: An optional `int`. Defaults to `0`.
		  end_mask: An optional `int`. Defaults to `0`.
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tensor_strided_slice_update(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_strided_slice_update_eager_fallback(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, begin_mask:Dynamic, end_mask:Dynamic, ellipsis_mask:Dynamic, new_axis_mask:Dynamic, shrink_axis_mask:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function tile_eager_fallback(input:Dynamic, multiples:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the gradient of `Tile`.
		
		Since `Tile` takes an input and repeats the input `multiples` times
		along each dimension, `TileGrad` takes in `multiples` and aggregates
		each repeated tile of `input` into `output`.
		
		Args:
		  input: A `Tensor`.
		  multiples: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tile_grad(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	static public function tile_grad_eager_fallback(input:Dynamic, multiples:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Tiles a single dimension of a tensor.
	**/
	static public function tile_one_dimension(data:Dynamic, axis:Dynamic, multiple:Dynamic):Dynamic;
	/**
		Transposes `a`.
		
		Permutes the dimensions according to `perm`.
		
		The returned tensor's dimension i will correspond to the input dimension
		`perm[i]`. If `perm` is not given, it is set to (n-1...0), where n is
		the rank of the input tensor. Hence by default, this operation performs a
		regular matrix transpose on 2-D input Tensors. If conjugate is True and
		`a.dtype` is either `complex64` or `complex128` then the values of `a`
		are conjugated and transposed.
		
		@compatibility(numpy)
		In `numpy` transposes are memory-efficient constant time operations as they
		simply return a new view of the same data with adjusted `strides`.
		
		TensorFlow does not support strides, so `transpose` returns a new tensor with
		the items permuted.
		@end_compatibility
		
		For example:
		
		```python
		x = tf.constant([[1, 2, 3], [4, 5, 6]])
		tf.transpose(x)  # [[1, 4]
		                 #  [2, 5]
		                 #  [3, 6]]
		
		# Equivalently
		tf.transpose(x, perm=[1, 0])  # [[1, 4]
		                              #  [2, 5]
		                              #  [3, 6]]
		
		# If x is complex, setting conjugate=True gives the conjugate transpose
		x = tf.constant([[1 + 1j, 2 + 2j, 3 + 3j],
		                 [4 + 4j, 5 + 5j, 6 + 6j]])
		tf.transpose(x, conjugate=True)  # [[1 - 1j, 4 - 4j],
		                                 #  [2 - 2j, 5 - 5j],
		                                 #  [3 - 3j, 6 - 6j]]
		
		# 'perm' is more useful for n-dimensional tensors, for n > 2
		x = tf.constant([[[ 1,  2,  3],
		                  [ 4,  5,  6]],
		                 [[ 7,  8,  9],
		                  [10, 11, 12]]])
		
		# Take the transpose of the matrices in dimension-0
		# (this common operation has a shorthand `linalg.matrix_transpose`)
		tf.transpose(x, perm=[0, 2, 1])  # [[[1,  4],
		                                 #   [2,  5],
		                                 #   [3,  6]],
		                                 #  [[7, 10],
		                                 #   [8, 11],
		                                 #   [9, 12]]]
		```
		
		Args:
		  a: A `Tensor`.
		  perm: A permutation of the dimensions of `a`.
		  name: A name for the operation (optional).
		  conjugate: Optional bool. Setting it to `True` is mathematically equivalent
		    to tf.math.conj(tf.transpose(input)).
		
		Returns:
		  A transposed `Tensor`.
	**/
	static public function transpose(a:Dynamic, ?perm:Dynamic, ?name:Dynamic, ?conjugate:Dynamic):Dynamic;
	static public function transpose_eager_fallback(x:Dynamic, perm:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function transpose_v2(a:Dynamic, ?perm:Dynamic, ?conjugate:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function unique_eager_fallback(x:Dynamic, out_idx:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Finds unique elements along an axis of a tensor.
		
		This operation either returns a tensor `y` containing unique elements
		along the `axis` of a tensor. The returned unique elements is sorted
		in the same order as they occur along `axis` in `x`.
		This operation also returns a tensor `idx` that is the same size as
		the number of the elements in `x` along the `axis` dimension. It
		contains the index in the unique output `y`.
		In other words, for an `1-D` tensor `x` with `axis = None:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		For an `2-D` tensor `x` with `axis = 0`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx = unique(x, axis=0)
		y ==> [[1, 0, 0],
		       [2, 0, 0]]
		idx ==> [0, 0, 1]
		```
		
		For an `2-D` tensor `x` with `axis = 1`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx = unique(x, axis=1)
		y ==> [[1, 0],
		       [1, 0],
		       [2, 0]]
		idx ==> [0, 1, 1]
		```
		
		Args:
		  x: A `Tensor`. A `Tensor`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: None). The axis of the Tensor to
		    find the unique elements.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
	**/
	static public function unique_v2(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	static public function unique_v2_eager_fallback(x:Dynamic, axis:Dynamic, out_idx:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function unique_with_counts_eager_fallback(x:Dynamic, out_idx:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Finds unique elements along an axis of a tensor.
		
		This operation either returns a tensor `y` containing unique elements
		along the `axis` of a tensor. The returned unique elements is sorted
		in the same order as they occur along `axis` in `x`.
		This operation also returns a tensor `idx` and a tensor `count`
		that are the same size as the number of the elements in `x` along the
		`axis` dimension. The `idx` contains the index in the unique output `y`
		and the `count` contains the count in the unique output `y`.
		In other words, for an `1-D` tensor `x` with `axis = None:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		x = tf.constant([1, 1, 2, 4, 4, 4, 7, 8, 8])
		y, idx, count = UniqueWithCountsV2(x, axis = [0])
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		For a `2-D` tensor `x` with `axis = 0`:
		
		```
		x = tf.constant([[1, 0, 0],
		                [1, 0, 0],
		                [2, 0, 0]])
		y, idx, count = UniqueWithCountsV2(x, axis=[0])
		y ==> [[1, 0, 0],
		       [2, 0, 0]]
		idx ==> [0, 0, 1]
		count ==> [2, 1]
		```
		
		For a `2-D` tensor `x` with `axis = 1`:
		
		```
		x = tf.constant([[1, 0, 0],
		                [1, 0, 0],
		                [2, 0, 0]])
		y, idx, count = UniqueWithCountsV2(x, axis=[1])
		y ==> [[1, 0],
		       [1, 0],
		       [2, 0]]
		idx ==> [0, 1, 1]
		count ==> [1, 2]
		```
		
		Args:
		  x: A `Tensor`. A `Tensor`.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `Tensor` of type `int32` (default: None). The axis of the Tensor to
		    find the unique elements.
		  out_idx: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx, count).
		
		  y: A `Tensor`. Has the same type as `x`.
		  idx: A `Tensor` of type `out_idx`.
		  count: A `Tensor` of type `out_idx`.
	**/
	static public function unique_with_counts_v2(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic):Dynamic;
	static public function unique_with_counts_v2_eager_fallback(x:Dynamic, axis:Dynamic, out_idx:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Unpacks a given dimension of a rank-`R` tensor into `num` rank-`(R-1)` tensors.
		
		Unpacks `num` tensors from `value` by chipping it along the `axis` dimension.
		For example, given a tensor of shape `(A, B, C, D)`;
		
		If `axis == 0` then the i'th tensor in `output` is the slice `value[i, :, :, :]`
		  and each tensor in `output` will have shape `(B, C, D)`. (Note that the
		  dimension unpacked along is gone, unlike `split`).
		
		If `axis == 1` then the i'th tensor in `output` is the slice `value[:, i, :, :]`
		  and each tensor in `output` will have shape `(A, C, D)`.
		Etc.
		
		This is the opposite of `pack`.
		
		Args:
		  value: A `Tensor`.
		    1-D or higher, with `axis` dimension size equal to `num`.
		  num: An `int` that is `>= 0`.
		  axis: An optional `int`. Defaults to `0`.
		    Dimension along which to unpack.  Negative values wrap around, so the
		    valid range is `[-R, R)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num` `Tensor` objects with the same type as `value`.
	**/
	static public function unpack(value:Dynamic, num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function unpack_eager_fallback(value:Dynamic, num:Dynamic, axis:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function unravel_index_eager_fallback(indices:Dynamic, dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		Applies upper_bound(sorted_search_values, values) along each row.
		
		Each set of rows with the same index in (sorted_inputs, values) is treated
		independently.  The resulting row is the equivalent of calling
		`np.searchsorted(sorted_inputs, values, side='right')`.
		
		The result is not a global index to the entire
		`Tensor`, but rather just the index in the last dimension.
		
		A 2-D example:
		  sorted_sequence = [[0, 3, 9, 9, 10],
		                     [1, 2, 3, 4, 5]]
		  values = [[2, 4, 9],
		            [0, 2, 6]]
		
		  result = UpperBound(sorted_sequence, values)
		
		  result == [[1, 2, 4],
		             [0, 2, 5]]
		
		Args:
		  sorted_inputs: A `Tensor`. 2-D Tensor where each row is ordered.
		  values: A `Tensor`. Must have the same type as `sorted_inputs`.
		    2-D Tensor with the same numbers of rows as `sorted_search_values`. Contains
		    the values that will be searched for in `sorted_search_values`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function upper_bound(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function upper_bound_eager_fallback(sorted_inputs:Dynamic, values:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Return the elements, either from `x` or `y`, depending on the `condition`.
		
		If both `x` and `y` are None, then this operation returns the coordinates of
		true elements of `condition`.  The coordinates are returned in a 2-D tensor
		where the first dimension (rows) represents the number of true elements, and
		the second dimension (columns) represents the coordinates of the true
		elements. Keep in mind, the shape of the output tensor can vary depending on
		how many true values there are in input. Indices are output in row-major
		order.
		
		If both non-None, `x` and `y` must have the same shape.
		The `condition` tensor must be a scalar if `x` and `y` are scalar.
		If `x` and `y` are tensors of higher rank, then `condition` must be either a
		vector with size matching the first dimension of `x`, or must have the same
		shape as `x`.
		
		The `condition` tensor acts as a mask that chooses, based on the value at each
		element, whether the corresponding element / row in the output should be taken
		from `x` (if true) or `y` (if false).
		
		If `condition` is a vector and `x` and `y` are higher rank matrices, then it
		chooses which row (outer dimension) to copy from `x` and `y`. If `condition`
		has the same shape as `x` and `y`, then it chooses which element to copy from
		`x` and `y`.
		
		Args:
		  condition: A `Tensor` of type `bool`
		  x: A Tensor which may have the same shape as `condition`. If `condition` is
		    rank 1, `x` may have higher rank, but its first dimension must match the
		    size of `condition`.
		  y: A `tensor` with the same shape and type as `x`.
		  name: A name of the operation (optional)
		
		Returns:
		  A `Tensor` with the same type and shape as `x`, `y` if they are non-None.
		  Otherwise, a `Tensor` with shape `(num_true, rank(condition))`.
		
		Raises:
		  ValueError: When exactly one of `x` or `y` is non-None.
		
		@compatibility(TF2)
		
		This API is compatible with eager execution and `tf.function`. However, this
		is still a legacy API endpoint originally designed for TF1. To migrate to
		fully-native TF2, please replace its usage with `tf.where` instead, which is
		directly backwards compatible with `tf.compat.v1.where`.
		
		However,`tf.compat.v1.where` is more restrictive than `tf.where`, requiring
		`x` and `y` to have the same shape, and returning a `Tensor` with the same
		type and shape as `x`, `y` (if they are both non-None).
		
		`tf.where` will accept `x`, `y` that are not the same shape as long as they
		are broadcastable with one another and with `condition`, and will return a
		`Tensor` with shape broadcast from `condition`, `x`, and `y`.
		
		For example, the following works with `tf.where` but not `tf.compat.v1.where`:
		
		>>> tf.where([True, False, False, True], [1,2,3,4], [100])
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([  1, 100, 100,   4],
		dtype=int32)>
		
		>>> tf.where(True, [1,2,3,4], 100)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([1, 2, 3, 4],
		dtype=int32)>
		
		@end_compatibility
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?name:Dynamic):Dynamic;
	static public function where_eager_fallback(condition:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function where_v2(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Given a single tensor (`tensor`), this operation returns a tensor of the
		same type and shape as `tensor` with all elements set to zero. Optionally,
		you can use `dtype` to specify a new type for the returned tensor.
		
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
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float16`, `float32`,
		    `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`,
		    `complex64`, `complex128`, `bool` or `string`. (optional)
		  name: A name for the operation (optional).
		  optimize: if `True`, attempt to statically determine the shape of `tensor`
		    and encode it as a constant. (optional, defaults to `True`)
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	static public function zeros_like_eager_fallback(x:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Internal implementation for the v1/v2 zeros_like API calls.
	**/
	static public function zeros_like_impl(tensor:Dynamic, dtype:Dynamic, name:Dynamic, ?optimize:Dynamic):Dynamic;
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
	static public function zeros_like_v2(input:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}