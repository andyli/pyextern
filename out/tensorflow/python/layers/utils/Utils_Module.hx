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
		    or tensor, or the Python integer 1 or 0.
		
		Returns:
		  True or False if `pred` has a constant boolean value, None otherwise.
		
		Raises:
		  TypeError: If `pred` is not a Variable, Tensor or bool, or Python
		    interger 1 or 0.
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
	/**
		Returns the set of tensors reachable from `inputs`.
		
		Stops if all targets have been found (target is optional).
		
		Only valid in Symbolic mode, not Eager mode.
		
		Args:
		  inputs: List of tensors.
		  targets: List of tensors.
		
		Returns:
		  A set of tensors reachable from the inputs (includes the inputs themselves).
	**/
	static public function get_reachable_from_inputs(inputs:Dynamic, ?targets:Dynamic):Dynamic;
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
	/**
		Creates a single string from object ids.
	**/
	static public function object_list_uid(object_list:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return either `true_fn()` if predicate `pred` is true else `false_fn()`.
		
		If `pred` is a bool or has a constant value, we return either `true_fn()`
		or `false_fn()`, otherwise we use `tf.cond` to dynamically route to both.
		
		Arguments:
		  pred: A scalar determining whether to return the result of `true_fn` or
		    `false_fn`.
		  true_fn: The callable to be performed if pred is true.
		  false_fn: The callable to be performed if pred is false.
		  name: Optional name prefix when using `tf.cond`.
		
		Returns:
		  Tensors returned by the call to either `true_fn` or `false_fn`.
		
		Raises:
		  TypeError: If `true_fn` or `false_fn` is not callable.
	**/
	static public function smart_cond(pred:Dynamic, ?true_fn:Dynamic, ?false_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get the static shape of a Tensor, or None if it is unavailable.
	**/
	static public function static_shape(x:Dynamic):Dynamic;
}