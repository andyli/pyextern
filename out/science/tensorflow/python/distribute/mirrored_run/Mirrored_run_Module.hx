/* This file is generated, do not edit! */
package tensorflow.python.distribute.mirrored_run;
@:pythonImport("tensorflow.python.distribute.mirrored_run") extern class Mirrored_run_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Run `fn` in separate threads, once per replica/worker device.
		
		Args:
		  distribution: the DistributionStrategy object.
		  fn: function to run (will be run once per replica, each in its own thread).
		  args: positional arguments for `fn`
		  kwargs: keyword arguments for `fn`.
		
		Returns:
		  Merged return value of `fn` across all replicas.
		
		Raises:
		  RuntimeError: If fn() calls get_replica_context().merge_call() a different
		      number of times from the available devices.
	**/
	static public function _call_for_each_replica(distribution:Dynamic, fn:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var _cfer_fn_cache : Dynamic;
	static public function _cpu_device(device:Dynamic):Dynamic;
	/**
		Context manager for selecting a graph and maybe eager mode.
	**/
	static public function _enter_graph(g:Dynamic, eager:Dynamic, ?creator_stack:Dynamic):Dynamic;
	static public function _is_gpu_device(device:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Call `fn` on each worker devices(replica).
		
		It's highly recommended to wrap the call to this function inside a
		`tf.function`, otherwise the performance is poor.
		
		Args:
		  strategy: `tf.distribute.Strategy`.
		  fn: function to call on each worker devices.
		  args: positional arguments to `fn`.
		  kwargs: keyword arguments to `fn`.
		
		Returns:
		  Wrapped returned value of `fn` from all replicas.
	**/
	static public function call_for_each_replica(strategy:Dynamic, fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}