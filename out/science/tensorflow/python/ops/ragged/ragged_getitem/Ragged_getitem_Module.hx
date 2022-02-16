/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_getitem;
@:pythonImport("tensorflow.python.ops.ragged.ragged_getitem") extern class Ragged_getitem_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a `RaggedTensor` containing the specified sequences of values.
		
		Returns a RaggedTensor `output` where:
		
		```python
		output.shape[0] = starts.shape[0]
		output[i] = values[starts[i]:limits[i]:step]
		```
		
		Requires that `starts.shape == limits.shape` and
		`0 <= starts[i] <= limits[i] <= values.shape[0]`.
		
		Args:
		  starts: 1D integer Tensor specifying the start indices for the sequences of
		    values to include.
		  limits: 1D integer Tensor specifying the limit indices for the sequences of
		    values to include.
		  step: Integer value specifying the step size for strided slices.
		  values: The set of values to select from.
		
		Returns:
		  A `RaggedTensor`.
		
		Raises:
		  ValueError: Until the prerequisite ops are checked in.
	**/
	static public function _build_ragged_tensor_from_value_ranges(starts:Dynamic, limits:Dynamic, step:Dynamic, values:Dynamic):Dynamic;
	/**
		Expands the ellipsis at the start of `key_list`.
		
		Assumes that the first element of `key_list` is Ellipsis.  This will either
		remove the Ellipsis (if it corresponds to zero indices) or prepend a new
		`slice(None, None, None)` (if it corresponds to more than zero indices).
		
		Args:
		  key_list: The arguments to `__getitem__()`.
		  num_remaining_dims: The number of dimensions remaining.
		
		Returns:
		  A copy of `key_list` with he ellipsis expanded.
		Raises:
		  ValueError: If ragged_rank.shape.ndims is None
		  IndexError: If there are too many elements in `key_list`.
	**/
	static public function _expand_ellipsis(key_list:Dynamic, num_remaining_dims:Dynamic):Dynamic;
	/**
		Returns `true_fn() if value >= 0 else false_fn()`.
	**/
	static public function _if_ge_zero(value:Dynamic, true_fn:Dynamic, false_fn:Dynamic):Dynamic;
	/**
		Helper for indexing and slicing ragged tensors with __getitem__().
		
		Extracts the specified piece of the `rt_input`.  See
		`RaggedTensor.__getitem__` for examples and restrictions.
		
		Args:
		  rt_input: The `RaggedTensor` from which a piece should be returned.
		  key_list: The list of keys specifying which piece to return. Each key
		    corresponds with a separate dimension.
		
		Returns:
		  The indicated piece of rt_input.
		
		Raises:
		  ValueError: If `key_list` is not supported.
		  TypeError: If any keys in `key_list` have an unsupported type.
	**/
	static public function _ragged_getitem(rt_input:Dynamic, key_list:Dynamic):Dynamic;
	/**
		Retrieve inner dimensions, keeping outermost dimension unchanged.
		
		Args:
		  rt_input: The `RaggedTensor` or `Tensor` from which a piece should be
		    extracted.
		  key_list: The __getitem__ keys for slicing the inner dimensions.
		
		Returns:
		  A `RaggedTensor`.
		
		Raises:
		  ValueError: If key_list is not supported.
	**/
	static public function _ragged_getitem_inner_dimensions(rt_input:Dynamic, key_list:Dynamic):Dynamic;
	/**
		Computes the number of elements in a slice of a value with a given length.
		
		Returns the equivalent of: `len(range(value_length)[slice_key])`
		
		Args:
		  value_length: Scalar int `Tensor`: the length of the value being sliced.
		  slice_key: A `slice` object used to slice elements from the value.
		
		Returns:
		  The number of elements in the sliced value.
	**/
	static public function _slice_length(value_length:Dynamic, slice_key:Dynamic):Dynamic;
	/**
		Slice the outer dimension of `rt_input` according to the given `slice`.
		
		Args:
		  rt_input: The `RaggedTensor` to slice.
		  row_key: The `slice` object that should be used to slice `rt_input`.
		
		Returns:
		  A `RaggedTensor` containing the indicated slice of `rt_input`.
	**/
	static public function _slice_ragged_row_dimension(rt_input:Dynamic, row_key:Dynamic):Dynamic;
	/**
		Generates all Tensors in the given slice spec.
	**/
	static public function _tensors_in_key_list(key_list:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns the specified piece of this RaggedTensor.
		
		Supports multidimensional indexing and slicing, with one restriction:
		indexing into a ragged inner dimension is not allowed.  This case is
		problematic because the indicated value may exist in some rows but not
		others.  In such cases, it's not obvious whether we should (1) report an
		IndexError; (2) use a default value; or (3) skip that value and return a
		tensor with fewer rows than we started with.  Following the guiding
		principles of Python ("In the face of ambiguity, refuse the temptation to
		guess"), we simply disallow this operation.
		
		Args:
		  rt_input: The RaggedTensor to slice.
		  key: Indicates which piece of the RaggedTensor to return, using standard
		    Python semantics (e.g., negative values index from the end).  `key`
		    may have any of the following types:
		
		    * `int` constant
		    * Scalar integer `Tensor`
		    * `slice` containing integer constants and/or scalar integer
		      `Tensor`s
		    * `Ellipsis`
		    * `tf.newaxis`
		    * `tuple` containing any of the above (for multidimensional indexing)
		
		Returns:
		  A `Tensor` or `RaggedTensor` object.  Values that include at least one
		  ragged dimension are returned as `RaggedTensor`.  Values that include no
		  ragged dimensions are returned as `Tensor`.  See above for examples of
		  expressions that return `Tensor`s vs `RaggedTensor`s.
		
		Raises:
		  ValueError: If `key` is out of bounds.
		  ValueError: If `key` is not supported.
		  TypeError: If the indices in `key` have an unsupported type.
		
		Examples:
		
		>>> # A 2-D ragged tensor with 1 ragged dimension.
		>>> rt = tf.ragged.constant([['a', 'b', 'c'], ['d', 'e'], ['f'], ['g']])
		>>> rt[0].numpy()                 # First row (1-D `Tensor`)
		array([b'a', b'b', b'c'], dtype=object)
		>>> rt[:3].to_list()              # First three rows (2-D RaggedTensor)
		[[b'a', b'b', b'c'], [b'd', b'e'], [b'f']]
		>>> rt[3, 0].numpy()              # 1st element of 4th row (scalar)
		b'g'
		
		>>> # A 3-D ragged tensor with 2 ragged dimensions.
		>>> rt = tf.ragged.constant([[[1, 2, 3], [4]],
		...                          [[5], [], [6]],
		...                          [[7]],
		...                          [[8, 9], [10]]])
		>>> rt[1].to_list()               # Second row (2-D RaggedTensor)
		[[5], [], [6]]
		>>> rt[3, 0].numpy()              # First element of fourth row (1-D Tensor)
		array([8, 9], dtype=int32)
		>>> rt[:, 1:3].to_list()          # Items 1-3 of each row (3-D RaggedTensor)
		[[[4]], [[], [6]], [], [[10]]]
		>>> rt[:, -1:].to_list()          # Last item of each row (3-D RaggedTensor)
		[[[4]], [[6]], [[7]], [[10]]]
	**/
	static public function ragged_tensor_getitem(rt_input:Dynamic, key:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}