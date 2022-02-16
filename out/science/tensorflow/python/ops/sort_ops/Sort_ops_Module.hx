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
	/**
		Sorts values in ascending order.
		
		Args:
		  values: Tensor of numeric values.
		  axis: Index of the axis which values should be sorted along.
		  return_argsort: If False, return the sorted values. If True, return the
		    indices that would sort the values.
		
		Returns:
		  The sorted values.
	**/
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
		
		>>> values = [1, 10, 26.9, 2.8, 166.32, 62.3]
		>>> sort_order = tf.argsort(values)
		>>> sort_order.numpy()
		array([0, 3, 1, 2, 5, 4], dtype=int32)
		
		For a 1D tensor:
		
		>>> sorted = tf.gather(values, sort_order)
		>>> assert tf.reduce_all(sorted == tf.sort(values))
		
		For higher dimensions, the output has the same shape as
		`values`, but along the given axis, values represent the index of the sorted
		element in that slice of the tensor at the given position.
		
		>>> mat = [[30,20,10],
		...        [20,10,30],
		...        [10,30,20]]
		>>> indices = tf.argsort(mat)
		>>> indices.numpy()
		array([[2, 1, 0],
		       [1, 0, 2],
		       [0, 2, 1]], dtype=int32)
		
		If `axis=-1` these indices can be used to apply a sort using `tf.gather`:
		
		>>> tf.gather(mat, indices, batch_dims=-1).numpy()
		array([[10, 20, 30],
		       [10, 20, 30],
		       [10, 20, 30]], dtype=int32)
		
		See also:
		
		  * `tf.sort`: Sort along an axis.
		  * `tf.math.top_k`: A partial sort that returns a fixed number of top values
		    and corresponding indices.
		
		Args:
		  values: 1-D or higher **numeric** `Tensor`.
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
		  tf.errors.InvalidArgumentError: If the `values.dtype` is not a `float` or
		      `int` type.
	**/
	static public function argsort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?stable:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Sorts a tensor.
		
		Usage:
		
		>>> a = [1, 10, 26.9, 2.8, 166.32, 62.3]
		>>> tf.sort(a).numpy()
		array([  1.  ,   2.8 ,  10.  ,  26.9 ,  62.3 , 166.32], dtype=float32)
		
		>>> tf.sort(a, direction='DESCENDING').numpy()
		array([166.32,  62.3 ,  26.9 ,  10.  ,   2.8 ,   1.  ], dtype=float32)
		
		For multidimensional inputs you can control which axis the sort is applied
		along. The default `axis=-1` sorts the innermost axis.
		
		>>> mat = [[3,2,1],
		...        [2,1,3],
		...        [1,3,2]]
		>>> tf.sort(mat, axis=-1).numpy()
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]], dtype=int32)
		>>> tf.sort(mat, axis=0).numpy()
		array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]], dtype=int32)
		
		See also:
		
		  * `tf.argsort`: Like sort, but it returns the sort indices.
		  * `tf.math.top_k`: A partial sort that returns a fixed number of top values
		    and corresponding indices.
		
		
		Args:
		  values: 1-D or higher **numeric** `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		    axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		    `'DESCENDING'`).
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same dtype and shape as `values`, with the elements
		      sorted along the given `axis`.
		
		Raises:
		  tf.errors.InvalidArgumentError: If the `values.dtype` is not a `float` or
		      `int` type.
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function sort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}