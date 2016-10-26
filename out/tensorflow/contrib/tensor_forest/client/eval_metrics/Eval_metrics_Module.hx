/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.client.eval_metrics;
@:pythonImport("tensorflow.contrib.tensor_forest.client.eval_metrics") extern class Eval_metrics_Module {
	static public var _EVAL_METRICS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _accuracy(probabilities:Dynamic, targets:Dynamic):Dynamic;
	static public function _predictions(probabilities:Dynamic, unused_targets:Dynamic):Dynamic;
	static public function _r2(probabilities:Dynamic, targets:Dynamic):Dynamic;
	static public function _sigmoid_entropy(probabilities:Dynamic, targets:Dynamic):Dynamic;
	static public function _softmax_entropy(probabilities:Dynamic, targets:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Given a metric name, return the corresponding metric function.
	**/
	static public function get_metric(metric_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}