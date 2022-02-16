/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_batch_gather_with_default_op;
@:pythonImport("tensorflow.python.ops.ragged.ragged_batch_gather_with_default_op") extern class Ragged_batch_gather_with_default_op_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets the RaggedTensorDynamicShape for the pad tensor.
	**/
	static public function _get_pad_shape(params:Dynamic, indices:Dynamic, row_splits_dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Same as `batch_gather` but inserts `default_value` for invalid indices.
		
		This operation is similar to `batch_gather` except that it will substitute
		the value for invalid indices with `default_value` as the contents.
		See `batch_gather` for more details.
		
		
		Args:
		  params: A potentially ragged tensor with shape `[B1...BN, P1...PM]` (`N>=0`,
		    `M>0`).
		  indices: A potentially ragged tensor with shape `[B1...BN, I]` (`N>=0`).
		  default_value: A value to be inserted in places where `indices` are out of
		    bounds. Must be the same dtype as params and either a scalar or rank 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A potentially ragged tensor with shape `[B1...BN, I, P2...PM]`.
		  `result.ragged_rank = max(indices.ragged_rank, params.ragged_rank)`.
		
		#### Example:
		
		>>> params = tf.ragged.constant([['a', 'b', 'c'], ['d'], [], ['e']])
		>>> indices = tf.ragged.constant([[1, 2, -1], [], [], [0, 10]])
		>>> batch_gather_with_default(params, indices, 'FOO')
		<tf.RaggedTensor [[b'b', b'c', b'FOO'], [], [], [b'e', b'FOO']]>
	**/
	static public function batch_gather_with_default(params:Dynamic, indices:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}