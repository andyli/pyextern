/* This file is generated, do not edit! */
package tensorflow.contrib.metrics.python.metrics.classification;
@:pythonImport("tensorflow.contrib.metrics.python.metrics.classification") extern class Classification_Module {
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
		Computes the percentage of times that predictions matches labels.
		
		Args:
		  predictions: the predicted values, a `Tensor` whose dtype and shape
		               matches 'labels'.
		  labels: the ground truth values, a `Tensor` of any shape and
		          bool, integer, or string dtype.
		  weights: None or `Tensor` of float values to reweight the accuracy.
		  name: A name for the operation (optional).
		
		Returns:
		  Accuracy `Tensor`.
		
		Raises:
		  ValueError: if dtypes don't match or
		              if dtype is not bool, integer, or string.
	**/
	static public function accuracy(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}