/* This file is generated, do not edit! */
package tensorflow.quantization;
@:pythonImport("tensorflow.quantization") extern class Quantization_Module {
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
		Dequantize the 'input' tensor into a float or bfloat16 Tensor.
		
		[min_range, max_range] are scalar floats that specify the range for
		the output. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		if T == qint8: in[i] += (range(T) + 1)/ 2.0
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
		
		```c++
		num_discrete_values = 1 << (# of bits in T)
		range_adjust = num_discrete_values / (num_discrete_values - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = range / num_discrete_values
		const double offset_input = static_cast<double>(input) - lowest_quantized;
		result = range_min + ((input - numeric_limits<T>::min()) * range_scale)
		```
		
		If the mode is `SCALED`, dequantization is performed by multiplying each
		input value by a scaling_factor. (Thus an input of 0 always maps to 0.0).
		
		The scaling_factor is determined from `min_range`, `max_range`, and
		`narrow_range` in a way that is compatible with `QuantizeAndDequantize{V2|V3}`
		and `QuantizeV2`, using the following algorithm:
		
		```c++
		
		  const int min_expected_T = std::numeric_limits<T>::min() +
		    (narrow_range ? 1 : 0);
		  const int max_expected_T = std::numeric_limits<T>::max();
		  const float max_expected_T = std::numeric_limits<float>::max();
		
		  const float scale_factor =
		    (std::numeric_limits<T>::min() == 0) ? (max_range / max_expected_T)
		                                         : std::max(min_range / min_expected_T,
		                                                    max_range / max_expected_T);
		```
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `Tensor` of type `float32`.
		    The maximum scalar value possibly produced for the input.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  dtype: An optional `tf.DType` from: `tf.bfloat16, tf.float32`. Defaults to `tf.float32`.
		    Type of the output tensor. Currently Dequantize supports float and bfloat16.
		    If 'dtype' is 'bfloat16', it only supports 'MIN_COMBINED' mode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?narrow_range:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor, type float to 'outputs' tensor of same type.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		Quantization is called fake since the output is still in floating point.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_args(inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxArgs operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxArgs operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxArgs operation.
		  min: An optional `float`. Defaults to `-6`.
		  max: An optional `float`. Defaults to `6`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_args_gradient(gradients:Dynamic, inputs:Dynamic, ?min:Dynamic, ?max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via global float scalars
		
		Fake-quantize the `inputs` tensor of type float via global float scalars
		`min` and `max` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVars operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation.
		    min, max: Quantization interval, scalar floats.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 8, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_gradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fake-quantize the 'inputs' tensor of type float via per-channel floats
		
		Fake-quantize the `inputs` tensor of type float per-channel and one of the
		shapes: `[d]`, `[b, d]` `[b, h, w, d]` via per-channel floats `min` and `max`
		of shape `[d]` to `outputs` tensor of same shape as `inputs`.
		
		Attributes
		
		*   `[min; max]` define the clamping range for the `inputs` data.
		*   `inputs` values are quantized into the quantization range (
		`[0; 2^num_bits - 1]` when `narrow_range` is false and `[1; 2^num_bits - 1]`
		when it is true) and then de-quantized and output as floats in `[min; max]`
		interval.
		*   `num_bits` is the bitwidth of the quantization; between 2 and 16, inclusive.
		
		Before quantization, `min` and `max` values are adjusted with the following
		logic.
		It is suggested to have `min <= 0 <= max`. If `0` is not in the range of values,
		the behavior can be unexpected:
		
		*   If `0 < min < max`: `min_adj = 0` and `max_adj = max - min`.
		*   If `min < max < 0`: `min_adj = min - max` and `max_adj = 0`.
		*   If `min <= 0 <= max`: `scale = (max - min) / (2^num_bits - 1) `,
		`min_adj = scale * round(min / scale)` and `max_adj = max + min_adj - min`.
		
		This operation has a gradient and thus allows for training `min` and `max`
		values.
		
		Args:
		  inputs: A `Tensor` of type `float32`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_per_channel(inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients for a FakeQuantWithMinMaxVarsPerChannel operation.
		
		Args:
		  gradients: A `Tensor` of type `float32`.
		    Backpropagated gradients above the FakeQuantWithMinMaxVars operation,
		    shape one of: `[d]`, `[b, d]`,  `[b, h, w, d]`.
		  inputs: A `Tensor` of type `float32`.
		    Values passed as inputs to the FakeQuantWithMinMaxVars operation, shape
		      same as `gradients`.
		    min, max: Quantization interval, floats of shape `[d]`.
		  min: A `Tensor` of type `float32`.
		  max: A `Tensor` of type `float32`.
		  num_bits: An optional `int`. Defaults to `8`.
		    The bitwidth of the quantization; between 2 and 16, inclusive.
		  narrow_range: An optional `bool`. Defaults to `False`.
		    Whether to quantize into 2^num_bits - 1 distinct values.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (backprops_wrt_input, backprop_wrt_min, backprop_wrt_max).
		
		  backprops_wrt_input: A `Tensor` of type `float32`.
		  backprop_wrt_min: A `Tensor` of type `float32`.
		  backprop_wrt_max: A `Tensor` of type `float32`.
	**/
	static public function fake_quant_with_min_max_vars_per_channel_gradient(gradients:Dynamic, inputs:Dynamic, min:Dynamic, max:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Quantize the 'input' tensor of type float to 'output' tensor of type 'T'.
		
		[min_range, max_range] are scalar floats that specify the range for
		the 'input' data. The 'mode' attribute controls exactly which calculations are
		used to convert the float values to their quantized equivalents.  The
		'round_mode' attribute controls which rounding tie-breaking algorithm is used
		when rounding float values to their quantized equivalents.
		
		In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:
		
		```
		out[i] = (in[i] - min_range) * range(T) / (max_range - min_range)
		if T == qint8: out[i] -= (range(T) + 1) / 2.0
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
		num_discrete_values = 1 << (# of bits in T)
		range_adjust = num_discrete_values / (num_discrete_values - 1)
		range = (range_max - range_min) * range_adjust
		range_scale = num_discrete_values / range
		quantized = round(input * range_scale) - round(range_min * range_scale) +
		  numeric_limits<T>::min()
		quantized = max(quantized, numeric_limits<T>::min())
		quantized = min(quantized, numeric_limits<T>::max())
		```
		
		The biggest difference between this and MIN_COMBINED is that the minimum range
		is rounded first, before it's subtracted from the rounded value. With
		MIN_COMBINED, a small bias is introduced where repeated iterations of quantizing
		and dequantizing will introduce a larger and larger error.
		
		*SCALED mode Example*
		
		`SCALED` mode matches the quantization approach used in
		`QuantizeAndDequantize{V2|V3}`.
		
		If the mode is `SCALED`, the quantization is performed by multiplying each
		input value by a scaling_factor.
		The scaling_factor is determined from `min_range` and `max_range` to be as large
		as possible such that the range from `min_range` to `max_range` is representable
		within values of type T.
		
		```c++
		
		  const int min_T = std::numeric_limits<T>::min();
		  const int max_T = std::numeric_limits<T>::max();
		  const float max_float = std::numeric_limits<float>::max();
		
		  const float scale_factor_from_min_side =
		      (min_T * min_range > 0) ? min_T / min_range : max_float;
		  const float scale_factor_from_max_side =
		      (max_T * max_range > 0) ? max_T / max_range : max_float;
		
		  const float scale_factor = std::min(scale_factor_from_min_side,
		                                      scale_factor_from_max_side);
		```
		
		We next use the scale_factor to adjust min_range and max_range as follows:
		
		```c++
		      min_range = min_T / scale_factor;
		      max_range = max_T / scale_factor;
		```
		
		
		e.g. if T = qint8, and initially min_range = -10, and max_range = 9, we would
		compare -128/-10.0 = 12.8 to 127/9.0 = 14.11, and set scaling_factor = 12.8
		In this case, min_range would remain -10, but max_range would be adjusted to
		127 / 12.8 = 9.921875
		
		So we will quantize input values in the range (-10, 9.921875) to (-128, 127).
		
		The input tensor can now be quantized by clipping values to the range
		`min_range` to `max_range`, then multiplying by scale_factor as follows:
		
		```c++
		result = round(min(max_range, max(min_range, input)) * scale_factor)
		```
		
		The adjusted `min_range` and `max_range` are returned as outputs 2 and 3 of
		this operation. These outputs should be used as the range for any further
		calculations.
		
		
		*narrow_range (bool) attribute*
		
		If true, we do not use the minimum quantized value.
		i.e. for int8 the quantized output, it would be restricted to the range
		-127..127 instead of the full -128..127 range.
		This is provided for compatibility with certain inference backends.
		(Only applies to SCALED mode)
		
		
		*axis (int) attribute*
		
		An optional `axis` attribute can specify a dimension index of the input tensor,
		such that quantization ranges will be calculated and applied separately for each
		slice of the tensor along that dimension. This is useful for per-channel
		quantization.
		
		If axis is specified, min_range and max_range
		
		if `axis`=None, per-tensor quantization is performed as normal.
		
		
		*ensure_minimum_range (float) attribute*
		
		Ensures the minimum quantization range is at least this value.
		The legacy default value for this is 0.01, but it is strongly suggested to
		set it to 0 for new uses.
		
		Args:
		  input: A `Tensor` of type `float32`.
		  min_range: A `Tensor` of type `float32`.
		    The minimum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_min`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  max_range: A `Tensor` of type `float32`.
		    The maximum value of the quantization range. This value may be adjusted by the
		    op depending on other parameters. The adjusted value is written to `output_max`.
		    If the `axis` attribute is specified, this must be a 1-D tensor whose size
		    matches the `axis` dimension of the input and output tensors.
		  T: A `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`.
		  mode: An optional `string` from: `"MIN_COMBINED", "MIN_FIRST", "SCALED"`. Defaults to `"MIN_COMBINED"`.
		  round_mode: An optional `string` from: `"HALF_AWAY_FROM_ZERO", "HALF_TO_EVEN"`. Defaults to `"HALF_AWAY_FROM_ZERO"`.
		  narrow_range: An optional `bool`. Defaults to `False`.
		  axis: An optional `int`. Defaults to `-1`.
		  ensure_minimum_range: An optional `float`. Defaults to `0.01`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor` of type `T`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, T:Dynamic, ?mode:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic, ?ensure_minimum_range:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This Op has been deprecated, use`quantize_and_dequantize_v2` instead. To To simulate the V1 the behavior of tf.quantization.quantize_and_dequantize(...) use tf.grad_pass_through(tf.quantization.quantize_and_dequantize_v2)(...).
		
		Args:
		  input: A `Tensor` to quantize and dequantize.
		  input_min: If range_given=True, the minimum input value, that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of minimum values for each slice along axis.
		  input_max: If range_given=True, the maximum input value that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of maximum values for each slice along axis.
		  signed_input: True if the quantization is signed or unsigned.
		  num_bits: The bitwidth of the quantization.
		  range_given: If true use `input_min` and `input_max` for the range of the
		    input, otherwise determine min and max from the input `Tensor`.
		  round_mode: Rounding mode when rounding from float values to quantized ones.
		    one of ['HALF_TO_EVEN', 'HALF_UP']
		  name: Optional name for the operation.
		  narrow_range: If true, then the absolute value of the quantized minimum
		    value is the same as the quantized maximum value, instead of 1 greater.
		    i.e. for 8 bit quantization, the minimum value is -127 instead of -128.
		  axis: Integer. If specified, refers to a dimension of the input tensor, such
		    that quantization will be per slice along that dimension.
		
		Returns:
		  A `Tensor`. Each element is the result of quantizing and dequantizing the
		  corresponding element of `input`.
	**/
	static public function quantize_and_dequantize(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Quantizes then dequantizes a tensor.
		
		Updates the gradient definition for quantization that is outside the range to
		be 0.To simulate the V1 the behavior of
		tf.quantization.quantize_and_dequantize(...) use
		tf.grad_pass_through(tf.quantization.quantize_and_dequantize_v2)(...).
		
		Example usage:
		
		```python
		def getQuantizeOp(input):
		    input_tensor = tf.placeholder(tf.float32, shape=[4, 4])
		    net = tf.quantization.quantize_and_dequantize(input,
		                                                  input_min=min_threshold,
		                                                  input_max=max_threshold,
		                                                  range_given=True)
		
		To simulate v1 behavior:
		
		def testDecomposeQuantizeDequantize(self):
		    def f(input_tensor):
		      return tf.quantization.quantize_and_dequantize_v2(input_tensor,
		                                                        input_min = 5.0,
		                                                        input_max= -10.0,
		                                                        range_given=True)
		    input_tensor = tf.placeholder(tf.float32, shape=[4, 4])
		    net = tf.grad_pass_through(f)(input_tensor)
		```
		
		Args:
		  input: A `Tensor` to quantize and dequantize.
		  input_min: If range_given=True, the minimum input value, that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of minimum values for each slice along axis.
		  input_max: If range_given=True, the maximum input value that needs to be
		    represented in the quantized representation. If axis is specified, this
		    should be a vector of maximum values for each slice along axis.
		  signed_input: True if the quantization is signed or unsigned.
		  num_bits: The bitwidth of the quantization.
		  range_given: If true use `input_min` and `input_max` for the range of the
		    input, otherwise determine min and max from the input `Tensor`.
		  round_mode: Rounding mode when rounding from float values to quantized ones.
		    one of ['HALF_TO_EVEN', 'HALF_UP']
		  name: Optional name for the operation.
		  narrow_range: If true, then the absolute value of the quantized minimum
		    value is the same as the quantized maximum value, instead of 1 greater.
		    i.e. for 8 bit quantization, the minimum value is -127 instead of -128.
		  axis: Integer. If specified, refers to a dimension of the input tensor, such
		    that quantization will be per slice along that dimension.
		
		Returns:
		  A `Tensor`. Each element is the result of quantizing and dequantizing the
		  corresponding element of `input`.
	**/
	static public function quantize_and_dequantize_v2(input:Dynamic, input_min:Dynamic, input_max:Dynamic, ?signed_input:Dynamic, ?num_bits:Dynamic, ?range_given:Dynamic, ?round_mode:Dynamic, ?name:Dynamic, ?narrow_range:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Concatenates quantized tensors along one dimension.
		
		Args:
		  concat_dim: A `Tensor` of type `int32`.
		    0-D.  The dimension along which to concatenate.  Must be in the
		    range [0, rank(values)).
		  values: A list of at least 2 `Tensor` objects with the same type.
		    The `N` Tensors to concatenate. Their ranks and types must match,
		    and their sizes must match in all dimensions except `concat_dim`.
		  input_mins: A list with the same length as `values` of `Tensor` objects with type `float32`.
		    The minimum scalar values for each of the input tensors.
		  input_maxes: A list with the same length as `values` of `Tensor` objects with type `float32`.
		    The maximum scalar values for each of the input tensors.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_min, output_max).
		
		  output: A `Tensor`. Has the same type as `values`.
		  output_min: A `Tensor` of type `float32`.
		  output_max: A `Tensor` of type `float32`.
	**/
	static public function quantized_concat(concat_dim:Dynamic, values:Dynamic, input_mins:Dynamic, input_maxes:Dynamic, ?name:Dynamic):Dynamic;
}