/* This file is generated, do not edit! */
package keras.utils.conv_utils;
@:pythonImport("keras.utils.conv_utils") extern class Conv_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Determines input length of a convolution given output length.
		
		# Arguments
		    output_length: integer.
		    filter_size: integer.
		    padding: one of "same", "valid", "full".
		    stride: integer.
		
		# Returns
		    The input length (integer).
	**/
	static public function conv_input_length(output_length:Dynamic, filter_size:Dynamic, padding:Dynamic, stride:Dynamic):Dynamic;
	/**
		Determines output length of a convolution given input length.
		
		# Arguments
		    input_length: integer.
		    filter_size: integer.
		    padding: one of "same", "valid", "full".
		    stride: integer.
		    dilation: dilation rate, integer.
		
		# Returns
		    The output length (integer).
	**/
	static public function conv_output_length(input_length:Dynamic, filter_size:Dynamic, padding:Dynamic, stride:Dynamic, ?dilation:Dynamic):Dynamic;
	/**
		Converts a Numpy kernel matrix from Theano format to TensorFlow format.
		
		Also works reciprocally, since the transformation is its own inverse.
		
		# Arguments
		    kernel: Numpy array (3D, 4D or 5D).
		
		# Returns
		    The converted kernel.
		
		# Raises
		    ValueError: in case of invalid kernel shape or invalid data_format.
	**/
	static public function convert_kernel(kernel:Dynamic):Dynamic;
	static public function deconv_length(dim_size:Dynamic, stride_size:Dynamic, kernel_size:Dynamic, padding:Dynamic):Dynamic;
	static public function normalize_data_format(value:Dynamic):Dynamic;
	static public function normalize_padding(value:Dynamic):Dynamic;
	/**
		Transforms a single int or iterable of ints into an int tuple.
		
		# Arguments
		    value: The value to validate and convert. Could an int, or any iterable
		      of ints.
		    n: The size of the tuple to be returned.
		    name: The name of the argument being validated, e.g. "strides" or
		      "kernel_size". This is only used to format error messages.
		
		# Returns
		    A tuple of n integers.
		
		# Raises
		    ValueError: If something else than an int/long or iterable thereof was
		    passed.
	**/
	static public function normalize_tuple(value:Dynamic, n:Dynamic, name:Dynamic):Dynamic;
}