/* This file is generated, do not edit! */
package tensorflow.contrib.coder.python.ops.coder_ops;
@:pythonImport("tensorflow.contrib.coder.python.ops.coder_ops") extern class Coder_ops_Module {
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
		Converts PMF to quantized CDF. This op uses floating-point operations
		
		internally. Therefore the quantized output may not be consistent across multiple
		platforms. For entropy encoders and decoders to have the same quantized CDF on
		different platforms, the quantized CDF should be produced once and saved, then
		the saved quantized CDF should be used everywhere.
		
		After quantization, if PMF does not sum to 2^precision, then some values of PMF
		are increased or decreased to adjust the sum to equal to 2^precision.
		
		Note that the input PMF is pre-quantization. The input PMF is not normalized
		by this op prior to quantization. Therefore the user is responsible for
		normalizing PMF if necessary.
		
		Args:
		  pmf: A `Tensor` of type `float32`.
		  precision: An `int` that is `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function pmf_to_quantized_cdf(pmf:Dynamic, precision:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function pmf_to_quantized_cdf
	**/
	static public function pmf_to_quantized_cdf_eager_fallback(pmf:Dynamic, precision:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Decodes a range-coded `code` into an int32 tensor of shape `shape`.
		
		This is the reverse op of RangeEncode. The shape of the tensor that was encoded
		should be known by the caller.
		
		Implementation notes:
		
		- If wrong input was given (e.g., corrupt `encoded` string, or `cdf` or
		`precision` do not match encoder), the decode is unsuccessful. Because of
		potential performance issues, the decoder does not return error status.
		
		Args:
		  encoded: A `Tensor` of type `string`.
		    A scalar string tensor from RangeEncode.
		  shape: A `Tensor` of type `int32`.
		    An int32 1-D tensor representing the shape of the data encoded by
		    RangeEncode.
		  cdf: A `Tensor` of type `int32`.
		  precision: An `int` that is `>= 1`.
		    The number of bits for probability quantization. Must be <= 16, and
		    must match the precision used by RangeEncode that produced `encoded`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int16`. An int16 tensor with shape equal to `shape`.
	**/
	static public function range_decode(encoded:Dynamic, shape:Dynamic, cdf:Dynamic, precision:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function range_decode
	**/
	static public function range_decode_eager_fallback(encoded:Dynamic, shape:Dynamic, cdf:Dynamic, precision:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Using the provided cumulative distribution functions (CDF) inside `cdf`, returns
		
		a range-code of `data`.
		
		The shape of `cdf` should have one more axis than the shape of `data`, and the
		prefix `cdf.shape[:-1]` should be broadcastable to `data.shape`. That is, for
		every `i = 0,...,rank(data) - 1`, the op requires that either
		`cdf.shape[i] == 1` or `cdf.shape[i] == data.shape[i]`. Note that this
		broadcasting is limited in the sense that the number of axes must match, and
		broadcasts only `cdf` but not `data`.
		
		`data` should have an upper bound `m > 0` such that each element is an integer
		in range `[0, m)`. Then the last dimension size of `cdf` must be `m + 1`. For
		each element of `data`, the innermost strip of `cdf` is a vector representing a
		CDF. For each k = 0,...,m, `cdf[..., k] / 2^precision` is the probability that
		an outcome is less than `k` (not less than or equal to).
		
		```
		   cdf[..., 0] / 2^precision = Pr(data[...] < 0)
		   cdf[..., 1] / 2^precision = Pr(data[...] < 1) = Pr(data[...] <= 0)
		   cdf[..., 2] / 2^precision = Pr(data[...] < 2) = Pr(data[...] <= 1)
		   ...
		   cdf[..., m] / 2^precision = Pr(data[...] < m) = 1
		```
		
		Therefore each element of `cdf` must be in `[0, 2^precision]`.
		
		Ideally `cdf[..., m]` should equal to `2^precision` but this is not a hard
		requirement as long as `cdf[..., m] <= 2^precision`.
		
		The encoded string neither contains the shape information of the encoded data
		nor a termination symbol. Therefore the shape of the encoded data must be
		explicitly provided to the decoder.
		
		Implementation notes:
		
		- Because of potential performance issues, the op does not check whether
		elements of `data` is in the correct range `[0, m)`, or if `cdf` satisfies
		monotonic increase property.
		
		- For the range coder to decode the encoded string correctly, the decoder should
		be able to reproduce the internal states of the encoder precisely. Otherwise,
		the decoding would fail and once an error occur, all subsequent decoded values
		are incorrect. For this reason, the range coder uses integer arithmetics and
		avoids using any floating point operations internally, and `cdf` should contain
		integers representing quantized probability mass rather than floating points.
		
		Args:
		  data: A `Tensor` of type `int16`. An int16 tensor.
		  cdf: A `Tensor` of type `int32`.
		    An int32 tensor representing the CDF's of `data`. Each integer is divided
		    by `2^precision` to represent a fraction.
		  precision: An `int` that is `>= 1`.
		    The number of bits for probability quantization. Must be <= 16.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. A range-coded scalar string.
	**/
	static public function range_encode(data:Dynamic, cdf:Dynamic, precision:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function range_encode
	**/
	static public function range_encode_eager_fallback(data:Dynamic, cdf:Dynamic, precision:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}