/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_array_ops;
@:pythonImport("tensorflow.python.ops.gen_array_ops") extern class Gen_array_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __broadcast_gradient_args_outputs : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __concat_offset_outputs : Dynamic;
	static public var __concat_outputs : Dynamic;
	static public var __const_outputs : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __edit_distance_outputs : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __mirror_pad_grad_outputs : Dynamic;
	static public var __mirror_pad_outputs : Dynamic;
	static public var __name__ : Dynamic;
	static public var __one_hot_outputs : Dynamic;
	static public var __pack_outputs : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pad_outputs : Dynamic;
	static public var __placeholder_outputs : Dynamic;
	static public var __ref_identity_outputs : Dynamic;
	static public var __slice_outputs : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __split_outputs : Dynamic;
	static public var __tile_grad_outputs : Dynamic;
	static public var __unpack_outputs : Dynamic;
	static public var __zeros_like_outputs : Dynamic;
	static public var _batch_matrix_band_part_outputs : Dynamic;
	static public var _batch_matrix_diag_outputs : Dynamic;
	static public var _batch_matrix_diag_part_outputs : Dynamic;
	static public var _batch_matrix_set_diag_outputs : Dynamic;
	static public var _batch_to_space_outputs : Dynamic;
	static public var _bitcast_outputs : Dynamic;
	/**
		Return the reduction indices for computing gradients of s0 op s1 with broadcast.
		
		This is typically used by gradient computations for a broadcasting operation.
		
		Args:
		  s0: A `Tensor` of type `int32`.
		  s1: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (r0, r1).
		  r0: A `Tensor` of type `int32`.
		  r1: A `Tensor` of type `int32`.
	**/
	static public function _broadcast_gradient_args(s0:Dynamic, s1:Dynamic, ?name:Dynamic):Dynamic;
	static public var _check_numerics_outputs : Dynamic;
	/**
		Concatenates tensors along one dimension.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [0, rank(values)).
		  values: A list of at least 2 `Tensor` objects of the same type.
		    The `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
		  A `Tensor` with the concatenation of values stacked along the
		  `concat_dim` dimension.  This tensor's shape matches that of `values` except
		  in `concat_dim` where it has the sum of the sizes.
	**/
	static public function _concat(concat_dim:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes offsets of concat inputs within its output.
		
		For example:
		
		```prettyprint
		# 'x' is [2, 2, 7]
		# 'y' is [2, 3, 7]
		# 'z' is [2, 5, 7]
		concat_offset(2, [x, y, z]) => [0, 0, 0], [0, 2, 0], [0, 5, 0]
		```
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    The dimension along which to concatenate.
		  shape: A list of at least 2 `Tensor` objects of type `int32`.
		    The `N` int32 vectors representing shape of tensors being concatenated.
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same number of `Tensor` objects as `shape` of `Tensor` objects of type `int32`.
		  The `N` int32 vectors representing the starting offset
		          of input tensors within the concatenated output.
		
		  This is typically used by gradient computations for a concat operation.
	**/
	static public function _concat_offset(concat_dim:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a constant tensor.
		
		Args:
		  value: . Attr `value` is the tensor to return.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function _const(value:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var _copy_host_outputs : Dynamic;
	static public var _copy_outputs : Dynamic;
	static public var _debug_identity_outputs : Dynamic;
	static public var _debug_nan_count_outputs : Dynamic;
	static public var _depth_to_space_outputs : Dynamic;
	static public var _diag_outputs : Dynamic;
	static public var _diag_part_outputs : Dynamic;
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
		  A `Tensor` of type `float32`. A dense float tensor with rank R - 1.
		
		  For the example input:
		
		      // hypothesis represents a 2x1 matrix with variable-length values:
		      //   (0,0) = ["a"]
		      //   (1,0) = ["b"]
		      hypothesis_indices = [[0, 0, 0],
		                            [1, 0, 0]]
		      hypothesis_values = ["a", "b"]
		      hypothesis_shape = [2, 1, 1]
		
		      // truth represents a 2x2 matrix with variable-length values:
		      //   (0,0) = []
		      //   (0,1) = ["a"]
		      //   (1,0) = ["b", "c"]
		      //   (1,1) = ["a"]
		      truth_indices = [[0, 1, 0],
		                       [1, 0, 0],
		                       [1, 0, 1],
		                       [1, 1, 0]]
		      truth_values = ["a", "b", "c", "a"]
		      truth_shape = [2, 2, 2]
		      normalize = true
		
		  The output will be:
		
		      // output is a 2x2 matrix with edit distances normalized by truth lengths.
		      output = [[inf, 1.0],  // (0,0): no truth, (0,1): no hypothesis
		                [0.5, 1.0]]  // (1,0): addition, (1,1): no hypothesis
	**/
	static public function _edit_distance(hypothesis_indices:Dynamic, hypothesis_values:Dynamic, hypothesis_shape:Dynamic, truth_indices:Dynamic, truth_values:Dynamic, truth_shape:Dynamic, ?normalize:Dynamic, ?name:Dynamic):Dynamic;
	static public var _expand_dims_outputs : Dynamic;
	static public var _extract_image_patches_outputs : Dynamic;
	static public var _fill_outputs : Dynamic;
	static public var _gather_nd_outputs : Dynamic;
	static public var _gather_outputs : Dynamic;
	static public var _identity_outputs : Dynamic;
	static public var _immutable_const_outputs : Dynamic;
	static public var _invert_permutation_outputs : Dynamic;
	static public var _list_diff_outputs : Dynamic;
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
		
		```prettyprint
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
		  paddings: A `Tensor` of type `int32`.
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
		  A `Tensor`. Has the same type as `input`. The padded tensor.
	**/
	static public function _mirror_pad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gradient op for `MirrorPad` op. This op folds a mirror-padded tensor.
		
		This operation folds the padded areas of `input` by `MirrorPad` according to the
		`paddings` you specify. `paddings` must be the same as `paddings` argument
		given to the corresponding `MirrorPad` op.
		
		The folded size of each dimension D of the output is:
		
		`input.dim_size(D) - paddings(D, 0) - paddings(D, 1)`
		
		For example:
		
		```prettyprint
		# 't' is [[1, 2, 3], [4, 5, 6], [7, 8, 9]].
		# 'paddings' is [[0, 1]], [0, 1]].
		# 'mode' is SYMMETRIC.
		# rank of 't' is 2.
		pad(t, paddings) ==> [[ 1,  5]
		                      [11, 28]]
		```
		
		Args:
		  input: A `Tensor`. The input tensor to be folded.
		  paddings: A `Tensor` of type `int32`.
		    A two-column matrix specifying the padding sizes. The number of
		    rows must be the same as the rank of `input`.
		  mode: A `string` from: `"REFLECT", "SYMMETRIC"`.
		    The mode used in the `MirrorPad` op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. The folded tensor.
	**/
	static public function _mirror_pad_grad(input:Dynamic, paddings:Dynamic, mode:Dynamic, ?name:Dynamic):Dynamic;
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
		  A `Tensor`. Has the same type as `on_value`. The one-hot tensor.
	**/
	static public function _one_hot(indices:Dynamic, depth:Dynamic, on_value:Dynamic, off_value:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Packs a list of `N` rank-`R` tensors into one rank-`(R+1)` tensor.
		
		Packs the `N` tensors in `values` into a tensor with rank one higher than each
		tensor in `values`, by packing them along the `axis` dimension.
		Given a list of tensors of shape `(A, B, C)`;
		
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
		
		This is the opposite of `unpack`.
		
		Args:
		  values: A list of at least 1 `Tensor` objects of the same type.
		    Must be of same shape and type.
		  axis: An optional `int`. Defaults to `0`.
		    Dimension along which to pack.  Negative values wrap around, so the
		    valid range is `[-(R+1), R+1)`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`. The packed tensor.
	**/
	static public function _pack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		
		```prettyprint
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
		  paddings: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function _pad(input:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op for a value that will be fed into the computation.
		
		N.B. This operation will fail with an error if it is executed. It is
		intended as a way to represent a value that will always be fed, and to
		provide attrs that enable the fed value to be checked at runtime.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    (Optional) The shape of the tensor. If the shape has 0 dimensions, the
		    shape is unconstrained.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
		  A placeholder tensor that must be replaced using the feed mechanism.
	**/
	static public function _placeholder(dtype:Dynamic, ?shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var _placeholder_with_default_outputs : Dynamic;
	static public var _quantize_and_dequantize_outputs : Dynamic;
	static public var _rank_outputs : Dynamic;
	/**
		Return the same ref tensor as the input ref tensor.
		
		Args:
		  input: A mutable `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `input`.
	**/
	static public function _ref_identity(input:Dynamic, ?name:Dynamic):Dynamic;
	static public var _reshape_outputs : Dynamic;
	static public var _reverse_outputs : Dynamic;
	static public var _reverse_sequence_outputs : Dynamic;
	static public var _shape_n_outputs : Dynamic;
	static public var _shape_outputs : Dynamic;
	static public var _size_outputs : Dynamic;
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
	static public var _space_to_batch_outputs : Dynamic;
	static public var _space_to_depth_outputs : Dynamic;
	/**
		Splits a tensor into `num_split` tensors along one dimension.
		
		Args:
		  split_dim: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to split.  Must be in the range
		    `[0, rank(value))`.
		  value: A `Tensor`. The tensor to split.
		  num_split: An `int` that is `>= 1`.
		    The number of ways to split.  Must evenly divide
		    `value.shape[split_dim]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_split` `Tensor` objects of the same type as value.
		  They are identically shaped tensors, whose shape matches that of `value`
		  except along `split_dim`, where their sizes are
		  `values.shape[split_dim] / num_split`.
	**/
	static public function _split(split_dim:Dynamic, value:Dynamic, num_split:Dynamic, ?name:Dynamic):Dynamic;
	static public var _squeeze_outputs : Dynamic;
	static public var _stop_gradient_outputs : Dynamic;
	static public var _strided_slice_grad_outputs : Dynamic;
	static public var _strided_slice_outputs : Dynamic;
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
	static public function _tile_grad(input:Dynamic, multiples:Dynamic, ?name:Dynamic):Dynamic;
	static public var _tile_outputs : Dynamic;
	static public var _transpose_outputs : Dynamic;
	static public var _unique_outputs : Dynamic;
	static public var _unique_with_counts_outputs : Dynamic;
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
		  A list of `num` `Tensor` objects of the same type as value.
		  The list of tensors unpacked from `value`.
	**/
	static public function _unpack(value:Dynamic, num:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var _where_outputs : Dynamic;
	/**
		Returns a tensor of zeros with the same shape and type as x.
		
		Args:
		  x: A `Tensor`. a tensor of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		  a tensor of the same shape and type as x but filled with zeros.
	**/
	static public function _zeros_like(x:Dynamic, ?name:Dynamic):Dynamic;
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
		
		```prettyprint
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
		
		```prettyprint
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		shape(t) ==> [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor`.
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
		
		```prettyprint
		# 't' is [[[1, 1,, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]]
		size(t) ==> 12
		```
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function size(input:Dynamic, ?name:Dynamic):Dynamic;
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
		Return a strided slice from `input`.
		
		The output tensor is a tensor with dimensions implied by `begin`,
		`end`, and `strides`, whose values are extracted from `begin`.
		
		Specifically, the result tensor at index `(i[0], i[1], ..., i[n-1])`
		will obtain the value `input[begin[0] + i[0] * stride[0], ..., `
		                            `begin[n-1] + i[n-1] * stride[n-1])]`.
		
		*Requirements*:
		  `0 != strides[i] for i in [0, n)`
		
		Args:
		  input: A `Tensor`.
		  begin: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    `begin[i]` specifies the offset into the `i`th dimension of
		    `input` to slice from.
		  end: A `Tensor`. Must have the same type as `begin`.
		    `end[i]` specifies the first offset into the `i`th dimension of
		    `input` that will not be extracted. Out or range values are
		    clamped to `[0,dim[i]) if slice[i] > 0` or `[-1,dim[i]-1]`
		    `if slice[i] < 0`
		  strides: A `Tensor`. Must have the same type as `begin`.
		    `strides[i]` specifies the increment in the `i`th dimension
		    after extracting a given element. Negative indices will reverse
		    the original order. Out or range values are
		    clamped to `[0,dim[i]) if slice[i]>0` or `[-1,dim[i]-1] if slice[i] < 0`
		  begin_mask: An optional `int`. Defaults to `0`.
		    a bitmask where a bit i being 1 means to ignore the begin
		    value and instead use the largest interval possible. At runtime
		    begin[i] will be replaced with `[0, n-1) if `stride[i] > 0` or
		    `[-1, n-1]` if `stride[i] < 0`
		  end_mask: An optional `int`. Defaults to `0`. analogous to `begin_mask`
		  ellipsis_mask: An optional `int`. Defaults to `0`.
		    a bitmask where bit `i` being 1 means the `i`th
		    position is actually an ellipsis. One bit at most can be 1.
		  new_axis_mask: An optional `int`. Defaults to `0`.
		    a bitmask where bit `i` being 1 means the `i`th
		    position creates a dimension in the tensor of length 1. Thus
		    the total number of elements remain unchanged but the shape
		    gets a 1 in the appropriate position.
		  shrink_axis_mask: An optional `int`. Defaults to `0`.
		    a bitmask where bit `i` implies that the `i`th
		    position should shrink the dimensionality. begin and end
		    must imply a slice of size 1 in the dimension. For example in
		    python one might do `foo[:,3,:]` which would result in
		    `shrink_axis_mask` being 2.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function strided_slice(input:Dynamic, begin:Dynamic, end:Dynamic, strides:Dynamic, ?begin_mask:Dynamic, ?end_mask:Dynamic, ?ellipsis_mask:Dynamic, ?new_axis_mask:Dynamic, ?shrink_axis_mask:Dynamic, ?name:Dynamic):Dynamic;
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
		Shuffle dimensions of x according to a permutation.
		
		The output `y` has the same rank as `x`. The shapes of `x` and `y` satisfy:
		  `y.shape[i] == x.shape[perm[i]] for i in [0, 1, ..., rank(x) - 1]`
		
		Args:
		  x: A `Tensor`.
		  perm: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function transpose(x:Dynamic, perm:Dynamic, ?name:Dynamic):Dynamic;
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
}