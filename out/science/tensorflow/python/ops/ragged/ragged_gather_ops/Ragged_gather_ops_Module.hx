/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_gather_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_gather_ops") extern class Ragged_gather_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper that implements ragged gather when axis>0 and batch_dims==0.
		
		Args:
		  params: The tensor from which to gather values.
		  indices: The indices of values to gather.
		  axis: The axis in `params` to gather `indices` from.
		
		Returns:
		  A potentially ragged tensor.
	**/
	static public function _axis_gather(params:Dynamic, indices:Dynamic, axis:Dynamic):Dynamic;
	/**
		Helper that implements the body for ragged gather() when batch_dims>0.
		
		Args:
		  params: The tensor from which to gather values.
		  indices: The indices of values to gather.
		  axis: The axis in `params` to gather `indices` from.
		  batch_dims: The number of batch dimensions.
		
		Returns:
		  A potentially ragged tensor.
	**/
	static public function _batch_gather(params:Dynamic, indices:Dynamic, axis:Dynamic, batch_dims:Dynamic):Dynamic;
	/**
		Returns a copy of `t` with the outer two dimensions merged.
	**/
	static public function _flatten_dims_0_and_1(t:Dynamic):Dynamic;
	/**
		Helper that implements the body for ragged gather().
		
		Assumes that `params` and `indices` have been converted to tensors or
		ragged tensors, and that `axis` and `batch_dims` have been normalized to
		be positive.  (So these conversions & normalizations can be skipped in
		recursive calls to _gather).
		
		Args:
		  params: The tensor from which to gather values.
		  indices: The indices of values to gather.
		  axis: The axis in `params` to gather `indices` from.
		  batch_dims: The number of batch dimensions.
		
		Returns:
		  A potentially ragged tensor.
	**/
	static public function _gather(params:Dynamic, indices:Dynamic, axis:Dynamic, batch_dims:Dynamic):Dynamic;
	/**
		Adds *trailing* size-1 dimensions to `t` until it has the given rank.
	**/
	static public function _increase_rank_to(t:Dynamic, rank:Dynamic):Dynamic;
	/**
		Gradient for RaggedGather op.
	**/
	static public function _ragged_gather_grad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	static public function _ragged_gather_nd_v1(params:Dynamic, indices:Dynamic, ?name:Dynamic, ?batch_dims:Dynamic):Dynamic;
	static public function _ragged_gather_v1(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?batch_dims:Dynamic):Dynamic;
	/**
		Returns the start indices for the rows in `t`.
	**/
	static public function _row_starts(t:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Gathers ragged slices from `params` axis `0` according to `indices`.
		
		See `tf.gather` for full documentation.  (This version has the same API
		as `tf.gather`, but supports ragged `params` and `indices`.)
		
		Examples:
		
		>>> params = tf.constant(['a', 'b', 'c', 'd', 'e'])
		>>> indices = tf.constant([3, 1, 2, 1, 0])
		>>> ragged_params = tf.ragged.constant([['a', 'b', 'c'], ['d'], [], ['e']])
		>>> ragged_indices = tf.ragged.constant([[3, 1, 2], [1], [], [0]])
		
		>>> tf.gather(params, ragged_indices)
		<tf.RaggedTensor [[b'd', b'b', b'c'], [b'b'], [], [b'a']]>
		
		>>> tf.gather(ragged_params, indices)
		<tf.RaggedTensor [[b'e'], [b'd'], [], [b'd'], [b'a', b'b', b'c']]>
		
		>>> tf.gather(ragged_params, ragged_indices)
		<tf.RaggedTensor [[[b'e'], [b'd'], []], [[b'd']], [], [[b'a', b'b', b'c']]]>
		
		Args:
		  params: The potentially ragged tensor from which to gather values. Must be
		    at least rank 1.
		  indices: The potentially ragged tensor indicating which values to gather.
		    Must have dtype `int32` or `int64`.  Values must be in the range `[0,
		    params.shape[0]]`.
		  validate_indices: Ignored.
		  axis: The axis in `params` to gather `indices` from.
		  batch_dims: The number of batch dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `RaggedTensor`, where `output.dtype=params.dtype` and
		  `output.shape=indices.shape + params.shape[1:]` and
		  `output.ragged_rank=indices.shape.ndims + params.ragged_rank`.
		
		Raises:
		  ValueError: If indices.shape.ndims is not known statically.
	**/
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?axis:Dynamic, ?batch_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from `params` using `n`-dimensional indices.
		
		This operation is similar to `gather`, but it uses the innermost dimension
		of `indices` to define a slice into `params`.  In particular, if:
		
		* `indices` has shape `[A1...AN, I]`
		* `params` has shape `[B1...BM]`
		
		Then:
		
		* `result` has shape `[A1...AN, B_{I+1}...BM]`.
		* `result[a1...aN] = params[indices[a1...aN, :]]`
		
		Args:
		  params: A potentially ragged tensor with shape `[A1...AN, I]`.
		  indices: A potentially ragged tensor with shape `[B1...BM]`.
		  batch_dims: Must be zero.
		  name: A name for the operation (optional).
		
		Returns:
		  A potentially ragged tensor with shape `[A1...AN, B_{I+1}...BM]`.
		
		#### Examples:
		
		>>> params = tf.ragged.constant(
		...     [ [ ['000', '001'], ['010'              ]          ],
		...       [ ['100'       ], ['110', '111', '112'], ['120'] ],
		...       [ [            ], ['210'              ]          ] ])
		
		>>> # Gather 2D slices from a 3D tensor
		>>> tf.gather_nd(params, [[2], [0]])
		<tf.RaggedTensor [[[], [b'210']], [[b'000', b'001'], [b'010']]]>
		
		>>> # Gather 1D slices from a 3D tensor
		>>> tf.gather_nd(params, [[2, 1], [0, 0]])
		<tf.RaggedTensor [[b'210'], [b'000', b'001']]>
		
		>>> # Gather scalars from a 3D tensor
		>>> tf.gather_nd(params, [[0, 0, 1], [1, 1, 2]]).numpy()
		array([b'001', b'112'], dtype=object)
	**/
	static public function gather_nd(params:Dynamic, indices:Dynamic, ?batch_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}