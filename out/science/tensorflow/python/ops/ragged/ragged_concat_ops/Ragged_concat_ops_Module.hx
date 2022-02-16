/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_concat_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_concat_ops") extern class Ragged_concat_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenates a list of RaggedTensor splits to form a single splits.
	**/
	static public function _concat_ragged_splits(splits_list:Dynamic):Dynamic;
	/**
		Sets splits.shape to [rt[shape[0]+1] for each rt in rt_inputs.
	**/
	static public function _copy_row_shape(rt_inputs:Dynamic, splits:Dynamic):Dynamic;
	/**
		Adds ragged dimensions to `rt_input` so it has the desired ragged rank.
	**/
	static public function _increase_ragged_rank_to(rt_input:Dynamic, ragged_rank:Dynamic, row_splits_dtype:Dynamic):Dynamic;
	/**
		Helper function to concatenate or stack ragged tensors along axis 0.
		
		Args:
		  rt_inputs: A list of RaggedTensors, all with the same rank and ragged_rank.
		  stack_values: Boolean.  If true, then stack values; otherwise, concatenate
		    them.
		
		Returns:
		  A RaggedTensor.
	**/
	static public function _ragged_stack_concat_axis_0(rt_inputs:Dynamic, stack_values:Dynamic):Dynamic;
	/**
		Helper function to concatenate or stack ragged tensors along axis 1.
		
		Args:
		  rt_inputs: A list of RaggedTensors, all with the same rank and ragged_rank.
		  stack_values: Boolean.  If true, then stack values; otherwise, concatenate
		    them.
		
		Returns:
		  A RaggedTensor.
	**/
	static public function _ragged_stack_concat_axis_1(rt_inputs:Dynamic, stack_values:Dynamic):Dynamic;
	/**
		Helper function to concatenate or stack ragged tensors.
		
		Args:
		  rt_inputs: A list of RaggedTensors or Tensors to combine.
		  axis: The axis along which to concatenate or stack.
		  stack_values: A boolean -- if true, then stack values; otherwise,
		    concatenate them.
		
		Returns:
		  A RaggedTensor.
		Raises:
		  ValueError: If rt_inputs is empty, or if axis is out of range.
	**/
	static public function _ragged_stack_concat_helper(rt_inputs:Dynamic, axis:Dynamic, stack_values:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Concatenates potentially ragged tensors along one dimension.
		
		Given a list of tensors with the same rank `K` (`K >= axis`), returns a
		rank-`K` `RaggedTensor` `result` such that `result[i0...iaxis]` is the
		concatenation of `[rt[i0...iaxis] for rt in values]`.
		
		Args:
		  values: A list of potentially ragged tensors.  May not be empty. All
		    `values` must have the same rank and the same dtype; but unlike
		    `tf.concat`, they can have arbitrary shapes.
		  axis: A python integer, indicating the dimension along which to concatenate.
		    (Note: Unlike `tf.concat`, the `axis` parameter must be statically known.)
		      Negative values are supported only if the rank of at least one
		      `values` value is statically known.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` with rank `K`.
		  `result.ragged_rank=max(axis, max(rt.ragged_rank for rt in values]))`.
		
		Raises:
		  ValueError: If `values` is empty, if `axis` is out of bounds or if
		    the input tensors have different ranks.
		
		#### Example:
		
		>>> t1 = tf.ragged.constant([[1, 2], [3, 4, 5]])
		>>> t2 = tf.ragged.constant([[6], [7, 8, 9]])
		>>> tf.concat([t1, t2], axis=0)
		<tf.RaggedTensor [[1, 2], [3, 4, 5], [6], [7, 8, 9]]>
		>>> tf.concat([t1, t2], axis=1)
		<tf.RaggedTensor [[1, 2, 6], [3, 4, 5, 7, 8, 9]]>
	**/
	static public function concat(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Stacks a list of rank-`R` tensors into one rank-`(R+1)` `RaggedTensor`.
		
		Given a list of tensors or ragged tensors with the same rank `R`
		(`R >= axis`), returns a rank-`R+1` `RaggedTensor` `result` such that
		`result[i0...iaxis]` is `[value[i0...iaxis] for value in values]`.
		
		#### Examples:
		
		>>> # Stacking two ragged tensors.
		>>> t1 = tf.ragged.constant([[1, 2], [3, 4, 5]])
		>>> t2 = tf.ragged.constant([[6], [7, 8, 9]])
		>>> tf.ragged.stack([t1, t2], axis=0)
		<tf.RaggedTensor [[[1, 2], [3, 4, 5]], [[6], [7, 8, 9]]]>
		>>> tf.ragged.stack([t1, t2], axis=1)
		<tf.RaggedTensor [[[1, 2], [6]], [[3, 4, 5], [7, 8, 9]]]>
		
		>>> # Stacking two dense tensors with different sizes.
		>>> t3 = tf.constant([[1, 2, 3], [4, 5, 6]])
		>>> t4 = tf.constant([[5], [6], [7]])
		>>> tf.ragged.stack([t3, t4], axis=0)
		<tf.RaggedTensor [[[1, 2, 3], [4, 5, 6]], [[5], [6], [7]]]>
		
		Args:
		  values: A list of `tf.Tensor` or `tf.RaggedTensor`.  May not be empty. All
		    `values` must have the same rank and the same dtype; but unlike
		    `tf.stack`, they can have arbitrary dimension sizes.
		  axis: A python integer, indicating the dimension along which to stack.
		    (Note: Unlike `tf.stack`, the `axis` parameter must be statically known.)
		    Negative values are supported only if the rank of at least one
		    `values` value is statically known.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A `RaggedTensor` with rank `R+1` (if `R>0`).
		  If `R==0`, then the result will be returned as a 1D `Tensor`, since
		  `RaggedTensor` can only be used when `rank>1`.
		  `result.ragged_rank=1+max(axis, max(rt.ragged_rank for rt in values]))`.
		
		Raises:
		  ValueError: If `values` is empty, if `axis` is out of bounds or if
		    the input tensors have different ranks.
	**/
	static public function stack(values:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}