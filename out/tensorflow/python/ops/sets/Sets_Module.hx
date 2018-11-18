/* This file is generated, do not edit! */
package tensorflow.python.ops.sets;
@:pythonImport("tensorflow.python.ops.sets") extern class Sets_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute set difference of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Example:
		
		```python
		  import tensorflow as tf
		  import collections
		
		  # Represent the following array of sets as a sparse tensor:
		  # a = np.array([[{1, 2}, {3}], [{4}, {5, 6}]])
		  a = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 2),
		      ((0, 1, 0), 3),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		  ])
		  a = tf.SparseTensor(list(a.keys()), list(a.values()), dense_shape=[2, 2, 2])
		
		  # np.array([[{1, 3}, {2}], [{4, 5}, {5, 6, 7, 8}]])
		  b = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 3),
		      ((0, 1, 0), 2),
		      ((1, 0, 0), 4),
		      ((1, 0, 1), 5),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		      ((1, 1, 2), 7),
		      ((1, 1, 3), 8),
		  ])
		  b = tf.SparseTensor(list(b.keys()), list(b.values()), dense_shape=[2, 2, 4])
		
		  # `set_difference` is applied to each aligned pair of sets.
		  tf.sets.set_difference(a, b)
		
		  # The result will be equivalent to either of:
		  #
		  # np.array([[{2}, {3}], [{}, {}]])
		  #
		  # collections.OrderedDict([
		  #     ((0, 0, 0), 2),
		  #     ((0, 1, 0), 3),
		  # ])
		```
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. If sparse, indices
		      must be sorted in row-major order.
		  aminusb: Whether to subtract `b` from `a`, vs vice versa.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` whose shape is the same rank as `a` and `b`, and all but
		  the last dimension the same. Elements along the last dimension contain the
		  differences.
	**/
	static public function set_difference(a:Dynamic, b:Dynamic, ?aminusb:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute set intersection of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Example:
		
		```python
		  import tensorflow as tf
		  import collections
		
		  # Represent the following array of sets as a sparse tensor:
		  # a = np.array([[{1, 2}, {3}], [{4}, {5, 6}]])
		  a = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 2),
		      ((0, 1, 0), 3),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		  ])
		  a = tf.SparseTensor(list(a.keys()), list(a.values()), dense_shape=[2,2,2])
		
		  # b = np.array([[{1}, {}], [{4}, {5, 6, 7, 8}]])
		  b = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		      ((1, 1, 2), 7),
		      ((1, 1, 3), 8),
		  ])
		  b = tf.SparseTensor(list(b.keys()), list(b.values()), dense_shape=[2, 2, 4])
		
		  # `tf.sets.set_intersection` is applied to each aligned pair of sets.
		  tf.sets.set_intersection(a, b)
		
		  # The result will be equivalent to either of:
		  #
		  # np.array([[{1}, {}], [{4}, {5, 6}]])
		  #
		  # collections.OrderedDict([
		  #     ((0, 0, 0), 1),
		  #     ((1, 0, 0), 4),
		  #     ((1, 1, 0), 5),
		  #     ((1, 1, 1), 6),
		  # ])
		```
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. If sparse, indices
		      must be sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` whose shape is the same rank as `a` and `b`, and all but
		  the last dimension the same. Elements along the last dimension contain the
		  intersections.
	**/
	static public function set_intersection(a:Dynamic, b:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute number of unique elements along last dimension of `a`.
		
		Args:
		  a: `SparseTensor`, with indices sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a`.
		
		Returns:
		  `int32` `Tensor` of set sizes. For `a` ranked `n`, this is a `Tensor` with
		  rank `n-1`, and the same 1st `n-1` dimensions as `a`. Each value is the
		  number of unique elements in the corresponding `[0...n-1]` dimension of `a`.
		
		Raises:
		  TypeError: If `a` is an invalid types.
	**/
	static public function set_size(a:Dynamic, ?validate_indices:Dynamic):Dynamic;
	/**
		Compute set union of elements in last dimension of `a` and `b`.
		
		All but the last dimension of `a` and `b` must match.
		
		Example:
		
		```python
		  import tensorflow as tf
		  import collections
		
		  # [[{1, 2}, {3}], [{4}, {5, 6}]]
		  a = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 2),
		      ((0, 1, 0), 3),
		      ((1, 0, 0), 4),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		  ])
		  a = tf.SparseTensor(list(a.keys()), list(a.values()), dense_shape=[2, 2, 2])
		
		  # [[{1, 3}, {2}], [{4, 5}, {5, 6, 7, 8}]]
		  b = collections.OrderedDict([
		      ((0, 0, 0), 1),
		      ((0, 0, 1), 3),
		      ((0, 1, 0), 2),
		      ((1, 0, 0), 4),
		      ((1, 0, 1), 5),
		      ((1, 1, 0), 5),
		      ((1, 1, 1), 6),
		      ((1, 1, 2), 7),
		      ((1, 1, 3), 8),
		  ])
		  b = tf.SparseTensor(list(b.keys()), list(b.values()), dense_shape=[2, 2, 4])
		
		  # `set_union` is applied to each aligned pair of sets.
		  tf.sets.set_union(a, b)
		
		  # The result will be a equivalent to either of:
		  #
		  # np.array([[{1, 2, 3}, {2, 3}], [{4, 5}, {5, 6, 7, 8}]])
		  #
		  # collections.OrderedDict([
		  #     ((0, 0, 0), 1),
		  #     ((0, 0, 1), 2),
		  #     ((0, 0, 2), 3),
		  #     ((0, 1, 0), 2),
		  #     ((0, 1, 1), 3),
		  #     ((1, 0, 0), 4),
		  #     ((1, 0, 1), 5),
		  #     ((1, 1, 0), 5),
		  #     ((1, 1, 1), 6),
		  #     ((1, 1, 2), 7),
		  #     ((1, 1, 3), 8),
		  # ])
		```
		
		Args:
		  a: `Tensor` or `SparseTensor` of the same type as `b`. If sparse, indices
		      must be sorted in row-major order.
		  b: `Tensor` or `SparseTensor` of the same type as `a`. If sparse, indices
		      must be sorted in row-major order.
		  validate_indices: Whether to validate the order and range of sparse indices
		     in `a` and `b`.
		
		Returns:
		  A `SparseTensor` whose shape is the same rank as `a` and `b`, and all but
		  the last dimension the same. Elements along the last dimension contain the
		  unions.
	**/
	static public function set_union(a:Dynamic, b:Dynamic, ?validate_indices:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}