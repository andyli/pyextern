/* This file is generated, do not edit! */
package tensorflow.python.estimator.exporter;
@:pythonImport("tensorflow.python.estimator.exporter") extern class Exporter_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compares two evaluation results and returns true if the 2nd one is smaller.
		
		Both evaluation results should have the values for MetricKeys.LOSS, which are
		used for comparison.
		
		Args:
		  best_eval_result: best eval metrics.
		  current_eval_result: current eval metrics.
		
		Returns:
		  True if the loss of current_eval_result is smaller; otherwise, False.
		
		Raises:
		  ValueError: If input eval result is None or no loss is available.
	**/
	static public function _loss_smaller(best_eval_result:Dynamic, current_eval_result:Dynamic):Dynamic;
	/**
		Verifies compare_fn arguments.
	**/
	static public function _verify_compare_fn_args(compare_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}