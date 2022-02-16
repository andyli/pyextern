/* This file is generated, do not edit! */
package torch.distributed.elastic.metrics;
@:pythonImport("torch.distributed.elastic.metrics") extern class Metrics_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function configure(handler:Dynamic, ?group:Dynamic):Dynamic;
	static public function getStream(group:Dynamic):Dynamic;
	/**
		Returns the elapsed time in millis from the given start time.
	**/
	static public function get_elapsed_time_ms(start_time_in_seconds:Dynamic):Dynamic;
	static public function initialize_metrics(?cfg:Dynamic):Dynamic;
	/**
		@profile decorator publishes duration.ms, count, success, failure
		metrics for the function that it decorates. The metric name defaults
		to the qualified name (``class_name.def_name``) of the function.
		If the function does not belong to a class, it uses the leaf module name
		instead.
		
		Usage
		
		::
		
		 @metrics.prof
		 def x():
		     pass
		
		 @metrics.prof(group="agent")
		 def y():
		     pass
	**/
	static public function prof(?fn:Dynamic, ?group:Dynamic):Dynamic;
	/**
		@profile decorator adds latency and success/failure metrics to any given function.
		
		Usage
		
		::
		
		 @metrics.profile("my_metric_group")
		 def some_function(<arguments>):
	**/
	static public function profile(?group:Dynamic):Dynamic;
	static public function publish_metric(metric_group:Dynamic, metric_name:Dynamic, metric_value:Dynamic):Dynamic;
	/**
		Publishes a metric data point.
		
		Usage
		
		::
		
		 put_metric("metric_name", 1)
		 put_metric("metric_name", 1, "metric_group_name")
	**/
	static public function put_metric(metric_name:Dynamic, metric_value:Dynamic, ?metric_group:Dynamic):Dynamic;
}