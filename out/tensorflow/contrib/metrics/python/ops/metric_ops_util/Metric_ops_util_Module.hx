/* This file is generated, do not edit! */
package tensorflow.contrib.metrics.python.ops.metric_ops_util;
@:pythonImport("tensorflow.contrib.metrics.python.ops.metric_ops_util") extern class Metric_ops_util_Module {
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
	static public var print_function : Dynamic;
	/**
		Squeeze last dim if ranks of `predictions` and `labels` differ by 1.
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  predictions: Predicted values, a `Tensor` of arbitrary dimensions.
		  labels: Label values, a `Tensor` whose dimensions match `predictions`.
		
		Returns:
		  Tuple of `predictions` and `labels`, possibly with last dim squeezed.
	**/
	static public function remove_squeezable_dimensions(predictions:Dynamic, labels:Dynamic):Dynamic;
}