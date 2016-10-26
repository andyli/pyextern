/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.dropout_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.dropout_ops") extern class Dropout_ops_Module {
	static public var DROPOUTS : Dynamic;
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
		Returns a dropout op applied to the input.
		
		With probability `keep_prob`, outputs the input element scaled up by
		`1 / keep_prob`, otherwise outputs `0`.  The scaling is so that the expected
		sum is unchanged.
		
		Args:
		  inputs: the tensor to pass to the nn.dropout op.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  is_training: A bool `Tensor` indicating whether or not the model
		    is in training mode. If so, dropout is applied and values scaled.
		    Otherwise, inputs is returned.
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
	**/
	static public function contrib_dropout(inputs:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?is_training:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String. The date the function is scheduled to be removed. Must be
		    ISO 8601 (YYYY-MM-DD).
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not in ISO 8601 format, or instructions are empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Adds dropout node and stores probability tensor into graph collection. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-15.
		Instructions for updating:
		Please use tf.contrib.layers.dropout instead.
		
		  This is deprecated. Please use contrib.layers.dropout instead.
		
		  Args:
		    tensor_in: Input tensor.
		    prob: Float or Tensor.
		    name: Operation name.
		
		  Returns:
		    Tensor of the same shape of `tensor_in`.
		
		  Raises:
		    ValueError: If `keep_prob` is not in `(0, 1]`.
		  
	**/
	static public function dropout(tensor_in:Dynamic, prob:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}