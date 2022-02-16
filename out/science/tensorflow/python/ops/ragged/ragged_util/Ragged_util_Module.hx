/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_util;
@:pythonImport("tensorflow.python.ops.ragged.ragged_util") extern class Ragged_util_Module {
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
		Checks that the given splits lists are identical.
		
		Performs static tests to ensure that the given splits lists are identical,
		and returns a list of control dependency op tensors that check that they are
		fully identical.
		
		Args:
		  nested_splits_lists: A list of nested_splits_lists, where each split_list is
		    a list of `splits` tensors from a `RaggedTensor`, ordered from outermost
		    ragged dimension to innermost ragged dimension.
		
		Returns:
		  A list of control dependency op tensors.
		Raises:
		  ValueError: If the splits are not identical.
	**/
	static public function assert_splits_match(nested_splits_lists:Dynamic):Dynamic;
	/**
		Converts the given value to an integer Tensor.
	**/
	static public function convert_to_int_tensor(tensor:Dynamic, name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		Returns splits corresponding to the given lengths.
	**/
	static public function lengths_to_splits(lengths:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
	static public function repeat(data:Dynamic, repeats:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Repeats each range of `params` (as specified by `splits`) `repeats` times.
		
		Let the `i`th range of `params` be defined as
		`params[splits[i]:splits[i + 1]]`.  Then this function returns a tensor
		containing range 0 repeated `repeats[0]` times, followed by range 1 repeated
		`repeats[1]`, ..., followed by the last range repeated `repeats[-1]` times.
		
		Args:
		  params: The `Tensor` whose values should be repeated.
		  splits: A splits tensor indicating the ranges of `params` that should be
		    repeated.
		  repeats: The number of times each range should be repeated.  Supports
		    broadcasting from a scalar value.
		
		Returns:
		  A `Tensor` with the same rank and type as `params`.
		
		#### Example:
		
		>>> print(repeat_ranges(
		...     params=tf.constant(['a', 'b', 'c']),
		...     splits=tf.constant([0, 2, 3]),
		...     repeats=tf.constant(3)))
		tf.Tensor([b'a' b'b' b'a' b'b' b'a' b'b' b'c' b'c' b'c'],
		    shape=(9,), dtype=string)
	**/
	static public function repeat_ranges(params:Dynamic, splits:Dynamic, repeats:Dynamic):Dynamic;
}