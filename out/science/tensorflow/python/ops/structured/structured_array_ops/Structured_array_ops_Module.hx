/* This file is generated, do not edit! */
package tensorflow.python.ops.structured.structured_array_ops;
@:pythonImport("tensorflow.python.ops.structured.structured_array_ops") extern class Structured_array_ops_Module {
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns all nested row partitions in rt, including for dense dimensions.
	**/
	static public function _all_nested_row_partitions(rt:Dynamic):Dynamic;
	/**
		Raises an error if the paths are not identical.
	**/
	static public function _assert_all_paths_match(values:Dynamic):Dynamic;
	/**
		Raises an error if the ranks of submessages are not identical.
	**/
	static public function _assert_all_ranks_match(values:Dynamic):Dynamic;
	/**
		Sometimes raises an error if concat doesn't make sense statically on values.
		
		values must be a sequence, and each element in values must be a structured
		tensor, and must have the same paths. Additionally, each path that is a
		submessage must have the same rank.
		
		These constraints are sufficient for concat on the fields to be the same
		as concat on structured tensors. This is meant to capture scenarios like
		paths that are not in the first structured tensor, but are in later
		structured tensors, which will just be ignored by the recursive algorithm.
		
		If the rank of a submessage was different for two structured tensors,
		then that is also a non-sensical merge.
		
		Note that all of these checks are static, as paths and submessage ranks
		are known.
		
		Args:
		  values: a Sequence of StructuredTensors.
		
		Raises:
		  ValueError: if there is any inconsistency as described above.
	**/
	static public function _assert_concat_compatible_structured_tensors(values:Dynamic):Dynamic;
	/**
		Creates a StructuredTensor with a length 1 axis inserted at index `axis`.
		
		This is an implementation of tf.expand_dims for StructuredTensor. Note
		that the `axis` must be less than or equal to rank.
		
		>>> st = StructuredTensor.from_pyval([[{"x": 1}, {"x": 2}], [{"x": 3}]])
		>>> tf.expand_dims(st, 0).to_pyval()
		[[[{'x': 1}, {'x': 2}], [{'x': 3}]]]
		>>> tf.expand_dims(st, 1).to_pyval()
		[[[{'x': 1}, {'x': 2}]], [[{'x': 3}]]]
		>>> tf.expand_dims(st, 2).to_pyval()
		[[[{'x': 1}], [{'x': 2}]], [[{'x': 3}]]]
		>>> tf.expand_dims(st, -1).to_pyval()  # -1 is the same as 2
		[[[{'x': 1}], [{'x': 2}]], [[{'x': 3}]]]
		
		Args:
		  st: the original StructuredTensor.
		  axis: the axis to insert the dimension: `-(rank + 1) <= axis <= rank`
		  name: the name of the op.
		
		Returns:
		  a new structured tensor with larger rank.
		
		Raises:
		  an error if `axis < -(rank + 1)` or `rank < axis`.
	**/
	static public function _expand_dims_impl(st:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create the row_partitions for expand_dims.
	**/
	static public function _expand_st_row_partitions(st:Dynamic, axis:Dynamic):Dynamic;
	/**
		Extend an op from RaggedTensor and Tensor to StructuredTensor.
		
		Visits all children of the structured tensor, and children of children,
		applying leaf_op whenever it reaches a leaf, and empty_st_op whenever
		it reaches an internal node without children.
		
		Args:
		  values: a list of structured tensors, ragged tensors, or tensors. All must
		    have the same type. If they are structured tensors, they must have the
		    same paths.
		  leaf_op: an op for handling non-structured tensor.
		  empty_st_op: op to create a structured tensor without fields.
		
		Returns:
		  the result of the extended op (a StructuredTensor, RaggedTensor, or Tensor)
		
		Raises:
		  ValueError:
		    If values is not a Sequence or is empty.
	**/
	static public function _extend_op(values:Dynamic, leaf_op:Dynamic, ?empty_st_op:Dynamic):Dynamic;
	/**
		Extend an op to a value instead of a list of values.
	**/
	static public function _extend_op_single(value:Dynamic, leaf_op:Dynamic, ?empty_st_op:Dynamic):Dynamic;
	/**
		Get all the paths from a StructuredTensor.
	**/
	static public function _get_all_paths(st:Dynamic):Dynamic;
	/**
		Get ranks of all submessages of a StructuredTensor.
	**/
	static public function _get_all_ranks(st:Dynamic):Dynamic;
	/**
		Create a structured tensor with the shape of a dense tensor.
	**/
	static public function _structured_tensor_from_dense_tensor(t:Dynamic):Dynamic;
	static public function _structured_tensor_from_row_partitions(shape:Dynamic, row_partitions:Dynamic):Dynamic;
	/**
		Create a StructuredTensor with the shape of a (composite) tensor.
	**/
	static public function _structured_tensor_like(t:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		tf.concat for structured tensors.
		
		Does not support (yet) checks on illegal axis values, et cetera.
		
		Args:
		  values: a sequence of StructuredTensors.
		  axis: an axis to concatenate upon.
		  name: the name of the op(s).
		
		Returns:
		  the params reorganized according to indices.
	**/
	static public function concat(values:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function empty_st_op_like_zeros(leaf_op:Dynamic):Dynamic;
	/**
		Creates a StructuredTensor with a length 1 axis inserted at index `axis`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		Use the `axis` argument instead
		
		This is an implementation of tf.expand_dims for StructuredTensor. Note
		that the `axis` must be less than or equal to rank.
		
		>>> st = StructuredTensor.from_pyval([[{"x": 1}, {"x": 2}], [{"x": 3}]])
		>>> tf.expand_dims(st, 0).to_pyval()
		[[[{'x': 1}, {'x': 2}], [{'x': 3}]]]
		>>> tf.expand_dims(st, 1).to_pyval()
		[[[{'x': 1}, {'x': 2}]], [[{'x': 3}]]]
		>>> tf.expand_dims(st, 2).to_pyval()
		[[[{'x': 1}], [{'x': 2}]], [[{'x': 3}]]]
		>>> tf.expand_dims(st, -1).to_pyval()  # -1 is the same as 2
		[[[{'x': 1}], [{'x': 2}]], [[{'x': 3}]]]
		
		Args:
		  input: the original StructuredTensor.
		  axis: the axis to insert the dimension: `-(rank + 1) <= axis <= rank`
		  name: the name of the op.
		  dim: deprecated: use axis.
		
		Returns:
		  a new structured tensor with larger rank.
		
		Raises:
		  an error if `axis < -(rank + 1)` or `rank < axis`.
	**/
	static public function expand_dims(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Creates a StructuredTensor with a length 1 axis inserted at index `axis`.
		
		This is an implementation of tf.expand_dims for StructuredTensor. Note
		that the `axis` must be less than or equal to rank.
		
		>>> st = StructuredTensor.from_pyval([[{"x": 1}, {"x": 2}], [{"x": 3}]])
		>>> tf.expand_dims(st, 0).to_pyval()
		[[[{'x': 1}, {'x': 2}], [{'x': 3}]]]
		>>> tf.expand_dims(st, 1).to_pyval()
		[[[{'x': 1}, {'x': 2}]], [[{'x': 3}]]]
		>>> tf.expand_dims(st, 2).to_pyval()
		[[[{'x': 1}], [{'x': 2}]], [[{'x': 3}]]]
		>>> tf.expand_dims(st, -1).to_pyval()  # -1 is the same as 2
		[[[{'x': 1}], [{'x': 2}]], [[{'x': 3}]]]
		
		Args:
		  input: the original StructuredTensor.
		  axis: the axis to insert the dimension: `-(rank + 1) <= axis <= rank`
		  name: the name of the op.
		
		Returns:
		  a new structured tensor with larger rank.
		
		Raises:
		  an error if `axis < -(rank + 1)` or `rank < axis`.
	**/
	static public function expand_dims_v2(input:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		tf.gather for structured tensors.
		
		Does not support (yet) checks on illegal axis values, et cetera.
		
		Indices must be a ragged or dense tensor.
		Args:
		  params: a structured tensor to be gathered
		  indices: a ragged tensor or tensor to gather by.
		  validate_indices: whether to validate the indices
		  name: the name of the op(s).
		  axis: the axis in params to gather on.
		  batch_dims: the number of batch dimensions.
		
		Returns:
		  the params reorganized according to indices.
	**/
	static public function gather(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?batch_dims:Dynamic):Dynamic;
	/**
		Implementation of zeros_like for StructuredTensor for TF v1.
	**/
	static public function ones_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		Replace every object with a zero.
		
		Example:
		>>> st = StructuredTensor.from_pyval([{"x":[3]}, {"x":[4,5]}])
		>>> tf.ones_like(st)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1.0, 1.0], dtype=float32)>
		>>> st = StructuredTensor.from_pyval([[{"x":[3]}], [{"x":[4,5]}, {"x":[]}]])
		>>> tf.ones_like(st, dtype=tf.int32)
		<tf.RaggedTensor [[1], [1, 1]]>
		
		Args:
		  input: a structured tensor.
		  dtype: the dtype of the resulting zeros. (default is tf.float32)
		  name: a name for the op.
		Returns:
		  a tensor of zeros of the same shape.
	**/
	static public function ones_like_v2(input:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Shuffle a structured tensor on the zeroth axis.
		
		Args:
		  value: a structured tensor of rank at least one.
		  seed: the seed for shuffling.
		  name: the name for shuffle.
		
		Returns:
		  The shuffled structured tensor.
	**/
	static public function random_shuffle(value:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the rank of a tensor.
	**/
	static public function rank(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
	**/
	static public function size(input:Dynamic, ?name:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Returns the size of a tensor.
	**/
	static public function size_v2(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Implementation of zeros_like for StructuredTensor for TF v1.
	**/
	static public function zeros_like(tensor:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?optimize:Dynamic):Dynamic;
	/**
		Replace every object with a zero.
		
		Example:
		>>> st = StructuredTensor.from_pyval([{"x":[3]}, {"x":[4,5]}])
		>>> tf.zeros_like(st)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([0.0, 0.0], dtype=float32)>
		>>> st = StructuredTensor.from_pyval([[{"x":[3]}], [{"x":[4,5]}, {"x":[]}]])
		>>> tf.zeros_like(st, dtype=tf.int32)
		<tf.RaggedTensor [[0], [0, 0]]>
		
		Args:
		  input: a structured tensor.
		  dtype: the dtype of the resulting zeros. (default is tf.float32)
		  name: a name for the op.
		Returns:
		  a tensor of zeros of the same shape.
	**/
	static public function zeros_like_v2(input:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}