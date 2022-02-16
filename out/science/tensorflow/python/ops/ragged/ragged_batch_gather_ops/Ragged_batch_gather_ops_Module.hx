/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_batch_gather_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_batch_gather_ops") extern class Ragged_batch_gather_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Gathers slices from `params` according to `indices` with batch dims.
		
		This operation is similar to `gather`, but it assumes that the leading `N`
		dimensions of `indices` and `params` are batch dimensions, and performs a
		gather within each batch.  In particular, when using this operation with `N`
		batch dimensions `B1...BN`:
		
		* `indices` has shape `[B1...BN, I]`
		* `params` has shape `[B1...BN, P1...PM]`.
		* `result` has shape `[B1...BN, I, P2...PM]`.
		* `result[b1...bN, i, p2...pM] =
		  params[b1...bN, indices[b1...bN, i], p2...pM]`
		
		Args:
		  params: A potentially ragged tensor with shape `[B1...BN, P1...PM]` (`N>=0`,
		    `M>0`).
		  indices: A potentially ragged tensor with shape `[B1...BN, I]` (`N>=0`).
		  name: A name for the operation (optional).
		
		Returns:
		  A potentially ragged tensor with shape `[B1...BN, I, P2...PM]`.
		  `result.ragged_rank = max(indices.ragged_rank, params.ragged_rank)`.
		
		#### Example:
		
		>>> params = tf.ragged.constant([['a', 'b', 'c'], ['d'], [], ['e']])
		>>> indices = tf.ragged.constant([[1, 2, 0], [], [], [0, 0]])
		>>> tf.compat.v1.batch_gather(params, indices)
		<tf.RaggedTensor [[b'b', b'c', b'a'], [], [], [b'e', b'e']]>
	**/
	static public function batch_gather(params:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}