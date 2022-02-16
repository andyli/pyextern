/* This file is generated, do not edit! */
package torch.distributed.elastic.metrics.api;
@:pythonImport("torch.distributed.elastic.metrics.api") extern class Api_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _default_metrics_handler : Dynamic;
	static public function _get_metric_name(fn:Dynamic):Dynamic;
	static public var _metrics_map : Dynamic;
	static public function configure(handler:Dynamic, ?group:Dynamic):Dynamic;
	static public function getStream(group:Dynamic):Dynamic;
	/**
		Returns the elapsed time in millis from the given start time.
	**/
	static public function get_elapsed_time_ms(start_time_in_seconds:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
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
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}