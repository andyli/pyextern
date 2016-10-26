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
	static public var division : Dynamic;
	/**
		Returns prediction and loss for mean squared error regression.
	**/
	static public function mean_squared_error_regressor(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns prediction and loss for softmax classifier.
		
		Args:
		  tensor_in: Input tensor, [batch_size, feature_size], features.
		  labels: Tensor, [batch_size, n_classes], labels of the output classes.
		  weights: Tensor, [batch_size, feature_size], linear transformation
		    matrix.
		  biases: Tensor, [batch_size], biases.
		  class_weight: Tensor, optional, [n_classes], weight for each class.
		    If not given, all classes are supposed to have weight one.
		  name: Operation name.
		
		Returns:
		  Prediction and loss tensors.
	**/
	static public function softmax_classifier(tensor_in:Dynamic, labels:Dynamic, weights:Dynamic, biases:Dynamic, ?class_weight:Dynamic, ?name:Dynamic):Dynamic;
}