/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.sort_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.sort_ops") extern class Sort_ops_Module {
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
}