/* This file is generated, do not edit! */
package tensorflow.bitwise;
@:pythonImport("tensorflow.bitwise") extern class Bitwise_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Elementwise computes the bitwise AND of `x` and `y`.
		
		The result will have those bits set, that are set in both `x` and `y`. The
		computation is performed on the underlying representations of `x` and `y`.
		
		For example:
		
		```python
		import tensorflow as tf
		from tensorflow.python.ops import bitwise_ops
		dtype_list = [tf.int8, tf.int16, tf.int32, tf.int64,
		              tf.uint8, tf.uint16, tf.uint32, tf.uint64]
		
		for dtype in dtype_list:
		  lhs = tf.constant([0, 5, 3, 14], dtype=dtype)
		  rhs = tf.constant([5, 0, 7, 11], dtype=dtype)
		  exp = tf.constant([0, 0, 3, 10], dtype=tf.float32)
		
		  res = bitwise_ops.bitwise_and(lhs, rhs)
		  tf.assert_equal(tf.cast(res, tf.float32), exp) # TRUE
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function bitwise_and(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Elementwise computes the bitwise OR of `x` and `y`.
		
		The result will have those bits set, that are set in `x`, `y` or both. The
		computation is performed on the underlying representations of `x` and `y`.
		
		For example:
		
		```python
		import tensorflow as tf
		from tensorflow.python.ops import bitwise_ops
		dtype_list = [tf.int8, tf.int16, tf.int32, tf.int64,
		              tf.uint8, tf.uint16, tf.uint32, tf.uint64]
		
		for dtype in dtype_list:
		  lhs = tf.constant([0, 5, 3, 14], dtype=dtype)
		  rhs = tf.constant([5, 0, 7, 11], dtype=dtype)
		  exp = tf.constant([5, 5, 7, 15], dtype=tf.float32)
		
		  res = bitwise_ops.bitwise_or(lhs, rhs)
		  tf.assert_equal(tf.cast(res,  tf.float32), exp)  # TRUE
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function bitwise_or(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Elementwise computes the bitwise XOR of `x` and `y`.
		
		The result will have those bits set, that are different in `x` and `y`. The
		computation is performed on the underlying representations of `x` and `y`.
		
		For example:
		
		```python
		import tensorflow as tf
		from tensorflow.python.ops import bitwise_ops
		dtype_list = [tf.int8, tf.int16, tf.int32, tf.int64,
		              tf.uint8, tf.uint16, tf.uint32, tf.uint64]
		
		for dtype in dtype_list:
		  lhs = tf.constant([0, 5, 3, 14], dtype=dtype)
		  rhs = tf.constant([5, 0, 7, 11], dtype=dtype)
		  exp = tf.constant([5, 5, 4, 5],  dtype=tf.float32)
		
		  res = bitwise_ops.bitwise_xor(lhs, rhs)
		  tf.assert_equal(tf.cast(res, tf.float32), exp) # TRUE
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function bitwise_xor(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Invert (flip) each bit of supported types; for example, type `uint8` value 01010101 becomes 10101010.
		
		Flip each bit of supported types.  For example, type `int8` (decimal 2) binary 00000010 becomes (decimal -3) binary 11111101.
		This operation is performed on each element of the tensor argument `x`.
		
		Example:
		```python
		import tensorflow as tf
		from tensorflow.python.ops import bitwise_ops
		
		# flip 2 (00000010) to -3 (11111101)
		tf.assert_equal(-3, bitwise_ops.invert(2))
		
		dtype_list = [dtypes.int8, dtypes.int16, dtypes.int32, dtypes.int64,
		              dtypes.uint8, dtypes.uint16, dtypes.uint32, dtypes.uint64]
		
		inputs = [0, 5, 3, 14]
		for dtype in dtype_list:
		  # Because of issues with negative numbers, let's test this indirectly.
		  # 1. invert(a) and a = 0
		  # 2. invert(a) or a = invert(0)
		  input_tensor = tf.constant([0, 5, 3, 14], dtype=dtype)
		  not_a_and_a, not_a_or_a, not_0 = [bitwise_ops.bitwise_and(
		                                      input_tensor, bitwise_ops.invert(input_tensor)),
		                                    bitwise_ops.bitwise_or(
		                                      input_tensor, bitwise_ops.invert(input_tensor)),
		                                    bitwise_ops.invert(
		                                      tf.constant(0, dtype=dtype))]
		
		  expected = tf.constant([0, 0, 0, 0], dtype=tf.float32)
		  tf.assert_equal(tf.cast(not_a_and_a, tf.float32), expected)
		
		  expected = tf.cast([not_0] * 4, tf.float32)
		  tf.assert_equal(tf.cast(not_a_or_a, tf.float32), expected)
		
		  # For unsigned dtypes let's also check the result directly.
		  if dtype.is_unsigned:
		    inverted = bitwise_ops.invert(input_tensor)
		    expected = tf.constant([dtype.max - x for x in inputs], dtype=tf.float32)
		    tf.assert_equal(tf.cast(inverted, tf.float32), tf.cast(expected, tf.float32))
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function invert(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Elementwise computes the bitwise left-shift of `x` and `y`.
		
		If `y` is negative, or greater than or equal to the width of `x` in bits the
		result is implementation defined.
		
		Example:
		
		```python
		import tensorflow as tf
		from tensorflow.python.ops import bitwise_ops
		import numpy as np
		dtype_list = [tf.int8, tf.int16, tf.int32, tf.int64]
		
		for dtype in dtype_list:
		  lhs = tf.constant([-1, -5, -3, -14], dtype=dtype)
		  rhs = tf.constant([5, 0, 7, 11], dtype=dtype)
		
		  left_shift_result = bitwise_ops.left_shift(lhs, rhs)
		
		  print(left_shift_result)
		
		# This will print:
		# tf.Tensor([ -32   -5 -128    0], shape=(4,), dtype=int8)
		# tf.Tensor([   -32     -5   -384 -28672], shape=(4,), dtype=int16)
		# tf.Tensor([   -32     -5   -384 -28672], shape=(4,), dtype=int32)
		# tf.Tensor([   -32     -5   -384 -28672], shape=(4,), dtype=int64)
		
		lhs = np.array([-2, 64, 101, 32], dtype=np.int8)
		rhs = np.array([-1, -5, -3, -14], dtype=np.int8)
		bitwise_ops.left_shift(lhs, rhs)
		# <tf.Tensor: shape=(4,), dtype=int8, numpy=array([ -2,  64, 101,  32], dtype=int8)>
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function left_shift(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Elementwise computes the bitwise right-shift of `x` and `y`.
		
		Performs a logical shift for unsigned integer types, and an arithmetic shift
		for signed integer types.
		
		If `y` is negative, or greater than or equal to than the width of `x` in bits
		the result is implementation defined.
		
		Example:
		
		```python
		import tensorflow as tf
		from tensorflow.python.ops import bitwise_ops
		import numpy as np
		dtype_list = [tf.int8, tf.int16, tf.int32, tf.int64]
		
		for dtype in dtype_list:
		  lhs = tf.constant([-1, -5, -3, -14], dtype=dtype)
		  rhs = tf.constant([5, 0, 7, 11], dtype=dtype)
		
		  right_shift_result = bitwise_ops.right_shift(lhs, rhs)
		
		  print(right_shift_result)
		
		# This will print:
		# tf.Tensor([-1 -5 -1 -1], shape=(4,), dtype=int8)
		# tf.Tensor([-1 -5 -1 -1], shape=(4,), dtype=int16)
		# tf.Tensor([-1 -5 -1 -1], shape=(4,), dtype=int32)
		# tf.Tensor([-1 -5 -1 -1], shape=(4,), dtype=int64)
		
		lhs = np.array([-2, 64, 101, 32], dtype=np.int8)
		rhs = np.array([-1, -5, -3, -14], dtype=np.int8)
		bitwise_ops.right_shift(lhs, rhs)
		# <tf.Tensor: shape=(4,), dtype=int8, numpy=array([ -2,  64, 101,  32], dtype=int8)>
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function right_shift(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
}