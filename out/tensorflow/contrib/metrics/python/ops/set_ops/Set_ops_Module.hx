/* This file is generated, do not edit! */
package tensorflow.contrib.metrics.python.ops.set_ops;
@:pythonImport("tensorflow.contrib.metrics.python.ops.set_ops") extern class Set_ops_Module {
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
		  a = [
		    [
		      [
		        [1, 2],
		        [3],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
		  b = [
		    [
		      [
		        [1, 3],
		        [2],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
		  set_difference(a, b, aminusb=True) = [
		    [
		      [
		        [2],
		        [3],
		      ],
		      [
		        [],
		        [],
		      ],
		    ],
		  ]
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
		  a = [
		    [
		      [
		        [1, 2],
		        [3],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
		  b = [
		    [
		      [
		        [1, 3],
		        [2],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
		  set_intersection(a, b) = [
		    [
		      [
		        [1],
		        [],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
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
		  a = [
		    [
		      [
		        [1, 2],
		        [3],
		      ],
		      [
		        [4],
		        [5, 6],
		      ],
		    ],
		  ]
		  b = [
		    [
		      [
		        [1, 3],
		        [2],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
		  set_union(a, b) = [
		    [
		      [
		        [1, 2, 3],
		        [2, 3],
		      ],
		      [
		        [4, 5],
		        [5, 6, 7, 8],
		      ],
		    ],
		  ]
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
}