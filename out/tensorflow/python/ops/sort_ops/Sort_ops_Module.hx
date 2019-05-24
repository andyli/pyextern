/* This file is generated, do not edit! */
package tensorflow.python.ops.sort_ops;
@:pythonImport("tensorflow.python.ops.sort_ops") extern class Sort_ops_Module {
	static public var _SORT_IMPL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ascending_sort(values:Dynamic, axis:Dynamic, ?return_argsort:Dynamic):Dynamic;
	/**
		Sorts values in reverse using `top_k`.
		
		Args:
		  values: Tensor of numeric values.
		  axis: Index of the axis which values should be sorted along.
		  return_argsort: If False, return the sorted values. If True, return the
		    indices that would sort the values.
		
		Returns:
		  The sorted values.
	**/
	static public function _descending_sort(values:Dynamic, axis:Dynamic, ?return_argsort:Dynamic):Dynamic;
	/**
		Internal sort/argsort implementation.
		
		Args:
		  values: The input values.
		  axis: The axis along which to sort.
		  direction: 'ASCENDING' or 'DESCENDING'.
		  return_argsort: Whether to return the argsort result.
		
		Returns:
		  Either the sorted values, or the indices of the sorted values in the
		      original tensor. See the `sort` and `argsort` docstrings.
		
		Raises:
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function _sort_or_argsort(values:Dynamic, axis:Dynamic, direction:Dynamic, return_argsort:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the indices of a tensor that give its sorted order along an axis.
		
		For a 1D tensor, `tf.gather(values, tf.argsort(values))` is equivalent to
		`tf.sort(values)`. For higher dimensions, the output has the same shape as
		`values`, but along the given axis, values represent the index of the sorted
		element in that slice of the tensor at the given position.
		
		Args:
		  values: 1-D or higher numeric `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		    axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		    `'DESCENDING'`).
		  stable: If True, equal elements in the original tensor will not be
		    re-ordered in the returned order. Unstable sort is not yet implemented,
		    but will eventually be the default for performance reasons. If you require
		    a stable order, pass `stable=True` for forwards compatibility.
		  name: Optional name for the operation.
		
		Returns:
		  An int32 `Tensor` with the same shape as `values`. The indices that would
		      sort each slice of the given `values` along the given `axis`.
		
		Raises:
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function argsort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?stable:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Sorts a tensor.
		
		Args:
		  values: 1-D or higher numeric `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		    axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		    `'DESCENDING'`).
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same dtype and shape as `values`, with the elements
		      sorted along the given `axis`.
		
		Raises:
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function sort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}