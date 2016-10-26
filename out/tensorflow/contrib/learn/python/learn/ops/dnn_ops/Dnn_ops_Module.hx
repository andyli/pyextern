/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.dnn_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.dnn_ops") extern class Dnn_ops_Module {
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
		Creates fully connected deep neural network subgraph. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-08-01.
		Instructions for updating:
		Please use tf.contrib.layers.stack instead.
		
		  This is deprecated. Please use contrib.layers.dnn instead.
		
		  Args:
		    tensor_in: tensor or placeholder for input features.
		    hidden_units: list of counts of hidden units in each layer.
		    activation: activation function between layers. Can be None.
		    dropout: if not None, will add a dropout layer with given probability.
		
		  Returns:
		    A tensor which would be a deep neural network.
		  
	**/
	static public function dnn(tensor_in:Dynamic, hidden_units:Dynamic, ?activation:Dynamic, ?dropout:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}