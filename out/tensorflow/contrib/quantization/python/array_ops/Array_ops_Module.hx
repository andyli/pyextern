/* This file is generated, do not edit! */
package tensorflow.contrib.quantization.python.array_ops;
@:pythonImport("tensorflow.contrib.quantization.python.array_ops") extern class Array_ops_Module {
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
		Dequantize the 'input' tensor into a float Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		if T == qint8, in[i] += (range(T) + 1)/ 2.0
		out[i] = min_range + (in[i]* (max_range - min_range) / range(T))
		```
		here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`
		
		*MIN_COMBINED Mode Example*
		
		If the input comes from a QuantizedRelu6, the output type is
		quint8 (range of 0-255) but the possible range of QuantizedRelu6 is
		0-6.  The min_range and max_range values are therefore 0.0 and 6.0.
		Dequantize on quint8 will take each value, cast to float, and multiply
		by 6 / 255.
		Note that if quantizedtype is qint8, the operation will additionally add
		each value by 128 prior to casting.
		
		If the mode is 'MIN_FIRST', then this approach is used:
		
		```
		number_of_steps = 1 << (# of bits in T)
		range_adjust = number_of_steps / (number_of_steps - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = number_of_steps / range
		const double offset_input = static_cast<double>(input) - lowest_quantized;
		result = range_min + ((input - numeric_limits<T>::min()) * range_scale)
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint16`, `quint16`, `qint32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST"`. Defaults to `"MIN_COMBINED"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Quantize the 'input' tensor of type float to 'output' tensor of type 'T'.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		out[i] = (in[i] - min_range) * range(T) / (max_range - min_range)
		if T == qint8, out[i] -= (range(T) + 1) / 2.0
		```
		here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`
		
		*MIN_COMBINED Mode Example*
		
		Assume the input is type float and has a possible range of [0.0, 6.0] and the
		output type is quint8 ([0, 255]). The min_range and max_range values should be
		specified as 0.0 and 6.0. Quantizing from float to quint8 will multiply each
		value of the input by 255/6 and cast to quint8.
		
		If the output type was qint8 ([-128, 127]), the operation will additionally
		subtract each value by 128 prior to casting, so that the range of values aligns
		with the range of qint8.
		
		If the mode is 'MIN_FIRST', then this approach is used:
		
		```
		number_of_steps = 1 << (# of bits in T)
		range_adjust = number_of_steps / (number_of_steps - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = number_of_steps / range
		quantized = round(input * range_scale) - round(range_min * range_scale) +
		  numeric_limits<T>::min()
		quantized = max(quantized, numeric_limits<T>::min())
		quantized = min(quantized, numeric_limits<T>::max())
		```
		
		The biggest difference between this and MIN_COMBINED is that the minimum range
		is rounded first, before it's subtracted from the rounded value. With
		MIN_COMBINED, a small bias is introduced where repeated iterations of quantizing
		and dequantizing will introduce a larger and larger error.
		
		One thing to watch out for is that the operator may choose to adjust the
		requested minimum and maximum values slightly during the quantization process,
		so you should always use the output ports as the range for further calculations.
		For example, if the requested minimum and maximum values are close to equal,
		they will be separated by a small epsilon value to prevent ill-formed quantized
		buffers from being created. Otherwise, you can end up with buffers where all the
		quantized values map to the same float value, which causes problems for
		operations that have to perform further calculations on them.
		
		Args:
		  input: A `Tensor` of type `float32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  T: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint16, tf.quint16, tf.qint32`.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST"`. Defaults to `"MIN_COMBINED"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		  output: A `Tensor` of type `T`. The quantized data produced from the float input.
		  output_min: A `Tensor` of type `float32`. The actual minimum scalar value used for the output.
		  output_max: A `Tensor` of type `float32`. The actual maximum scalar value used for the output.
	**/
	static public function quantize_v2(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concatenates quantized tensors along one dimension.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [0, rank(values)).
		  values: A list of at least 2 `Tensor` objects of the same type.
		    The `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  input_mins: A list with the same number of `Tensor` objects as `values` of `Tensor` objects of type `float32`.
		    The minimum scalar values for each of the input tensors.
		  input_maxes: A list with the same number of `Tensor` objects as `values` of `Tensor` objects of type `float32`.
		    The maximum scalar values for each of the input tensors.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		  output: A `Tensor`. Has the same type as `values`. A `Tensor` with the concatenation of values stacked along the
		    `concat_dim` dimension.  This tensor's shape matches that of `values` except
		    in `concat_dim` where it has the sum of the sizes.
		  output_min: A `Tensor` of type `float32`. The float value that the minimum quantized output value represents.
		  output_max: A `Tensor` of type `float32`. The float value that the maximum quantized output value represents.
	**/
	static public function quantized_concat(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, ?name:Dynamic):Dynamic;
}