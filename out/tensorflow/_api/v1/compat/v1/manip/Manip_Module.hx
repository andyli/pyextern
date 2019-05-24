/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.manip;
@:pythonImport("tensorflow._api.v1.compat.v1.manip") extern class Manip_Module {
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
	static public function reverse(tensor:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rolls the elements of a tensor along an axis.
		
		The elements are shifted positively (towards larger indices) by the offset of
		`shift` along the dimension of `axis`. Negative `shift` values will shift
		elements in the opposite direction. Elements that roll passed the last position
		will wrap around to the first and vice versa. Multiple shifts along multiple
		axes may be specified.
		
		For example:
		
		```
		# 't' is [0, 1, 2, 3, 4]
		roll(t, shift=2, axis=0) ==> [3, 4, 0, 1, 2]
		
		# shifting along multiple dimensions
		# 't' is [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9]]
		roll(t, shift=[1, -2], axis=[0, 1]) ==> [[7, 8, 9, 5, 6], [2, 3, 4, 0, 1]]
		
		# shifting along the same axis multiple times
		# 't' is [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9]]
		roll(t, shift=[2, -3], axis=[1, 1]) ==> [[1, 2, 3, 4, 0], [6, 7, 8, 9, 5]]
		```
		
		Args:
		  input: A `Tensor`.
		  shift: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Dimension must be 0-D or 1-D. `shift[i]` specifies the number of places by which
		    elements are shifted positively (towards larger indices) along the dimension
		    specified by `axis[i]`. Negative shifts will roll the elements in the opposite
		    direction.
		  axis: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Dimension must be 0-D or 1-D. `axis[i]` specifies the dimension that the shift
		    `shift[i]` should occur. If the same axis is referenced more than once, the
		    total shift for that axis will be the sum of all the shifts that belong to that
		    axis.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function roll(input:Dynamic, shift:Dynamic, axis:Dynamic):Dynamic;
	/**
		Scatter `updates` into a new tensor according to `indices`.
		
		Creates a new tensor by applying sparse `updates` to individual values or
		slices within a tensor (initially zero for numeric, empty for string) of
		the given `shape` according to indices.  This operator is the inverse of the
		`tf.gather_nd` operator which extracts values or slices from a given tensor.
		
		This operation is similar to tensor_scatter_add, except that the tensor is
		zero-initialized. Calling `tf.scatter_nd(indices, values, shape)` is identical
		to `tensor_scatter_add(tf.zeros(shape, values.dtype), indices, values)`
		
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
}