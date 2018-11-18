/* This file is generated, do not edit! */
package tensorflow.python.ops.bitwise_ops;
@:pythonImport("tensorflow.python.ops.bitwise_ops") extern class Bitwise_ops_Module {
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
		This is the slowpath function for Eager mode.
		This is for function bitwise_and
	**/
	static public function bitwise_and_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function bitwise_or
	**/
	static public function bitwise_or_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function bitwise_xor
	**/
	static public function bitwise_xor_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function invert
	**/
	static public function invert_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function left_shift
	**/
	static public function left_shift_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes element-wise population count (a.k.a. popcount, bitsum, bitcount).
		
		For each entry in `x`, calculates the number of `1` (on) bits in the binary
		representation of that entry.
		
		**NOTE**: It is more efficient to first `tf.bitcast` your tensors into
		`int32` or `int64` and perform the bitcount on the result, than to feed in
		8- or 16-bit inputs and then aggregate the resulting counts.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `uint8`, `uint16`, `uint32`, `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function population_count(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function population_count
	**/
	static public function population_count_eager_fallback(x:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
	/**
		This is the slowpath function for Eager mode.
		This is for function right_shift
	**/
	static public function right_shift_eager_fallback(x:Dynamic, y:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}