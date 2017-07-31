/* This file is generated, do not edit! */
package tensorflow.python.layers.utils;
@:pythonImport("tensorflow.python.layers.utils") extern class Utils_Module {
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
		Return the bool value for `pred`, or None if `pred` had a dynamic value.
		
		Arguments:
		  pred: A scalar, either a Python bool or a TensorFlow boolean variable
		    or tensor.
		
		Returns:
		  True or False if `pred` has a constant boolean value, None otherwise.
		
		Raises:
		  TypeError is pred is not a Variable, Tensor or bool.
	**/
	static public function constant_value(pred:Dynamic):Dynamic;
	/**
		Determines input length of a convolution given output length.
		
		Arguments:
		    output_length: integer.
		    filter_size: integer.
		    padding: one of "same", "valid", "full".
		    stride: integer.
		
		Returns:
		    The input length (integer).
	**/
	static public function conv_input_length(output_length:Dynamic, filter_size:Dynamic, padding:Dynamic, stride:Dynamic):Dynamic;
	/**
		Determines output length of a convolution given input length.
		
		Arguments:
		    input_length: integer.
		    filter_size: integer.
		    padding: one of "same", "valid", "full".
		    stride: integer.
		    dilation: dilation rate, integer.
		
		Returns:
		    The output length (integer).
	**/
	static public function conv_output_length(input_length:Dynamic, filter_size:Dynamic, padding:Dynamic, stride:Dynamic, ?dilation:Dynamic):Dynamic;
	static public function convert_data_format(data_format:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Determines output length of a transposed convolution given input length.
		
		Arguments:
		    input_length: integer.
		    filter_size: integer.
		    padding: one of "same", "valid", "full".
		    stride: integer.
		
		Returns:
		    The output length (integer).
	**/
	static public function deconv_output_length(input_length:Dynamic, filter_size:Dynamic, padding:Dynamic, stride:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function normalize_data_format(value:Dynamic):Dynamic;
	static public function normalize_padding(value:Dynamic):Dynamic;
	/**
		Transforms a single integer or iterable of integers into an integer tuple.
		
		Arguments:
		  value: The value to validate and convert. Could an int, or any iterable
		    of ints.
		  n: The size of the tuple to be returned.
		  name: The name of the argument being validated, e.g. "strides" or
		    "kernel_size". This is only used to format error messages.
		
		Returns:
		  A tuple of n integers.
		
		Raises:
		  ValueError: If something else than an int/long or iterable thereof was
		    passed.
	**/
	static public function normalize_tuple(value:Dynamic, n:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return either `fn1()` or `fn2()` based on the boolean predicate `pred`.
		
		If `pred` is a bool or has a constant value, we return either `fn1()`
		or `fn2()`, otherwise we use `tf.cond` to dynamically route to both.
		
		Arguments:
		  pred: A scalar determining whether to return the result of `fn1` or `fn2`.
		  fn1: The callable to be performed if pred is true.
		  fn2: The callable to be performed if pred is false.
		  name: Optional name prefix when using `tf.cond`.
		
		Returns:
		  Tensors returned by the call to either `fn1` or `fn2`.
		
		Raises:
		  TypeError is fn1 or fn2 is not callable.
	**/
	static public function smart_cond(pred:Dynamic, fn1:Dynamic, fn2:Dynamic, ?name:Dynamic):Dynamic;
}