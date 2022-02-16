/* This file is generated, do not edit! */
package tensorflow.compat.v1.dtypes;
@:pythonImport("tensorflow.compat.v1.dtypes") extern class Dtypes_Module {
	static public var QUANTIZED_DTYPES : Dynamic;
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
		Converts the given `type_value` to a `DType`.
		
		Note: `DType` values are interned. When passed a new `DType` object,
		`as_dtype` always returns the interned value.
		
		Args:
		  type_value: A value that can be converted to a `tf.DType` object. This may
		    currently be a `tf.DType` object, a [`DataType`
		    enum](https://www.tensorflow.org/code/tensorflow/core/framework/types.proto),
		      a string type name, or a [`numpy.dtype`](https://numpy.org/doc/stable/reference/generated/numpy.dtype.html).
		
		Returns:
		  A `DType` corresponding to `type_value`.
		
		Raises:
		  TypeError: If `type_value` cannot be converted to a `DType`.
	**/
	static public function as_dtype(type_value:Dynamic):Dynamic;
	/**
		Converts each entry in the given tensor to strings.
		
		Supports many numeric types and boolean.
		
		For Unicode, see the
		[https://www.tensorflow.org/tutorials/representation/unicode](Working with Unicode text)
		tutorial.
		
		Examples:
		
		>>> tf.strings.as_string([3, 2])
		<tf.Tensor: shape=(2,), dtype=string, numpy=array([b'3', b'2'], dtype=object)>
		>>> tf.strings.as_string([3.1415926, 2.71828], precision=2).numpy()
		array([b'3.14', b'2.72'], dtype=object)
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `complex64`, `complex128`, `bool`, `variant`.
		  precision: An optional `int`. Defaults to `-1`.
		    The post-decimal precision to use for floating point numbers.
		    Only used if precision > -1.
		  scientific: An optional `bool`. Defaults to `False`.
		    Use scientific notation for floating point numbers.
		  shortest: An optional `bool`. Defaults to `False`.
		    Use shortest representation (either scientific or standard) for
		    floating point numbers.
		  width: An optional `int`. Defaults to `-1`.
		    Pad pre-decimal numbers to this width.
		    Applies to both floating point and integer numbers.
		    Only used if width > -1.
		  fill: An optional `string`. Defaults to `""`.
		    The value to pad if width > -1.  If empty, pads with spaces.
		    Another typical value is '0'.  String cannot be longer than 1 character.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function as_string(input:Dynamic, ?precision:Dynamic, ?scientific:Dynamic, ?shortest:Dynamic, ?width:Dynamic, ?fill:Dynamic, ?name:Dynamic):Dynamic;
	static public var bfloat16 : Dynamic;
	static public var bool : Dynamic;
	/**
		Casts a tensor to a new type.
		
		The operation casts `x` (in case of `Tensor`) or `x.values`
		(in case of `SparseTensor` or `IndexedSlices`) to `dtype`.
		
		For example:
		
		>>> x = tf.constant([1.8, 2.2], dtype=tf.float32)
		>>> tf.cast(x, tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1, 2], dtype=int32)>
		
		Notice `tf.cast` has an alias `tf.dtypes.cast`:
		
		>>> x = tf.constant([1.8, 2.2], dtype=tf.float32)
		>>> tf.dtypes.cast(x, tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([1, 2], dtype=int32)>
		
		The operation supports data types (for `x` and `dtype`) of
		`uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`, `int64`,
		`float16`, `float32`, `float64`, `complex64`, `complex128`, `bfloat16`.
		In case of casting from complex types (`complex64`, `complex128`) to real
		types, only the real part of `x` is returned. In case of casting from real
		types to complex types (`complex64`, `complex128`), the imaginary part of the
		returned value is set to `0`. The handling of complex types here matches the
		behavior of numpy.
		
		Note casting nan and inf values to integral types has undefined behavior.
		
		Args:
		  x: A `Tensor` or `SparseTensor` or `IndexedSlices` of numeric type. It could
		    be `uint8`, `uint16`, `uint32`, `uint64`, `int8`, `int16`, `int32`,
		    `int64`, `float16`, `float32`, `float64`, `complex64`, `complex128`,
		    `bfloat16`.
		  dtype: The destination type. The list of supported dtypes is the same as
		    `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` or `IndexedSlices` with same shape as `x` and
		    same type as `dtype`.
		
		Raises:
		  TypeError: If `x` cannot be cast to the `dtype`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts two real numbers to a complex number.
		
		Given a tensor `real` representing the real part of a complex number, and a
		tensor `imag` representing the imaginary part of a complex number, this
		operation returns complex numbers elementwise of the form \\(a + bj\\), where
		*a* represents the `real` part and *b* represents the `imag` part.
		
		The input tensors `real` and `imag` must have the same shape.
		
		For example:
		
		```python
		real = tf.constant([2.25, 3.25])
		imag = tf.constant([4.75, 5.75])
		tf.complex(real, imag)  # [[2.25 + 4.75j], [3.25 + 5.75j]]
		```
		
		Args:
		  real: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		  imag: A `Tensor`. Must have the same type as `real`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64` or `complex128`.
		
		Raises:
		  TypeError: Real and imag must be correct types
	**/
	static public function complex(real:Dynamic, imag:Dynamic, ?name:Dynamic):Dynamic;
	static public var complex128 : Dynamic;
	static public var complex64 : Dynamic;
	static public var double : Dynamic;
	static public var float16 : Dynamic;
	static public var float32 : Dynamic;
	static public var float64 : Dynamic;
	static public var half : Dynamic;
	static public var int16 : Dynamic;
	static public var int32 : Dynamic;
	static public var int64 : Dynamic;
	static public var int8 : Dynamic;
	static public var qint16 : Dynamic;
	static public var qint32 : Dynamic;
	static public var qint8 : Dynamic;
	static public var quint16 : Dynamic;
	static public var quint8 : Dynamic;
	static public var resource : Dynamic;
	/**
		Performs a safe saturating cast of `value` to `dtype`.
		
		This function casts the input to `dtype` without applying any scaling.  If
		there is a danger that values would over or underflow in the cast, this op
		applies the appropriate clamping before the cast.
		
		Args:
		  value: A `Tensor`.
		  dtype: The desired output `DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  `value` safely cast to `dtype`.
	**/
	static public function saturate_cast(value:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var string : Dynamic;
	static public var uint16 : Dynamic;
	static public var uint32 : Dynamic;
	static public var uint64 : Dynamic;
	static public var uint8 : Dynamic;
	static public var variant : Dynamic;
}