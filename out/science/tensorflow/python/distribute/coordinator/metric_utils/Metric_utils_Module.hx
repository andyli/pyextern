/* This file is generated, do not edit! */
package tensorflow.python.distribute.coordinator.metric_utils;
@:pythonImport("tensorflow.python.distribute.coordinator.metric_utils") extern class Metric_utils_Module {
	static public var _METRICS_MAPPING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Initialize the metrics mapping.
	**/
	static public function _init():Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var enable_metrics : Dynamic;
	/**
		Get summary for the specified metric.
	**/
	static public function get_metric_summary(metric_name:Dynamic):Dynamic;
	/**
		Monitor the execution time and collect it into the specified metric.
	**/
	static public function monitored_timer(metric_name:Dynamic, ?state_tracker:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}