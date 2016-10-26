/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.array_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.array_ops") extern class Array_ops_Module {
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
		Expands inputs on given dimension and then concatenates them. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-15.
		Instructions for updating:
		Please use tf.pack instead.
		
		  Args:
		    dim: Dimension to expand and concatenate on.
		    inputs: List of tensors of the same shape [N1, ... Nx].
		
		  Returns:
		    A tensor of shape [N1, .. Ndim, ... Nx]
		  
	**/
	static public function expand_concat(dim:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Encodes indices from given tensor as one-hot tensor.
		
		TODO(ilblackdragon): Ideally implementation should be
		part of TensorFlow with Eigen-native operation.
		
		Args:
		  tensor_in: Input tensor of shape [N1, N2].
		  num_classes: Number of classes to expand index into.
		  on_value: Tensor or float, value to fill-in given index.
		  off_value: Tensor or float, value to fill-in everything else.
		Returns:
		  Tensor of shape [N1, N2, num_classes] with 1.0 for each id in original
		  tensor.
	**/
	static public function one_hot_matrix(tensor_in:Dynamic, num_classes:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Splits input on given dimension and then squeezes that dimension. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-01.
		Instructions for updating:
		Please use tf.unpack instead.
		
		  Args:
		    dim: Dimension to split and squeeze on.
		    num_split: integer, the number of ways to split.
		    tensor_in: Input tensor of shape [N1, N2, .. Ndim, .. Nx].
		
		  Returns:
		    List of tensors [N1, N2, .. Ndim-1, Ndim+1, .. Nx].
		  
	**/
	static public function split_squeeze(dim:Dynamic, num_split:Dynamic, tensor_in:Dynamic):Dynamic;
}