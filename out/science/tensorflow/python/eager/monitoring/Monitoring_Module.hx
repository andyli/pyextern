/* This file is generated, do not edit! */
package tensorflow.python.eager.monitoring;
@:pythonImport("tensorflow.python.eager.monitoring") extern class Monitoring_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bool_gauge_methods : Dynamic;
	static public var _counter_methods : Dynamic;
	static public var _int_gauge_methods : Dynamic;
	static public var _sampler_methods : Dynamic;
	static public var _string_gauge_methods : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		A function decorator for adding MonitoredTimer support.
		
		Args:
		  cell: the cell associated with the time metric that will be inremented.
		Returns:
		  A decorator that measure the function runtime and increment the specified
		  counter cell.
	**/
	static public function monitored_timer(cell:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}