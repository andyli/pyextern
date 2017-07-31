/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.losses_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.losses_ops") extern class Losses_ops_Module {
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
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns prediction and loss for mean squared error regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.contrib.losses.mean_squared_error` and explicit logits computation.
	**/
	static public function mean_squared_error_regressor(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns prediction and loss for softmax classifier. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.contrib.losses.softmax_cross_entropy` and explicit logits computation.
		
		This function returns "probabilities" and a cross entropy loss. To obtain
		predictions, use `tf.argmax` on the returned probabilities.
		
		This function requires labels to be passed in one-hot encoding.
		
		Args:
		  tensor_in: Input tensor, [batch_size, feature_size], features.
		  labels: Tensor, [batch_size, n_classes], one-hot labels of the output
		    classes.
		  weights: Tensor, [batch_size, feature_size], linear transformation
		    matrix.
		  biases: Tensor, [batch_size], biases.
		  class_weight: Tensor, optional, [n_classes], weight for each class.
		    If not given, all classes are supposed to have weight one.
		  name: Operation name.
		
		Returns:
		  `tuple` of softmax predictions and loss `Tensor`s.
	**/
	static public function softmax_classifier(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?class_weight:Dynamic, ?name:Dynamic):Dynamic;
}