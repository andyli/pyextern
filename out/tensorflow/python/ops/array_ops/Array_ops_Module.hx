/* This file is generated, do not edit! */
package tensorflow.python.ops.array_ops;
@:pythonImport("tensorflow.python.ops.array_ops") extern class Array_ops_Module {
	static public var NEW_AXIS : Dynamic;
	static public var SHRINK_AXIS : Dynamic;
	/**
		Shape function for array_ops.batch_matrix_diag_part.
	**/
	static public function _BatchMatrixDiagPartShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.batch_matrix_diag.
	**/
	static public function _BatchMatrixDiagShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.batch_matrix_set_diag.
	**/
	static public function _BatchMatrixSetDiagShape(op:Dynamic):Dynamic;
	/**
		Shape function for the BatchToSpace op.
		
		The output shape is determined by the following inputs/ attributes:
		
		* input: A rank-4 tensor with shape
		
		      [B*block_size*block_size, Hp/block_size, Wp/block_size, D]
		
		  Note that the batch size of the input tensor must be divisible by
		  `block_size * block_size`.
		* crops: A 2-by-2 matrix, specified as follows:
		
		      crops = [[crop_top, crop_bottom], [crop_left, crop_right]].
		
		* block_size: an int.
		
		Its output is also a rank-4 tensor with shape [B, H, W, D], where:
		
		    H = Hp - crop_top - crop_bottom
		    W = Wp - crop_left - crop_right
		
		Args:
		  op: A BatchToSpace op.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the shapes of the inputs are not as expected.
		  IndexError: If block_size*block_size does not divide the input batch size.
	**/
	static public function _BatchToSpaceShape(op:Dynamic):Dynamic;
	/**
		Shape function for Bitcast op.
	**/
	static public function _BitcastShape(op:Dynamic):Dynamic;
	/**
		Shape function for the BroadcastGradientArgs op.
	**/
	static public function _BroadcastGradientArgsShape(op:Dynamic):Dynamic;
	static public function _ConcatOffsetShape(op:Dynamic):Dynamic;
	static public function _ConcatShape(op:Dynamic):Dynamic;
	/**
		Shape function for the DepthToSpace op.
		
		This op takes two inputs:
		
		* input: a tensor of shape like that [B, H, W, D]
		* block_size: an int.
		
		Its output is the same-rank tensor but with changed
		dimensions like that:
		    [B, H*block_size, W*block_size, D/(block_size*block_size)]
		
		Args:
		  op: A DepthToSpace op.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the shapes of input are not as expected.
		  IndexError: If block_size*block_size does not divide D.
	**/
	static public function _DepthToSpaceShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.diag_part.
		
		This op has one input (of rank k = 2, 4, or 6), and one output (of rank k/2),
		where the shape of the output is the diagonal of the input shape.
		
		Args:
		  op: A DiagPart Operation.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If input has odd rank or greater than 6, or the first and
		  second halves of the shape are incompatible.
	**/
	static public function _DiagPartShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.diag.
		
		This op has one input (of rank k <= 3), and one output (of rank 2k),
		where the shape of the output is the concatenation of the input
		shape with itself.
		
		Args:
		  op: A Diag Operation.
		
		Returns:
		  A single-element list containing the shape of the output.
	**/
	static public function _DiagShape(op:Dynamic):Dynamic;
	/**
		Shape function for the EditDistance op.
	**/
	static public function _EditDistanceShape(op:Dynamic):Dynamic;
	/**
		Determine shape for expand op's output tensor.
		
		Args:
		  op: Operation for which to determine shape.
		      op.inputs[0] is the input tensor.
		      op.inputs[1] is the dimension in which to expand.
		Returns:
		  Shape of op's output tensor.
		Raises:
		  ValueError: If dim is outside of [-rank - 1, rank], where rank is the number
		      of dimensions in the input tensor.
	**/
	static public function _ExpandDimsShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ExtractImagePatches op.
		
		Args:
		  op: An ExtractImagePatches op.
		
		Raises:
		  ValueError: If the strides or padding are invalid.
		
		Returns:
		  The shape of the op output.
	**/
	static public function _ExtractImagePatchesShape(op:Dynamic):Dynamic;
	/**
		Shape function for the Fill op.
		
		This op takes a vector of dimensions and a scalar, and produces a
		tensor with the given dimensions.
		
		Args:
		  op: A Fill Operation.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the shapes or arguments are known to be invalid.
	**/
	static public function _FillShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.gather_nd.
	**/
	static public function _GatherNdShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.gather.
	**/
	static public function _GatherShape(op:Dynamic):Dynamic;
	/**
		Shape function for the InvertPermutation op.
	**/
	static public function _InvertPermutationShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ListDiff op.
	**/
	static public function _ListDiffShape(op:Dynamic):Dynamic;
	/**
		Shape function for the MirrorPadGrad op.
	**/
	static public function _MirrorPadGradShape(op:Dynamic):Dynamic;
	/**
		Shape function for the OneHot op.
		
		It closely follows the code in the .cc implementation.
		
		Args:
		  op: A OneHot Operation.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: if axis < -1.
	**/
	static public function _OneHotShape(op:Dynamic):Dynamic;
	static public function _PackShape(op:Dynamic):Dynamic;
	/**
		Shape function for the Pad op.
		
		This op has two inputs:
		
		* input: A rank-N tensor.
		* paddings: An N-by-2 matrix, in which the i^th row contains the
		  number of padding elements to add before and after `input` in the
		  i^th dimension.
		
		It has one output, which has the same rank as input, and additional
		elements according to the values in paddings.
		
		Args:
		  op: A Pad Operation.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the input shapes are incompatible.
	**/
	static public function _PadShape(op:Dynamic):Dynamic;
	static public function _PlaceholderShape(op:Dynamic):Dynamic;
	/**
		Shape function for the PlaceholderWithDefault op.
		
		This op acts as an identity when it is not fed (passing through a
		default value), but allows the user to feed it with tensors of a
		possibly less precise shape than its default value.
		
		Args:
		  op: A PlaceholderWithDefault `Operation`.
		
		Returns:
		  A single-element list containing the shape of the output.
	**/
	static public function _PlaceholderWithDefaultShape(op:Dynamic):Dynamic;
	static public function _QuantizeDequantizeShape(op:Dynamic):Dynamic;
	/**
		Shape function for Reshape op.
	**/
	static public function _ReshapeShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ReverseSequence op.
		
		This op has two inputs:
		
		* input: A rank-N tensor with size B in the 0th dimension.
		* seq_lens: A vector of length B.
		
		It has one output, with the same size as input.
		
		Args:
		  op: A ReverseSequence Operation.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the input shapes are incompatible or seq_dim == batch_dim.
	**/
	static public function _ReverseSequenceShape(op:Dynamic):Dynamic;
	static public function _ReverseShape(op:Dynamic):Dynamic;
	static public function _ScalarShape(unused_op:Dynamic):Dynamic;
	/**
		Shape function for the Shape/ShapeN op.
	**/
	static public function _ShapeNShape(op:Dynamic):Dynamic;
	/**
		Overload for Tensor.__getitem__.
		
		This operation extracts the specified region from the tensor.
		The notation is similar to numpy with the restriction that
		currently only support basic indexing. That means that
		using a tensor as input is not currently allowed
		
		Args:
		  tensor: An ops.Tensor object.
		  slice_spec: The arguments to Tensor.__getitem__.
		
		Returns:
		  The appropriate slice of "tensor", based on "slice_spec".
		
		Raises:
		  ValueError: If a slice range is negative size.
		  TypeError: If the slice indices aren't int, slice, or Ellipsis.
	**/
	static public function _SliceHelper(tensor:Dynamic, slice_spec:Dynamic):Dynamic;
	/**
		Shape function for array_ops.slice.
	**/
	static public function _SliceShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SpaceToBatch op.
		
		The output shape is determined by the following inputs/ attributes:
		
		* input: A rank-4 tensor with shape [B, H, W, D]
		* paddings: A 2-by-2 matrix, specified as follows:
		
		      paddings = [[pad_top, pad_bottom], [pad_left, pad_right]],
		
		  implying effective padded spatial dimensions:
		
		      Hp = pad_top + H + pad_bottom
		      Wp = pad_left + W + pad_right
		
		  Both Hp and Wp must be multiples of block_size.
		* block_size: an int.
		
		Its output is also a rank-4 tensor with shape:
		
		    [B*block_size*block_size, Hp/block_size, Wp/block_size, D]
		
		Args:
		  op: A SpaceToBatch op.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the shapes of inputs are not as expected.
		  IndexError: If block_size does not divide Wp or Hp.
	**/
	static public function _SpaceToBatchShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SpaceToDepth op.
		
		This op takes two inputs:
		
		* input: a tensor of shape like that [B, H, W, D]
		* block_size: an int.
		
		Its output is the same-rank tensor but with changed
		dimensions like that: [B, H/block_size, W/block_size, D*block_size*block_size]
		
		Args:
		  op: A SpaceToDepth op.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the shapes of input are not as expected.
		  IndexError: If block_size does not divide W or H.
	**/
	static public function _SpaceToDepthShape(op:Dynamic):Dynamic;
	/**
		Shape function for the Split op.
	**/
	static public function _SplitShape(op:Dynamic):Dynamic;
	/**
		Determine shape for squeeze op's output tensor.
		
		Args:
		  op: Operation for which to determine shape.
		Returns:
		  Shape of op's output tensor.
		Raises:
		  ValueError: if squeeze_dims includes a dimension outside of [-rank, rank),
		      where rank is the number of dimensions in the input tensor. Or, if
		      squeeze_dims includes a dimension for which input shape has a value
		      not equal to 1.
	**/
	static public function _SqueezeShape(op:Dynamic):Dynamic;
	/**
		Shape function for gradient of array_ops.slice.
	**/
	static public function _StridedSliceGradShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.slice.
	**/
	static public function _StridedSliceShape(op:Dynamic):Dynamic;
	/**
		Shape function for the TileGrad op.
	**/
	static public function _TileGradShape(op:Dynamic):Dynamic;
	/**
		Shape function for the Tile op.
		
		This op has two inputs:
		
		* input: A rank-N tensor.
		* multiples: A length-N vector, in which the i^th element contains
		  the factor by which `input` will be tiled in the i^th dimension.
		
		It has one output, which has the same rank as input, and additional
		elements according to the values in multiples
		
		Args:
		  op: A Tile Operation.
		
		Returns:
		  A single-element list containing the shape of the output.
	**/
	static public function _TileShape(op:Dynamic):Dynamic;
	/**
		Shape function for the Transpose op.
		
		This op takes two inputs:
		
		* input: a rank-N tensor of arbitrary shape.
		* shuffle: a length-N vector.
		
		Its output is the rank-N tensor computed by permuting the dimensions
		of input according to shuffle.
		
		Args:
		  op: A Transpose op.
		
		Returns:
		  A single-element list containing the shape of the output.
		
		Raises:
		  ValueError: If the shapes of input and shuffle are incompatible.
		  IndexError: If shuffle contains an index that is >= the rank of input.
	**/
	static public function _TransposeShape(op:Dynamic):Dynamic;
	static public function _UnchangedShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.Unique.
	**/
	static public function _UniqueShape(op:Dynamic):Dynamic;
	/**
		Shape function for array_ops.Unique.
	**/
	static public function _UniqueWithCountsShape(op:Dynamic):Dynamic;
	static public function _UnpackShape(op:Dynamic):Dynamic;
	/**
		Shape function for the Where op.
	**/
	static public function _WhereShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ZerosLike op.
	**/
	static public function _ZerosLikeShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function _compute_size_of_strided_dim(spec:Dynamic, size:Dynamic):Dynamic;
	/**
		Returns the dtype of any tensor-like object in `list_or_tuple`, if found.
		
		Args:
		  list_or_tuple: A list or tuple representing an object that can be
		    converted to a `tf.Tensor`.
		
		Returns:
		  The dtype of any tensor-like object in `list_or_tuple`, or `None` if no
		  such object exists.
	**/
	static public function _get_dtype_from_nested_lists(list_or_tuple:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Copy a tensor setting everything outside a central band in each innermost matrix
		
		to zero.
		
		The `band` part is computed as follows:
		Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
		tensor with the same shape where
		
		`band[i, j, k, ..., m, n] = in_band(m, n) * input[i, j, k, ..., m, n]`.
		
		The indicator function 'in_band(m, n)` is one if
		`(num_lower < 0 || (m-n) <= num_lower)) &&
		(num_upper < 0 || (n-m) <= num_upper)`, and zero otherwise.
		
		For example:
		
		```prettyprint
		# if 'input' is [[ 0,  1,  2, 3]
		                 [-1,  0,  1, 2]
		                 [-2, -1,  0, 1]
		                 [-3, -2, -1, 0]],
		
		tf.batch_matrix_band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
		                                             [-1,  0,  1, 2]
		                                             [ 0, -1,  0, 1]
		                                             [ 0,  0, -1, 0]],
		
		tf.batch_matrix_band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
		                                            [-1,  0,  1, 0]
		                                            [-2, -1,  0, 1]
		                                            [ 0, -2, -1, 0]]
		```
		
		Useful special cases:
		
		```prettyprint
		 tf.batch_matrix_band_part(input, 0, -1) ==> Upper triangular part.
		 tf.batch_matrix_band_part(input, -1, 0) ==> Lower triangular part.
		 tf.batch_matrix_band_part(input, 0, 0) ==> Diagonal.
		```
		
		Args:
		  input: A `Tensor`. Rank `k` tensor.
		  num_lower: A `Tensor` of type `int64`.
		    0-D tensor. Number of subdiagonals to keep. If negative, keep entire
		    lower triangle.
		  num_upper: A `Tensor` of type `int64`.
		    0-D tensor. Number of superdiagonals to keep. If negative, keep
		    entire upper triangle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Rank `k` tensor of the same shape as input. The extracted banded tensor.
	**/
	static public function batch_matrix_band_part(input:Dynamic, num_lower:Dynamic, num_upper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched diagonal tensor with a given batched diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has `k` dimensions `[I, J, K, ..., N]`, then the output is a
		tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:
		
		`output[i, j, k, ..., m, n] = 1{m=n} * diagonal[i, j, k, ..., n]`.
		
		For example:
		
		```prettyprint
		# 'diagonal' is [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		and diagonal.shape = (2, 4)
		
		tf.batch_matrix_diag(diagonal) ==> [[[1, 0, 0, 0]
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
		  Rank `k+1`, with `output.shape = diagonal.shape + [diagonal.shape[-1]]`.
	**/
	static public function batch_matrix_diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the batched diagonal part of a batched tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the batched `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has `k` dimensions `[I, J, K, ..., N, N]`, then the output is a
		tensor of rank `k - 1` with dimensions `[I, J, K, ..., N]` where:
		
		`diagonal[i, j, k, ..., n] = input[i, j, k, ..., n, n]`.
		
		The input must be at least a matrix.
		
		For example:
		
		```prettyprint
		# 'input' is [[[1, 0, 0, 0]
		               [0, 2, 0, 0]
		               [0, 0, 3, 0]
		               [0, 0, 0, 4]],
		              [[5, 0, 0, 0]
		               [0, 6, 0, 0]
		               [0, 0, 7, 0]
		               [0, 0, 0, 8]]]
		
		and input.shape = (2, 4, 4)
		
		tf.batch_matrix_diag_part(input) ==> [[1, 2, 3, 4], [5, 6, 7, 8]]
		
		which has shape (2, 4)
		```
		
		Args:
		  input: A `Tensor`.
		    Rank `k` tensor where `k >= 2` and the last two dimensions are equal.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  The extracted diagonal(s) having shape
		  `diagonal.shape = input.shape[:-1]`.
	**/
	static public function batch_matrix_diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a batched matrix tensor with new batched diagonal values.
		
		Given `input` and `diagonal`, this operation returns a tensor with the
		same shape and values as `input`, except for the diagonals of the innermost
		matrices.  These will be overwritten by the values in `diagonal`.
		The batched matrices must be square.
		
		The output is computed as follows:
		
		Assume `input` has `k+1` dimensions `[I, J, K, ..., N, N]` and `diagonal` has
		`k` dimensions `[I, J, K, ..., N]`.  Then the output is a
		tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:
		
		  * `output[i, j, k, ..., m, n] = diagonal[i, j, k, ..., n]` for `m == n`.
		  * `output[i, j, k, ..., m, n] = input[i, j, k, ..., m, n]` for `m != n`.
		
		Args:
		  input: A `Tensor`. Rank `k+1`, where `k >= 1`.
		  diagonal: A `Tensor`. Must have the same type as `input`.
		    Rank `k`, where `k >= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Rank `k+1`, with `output.shape = input.shape`.
	**/
	static public function batch_matrix_set_diag(input:Dynamic, diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes last two dimensions of batch matrix `a`.
		
		For example:
		
		```python
		# Matrix with no batch dimension.
		# 'x' is [[1 2 3]
		#         [4 5 6]]
		tf.batch_matrixtranspose(x) ==> [[1 4]
		                                 [2 5]
		                                 [3 6]]
		
		# Matrix with two batch dimensions.
		# x.shape is [1, 2, 3, 4]
		# tf.batch_matrix_transpose(x) is shape [1, 2, 4, 3]
		```
		
		Args:
		  a: A `Tensor` with `rank >= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A transposed batch matrix `Tensor`.
		
		Raises:
		  ValueError:  If `a` is determined statically to have `rank < 2`.
	**/
	static public function batch_matrix_transpose(a:Dynamic, ?name:Dynamic):Dynamic;
	/**
		BatchToSpace for 4-D tensors of type T.
		
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
		  crops: A `Tensor` of type `int32`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		    how many elements to crop from the intermediate result across the spatial
		    dimensions as follows:
		
		        crops = [[crop_top, crop_bottom], [crop_left, crop_right]]
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  4-D with shape `[batch, height, width, depth]`, where:
		
		        height = height_pad - crop_top - crop_bottom
		        width = width_pad - crop_left - crop_right
		
		  The attr `block_size` must be greater than one. It indicates the block size.
		
		  Some examples:
		
		  (1) For the following input of shape `[4, 1, 1, 1]` and block_size of 2:
		
		  ```prettyprint
		  [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		  ```
		
		  The output tensor has shape `[1, 2, 2, 1]` and value:
		
		  ```prettyprint
		  x = [[[[1], [2]], [[3], [4]]]]
		  ```
		
		  (2) For the following input of shape `[4, 1, 1, 3]` and block_size of 2:
		
		  ```prettyprint
		  [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		  ```
		
		  The output tensor has shape `[1, 2, 2, 3]` and value:
		
		  ```prettyprint
		  x = [[[[1, 2, 3], [4, 5, 6]],
		        [[7, 8, 9], [10, 11, 12]]]]
		  ```
		
		  (3) For the following input of shape `[4, 2, 2, 1]` and block_size of 2:
		
		  ```prettyprint
		  x = [[[[1], [3]], [[5], [7]]],
		       [[[2], [4]], [[10], [12]]],
		       [[[5], [7]], [[13], [15]]],
		       [[[6], [8]], [[14], [16]]]]
		  ```
		
		  The output tensor has shape `[1, 4, 4, 1]` and value:
		
		  ```prettyprint
		  x = [[[1],   [2],  [3],  [4]],
		       [[5],   [6],  [7],  [8]],
		       [[9],  [10], [11],  [12]],
		       [[13], [14], [15],  [16]]]
		  ```
		
		  (4) For the following input of shape `[8, 1, 2, 1]` and block_size of 2:
		
		  ```prettyprint
		  x = [[[[1], [3]]], [[[9], [11]]], [[[2], [4]]], [[[10], [12]]],
		       [[[5], [7]]], [[[13], [15]]], [[[6], [8]]], [[[14], [16]]]]
		  ```
		
		  The output tensor has shape `[2, 2, 4, 1]` and value:
		
		  ```prettyprint
		  x = [[[[1], [3]], [[5], [7]]],
		       [[[2], [4]], [[10], [12]]],
		       [[[5], [7]], [[13], [15]]],
		       [[[6], [8]], [[14], [16]]]]
		  ```
	**/
	static public function batch_to_space(input:Dynamic, crops:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  type: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `type`.
	**/
	static public function bitcast(input:Dynamic, type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Apply boolean mask to tensor.  Numpy equivalent is `tensor[mask]`.
		
		```python
		# 1-D example
		tensor = [0, 1, 2, 3]
		mask = [True, False, True, False]
		boolean_mask(tensor, mask) ==> [0, 2]
		```
		
		In general, `0 < dim(mask) = K <= dim(tensor)`, and `mask`'s shape must match
		the first K dimensions of `tensor`'s shape.  We then have:
		  `boolean_mask(tensor, mask)[i, j1,...,jd] = tensor[i1,...,iK,j1,...,jd]`
		where `(i1,...,iK)` is the ith `True` entry of `mask` (row-major order).
		
		Args:
		  tensor:  N-D tensor.
		  mask:  K-D boolean tensor, K <= N and K must be known statically.
		  name:  A name for this operation (optional).
		
		Returns:
		  Tensor populated by entries in `tensor` corresponding to `True` values in
		    `mask`.
		
		Raises:
		  ValueError:  If shapes do not conform.
		
		Examples:
		
		```python
		# 2-D example
		tensor = [[1, 2], [3, 4], [5, 6]]
		mask = [True, False, True]
		boolean_mask(tensor, mask) ==> [[1, 2], [5, 6]]
		```
	**/
	static public function boolean_mask(tensor:Dynamic, mask:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks a tensor for NaN and Inf values.
		
		When run, reports an `InvalidArgument` error if `tensor` has any values
		that are not a number (NaN) or infinity (Inf). Otherwise, passes `tensor` as-is.
		
		Args:
		  tensor: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  message: A `string`. Prefix of the error message.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function check_numerics(tensor:Dynamic, message:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Concatenates the list of tensors `values` along dimension `concat_dim`.  If
		`values[i].shape = [D0, D1, ... Dconcat_dim(i), ...Dn]`, the concatenated
		result has shape
		
		    [D0, D1, ... Rconcat_dim, ...Dn]
		
		where
		
		    Rconcat_dim = sum(Dconcat_dim(i))
		
		That is, the data from the input tensors is joined along the `concat_dim`
		dimension.
		
		The number of dimensions of the input tensors must match, and all dimensions
		except `concat_dim` must be equal.
		
		For example:
		
		```python
		t1 = [[1, 2, 3], [4, 5, 6]]
		t2 = [[7, 8, 9], [10, 11, 12]]
		tf.concat(0, [t1, t2]) ==> [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
		tf.concat(1, [t1, t2]) ==> [[1, 2, 3, 7, 8, 9], [4, 5, 6, 10, 11, 12]]
		
		# tensor t3 with shape [2, 3]
		# tensor t4 with shape [2, 3]
		tf.shape(tf.concat(0, [t3, t4])) ==> [4, 3]
		tf.shape(tf.concat(1, [t3, t4])) ==> [2, 6]
		```
		
		Note: If you are concatenating along a new axis consider using pack.
		E.g.
		
		```python
		tf.concat(axis, [tf.expand_dims(t, axis) for t in tensors])
		```
		
		can be rewritten as
		
		```python
		tf.pack(tensors, axis=axis)
		```
		
		Args:
		  concat_dim: 0-D `int32` `Tensor`.  Dimension along which to concatenate.
		  values: A list of `Tensor` objects or a single `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` resulting from concatenation of the input tensors.
	**/
	static public function concat(concat_dim:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a constant tensor.
		
		 The resulting tensor is populated with values of type `dtype`, as
		 specified by arguments `value` and (optionally) `shape` (see examples
		 below).
		
		 The argument `value` can be a constant value, or a list of values of type
		 `dtype`. If `value` is a list, then the length of the list must be less
		 than or equal to the number of elements implied by the `shape` argument (if
		 specified). In the case where the list length is less than the number of
		 elements specified by `shape`, the last element in the list will be used
		 to fill the remaining entries.
		
		 The argument `shape` is optional. If present, it specifies the dimensions of
		 the resulting tensor. If not present, the shape of `value` is used.
		
		 If the argument `dtype` is not specified, then the type is inferred from
		 the type of `value`.
		
		 For example:
		
		 ```python
		 # Constant 1-D Tensor populated with value list.
		 tensor = tf.constant([1, 2, 3, 4, 5, 6, 7]) => [1 2 3 4 5 6 7]
		
		 # Constant 2-D tensor populated with scalar value -1.
		 tensor = tf.constant(-1.0, shape=[2, 3]) => [[-1. -1. -1.]
		                                              [-1. -1. -1.]]
		 ```
		
		Args:
		  value:     A constant value (or list) of output type `dtype`.
		
		  dtype:     The type of the elements of the resulting tensor.
		
		  shape:     Optional dimensions of resulting tensor.
		
		  name:      Optional name for the tensor.
		
		Returns:
		  A Constant Tensor.
	**/
	static public function constant(value:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy Op.
		
		Performs CPU-to-CPU or GPU-to-GPU deep-copying of tensor, depending on the
		device on which the tensor is allocated.
		
		Unlike the CopyHost Op, this op does not have HostMemory constraint on its
		input or output.
		
		Args:
		  input: A `Tensor`. Input tensor.
		  tensor_name: An optional `string`. Defaults to `""`.
		    The name of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Output tensor, deep-copied from input.
	**/
	static public function copy(input:Dynamic, ?tensor_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Copy Host Op.
		
		Performs CPU-to-CPU deep-copying of tensor.
		
		Unlike the Copy Op, this op has HostMemory constraint on its input or output.
		
		Args:
		  input: A `Tensor`. Input tensor.
		  tensor_name: An optional `string`. Defaults to `""`.
		    The name of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Output tensor, deep-copied from input.
	**/
	static public function copy_host(input:Dynamic, ?tensor_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Debug Identity Op.
		
		Provides an identity mapping of the non-Ref type input tensor for debugging.
		
		Args:
		  input: A `Tensor`. Input tensor, non-Reference type.
		  tensor_name: An optional `string`. Defaults to `""`.
		    Name of the input tensor.
		  debug_urls: An optional list of `strings`. Defaults to `[]`.
		    List of URLs to debug targets, e.g.,
		    file:///foo/tfdbg_dump, grpc:://localhost:11011
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Output tensor that equals the input tensor.
	**/
	static public function debug_identity(input:Dynamic, ?tensor_name:Dynamic, ?debug_urls:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Debug NaN Value Counter Op
		
		Counts number of NaNs in the input tensor, for debugging.
		
		Args:
		  input: A `Tensor`. Input tensor, non-Reference type.
		  tensor_name: An optional `string`. Defaults to `""`.
		    Name of the input tensor.
		  debug_urls: An optional list of `strings`. Defaults to `[]`.
		    List of URLs to debug targets, e.g.,
		    file:///foo/tfdbg_dump, grpc:://localhost:11011
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  An integer output tensor that is the number of NaNs in the input.
	**/
	static public function debug_nan_count(input:Dynamic, ?tensor_name:Dynamic, ?debug_urls:Dynamic, ?name:Dynamic):Dynamic;
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
		  * The depth of the input tensor must be divisible by
		    `block_size * block_size`.
		
		That is, assuming the input is in the shape:
		`[batch, height, width, depth]`,
		the shape of the output will be:
		`[batch, height*block_size, width*block_size, depth/(block_size*block_size)]`
		
		This operation requires that the input tensor be of rank 4, and that
		`block_size` be >=1 and that `block_size * block_size` be a divisor of the
		input depth.
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given this input of shape `[1, 1, 1, 4]`, and a block size of 2:
		
		```prettyprint
		x = [[[[1, 2, 3, 4]]]]
		
		```
		
		This operation will output a tensor of shape `[1, 2, 2, 1]`:
		
		```prettyprint
		   [[[[1], [2]],
		     [[3], [4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
		the corresponding output will have 2x2 elements and will have a depth of
		1 channel (1 = `4 / (block_size * block_size)`).
		The output element shape is `[2, 2, 1]`.
		
		For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.
		
		```prettyprint
		x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		This operation, for block size of 2, will return the following tensor of shape
		`[1, 2, 2, 3]`
		
		```prettyprint
		   [[[[1, 2, 3], [4, 5, 6]],
		     [[7, 8, 9], [10, 11, 12]]]]
		
		```
		
		Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:
		
		```prettyprint
		x =  [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		the operator will return the following tensor of shape `[1 4 4 1]`:
		
		```prettyprint
		x = [[ [1],   [2],  [5],  [6]],
		     [ [3],   [4],  [7],  [8]],
		     [ [9],  [10], [13],  [14]],
		     [ [11], [12], [15],  [16]]]
		
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`.
		    The size of the spatial block, same as in Space2Depth.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depth_to_space(input:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a diagonal tensor with a given diagonal values.
		
		Given a `diagonal`, this operation returns a tensor with the `diagonal` and
		everything else padded with zeros. The diagonal is computed as follows:
		
		Assume `diagonal` has dimensions [D1,..., Dk], then the output is a tensor of
		rank 2k with dimensions [D1,..., Dk, D1,..., Dk] where:
		
		`output[i1,..., ik, i1,..., ik] = diagonal[i1, ..., ik]` and 0 everywhere else.
		
		For example:
		
		```prettyprint
		# 'diagonal' is [1, 2, 3, 4]
		tf.diag(diagonal) ==> [[1, 0, 0, 0]
		                       [0, 2, 0, 0]
		                       [0, 0, 3, 0]
		                       [0, 0, 0, 4]]
		```
		
		Args:
		  diagonal: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `complex64`.
		    Rank k tensor where k is at most 3.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `diagonal`.
	**/
	static public function diag(diagonal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the diagonal part of the tensor.
		
		This operation returns a tensor with the `diagonal` part
		of the `input`. The `diagonal` part is computed as follows:
		
		Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
		tensor of rank `k` with dimensions `[D1,..., Dk]` where:
		
		`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.
		
		For example:
		
		```prettyprint
		# 'input' is [[1, 0, 0, 0]
		              [0, 2, 0, 0]
		              [0, 0, 3, 0]
		              [0, 0, 0, 4]]
		
		tf.diag_part(input) ==> [1, 2, 3, 4]
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `complex64`.
		    Rank k tensor where k is 2, 4, or 6.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. The extracted diagonal.
	**/
	static public function diag_part(input:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes the Levenshtein distance between sequences.
		
		This operation takes variable-length sequences (`hypothesis` and `truth`),
		each provided as a `SparseTensor`, and computes the Levenshtein distance.
		You can normalize the edit distance by length of `truth` by setting
		`normalize` to true.
		
		For example, given the following input:
		
		```python
		# 'hypothesis' is a tensor of shape `[2, 1]` with variable-length values:
		#   (0,0) = ["a"]
		#   (1,0) = ["b"]
		hypothesis = tf.SparseTensor(
		    [[0, 0, 0],
		     [1, 0, 0]],
		    ["a", "b"]
		    (2, 1, 1))
		
		# 'truth' is a tensor of shape `[2, 2]` with variable-length values:
		#   (0,0) = []
		#   (0,1) = ["a"]
		#   (1,0) = ["b", "c"]
		#   (1,1) = ["a"]
		truth = tf.SparseTensor(
		    [[0, 1, 0],
		     [1, 0, 0],
		     [1, 0, 1],
		     [1, 1, 0]]
		    ["a", "b", "c", "a"],
		    (2, 2, 2))
		
		normalize = True
		```
		
		This operation would return the following:
		
		```python
		# 'output' is a tensor of shape `[2, 2]` with edit distances normalized
		# by 'truth' lengths.
		output ==> [[inf, 1.0],  # (0,0): no truth, (0,1): no hypothesis
		           [0.5, 1.0]]  # (1,0): addition, (1,1): no hypothesis
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
		Inserts a dimension of 1 into a tensor's shape.
		
		Given a tensor `input`, this operation inserts a dimension of 1 at the
		dimension index `dim` of `input`'s shape. The dimension index `dim` starts at
		zero; if you specify a negative number for `dim` it is counted backward from
		the end.
		
		This operation is useful if you want to add a batch dimension to a single
		element. For example, if you have a single image of shape `[height, width,
		channels]`, you can make it a batch of 1 image with `expand_dims(image, 0)`,
		which will make the shape `[1, height, width, channels]`.
		
		Other examples:
		
		```prettyprint
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
		  dim: A `Tensor` of type `int32`.
		    0-D (scalar). Specifies the dimension index at which to
		    expand the shape of `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Contains the same data as `input`, but its shape has an additional
		  dimension of size 1 added.
	**/
	static public function expand_dims(input:Dynamic, dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract `patches` from `images` and put them in the "depth" output dimension.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
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
		    `patch_sizes_eff = patch_sizes + (patch_sizes - 1) * (rates - 1), followed by
		    subsampling them spatially by a factor of `rates`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		
		    We specify the size-related attributes as:
		
		          ksizes = [1, ksize_rows, ksize_cols, 1]
		          strides = [1, strides_rows, strides_cols, 1]
		          rates = [1, rates_rows, rates_cols, 1]
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		  4-D Tensor with shape `[batch, out_rows, out_cols, ksize_rows *
		  ksize_cols * depth]` containing image patches with size
		  `ksize_rows x ksize_cols x depth` vectorized in the "depth" dimension.
	**/
	static public function extract_image_patches(images:Dynamic, ksizes:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor filled with a scalar value.
		
		This operation creates a tensor of shape `dims` and fills it with `value`.
		
		For example:
		
		```prettyprint
		# Output tensor has shape [2, 3].
		fill([2, 3], 9) ==> [[9, 9, 9]
		                     [9, 9, 9]]
		```
		
		Args:
		  dims: A `Tensor` of type `int32`.
		    1-D. Represents the shape of the output tensor.
		  value: A `Tensor`. 0-D (scalar). Value to fill the returned tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
	**/
	static public function fill(dims:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `indices.shape + params.shape[1:]` where:
		
		    # Scalar indices
		    output[:, ..., :] = params[indices, :, ... :]
		
		    # Vector indices
		    output[i, :, ..., :] = params[indices[i], :, ... :]
		
		    # Higher rank indices
		    output[i, ..., j, :, ... :] = params[indices[i, ..., j], :, ..., :]
		
		If `indices` is a permutation and `len(indices) == params.shape[0]` then
		this operation will permute `params` accordingly.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/Gather.png" alt>
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
		Gather values or slices from `params` according to `indices`.
		
		`params` is a Tensor of rank `R` and `indices` is a Tensor of rank `M`.
		
		`indices` must be integer tensor, containing indices into `params`.
		It must be shape `[d_0, ..., d_N, R]` where `0 < R <= M`.
		
		The innermost dimension of `indices` (with length `R`) corresponds to
		indices into elements (if `R = M`) or slices (if `R < M`) along the `N`th
		dimension of `params`.
		
		Produces an output tensor with shape
		
		    [d_0, ..., d_{n-1}, params.shape[R], ..., params.shape[M-1]].
		
		Some examples below.
		
		Simple indexing into a matrix:
		
		    indices = [[0, 0], [1, 1]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = ['a', 'd']
		
		Slice indexing into a matrix:
		
		    indices = [[1], [0]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['c', 'd'], ['a', 'b']]
		
		Indexing into a 3-tensor:
		
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
		
		Batched indexing into a matrix:
		
		    indices = [[[0, 0]], [[0, 1]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [['a'], ['b']]
		
		Batched slice indexing into a matrix:
		
		    indices = [[[1]], [[0]]]
		    params = [['a', 'b'], ['c', 'd']]
		    output = [[['c', 'd']], [['a', 'b']]]
		
		Batched indexing into a 3-tensor:
		
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
		
		Args:
		  params: A `Tensor`. `M-D`.  The tensor from which to gather values.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    `(N+1)-D`.  Index tensor having shape `[d_0, ..., d_N, R]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `params`.
		  `(N+M-R)-D`.  Values from `params` gathered from indices given by
		  `indices`.
	**/
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
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
		Computes the inverse permutation of a tensor.
		
		This operation computes the inverse of an index permutation. It takes a 1-D
		integer tensor `x`, which represents the indices of a zero-based array, and
		swaps each value with its index position. In other words, for an output tensor
		`y` and an input tensor `x`, this operation computes the following:
		
		`y[x[i]] = i for i in [0, 1, ..., len(x) - 1]`
		
		The values must include 0. There can be no duplicate values or negative values.
		
		For example:
		
		```prettyprint
		# tensor `x` is [3, 4, 0, 2, 1]
		invert_permutation(x) ==> [2, 4, 3, 0, 1]
		```
		
		Args:
		  x: A `Tensor` of type `int32`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. 1-D.
	**/
	static public function invert_permutation(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```prettyprint
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```prettyprint
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		  out: A `Tensor`. Has the same type as `x`. 1-D. Values present in `x` but not in `y`.
		  idx: A `Tensor` of type `int32`. 1-D. Positions of `x` values preserved in `out`.
	**/
	static public function list_diff(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the difference between two lists of numbers or strings.
		
		Given a list `x` and a list `y`, this operation returns a list `out` that
		represents all values that are in `x` but not in `y`. The returned list `out`
		is sorted in the same order that the numbers appear in `x` (duplicates are
		preserved). This operation also returns a list `idx` that represents the
		position of each `out` element in `x`. In other words:
		
		`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`
		
		For example, given this input:
		
		```prettyprint
		x = [1, 2, 3, 4, 5, 6]
		y = [1, 3, 5]
		```
		
		This operation would return:
		
		```prettyprint
		out ==> [2, 4, 6]
		idx ==> [1, 3, 5]
		```
		
		Args:
		  x: A `Tensor`. 1-D. Values to keep.
		  y: A `Tensor`. Must have the same type as `x`. 1-D. Values to remove.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out, idx).
		  out: A `Tensor`. Has the same type as `x`. 1-D. Values present in `x` but not in `y`.
		  idx: A `Tensor` of type `int32`. 1-D. Positions of `x` values preserved in `out`.
	**/
	static public function listdiff(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
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
		```prettyprint
		  x = [1, 2, 3]
		  y = [4, 5, 6]
		```
		results in
		```prettyprint
		  X = [[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]]
		  Y = [[4, 5, 6],
		       [4, 5, 6],
		       [4, 5, 6]]
		```
		
		Args:
		  *args: `Tensor`s with rank 1
		  indexing: Either 'xy' or 'ij' (optional, default: 'xy')
		  name: A name for the operation (optional).
		
		Returns:
		  outputs: A list of N `Tensor`s with rank N
	**/
	static public function meshgrid(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Returns a one-hot tensor.
		
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
		
		If `dtype` is not provided, it will attempt to assume the data type of
		`on_value` or `off_value`, if one or both are passed in. If none of
		`on_value`, `off_value`, or `dtype` are provided, `dtype` will default to the
		value `tf.float32`
		
		Note: If a non-numeric data type output is desired (tf.string, tf.bool, etc.),
		both `on_value` and `off_value` _must_ be provided to `one_hot`
		
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
		
		Using default values for `on_value` and `off_value`:
		
		```
		  indices = [0, 1, 2]
		  depth = 3
		```
		
		The output will be
		
		```
		  output =
		  [[1., 0., 0.],
		   [0., 1., 0.],
		   [0., 0., 1.]]
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
		
		Returns:
		  output: The one-hot tensor.
		
		Raises:
		  TypeError: If dtype of either `on_value` or `off_value` don't match `dtype`
		  TypeError: If dtype of `on_value` and `off_value` don't match one another
	**/
	static public function one_hot(indices:Dynamic, depth:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to 1.
		
		This operation returns a tensor of type `dtype` with shape `shape` and all
		elements set to 1.
		
		For example:
		
		```python
		tf.ones([2, 3], int32) ==> [[1, 1, 1], [1, 1, 1]]
		```
		
		Args:
		  shape: Either a list of integers, or a 1-D `Tensor` of type `int32`.
		  dtype: The type of an element in the resulting `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to 1.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the same
		type and shape as `tensor` with all elements set to 1. Optionally, you can
		specify a new type (`dtype`) for the returned tensor.
		
		For example:
		
		```python
		# 'tensor' is [[1, 2, 3], [4, 5, 6]]
		tf.ones_like(tensor) ==> [[1, 1, 1], [1, 1, 1]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float32`, `float64`,
		  `int8`, `int16`, `int32`, `int64`, `uint8`, `complex64`, or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to 1.
	**/
	static public function ones_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Packs a list of rank-`R` tensors into one rank-`(R+1)` tensor.
		
		Packs the list of tensors in `values` into a tensor with rank one higher than
		each tensor in `values`, by packing them along the `axis` dimension.
		Given a list of length `N` of tensors of shape `(A, B, C)`;
		
		if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
		if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
		Etc.
		
		For example:
		
		```prettyprint
		# 'x' is [1, 4]
		# 'y' is [2, 5]
		# 'z' is [3, 6]
		pack([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
		pack([x, y, z], axis=1) => [[1, 2, 3], [4, 5, 6]]
		```
		
		This is the opposite of unpack.  The numpy equivalent is
		
		    tf.pack([x, y, z]) = np.asarray([x, y, z])
		
		Args:
		  values: A list of `Tensor` objects with the same shape and type.
		  axis: An `int`. The axis to pack along. Defaults to the first dimension.
		    Supports negative indexes.
		  name: A name for this operation (optional).
		
		Returns:
		  output: A packed `Tensor` with the same type as `values`.
		
		Raises:
		  ValueError: If `axis` is out of the range [-(R+1), R+1).
	**/
	static public function pack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		# 't' is [[1, 2, 3], [4, 5, 6]].
		# 'paddings' is [[1, 1,], [2, 2]].
		# rank of 't' is 2.
		pad(t, paddings, "CONSTANT") ==> [[0, 0, 0, 0, 0, 0, 0],
		                                  [0, 0, 1, 2, 3, 0, 0],
		                                  [0, 0, 4, 5, 6, 0, 0],
		                                  [0, 0, 0, 0, 0, 0, 0]]
		
		pad(t, paddings, "REFLECT") ==> [[6, 5, 4, 5, 6, 5, 4],
		                                 [3, 2, 1, 2, 3, 2, 1],
		                                 [6, 5, 4, 5, 6, 5, 4],
		                                 [3, 2, 1, 2, 3, 2, 1]]
		
		pad(t, paddings, "SYMMETRIC") ==> [[2, 1, 1, 2, 3, 3, 2],
		                                   [2, 1, 1, 2, 3, 3, 2],
		                                   [5, 4, 4, 5, 6, 6, 5],
		                                   [5, 4, 4, 5, 6, 6, 5]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  paddings: A `Tensor` of type `int32`.
		  mode: One of "CONSTANT", "REFLECT", or "SYMMETRIC".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
		
		Raises:
		  ValueError: When mode is not one of "CONSTANT", "REFLECT", or "SYMMETRIC".
	**/
	static public function pad(tensor:Dynamic, paddings:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inserts a placeholder for a tensor that will be always fed.
		
		**Important**: This tensor will produce an error if evaluated. Its value must
		be fed using the `feed_dict` optional argument to `Session.run()`,
		`Tensor.eval()`, or `Operation.run()`.
		
		For example:
		
		```python
		x = tf.placeholder(tf.float32, shape=(1024, 1024))
		y = tf.matmul(x, x)
		
		with tf.Session() as sess:
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
	**/
	static public function placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op that passes though `input` when its output is not fed.
		
		Args:
		  input: A `Tensor`. The default value to produce when `output` is not fed.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The (possibly partial) shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  A placeholder tensor that defaults to `input` if it is not fed.
	**/
	static public function placeholder_with_default(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		This op simulates the precision loss from the quantized forward pass by:
		1. Quantizing the tensor to fixed point numbers, which should match the target
		   quantization method when it is used in inference.
		2. Dequantizing it back to floating point numbers for the following ops, most
		   likely matmul.
		
		There are different ways to quantize. This version does not use the full range
		of the output type, choosing to elide the lowest possible value for symmetry
		(e.g., output range is -127 to 127, not -128 to 127 for signed 8 bit
		quantization), so that 0.0 maps to 0.
		
		To perform this op, we first find the range of values in our tensor. The range
		we use is always centered on 0, so we find m such that
		
		1. m = max(abs(input_min), abs(input_max)) if range_given is true,
		2. m = max(max(abs(min_elem(input)), abs(max_elem(input))) otherwise.
		
		Our input tensor range is then [-m, m].
		
		Next, we choose our fixed-point quantization buckets, [min_fixed, max_fixed].
		If signed_input is true, this is
		
		  [min_fixed, max_fixed ] =
		      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1].
		
		Otherwise, if signed_input is false, the fixed-point range is
		
		  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1].
		
		From this we compute our scaling factor, s:
		
		  s = (max_fixed - min_fixed) / (2 * m).
		
		Now we can quantize and dequantize the elements of our tensor.  An element e
		is transformed into e':
		
		  e' = (e * s).round_to_nearest() / s.
		
		Note that we have a different number of buckets in the signed vs. unsigned
		cases.  For example, if num_bits == 8, we get 254 buckets in the signed case
		vs. 255 in the unsigned case.
		
		For example, suppose num_bits = 8 and m = 1.  Then
		
		  [min_fixed, max_fixed] = [-127, 127], and
		  s = (127 + 127) / 2 = 127.
		
		Given the vector {-1, -0.5, 0, 0.3}, this is quantized to
		{-127, -63, 0, 38}, and dequantized to {-1, -63.0/127, 0, 38.0/127}.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    Tensor to quantize and then dequantize.
		  signed_input: An optional `bool`. Defaults to `True`.
		    If the quantization is signed or unsigned.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization.
		  range_given: An optional `bool`. Defaults to `False`.
		    If the range is given or should be computed from the tensor.
		  input_min: An optional `float`. Defaults to `0`.
		    If range is given, this is the min of the range.
		  input_max: An optional `float`. Defaults to `0`.
		    If range is given, this is the max of the range.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function quantize_and_dequantize(input:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?input_min:Dynamic, ?input_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
		
		This operation returns an integer representing the rank of `input`.
		
		For example:
		
		```python
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		# shape of tensor 't' is [2, 2, 3]
		rank(t) ==> 3
		```
		
		**Note**: The rank of a tensor is not the same as the rank of a matrix. The
		rank of a tensor is the number of indices required to uniquely select each
		element of the tensor. Rank is also known as "order", "degree", or "ndims."
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function rank(input:Dynamic, ?name:Dynamic):Dynamic;
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
		
		```prettyprint
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
		  shape: A `Tensor` of type `int32`. Defines the shape of the output tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`.
	**/
	static public function reshape(tensor:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses specific dimensions of a tensor.
		
		Given a `tensor`, and a `bool` tensor `dims` representing the dimensions
		of `tensor`, this operation reverses each dimension i of `tensor` where
		`dims[i]` is `True`.
		
		`tensor` can have up to 8 dimensions. The number of dimensions
		of `tensor` must equal the number of elements in `dims`. In other words:
		
		`rank(tensor) = size(dims)`
		
		For example:
		
		```prettyprint
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
		  tensor: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int32`, `bool`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		    Up to 8-D.
		  dims: A `Tensor` of type `bool`. 1-D. The dimensions to reverse.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `tensor`. The same shape as `tensor`.
	**/
	static public function reverse(tensor:Dynamic, dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reverses variable length slices.
		
		This op first slices `input` along the dimension `batch_dim`, and for each
		slice `i`, reverses the first `seq_lengths[i]` elements along
		the dimension `seq_dim`.
		
		The elements of `seq_lengths` must obey `seq_lengths[i] < input.dims[seq_dim]`,
		and `seq_lengths` must be a vector of length `input.dims[batch_dim]`.
		
		The output slice `i` along dimension `batch_dim` is then given by input
		slice `i`, with the first `seq_lengths[i]` slices along dimension
		`seq_dim` reversed.
		
		For example:
		
		```prettyprint
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
		
		```prettyprint
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
		  seq_lengths: A `Tensor` of type `int64`.
		    1-D with length `input.dims(batch_dim)` and
		    `max(seq_lengths) < input.dims(seq_dim)`
		  seq_dim: An `int`. The dimension which is partially reversed.
		  batch_dim: An optional `int`. Defaults to `0`.
		    The dimension along which reversal is performed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  The partially reversed input. It has the same shape as `input`.
	**/
	static public function reverse_sequence(input:Dynamic, seq_lengths:Dynamic, seq_dim:Dynamic, ?batch_dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the shape of a tensor.
		
		This operation returns a 1-D integer tensor representing the shape of `input`.
		
		For example:
		
		```python
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		shape(t) ==> [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function shape(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns shape of tensors.
		
		This operation returns N 1-D integer tensors representing shape of `input[i]s`.
		
		Args:
		  input: A list of at least 1 `Tensor` objects of the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same number of `Tensor` objects as `input` of `Tensor` objects of type `int32`.
	**/
	static public function shape_n(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
		
		This operation returns an integer representing the number of elements in
		`input`.
		
		For example:
		
		```python
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]]
		size(t) ==> 12
		```
		
		Args:
		  input: A `Tensor` or `SparseTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function size(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts a slice from a tensor.
		
		This operation extracts a slice of size `size` from a tensor `input` starting
		at the location specified by `begin`. The slice `size` is represented as a
		tensor shape, where `size[i]` is the number of elements of the 'i'th dimension
		of `input` that you want to slice. The starting location (`begin`) for the
		slice is represented as an offset in each dimension of `input`. In other
		words, `begin[i]` is the offset into the 'i'th dimension of `input` that you
		want to slice from.
		
		`begin` is zero-based; `size` is one-based. If `size[i]` is -1,
		all remaining elements in dimension i are included in the
		slice. In other words, this is equivalent to setting:
		
		`size[i] = input.dim_size(i) - begin[i]`
		
		This operation requires that:
		
		`0 <= begin[i] <= begin[i] + size[i] <= Di  for i in [0, n]`
		
		For example:
		
		```
		# 'input' is [[[1, 1, 1], [2, 2, 2]],
		#             [[3, 3, 3], [4, 4, 4]],
		#             [[5, 5, 5], [6, 6, 6]]]
		tf.slice(input, [1, 0, 0], [1, 1, 3]) ==> [[[3, 3, 3]]]
		tf.slice(input, [1, 0, 0], [1, 2, 3]) ==> [[[3, 3, 3],
		                                            [4, 4, 4]]]
		tf.slice(input, [1, 0, 0], [2, 1, 3]) ==> [[[3, 3, 3]],
		                                           [[5, 5, 5]]]
		```
		
		Args:
		  input_: A `Tensor`.
		  begin: An `int32` or `int64` `Tensor`.
		  size: An `int32` or `int64` `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input`.
	**/
	static public function slice(input_:Dynamic, begin:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor` of type `int32`.
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
		
		    ```prettyprint
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 1]` and value:
		
		    ```prettyprint
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    (2) For the following input of shape `[1, 2, 2, 3]` and block_size of 2:
		
		    ```prettyprint
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 3]` and value:
		
		    ```prettyprint
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		    ```
		
		    (3) For the following input of shape `[1, 4, 4, 1]` and block_size of 2:
		
		    ```prettyprint
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]],
		          [[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[4, 2, 2, 1]` and value:
		
		    ```prettyprint
		    x = [[[[1], [3]], [[5], [7]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    (4) For the following input of shape `[2, 2, 4, 1]` and block_size of 2:
		
		    ```prettyprint
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[8, 1, 2, 1]` and value:
		
		    ```prettyprint
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
		SpaceToDepth for tensors of type T.
		
		Rearranges blocks of spatial data, into depth. More specifically,
		this op outputs a copy of the input tensor where values from the `height`
		and `width` dimensions are moved to the `depth` dimension.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Non-overlapping blocks of size `block_size x block size` are rearranged
		    into depth at each location.
		  * The depth of the output tensor is `input_depth * block_size * block_size`.
		  * The input tensor's height and width must be divisible by block_size.
		
		That is, assuming the input is in the shape:
		`[batch, height, width, depth]`,
		the shape of the output will be:
		`[batch, height/block_size, width/block_size, depth*block_size*block_size]`
		
		This operation requires that the input tensor be of rank 4, and that
		`block_size` be >=1 and a divisor of both the input `height` and `width`.
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given this input of shape `[1, 2, 2, 1]`, and block_size of 2:
		
		```prettyprint
		x = [[[[1], [2]],
		      [[3], [4]]]]
		```
		
		This operation will output a tensor of shape `[1, 1, 1, 4]`:
		
		```prettyprint
		[[[[1, 2, 3, 4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
		the corresponding output will have a single element (i.e. width and height are
		both 1) and will have a depth of 4 channels (1 * block_size * block_size).
		The output element shape is `[1, 1, 4]`.
		
		For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.
		
		```prettyprint
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		This operation, for block_size of 2, will return the following tensor of shape
		`[1, 1, 1, 12]`
		
		```prettyprint
		[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:
		
		```prettyprint
		x = [[[[1],   [2],  [5],  [6]],
		      [[3],   [4],  [7],  [8]],
		      [[9],  [10], [13],  [14]],
		      [[11], [12], [15],  [16]]]]
		```
		
		the operator will return the following tensor of shape `[1 2 2 4]`:
		
		```prettyprint
		x = [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`. The size of the spatial block.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_depth(input:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
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
		a.indices => [12, 26, 37, 45]
		tf.shape(a.values) => [4, 10]
		
		# `b` will be the subset of `a` slices at its second and third indices, so
		# we want to mask its first and last indices (which are at absolute
		# indices 12, 45)
		b = tf.sparse_mask(a, [12, 45])
		
		b.indices => [26, 37]
		tf.shape(b.values) => [2, 10]
		
		```
		
		Args:
		  * `a`: An `IndexedSlices` instance.
		  * `mask_indices`: Indices of elements to mask.
		  * `name`: A name for the operation (optional).
		
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
		x = tf.sparse_placeholder(tf.float32)
		y = tf.sparse_reduce_sum(x)
		
		with tf.Session() as sess:
		  print(sess.run(y))  # ERROR: will fail because x was not fed.
		
		  indices = np.array([[3, 2, 0], [4, 5, 1]], dtype=np.int64)
		  values = np.array([1.0, 2.0], dtype=np.float32)
		  shape = np.array([7, 9, 2], dtype=np.int64)
		  print(sess.run(y, feed_dict={
		    x: tf.SparseTensorValue(indices, values, shape)}))  # Will succeed.
		  print(sess.run(y, feed_dict={
		    x: (indices, values, shape)}))  # Will succeed.
		
		  sp = tf.SparseTensor(indices=indices, values=values, shape=shape)
		  sp_value = sp.eval(session)
		  print(sess.run(y, feed_dict={x: sp_value}))  # Will succeed.
		```
		
		Args:
		  dtype: The type of `values` elements in the tensor to be fed.
		  shape: The shape of the tensor to be fed (optional). If the shape is not
		    specified, you can feed a sparse tensor of any shape.
		  name: A name for prefixing the operations (optional).
		
		Returns:
		  A `SparseTensor` that may be used as a handle for feeding a value, but not
		  evaluated directly.
	**/
	static public function sparse_placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits a tensor into `num_split` tensors along one dimension.
		
		Splits `value` along dimension `split_dim` into `num_split` smaller tensors.
		Requires that `num_split` evenly divide `value.shape[split_dim]`.
		
		For example:
		
		```python
		# 'value' is a tensor with shape [5, 30]
		# Split 'value' into 3 tensors along dimension 1
		split0, split1, split2 = tf.split(1, 3, value)
		tf.shape(split0) ==> [5, 10]
		```
		
		Note: If you are splitting along an axis by the length of that axis, consider
		using unpack, e.g.
		
		```python
		num_items = t.get_shape()[axis].value
		[tf.squeeze(s, [axis]) for s in tf.split(axis, num_items, t)]
		```
		
		can be rewritten as
		
		```python
		tf.unpack(t, axis=axis)
		```
		
		Args:
		  split_dim: A 0-D `int32` `Tensor`. The dimension along which to split.
		    Must be in the range `[0, rank(value))`.
		  num_split: A Python integer. The number of ways to split.
		  value: The `Tensor` to split.
		  name: A name for the operation (optional).
		
		Returns:
		  `num_split` `Tensor` objects resulting from splitting `value`.
	**/
	static public function split(split_dim:Dynamic, num_split:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Removes dimensions of size 1 from the shape of a tensor.
		
		Given a tensor `input`, this operation returns a tensor of the same type with
		all dimensions of size 1 removed. If you don't want to remove all size 1
		dimensions, you can remove specific size 1 dimensions by specifying
		`squeeze_dims`.
		
		For example:
		
		```prettyprint
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		shape(squeeze(t)) ==> [2, 3]
		```
		
		Or, to remove specific size 1 dimensions:
		
		```prettyprint
		# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
		shape(squeeze(t, [2, 4])) ==> [1, 2, 3, 1]
		```
		
		Args:
		  input: A `Tensor`. The `input` to squeeze.
		  squeeze_dims: An optional list of `ints`. Defaults to `[]`.
		    If specified, only squeezes the dimensions listed. The dimension
		    index starts at 0. It is an error to squeeze a dimension that is not 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  Contains the same data as `input`, but has one or more dimensions of
		  size 1 removed.
	**/
	static public function squeeze(input:Dynamic, ?squeeze_dims:Dynamic, ?name:Dynamic):Dynamic;
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
		Extracts a strided slice from a tensor.
		
		To a first order, this operation extracts a slice of size `end - begin`
		from a tensor `input`
		starting at the location specified by `begin`. The slice continues by adding
		`stride` to the `begin` index until all dimensions are not less than `end`.
		Note that components of stride can be negative, which causes a reverse
		slice.
		
		This operation can be thought of an encoding of a numpy style sliced
		range. Given a python slice input[<spec0>, <spec1>, ..., <specn>]
		this function will be called as follows.
		
		`begin`, `end`, and `strides` will be all length n. n is in general
		not the same dimensionality as `input`.
		
		For the ith spec,
		`begin_mask`, `end_mask`, `ellipsis_mask`, `new_axis_mask`,
		and `shrink_axis_mask` will have the ith bit corrsponding to
		the ith spec.
		
		If the ith bit of `begin_mask` is non-zero, `begin[i]` is ignored and
		the fullest possible range in that dimension is used instead.
		`end_mask` works analogously, except with the end range.
		
		`foo[5:,:,:3]` on a 7x8x9 tensor is equivalent to `foo[5:7,0:8,0:3]`.
		`foo[::-1]` reverses a tensor with shape 8.
		
		
		If the ith bit of `ellipsis_mask`, as many unspecified dimensions
		as needed will be inserted between other dimensions. Only one
		non-zero bit is allowed in `ellipsis_mask`.
		
		For example `foo[3:5,...,4:5]` on a shape 10x3x3x10 tensor is
		equivalent to `foo[3:5,:,:,4:5]` and
		`foo[3:5,...]` is equivalent to `foo[3:5,:,:,:]`.
		
		If the ith bit of `new_axis_mask` is one, then a `begin`,
		`end`, and `stride` are ignored and a new length 1 dimension is
		added at this point in the output tensor.
		
		For example `foo[3:5,4]` on a 10x8 tensor produces a shape 2 tensor
		whereas `foo[3:5,4:5]` produces a shape 2x1 tensor with shrink_mask
		being 1<<1 == 2.
		
		If the ith bit of `shrink_axis_mask` is one, then `begin`,
		`end[i]`, and `stride[i]` are used to do a slice in the appropriate
		dimension, but the output tensor will be reduced in dimensionality
		by one. This is only valid if the ith entry of slice[i]==1.
		
		NOTE: `begin` and `end` are zero-indexed`.
		`strides` entries must be non-zero.
		
		
		```
		# 'input' is [[[1, 1, 1], [2, 2, 2]],
		#             [[3, 3, 3], [4, 4, 4]],
		#             [[5, 5, 5], [6, 6, 6]]]
		tf.slice(input, [1, 0, 0], [2, 1, 3], [1, 1, 1]) ==> [[[3, 3, 3]]]
		tf.slice(input, [1, 0, 0], [2, 2, 3], [1, 1, 1]) ==> [[[3, 3, 3],
		                                                       [4, 4, 4]]]
		tf.slice(input, [1, 1, 0], [2, -1, 3], [1, -1, 1]) ==>[[[4, 4, 4],
		                                                        [3, 3, 3]]]
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` the same type as `input`.
	**/
	static public function strided_slice(input_:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
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
		Constructs a tensor by tiling a given tensor.
		
		This operation creates a new tensor by replicating `input` `multiples` times.
		The output tensor's i'th dimension has `input.dims(i) * multiples[i]` elements,
		and the values of `input` are replicated `multiples[i]` times along the 'i'th
		dimension. For example, tiling `[a b c d]` by `[2]` produces
		`[a b c d a b c d]`.
		
		Args:
		  input: A `Tensor`. 1-D or higher.
		  multiples: A `Tensor` of type `int32`.
		    1-D. Length must be the same as the number of dimensions in `input`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function tile(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transposes `a`. Permutes the dimensions according to `perm`.
		
		The returned tensor's dimension i will correspond to the input dimension
		`perm[i]`. If `perm` is not given, it is set to (n-1...0), where n is
		the rank of the input tensor. Hence by default, this operation performs a
		regular matrix transpose on 2-D input Tensors.
		
		For example:
		
		```python
		# 'x' is [[1 2 3]
		#         [4 5 6]]
		tf.transpose(x) ==> [[1 4]
		                     [2 5]
		                     [3 6]]
		
		# Equivalently
		tf.transpose(x, perm=[1, 0]) ==> [[1 4]
		                                  [2 5]
		                                  [3 6]]
		
		# 'perm' is more useful for n-dimensional tensors, for n > 2
		# 'x' is   [[[1  2  3]
		#            [4  5  6]]
		#           [[7  8  9]
		#            [10 11 12]]]
		# Take the transpose of the matrices in dimension-0
		tf.transpose(x, perm=[0, 2, 1]) ==> [[[1  4]
		                                      [2  5]
		                                      [3  6]]
		
		                                     [[7 10]
		                                      [8 11]
		                                      [9 12]]]
		```
		
		Args:
		  a: A `Tensor`.
		  perm: A permutation of the dimensions of `a`.
		  name: A name for the operation (optional).
		
		Returns:
		  A transposed `Tensor`.
	**/
	static public function transpose(a:Dynamic, ?perm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```prettyprint
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx = unique(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx).
		  y: A `Tensor`. Has the same type as `x`. 1-D.
		  idx: A `Tensor` of type `int32`. 1-D.
	**/
	static public function unique(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds unique elements in a 1-D tensor.
		
		This operation returns a tensor `y` containing all of the unique elements of `x`
		sorted in the same order that they occur in `x`. This operation also returns a
		tensor `idx` the same size as `x` that contains the index of each value of `x`
		in the unique output `y`. Finally, it returns a third tensor `count` that
		contains the count of each element of `y` in `x`. In other words:
		
		`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`
		
		For example:
		
		```prettyprint
		# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
		y, idx, count = unique_with_counts(x)
		y ==> [1, 2, 4, 7, 8]
		idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
		count ==> [2, 1, 3, 1, 2]
		```
		
		Args:
		  x: A `Tensor`. 1-D.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (y, idx, count).
		  y: A `Tensor`. Has the same type as `x`. 1-D.
		  idx: A `Tensor` of type `int32`. 1-D.
		  count: A `Tensor` of type `int32`. 1-D.
	**/
	static public function unique_with_counts(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Unpacks the given dimension of a rank-`R` tensor into rank-`(R-1)` tensors.
		
		Unpacks `num` tensors from `value` by chipping it along the `axis` dimension.
		If `num` is not specified (the default), it is inferred from `value`'s shape.
		If `value.shape[axis]` is not known, `ValueError` is raised.
		
		For example, given a tensor of shape `(A, B, C, D)`;
		
		If `axis == 0` then the i'th tensor in `output` is the slice
		  `value[i, :, :, :]` and each tensor in `output` will have shape `(B, C, D)`.
		  (Note that the dimension unpacked along is gone, unlike `split`).
		
		If `axis == 1` then the i'th tensor in `output` is the slice
		  `value[:, i, :, :]` and each tensor in `output` will have shape `(A, C, D)`.
		Etc.
		
		This is the opposite of pack.  The numpy equivalent is
		
		    tf.unpack(x, n) = list(x)
		
		Args:
		  value: A rank `R > 0` `Tensor` to be unpacked.
		  num: An `int`. The length of the dimension `axis`. Automatically inferred
		    if `None` (the default).
		  axis: An `int`. The axis to unpack along. Defaults to the first
		    dimension. Supports negative indexes.
		  name: A name for the operation (optional).
		
		Returns:
		  The list of `Tensor` objects unpacked from `value`.
		
		Raises:
		  ValueError: If `num` is unspecified and cannot be inferred.
		  ValueError: If `axis` is out of the range [-R, R).
	**/
	static public function unpack(value:Dynamic, ?num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns locations of true values in a boolean tensor.
		
		This operation returns the coordinates of true elements in `input`. The
		coordinates are returned in a 2-D tensor where the first dimension (rows)
		represents the number of true elements, and the second dimension (columns)
		represents the coordinates of the true elements. Keep in mind, the shape of
		the output tensor can vary depending on how many true values there are in
		`input`. Indices are output in row-major order.
		
		For example:
		
		```prettyprint
		# 'input' tensor is [[True, False]
		#                    [True, False]]
		# 'input' has two true values, so output has two coordinates.
		# 'input' has rank of 2, so coordinates have two indices.
		where(input) ==> [[0, 0],
		                  [1, 0]]
		
		# `input` tensor is [[[True, False]
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
		```
		
		Args:
		  input: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function where(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		This operation returns a tensor of type `dtype` with shape `shape` and
		all elements set to zero.
		
		For example:
		
		```python
		tf.zeros([3, 4], int32) ==> [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
		```
		
		Args:
		  shape: Either a list of integers, or a 1-D `Tensor` of type `int32`.
		  dtype: The type of an element in the resulting `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An adaptor for zeros() to match the Initializer spec.
	**/
	static public function zeros_initializer(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a tensor with all elements set to zero.
		
		Given a single tensor (`tensor`), this operation returns a tensor of the
		same type and shape as `tensor` with all elements set to zero. Optionally,
		you can use `dtype` to specify a new type for the returned tensor.
		
		For example:
		
		```python
		# 'tensor' is [[1, 2, 3], [4, 5, 6]]
		tf.zeros_like(tensor) ==> [[0, 0, 0], [0, 0, 0]]
		```
		
		Args:
		  tensor: A `Tensor`.
		  dtype: A type for the returned `Tensor`. Must be `float32`, `float64`,
		  `int8`, `int16`, `int32`, `int64`, `uint8`, `complex64`, or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with all elements set to zero.
	**/
	static public function zeros_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}