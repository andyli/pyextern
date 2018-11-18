/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.mirrored_strategy;
@:pythonImport("tensorflow.contrib.distribute.python.mirrored_strategy") extern class Mirrored_strategy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Run `fn` in separate threads, once per tower/worker device.
		
		Args:
		  distribution: the DistributionStrategy object.
		  fn: function to run (will be run once per device, each in its own thread).
		  *args: positional arguments for `fn`
		  **kwargs: keyword arguments for `fn`.
		      `"run_concurrently"`: Boolean indicating whether executions of `fn`
		         can be run concurrently (under eager execution only), defaults to
		         `True`.
		
		Returns:
		  Merged return value of `fn` across all towers.
		
		Raises:
		  RuntimeError: If fn() calls get_tower_context().merge_call() a different
		      number of times from the available devices.
	**/
	static public function _call_for_each_tower(distribution:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _cpu_device(device:Dynamic):Dynamic;
	static public function _create_mirrored_variable(devices:Dynamic, real_mirrored_creator:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _enter_graph(g:Dynamic):Dynamic;
	/**
		Reduce a non-DistributedValue `value` to `destinations`.
	**/
	static public function _reduce_non_distributed_value(distribution:Dynamic, aggregation:Dynamic, value:Dynamic, destinations:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}