/* This file is generated, do not edit! */
package tensorflow.python.distribute.mirrored_strategy;
@:pythonImport("tensorflow.python.distribute.mirrored_strategy") extern class Mirrored_strategy_Module {
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
		  fn: function to run (will be run once per device, each in its own thread).
		  args: positional arguments for `fn`
		  kwargs: keyword arguments for `fn`.
		
		Returns:
		  Merged return value of `fn` across all replicas.
		
		Raises:
		  RuntimeError: If fn() calls get_replica_context().merge_call() a different
		      number of times from the available devices.
	**/
	static public function _call_for_each_replica(distribution:Dynamic, fn:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns a device list given a cluster spec.
	**/
	static public function _cluster_spec_to_device_list(cluster_spec:Dynamic, num_gpus_per_worker:Dynamic):Dynamic;
	static public function _cpu_device(device:Dynamic):Dynamic;
	static public function _create_mirrored_variable(devices:Dynamic, real_mirrored_creator:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Context manager for selecting a graph and maybe eager mode.
	**/
	static public function _enter_graph(g:Dynamic, eager:Dynamic, ?creator_stack:Dynamic):Dynamic;
	/**
		Groups the devices list by task_type and task_id.
		
		Args:
		  devices: a list of device strings for remote devices.
		
		Returns:
		  a dict of list of device strings mapping from task_type to a list of devices
		  for the task_type in the asceding order of task_id.
	**/
	static public function _group_device_list(devices:Dynamic):Dynamic;
	/**
		Infers the number of GPUs on each worker.
		
		Currently to make multi-worker cross device ops work, we need all workers to
		have the same number of GPUs.
		
		Args:
		  devices: a list of device strings, can be either local devices or remote
		    devices.
		
		Returns:
		  number of GPUs per worker.
		
		Raises:
		  ValueError if workers have different number of GPUs or GPU indices are not
		  consecutive and starting from 0.
	**/
	static public function _infer_num_gpus_per_worker(devices:Dynamic):Dynamic;
	/**
		Checks whether the devices list is for local or multi-worker.
		
		Args:
		  devices: a list of device strings, either local for remote devices.
		
		Returns:
		  a boolean indicating whether these device strings are for local or for
		  remote.
		
		Raises:
		  ValueError: if device strings are not consistent.
	**/
	static public function _is_device_list_local(devices:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function all_local_devices(?num_gpus:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}