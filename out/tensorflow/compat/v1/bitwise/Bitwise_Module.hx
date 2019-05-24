/* This file is generated, do not edit! */
package tensorflow.compat.v1.bitwise;
@:pythonImport("tensorflow.compat.v1.bitwise") extern class Bitwise_Module {
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
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function bitwise_xor(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Flips all bits elementwise.
		
		The result will have exactly those bits set, that are not set in `x`. The
		computation is performed on the underlying representation of x.
		
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
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	static public function right_shift(x:Dynamic, y:Dynamic, ?name:Dynamic):Dynamic;
}