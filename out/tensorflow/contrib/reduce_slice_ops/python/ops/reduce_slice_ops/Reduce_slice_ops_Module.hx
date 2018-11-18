/* This file is generated, do not edit! */
package tensorflow.contrib.reduce_slice_ops.python.ops.reduce_slice_ops;
@:pythonImport("tensorflow.contrib.reduce_slice_ops.python.ops.reduce_slice_ops") extern class Reduce_slice_ops_Module {
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
		Dynamically compute the maximum over the first dimension of a tensor according
		
		to start and end indices specified at "indices".
		
		For example:
		
		```prettyprint
		# if 'data' is [[   1,  20,   3]
		                [ 400,   5,  60]
		                [  70,   8, 900]
		                [1000,2000,3000]],
		
		and 'indices' is [[0,1]
		                  [1,1]
		                  [0,2]],
		
		the output will be [[          1,         20,          3]
		                    [ -BIG_VALUE, -BIG_VALUE, -BIG_VALUE]
		                    [        400,         20,         60]].
		```
		
		The data must be at least rank 1. The indices can be of shape (?,2) where the
		first column is start indices and the second column is end indices. The end indices
		are not included in the reduce operation, which means, if you want to do a reduce
		over indices 0,1,2, then you should have start index 0 and end index 3. If end
		index is smaller than or equal to start, the result will be 1. If end index is
		out of bounds, then the reduce operation will automatically stop at the bound, so
		feel free to put a large number as your end of your index if you want to do the
		reduction until the bound. The indices can also be of shape (?), in this case, the
		start index of i will be the element at i, then end index of i will be the element
		at i+1. That is:
		
		```prettyprint
		indices = [0,5,11,115]
		
		is equivalent to
		
		indices = [ [0,5],
		            [5,11],
		            [11,115]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The source of data where the computation will be taken from.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    start, end indices that controls which part to be included.
		  axis: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. the computed product values.
	**/
	static public function reduce_slice_max(data:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dynamically compute the minimum over the first dimension of a tensor according
		
		to start and end indices specified at 'indices'.
		
		For example:
		
		```prettyprint
		# if 'data' is [[   1,  20,   3]
		                [ 400,   5,  60]
		                [  70,   8, 900]
		                [1000,2000,3000]],
		
		and 'indices' is [[0,1]
		                  [1,1]
		                  [0,2]],
		
		the output will be [[          1,         20,          3]
		                    [ +BIG_VALUE, +BIG_VALUE, +BIG_VALUE]
		                    [          1,          5,          3]].
		```
		
		The data must be at least rank 1. The indices can be of shape (?,2) where the
		first column is start indices and the second column is end indices. The end indices
		are not included in the reduce operation, which means, if you want to do a reduce
		over indices 0,1,2, then you should have start index 0 and end index 3. If end
		index is smaller than or equal to start, the result will be 1. If end index is
		out of bounds, then the reduce operation will automatically stop at the bound, so
		feel free to put a large number as your end of your index if you want to do the
		reduction until the bound. The indices can also be of shape (?), in this case, the
		start index of i will be the element at i, then end index of i will be the element
		at i+1. That is:
		
		```prettyprint
		indices = [0,5,11,115]
		
		is equivalent to
		
		indices = [ [0,5],
		            [5,11],
		            [11,115]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The source of data where the computation will be taken from.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    start, end indices that controls which part to be included.
		  axis: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. the computed product values.
	**/
	static public function reduce_slice_min(data:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dynamically compute the product over the first dimension of a tensor according
		
		to start and end indices specified at 'indices'.
		
		For example:
		
		```prettyprint
		# if 'data' is [[   1,   2,   3]
		                [  40,  50,  60]
		                [ 700, 800, 900]
		                [1000,2000,3000]],
		
		and 'indices' is [[0,1]
		                  [1,1]
		                  [0,2]],
		
		the output will be [[ 1,  2,  3]
		                    [ 1,  1,  1]
		                    [40,100,180]].
		```
		
		The data must be at least rank 1. The indices can be of shape (?,2) where the
		first column is start indices and the second column is end indices. The end indices
		are not included in the reduce operation, which means, if you want to do a reduce
		over indices 0,1,2, then you should have start index 0 and end index 3. If end
		index is smaller than or equal to start, the result will be 1. If end index is
		out of bounds, then the reduce operation will automatically stop at the bound, so
		feel free to put a large number as your end of your index if you want to do the
		reduction until the bound. The indices can also be of shape (?), in this case, the
		start index of i will be the element at i, then end index of i will be the element
		at i+1. That is:
		
		```prettyprint
		indices = [0,5,11,115]
		
		is equivalent to
		
		indices = [ [0,5],
		            [5,11],
		            [11,115]]
		```
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The source of data where the computation will be taken from.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    start, end indices that controls which part to be included.
		  axis: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. the computed product values.
	**/
	static public function reduce_slice_prod(data:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dynamically sum over the first dimension of a tensor according to start and end
		
		indices specified at 'index'.
		
		For example:
		
		```prettyprint
		# if 'data' is [[   1,   2,   3]
		                [  40,  50,  60]
		                [ 700, 800, 900]
		                [1000,2000,3000]],
		
		and 'indices' is [[0,1]
		                  [1,1]
		                  [0,2]],
		
		the output will be [[ 1, 2, 3]
		                    [ 0, 0, 0]
		                    [41,52,63]].
		```
		
		The data must be at least rank 1. The indices must be of shape (?,2) where the
		first column is start indices and the second column is end indices. The end indices
		are not included in the reduce operation, which means, if you want to do a reduce
		over indices 0,1,2, then you should have start index 0 and end index 3. If end
		index is smaller than or equal to start, the result will be zero. If end index is
		out of bounds, then the reduce operation will automatically stop at the bound, so
		feel free to put a large number as your end of your index if you want to do the
		reduction until the bound.
		
		Args:
		  data: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The source of data where the computation will be taken from.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    start, end indices that controls which part to be included.
		  axis: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. the computed sum values.
	**/
	static public function reduce_slice_sum(data:Dynamic, indices:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
}