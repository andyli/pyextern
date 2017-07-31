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
		Returns moving offset for each dimension given shape.
	**/
	static public function _multiplier_helper(shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts a dense Tensor to a SparseTensor, dropping ignore_value cells.
		
		Args:
		  dense_tensor: A `Tensor`.
		  ignore_value: Entries in `dense_tensor` equal to this value will be
		    absent from the return `SparseTensor`. If `None`, default value of
		    dense_tensor's dtype will be used (e.g. '' for `str`, 0 for `int`).
		
		Returns:
		  A `SparseTensor` with the same shape as `dense_tensor`.
		
		Raises:
		  ValueError: when `dense_tensor`'s rank is `None`.
	**/
	static public function dense_to_sparse_tensor(dense_tensor:Dynamic, ?ignore_value:Dynamic):Dynamic;
	static public var division : Dynamic;
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