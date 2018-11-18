/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.ops.sparse_ops;
@:pythonImport("tensorflow.contrib.layers.python.ops.sparse_ops") extern class Sparse_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create `Tensor` from provided `ignore_value` and  `dtype`.
	**/
	static public function _ignore_value_tensor(dtype:Dynamic, ?ignore_value:Dynamic):Dynamic;
	/**
		Returns moving offset for each dimension given shape.
	**/
	static public function _multiplier_helper(shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts dense `Tensor` to `SparseTensor`, dropping `ignore_value` cells.
		
		Args:
		  dense_tensor: A `Tensor`.
		  ignore_value: Entries in `dense_tensor` equal to this value will be
		    absent from the return `SparseTensor`. If `None`, default value of
		    `dense_tensor` dtype will be used (e.g. '' for `str`, 0 for `int`).
		
		Returns:
		  A `SparseTensor` with the same shape as `dense_tensor`.
		
		Raises:
		  ValueError: when `dense_tensor`'s rank is `None`.
	**/
	static public function dense_to_sparse_tensor(dense_tensor:Dynamic, ?ignore_value:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Convert a dense indicator tensor to sparse IDs.
		
		This is commonly used for converting a dense classification label to sparse.
		In the following example, we have an input of shape (2, 2, num_classes),
		where num_classes=4.
		
		```python
		indicators = [
		  [
		    [0, 0, 1, 0],
		    [0, 0, 0, 0]
		  ], [
		    [1, 0, 1, 1],
		    [0, 0, 1, 0]
		  ]
		]
		sparse_ids = indicator_to_sparse_ids(indicators)
		```
		
		`sparse_ids` in "jagged" format:
		[
		  [
		    [2],
		    []
		  ], [
		    [0, 2, 3],
		    [2]
		  ]
		]
		
		`sparse_ids` in `SparseTensor` format:
		```python
		{
		  indices: [[0, 0, 1], [1, 0, 0], [1, 0, 1], [1, 0, 2], [1, 1, 0]],
		  values: [2, 0, 2, 3, 2],
		  dense_shape: [2, 2, 3]
		}
		```
		
		Args:
		  indicators: Dense `Tensor` of shape `(d0, ..., dn, num_classes)`.
		    `ignore_value` values are ignored. For other values (typically, ones), the
		    index along the last dimension is returned.
		  ignore_value: Entries in `indicators` equal to this value will be
		    absent from the returned `SparseTensor`. If `None`, default value of
		    `indicators` dtype will be used (e.g. '' for `str`, 0 for `int`).
		  dtype: Type of result, must be integer type.
		
		Returns:
		  `SparseTensor` of type `dtype` and shape `(d0, ..., dn, max_num_labels)`,
		    where `max_num_labels` is the maximum number of non-zero values in any
		    row (in the example above, row (1, 1) has 3 non-zero values, so the result
		    shape is (2, 2, 3)). The values of this `SparseTensor` are in the range
		    `[0, num_classes)` and correspond to the index of non-ignore values along
		    the last dimension of `indicators`.
		
		Raises:
		  ValueError: if `dtype` is not integer.
	**/
	static public function indicators_to_sparse_ids(indicators:Dynamic, ?ignore_value:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns the length of each 'row' in a `SparseTensor`.
		
		For example, if `sparse_input` has indices `[[0,0], [2, 0], [2, 1], [2, 2]]`
		and shape `[3, 3]`, this function will return `[1, 0, 3]`.
		
		Args:
		  sparse_input: a `SparseTensor` of rank at least 2.
		  row_axis: An integer. The axis for the row of the envelope matrix. Default
		    is 0.
		  col_axis: An integer. The axis for the col of the envelope matrix. Default
		    is 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A one-dimensional `Tensor` whose entries correspond to the length of each
		  row of `SparseTensor`.
		
		Raises:
		  ValueError: If row_axis and col_axis are the same axis or they are not
		    integers.
	**/
	static public function sparse_row_envelope(sparse_input:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?name:Dynamic):Dynamic;
}