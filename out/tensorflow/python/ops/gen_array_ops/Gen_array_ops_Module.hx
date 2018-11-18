/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_array_ops;
@:pythonImport("tensorflow.python.ops.gen_array_ops") extern class Gen_array_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _broadcast_gradient_args_outputs : Dynamic;
	static public var _fake_quant_with_min_max_vars_gradient_outputs : Dynamic;
	static public var _fake_quant_with_min_max_vars_per_channel_gradient_outputs : Dynamic;
	static public var _list_diff_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _quantize_v2_outputs : Dynamic;
	static public var _quantized_concat_outputs : Dynamic;
	static public var _quantized_instance_norm_outputs : Dynamic;
	static public var _quantized_reshape_outputs : Dynamic;
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
	static public function _slice(input:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function _slice
	**/
	static public function _slice_eager_fallback(input:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var _unique_outputs : Dynamic;
	static public var _unique_v2_outputs : Dynamic;
	static public var _unique_with_counts_outputs : Dynamic;
	static public var _unique_with_counts_v2_outputs : Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_band_part
	**/
	static public function batch_matrix_band_part_eager_fallback(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  diagonal: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function batch_matrix_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_diag
	**/
	static public function batch_matrix_diag_eager_fallback(diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function batch_matrix_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_diag_part
	**/
	static public function batch_matrix_diag_part_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_matrix_set_diag
	**/
	static public function batch_matrix_set_diag_eager_fallback(input:Dynamic, diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function batch_to_space(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_to_space
	**/
	static public function batch_to_space_eager_fallback(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
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
		    x = [[[1],   [2],  [3],  [4]],
		         [[5],   [6],  [7],  [8]],
		         [[9],  [10], [11],  [12]],
		         [[13], [14], [15],  [16]]]
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
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_to_space_nd
	**/
	static public function batch_to_space_nd_eager_fallback(input:Dynamic, block_shape:Dynamic, crops:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Bitcasts a tensor from one type to another without copying data.
		
		Given a tensor `input`, this operation returns a tensor that has the same buffer
		data as `input` with datatype `type`.
		
		If the input datatype `T` is larger than the output datatype `type` then the
		shape changes from [...] to [..., sizeof(`T`)/sizeof(`type`)].
		
		If `T` is smaller than `type`, the operator requires that the rightmost
		dimension be equal to sizeof(`type`)/sizeof(`T`). The shape then goes from
		[..., sizeof(`type`)/sizeof(`T`)] to [...].
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function bitcast
	**/
	static public function bitcast_eager_fallback(input:Dynamic, type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function broadcast_args
	**/
	static public function broadcast_args_eager_fallback(s0:Dynamic, s1:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function broadcast_gradient_args
	**/
	static public function broadcast_gradient_args_eager_fallback(s0:Dynamic, s1:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Broadcast an array for a compatible shape.
		
		Broadcasting is the process of making arrays to have compatible shapes
		for arithmetic operations. Two shapes are compatible if for each
		dimension pair they are either equal or one of them is one. When trying
		to broadcast a Tensor to a shape, it starts with the trailing dimensions,
		and works its way forward.
		
		For example,
		```
		>>> x = tf.constant([1, 2, 3])
		>>> y = tf.broadcast_to(x, [3, 3])
		>>> sess.run(y)
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]], dtype=int32)
		```
		In the above example, the input Tensor with the shape of `[1, 3]`
		is broadcasted to output Tensor with shape of `[3, 3]`.
		
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
		This is the slowpath function for Eager mode.
		This is for function broadcast_to
	**/
	static public function broadcast_to_eager_fallback(input:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN and Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, passes `tensor` as-is.
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function check_numerics
	**/
	static public function check_numerics_eager_fallback(tensor:Dynamic, message:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function concat(concat_dim:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function concat
	**/
	static public function concat_eager_fallback(concat_dim:Dynamic, values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function concat_offset
	**/
	static public function concat_offset_eager_fallback(concat_dim:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function concat_v2
	**/
	static public function concat_v2_eager_fallback(values:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function conjugate_transpose
	**/
	static public function conjugate_transpose_eager_fallback(x:Dynamic, perm:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function const
	**/
	static public function const_eager_fallback(value:Dynamic, dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function debug_gradient_identity
	**/
	static public function debug_gradient_identity_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		Makes a copy of `x`.
		
		Args:
		  x: A `Tensor`. The source tensor of type `T`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function deep_copy(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function deep_copy
	**/
	static public function deep_copy_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function depth_to_space(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function depth_to_space
	**/
	static public function depth_to_space_eager_fallback(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Dequantize the 'input' tensor into a float Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		if T == qint8, in[i] += (range(T) + 1)/ 2.0
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
		This is the slowpath function for Eager mode.
		This is for function dequantize
	**/
	static public function dequantize_eager_fallback(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function diag
	**/
	static public function diag_eager_fallback(diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function diag_part
	**/
	static public function diag_part_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function edit_distance(hypothesis_indices:Dynamic, hypothesis_values:Dynamic, hypothesis_shape:Dynamic, truth_indices:Dynamic, truth_values:Dynamic, truth_shape:Dynamic, ?normalize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function edit_distance
	**/
	static public function edit_distance_eager_fallback(hypothesis_indices:Dynamic, hypothesis_values:Dynamic, hypothesis_shape:Dynamic, truth_indices:Dynamic, truth_values:Dynamic, truth_shape:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function empty
	**/
	static public function empty_eager_fallback(shape:Dynamic, dtype:Dynamic, ?init:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function ensure_shape
	**/
	static public function ensure_shape_eager_fallback(input:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function expand_dims(input:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function expand_dims
	**/
	static public function expand_dims_eager_fallback(input:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Extract `patches` from `images` and put them in the "depth" output dimension.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D Tensor with shape `[batch, in_rows, in_cols, depth]`.
		  ksizes: A list of `ints` that has length `>= 4`.
		    The size of the sliding window for each dimension of `images`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. How far the centers of two consecutive patches are in
		    the images. Must be: `[1, stride_rows, stride_cols, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. Must be: `[1, rate_rows, rate_cols, 1]`. This is the
		    input stride, specifying how far two consecutive patch samples are in the
		    input. Equivalent to extracting patches with
		    `patch_sizes_eff = patch_sizes + (patch_sizes - 1) * (rates - 1)`, followed by
		    subsampling them spatially by a factor of `rates`. This is equivalent to
		    `rate` in dilated (a.k.a. Atrous) convolutions.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		
		    We specify the size-related attributes as:
		
		    ```python
		          ksizes = [1, ksize_rows, ksize_cols, 1]
		          strides = [1, strides_rows, strides_cols, 1]
		          rates = [1, rates_rows, rates_cols, 1]
		    ```
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
	**/
	static public function extract_image_patches(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function extract_image_patches
	**/
	static public function extract_image_patches_eager_fallback(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Extract `patches` from `input` and put them in the "depth" output
		dimension. 3D extension of `extract_image_patches`.
		
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
		
		      We specify the size-related attributes as:
		
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
		This is the slowpath function for Eager mode.
		This is for function extract_volume_patches
	**/
	static public function extract_volume_patches_eager_fallback(input:Dynamic, ksizes:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor, type float to 'outputs' tensor of same type.
		
		Attributes `[min; max]` define the clamping range for the `inputs` data.
		`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
		when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
		then de-quantized and output as floats in `[min; max]` interval.
		`num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_args
	**/
	static public function fake_quant_with_min_max_args_eager_fallback(inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_args_gradient
	**/
	static public function fake_quant_with_min_max_args_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via global float scalars `min`
		
		and `max` to 'outputs' tensor of same shape as `inputs`.
		
		`[min; max]` define the clamping range for the `inputs` data.
		`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
		when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
		then de-quantized and output as floats in `[min; max]` interval.
		`num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars
	**/
	static public function fake_quant_with_min_max_vars_eager_fallback(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars_gradient
	**/
	static public function fake_quant_with_min_max_vars_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float and one of the shapes: `[d]`,
		
		`[b, d]` `[b, h, w, d]` via per-channel floats `min` and `max` of shape `[d]`
		to 'outputs' tensor of same shape as `inputs`.
		
		`[min; max]` define the clamping range for the `inputs` data.
		`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
		when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
		then de-quantized and output as floats in `[min; max]` interval.
		`num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars_per_channel
	**/
	static public function fake_quant_with_min_max_vars_per_channel_eager_fallback(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function fake_quant_with_min_max_vars_per_channel_gradient
	**/
	static public function fake_quant_with_min_max_vars_per_channel_gradient_eager_fallback(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function fill(dims:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fill
	**/
	static public function fill_eager_fallback(dims:Dynamic, value:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gather
	**/
	static public function gather_eager_fallback(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gather slices from `params` into a Tensor with shape specified by `indices`.
		
		`indices` is an K-dimensional integer tensor, best thought of as a
		(K-1)-dimensional tensor of indices into `params`, where each element defines a
		slice of `params`:
		
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
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gather_nd
	**/
	static public function gather_nd_eager_fallback(params:Dynamic, indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gather slices from `params` axis `axis` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `params.shape[:axis] + indices.shape +
		params.shape[axis + 1:]` where:
		
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
	**/
	static public function gather_v2(params:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gather_v2
	**/
	static public function gather_v2_eager_fallback(params:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function guarantee_const(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function guarantee_const
	**/
	static public function guarantee_const_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Return a tensor with the same shape and contents as the input tensor or value.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function identity
	**/
	static public function identity_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function identity_n
	**/
	static public function identity_n_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function immutable_const
	**/
	static public function immutable_const_eager_fallback(dtype:Dynamic, shape:Dynamic, memory_region_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function inplace_add
	**/
	static public function inplace_add_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function inplace_sub
	**/
	static public function inplace_sub_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Updates specified rows with values in `v`.
		
		  Computes `x[i, :] = v; return x`.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function inplace_update
	**/
	static public function inplace_update_eager_fallback(x:Dynamic, i:Dynamic, v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function invert_permutation
	**/
	static public function invert_permutation_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function list_diff
	**/
	static public function list_diff_eager_fallback(x:Dynamic, y:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function lower_bound
	**/
	static public function lower_bound_eager_fallback(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix
		
		to zero.
		
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
		                 [-1,  0,  1, 2]
		                 [-2, -1,  0, 1]
		                 [-3, -2, -1, 0]],
		
		tf.matrix_band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                       [-1,  0,  1, 2]
		                                       [ 0, -1,  0, 1]
		                                       [ 0,  0, -1, 0]],
		
		tf.matrix_band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                      [-1,  0,  1, 0]
		                                      [-2, -1,  0, 1]
		                                      [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```
		 tf.matrix_band_part(input, 0, -1) ==> Upper triangular part.
		 tf.matrix_band_part(input, -1, 0) ==> Lower triangular part.
		 tf.matrix_band_part(input, 0, 0) ==> Diagonal.
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
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_band_part
	**/
	static public function matrix_band_part_eager_fallback(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function matrix_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_diag
	**/
	static public function matrix_diag_eager_fallback(diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function matrix_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_diag_part
	**/
	static public function matrix_diag_part_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matrix_set_diag
	**/
	static public function matrix_set_diag_eager_fallback(input:Dynamic, diagonal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function mirror_pad
	**/
	static public function mirror_pad_eager_fallback(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function mirror_pad_grad
	**/
	static public function mirror_pad_grad_eager_fallback(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		
		    ```output =
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
		
		    ```output =
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
		
		    ```output =
		      [
		        [1.0, 0.0, 0.0]  // one_hot(0)
		        [0.0, 0.0, 1.0]  // one_hot(2)
		      ][
		        [0.0, 1.0, 0.0]  // one_hot(1)
		        [0.0, 0.0, 0.0]  // one_hot(-1)
		      ]```
		
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
	static public function one_hot(indices:Dynamic, depth:Dynamic, on_value:Dynamic, off_value:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function one_hot
	**/
	static public function one_hot_eager_fallback(indices:Dynamic, depth:Dynamic, on_value:Dynamic, off_value:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a tensor of ones with the same shape and type as x.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `int8`, `uint8`, `int16`, `uint16`, `int32`, `int64`, `complex64`, `complex128`, `bool`.
		    a tensor of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function ones_like(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function ones_like
	**/
	static public function ones_like_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function pack
	**/
	static public function pack_eager_fallback(values:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function pad(input:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function pad
	**/
	static public function pad_eager_fallback(input:Dynamic, paddings:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function pad_v2(input:Dynamic, paddings:Dynamic, constant_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function pad_v2
	**/
	static public function pad_v2_eager_fallback(input:Dynamic, paddings:Dynamic, constant_values:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function parallel_concat
	**/
	static public function parallel_concat_eager_fallback(values:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function placeholder
	**/
	static public function placeholder_eager_fallback(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function placeholder_v2
	**/
	static public function placeholder_v2_eager_fallback(dtype:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function placeholder_with_default(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function placeholder_with_default
	**/
	static public function placeholder_with_default_eager_fallback(input:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function prevent_gradient
	**/
	static public function prevent_gradient_eager_fallback(input:Dynamic, ?message:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function quantize_and_dequantize(input:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?input_min:Dynamic, ?input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_and_dequantize
	**/
	static public function quantize_and_dequantize_eager_fallback(input:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?input_min:Dynamic, ?input_max:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		other one to maximize the respresentable range.
		
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize_v2(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_and_dequantize_v2
	**/
	static public function quantize_and_dequantize_v2_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize_v3(input:Dynamic, input_min:Dynamic, input_max:Dynamic, num_bits:Dynamic, ?signed_input:Dynamic, ?range_given:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantize_and_dequantize_v3
	**/
	static public function quantize_and_dequantize_v3_eager_fallback(input:Dynamic, input_min:Dynamic, input_max:Dynamic, num_bits:Dynamic, ?signed_input:Dynamic, ?range_given:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		if T == qint8, out[i] -= (range(T) + 1) / 2.0
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
		This is the slowpath function for Eager mode.
		This is for function quantize_v2
	**/
	static public function quantize_v2_eager_fallback(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function quantized_concat
	**/
	static public function quantized_concat_eager_fallback(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_instance_norm
	**/
	static public function quantized_instance_norm_eager_fallback(x:Dynamic, x_min:Dynamic, x_max:Dynamic, ?output_range_given:Dynamic, ?given_y_min:Dynamic, ?given_y_max:Dynamic, ?variance_epsilon:Dynamic, ?min_separation:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function quantized_reshape
	**/
	static public function quantized_reshape_eager_fallback(tensor:Dynamic, shape:Dynamic, input_min:Dynamic, input_max:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function rank(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function rank
	**/
	static public function rank_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Return the same ref tensor as the input ref tensor.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function ref_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reshapes a tensor.
		
		Given `tensor`, this operation returns a tensor that has the same values
		as `tensor` with shape `shape`.
		
		If one component of `shape` is the special value -1, the size of that dimension
		is computed so that the total size remains constant.  In particular, a `shape`
		of `[-1]` flattens into 1-D.  At most one component of `shape` can be -1.
		
		If `shape` is 1-D or higher, then the operation returns a tensor with shape
		`shape` filled with the values of `tensor`. In this case, the number of elements
		implied by `shape` must be the same as the number of elements in `tensor`.
		
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
	static public function reshape(tensor:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reshape
	**/
	static public function reshape_eager_fallback(tensor:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_strided_slice_assign
	**/
	static public function resource_strided_slice_assign_eager_fallback(ref:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `bool`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
		    Up to 8-D.
		  dims: A `Tensor` of type `bool`. 1-D. The dimensions to reverse.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reverse(tensor:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reverse
	**/
	static public function reverse_eager_fallback(tensor:Dynamic, dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function reverse_sequence(input:Dynamic, seq_lengths:Dynamic, seq_dim:Dynamic, ?batch_dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reverse_sequence
	**/
	static public function reverse_sequence_eager_fallback(input:Dynamic, seq_lengths:Dynamic, seq_dim:Dynamic, ?batch_dim:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
		NOTE `tf.reverse` has now changed behavior in preparation for 1.0.
		`tf.reverse_v2` is currently an alias that will be deprecated before TF 1.0.
		
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
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `uint16`, `int16`, `int32`, `int64`, `bool`, `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`, `string`.
		    Up to 8-D.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D. The indices of the dimensions to reverse. Must be in the range
		    `[-rank(tensor), rank(tensor))`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reverse_v2(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reverse_v2
	**/
	static public function reverse_v2_eager_fallback(tensor:Dynamic, axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Scatter `updates` into a new tensor according to `indices`.
		
		Creates a new tensor by applying sparse `updates` to individual values or
		slices within a tensor (initially zero for numeric, empty for string) of
		the given `shape` according to indices.  This operator is the inverse of the
		`tf.gather_nd` operator which extracts values or slices from a given tensor.
		
		If `indices` contains duplicates, then their updates are accumulated (summed).
		
		**WARNING**: The order in which updates are applied is nondeterministic, so the
		output will be nondeterministic if `indices` contains duplicates -- because
		of some numerical approximation issues, numbers summed in different order
		may yield different results.
		
		`indices` is an integer tensor containing indices into a new tensor of shape
		`shape`.  The last dimension of `indices` can be at most the rank of `shape`:
		
		    indices.shape[-1] <= shape.rank
		
		The last dimension of `indices` corresponds to indices into elements
		(if `indices.shape[-1] = shape.rank`) or slices
		(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
		`shape`.  `updates` is a tensor with shape
		
		    indices.shape[:-1] + shape[indices.shape[-1]:]
		
		The simplest form of scatter is to insert individual elements in a tensor by
		index. For example, say we want to insert 4 scattered elements in a rank-1
		tensor with 8 elements.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterNd1.png" alt>
		</div>
		
		In Python, this scatter operation would look like this:
		
		```python
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    shape = tf.constant([8])
		    scatter = tf.scatter_nd(indices, updates, shape)
		    with tf.Session() as sess:
		      print(sess.run(scatter))
		```
		
		The resulting tensor would look like this:
		
		    [0, 11, 0, 10, 9, 0, 0, 12]
		
		We can also, insert entire slices of a higher rank tensor all at once. For
		example, if we wanted to insert two slices in the first dimension of a
		rank-3 tensor with two matrices of new values.
		
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
		    with tf.Session() as sess:
		      print(sess.run(scatter))
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
		    Index tensor.
		  updates: A `Tensor`. Updates to scatter into output.
		  shape: A `Tensor`. Must have the same type as `indices`.
		    1-D. The shape of the resulting tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `updates`.
	**/
	static public function scatter_nd(indices:Dynamic, updates:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function scatter_nd
	**/
	static public function scatter_nd_eager_fallback(indices:Dynamic, updates:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function scatter_nd_non_aliasing_add
	**/
	static public function scatter_nd_non_aliasing_add_eager_fallback(input:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function shape(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function shape
	**/
	static public function shape_eager_fallback(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function shape_n(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function shape_n
	**/
	static public function shape_n_eager_fallback(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function size(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function size
	**/
	static public function size_eager_fallback(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a copy of the input tensor.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function snapshot(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function snapshot
	**/
	static public function snapshot_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		This is a legacy version of the more general SpaceToBatchND.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		      the padding of the input with zeros across the spatial dimensions as follows:
		
		          paddings = [[pad_top, pad_bottom], [pad_left, pad_right]]
		
		      The effective spatial dimensions of the zero-padded input tensor will be:
		
		          height_pad = pad_top + height + pad_bottom
		          width_pad = pad_left + width + pad_right
		
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
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
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
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, paddings:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function space_to_batch
	**/
	static public function space_to_batch_eager_fallback(input:Dynamic, paddings:Dynamic, block_size:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		SpaceToBatch for N-D tensors of type T.
		
		This operation divides "spatial" dimensions `[1, ..., M]` of the input into a
		grid of blocks of shape `block_shape`, and interleaves these blocks with the
		"batch" dimension (0) such that in the output, the spatial dimensions
		`[1, ..., M]` correspond to the position within the grid, and the batch
		dimension combines both the position within a spatial block and the original
		batch position.  Prior to division into blocks, the spatial dimensions of the
		input are optionally zero padded according to `paddings`.  See below for a
		precise description.
		
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
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch_nd(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function space_to_batch_nd
	**/
	static public function space_to_batch_nd_eager_fallback(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function space_to_depth(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function space_to_depth
	**/
	static public function space_to_depth_eager_fallback(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function split(axis:Dynamic, value:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function split
	**/
	static public function split_eager_fallback(axis:Dynamic, value:Dynamic, num_split:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function split_v
	**/
	static public function split_v_eager_fallback(value:Dynamic, size_splits:Dynamic, axis:Dynamic, num_split:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function squeeze(input:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function squeeze
	**/
	static public function squeeze_eager_fallback(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		to pretend that the value was a constant. Some examples include:
		
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
		This is the slowpath function for Eager mode.
		This is for function stop_gradient
	**/
	static public function stop_gradient_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		begin_mask = 1<<4 | 1 << 5 = 48
		end_mask = 1<<5 = 32
		ellipsis_mask = 1<<3 = 8
		new_axis_mask = 1<<2 4
		shrink_axis_mask = 1<<0
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
	static public function strided_slice(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assign `value` to the sliced l-value reference of `ref`.
		
		The values of `value` are assigned to the positions in the variable
		`ref` that are selected by the slice parameters. The slice parameters
		`begin, `end`, `strides`, etc. work exactly as in `StridedSlice`.
		
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
	/**
		This is the slowpath function for Eager mode.
		This is for function strided_slice
	**/
	static public function strided_slice_eager_fallback(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function strided_slice_grad
	**/
	static public function strided_slice_grad_eager_fallback(shape:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, dy:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Constructs a tensor by tiling a given tensor.
		
		This operation creates a new tensor by replicating `input` `multiples` times.
		The output tensor's i'th dimension has `input.dims(i) * multiples[i]` elements,
		and the values of `input` are replicated `multiples[i]` times along the 'i'th
		dimension. For example, tiling `[a b c d]` by `[2]` produces
		`[a b c d a b c d]`.
		
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
		This is the slowpath function for Eager mode.
		This is for function tile
	**/
	static public function tile_eager_fallback(input:Dynamic, multiples:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function tile_grad
	**/
	static public function tile_grad_eager_fallback(input:Dynamic, multiples:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function transpose(x:Dynamic, perm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function transpose
	**/
	static public function transpose_eager_fallback(x:Dynamic, perm:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
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
		This is the slowpath function for Eager mode.
		This is for function unique
	**/
	static public function unique_eager_fallback(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function unique_v2
	**/
	static public function unique_v2_eager_fallback(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function unique_with_counts
	**/
	static public function unique_with_counts_eager_fallback(x:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx, count = unique_with_counts(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		For an `2-D` tensor `x` with `axis = 0`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx, count = unique_with_counts(x, axis=0)
		y ==> [[1, 0, 0],
		       [2, 0, 0]]
		idx ==> [0, 0, 1]
		count ==> [2, 1]
		```
		
		For an `2-D` tensor `x` with `axis = 1`:
		
		```
		# tensor 'x' is [[1, 0, 0],
		#                [1, 0, 0],
		#                [2, 0, 0]]
		y, idx, count = unique_with_counts(x, axis=1)
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
	/**
		This is the slowpath function for Eager mode.
		This is for function unique_with_counts_v2
	**/
	static public function unique_with_counts_v2_eager_fallback(x:Dynamic, axis:Dynamic, ?out_idx:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function unpack
	**/
	static public function unpack_eager_fallback(value:Dynamic, num:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts a flat index or array of flat indices into a tuple of
		
		coordinate arrays.
		
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
		This is the slowpath function for Eager mode.
		This is for function unravel_index
	**/
	static public function unravel_index_eager_fallback(indices:Dynamic, dims:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function upper_bound
	**/
	static public function upper_bound_eager_fallback(sorted_inputs:Dynamic, values:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	static public function where(condition:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function where
	**/
	static public function where_eager_fallback(condition:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns a tensor of zeros with the same shape and type as x.
		
		Args:
		  x: A `Tensor`. a tensor of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function zeros_like(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function zeros_like
	**/
	static public function zeros_like_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}