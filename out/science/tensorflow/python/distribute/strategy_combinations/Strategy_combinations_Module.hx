/* This file is generated, do not edit! */
package tensorflow.python.distribute.strategy_combinations;
@:pythonImport("tensorflow.python.distribute.strategy_combinations") extern class Strategy_combinations_Module {
	static public function CentralStorageStrategy(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MAX_NUM_PS : Dynamic;
	static public var MAX_NUM_WORKER : Dynamic;
	static public function MirroredStrategy(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function OneDeviceStrategy(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _TF_INTERNAL_API_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a callable that returns the pool runner.
		
		It creates the pool runner only upon first invocation. This avoids creating it
		when this file is imported.
		
		Args:
		  has_chief: whether there should be a chief.
		  num_workers: the number of workers excluding the chief.
		  initializer: initializer of each process.
		
		Returns:
		  A callable that returns the runner.
	**/
	static public function _deferred_pool_runner(has_chief:Dynamic, num_workers:Dynamic, ?initializer:Dynamic):Dynamic;
	static public var _did_connect_to_cluster : Dynamic;
	static public function _four_worker_pool():Dynamic;
	static public function _get_multi_worker_mirrored_creator(required_gpus:Dynamic, ?use_merge_call:Dynamic):Dynamic;
	static public function _get_ps_strategy_creator(num_workers:Dynamic, num_ps:Dynamic, ?required_gpus:Dynamic, ?variable_partitioner:Dynamic):Dynamic;
	static public function _get_tpu_strategy_creator(steps_per_run:Dynamic, ?use_single_core:Dynamic, ?enable_packed_variable:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _mirrored_strategy_with_collective_key_base(devices:Dynamic):Dynamic;
	static public function _mirrored_strategy_with_no_merge_call(devices:Dynamic):Dynamic;
	static public var _ps_cluster : Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var _topology : Dynamic;
	static public function _two_worker_pool():Dynamic;
	static public function _version_chooser(tf1_cls:Dynamic, tf2_cls:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var all_strategies : Dynamic;
	static public var all_strategies_minus_default : Dynamic;
	static public function all_strategy_combinations():Dynamic;
	static public function all_strategy_combinations_minus_default():Dynamic;
	static public function all_strategy_minus_default_and_tpu_combinations():Dynamic;
	static public var central_storage_strategy_with_gpu_and_cpu : Dynamic;
	static public var central_storage_strategy_with_two_gpus : Dynamic;
	static public var cloud_tpu_strategy : Dynamic;
	static public var default_strategy : Dynamic;
	static public var division : Dynamic;
	static public var four_replica_strategies : Dynamic;
	static public function get_cluster_def(num_workers:Dynamic, num_ps:Dynamic):Dynamic;
	static public var graph_and_eager_modes : Dynamic;
	/**
		Mirrored strategy with 2 virtual CPUs.
		
		Should set up logical devices before use
	**/
	static public var mirrored_strategy_with_cpu_1_and_2 : Dynamic;
	static public var mirrored_strategy_with_gpu_and_cpu : Dynamic;
	static public var mirrored_strategy_with_one_cpu : Dynamic;
	static public var mirrored_strategy_with_one_gpu : Dynamic;
	static public var mirrored_strategy_with_two_cpus : Dynamic;
	static public var mirrored_strategy_with_two_gpus : Dynamic;
	static public var mirrored_strategy_with_two_gpus_no_merge_call : Dynamic;
	static public var multi_worker_mirrored_2x1_cpu : Dynamic;
	static public var multi_worker_mirrored_2x1_gpu : Dynamic;
	static public var multi_worker_mirrored_2x2_gpu : Dynamic;
	static public var multi_worker_mirrored_2x2_gpu_no_merge_call : Dynamic;
	static public var multi_worker_mirrored_4x1_cpu : Dynamic;
	static public var multidevice_strategies : Dynamic;
	static public var multiworker_strategies : Dynamic;
	static public var one_device_strategy : Dynamic;
	static public var one_device_strategy_gpu : Dynamic;
	static public var one_device_strategy_gpu_on_worker_1 : Dynamic;
	static public var one_device_strategy_on_worker_1 : Dynamic;
	static public var parameter_server_strategy_1worker_2ps_1gpu : Dynamic;
	static public var parameter_server_strategy_1worker_2ps_cpu : Dynamic;
	static public var parameter_server_strategy_3worker_2ps_1gpu : Dynamic;
	static public var parameter_server_strategy_3worker_2ps_cpu : Dynamic;
	static public function parameter_server_strategy_fn(name:Dynamic, num_workers:Dynamic, num_ps:Dynamic, ?required_gpus:Dynamic, ?variable_partitioner:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function set_virtual_cpus_to_at_least(num_virtual_cpus:Dynamic):Dynamic;
	static public var strategies_minus_default_and_tpu : Dynamic;
	static public var strategies_minus_tpu : Dynamic;
	static public function strategy_minus_tpu_combinations():Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var tpu_strategies : Dynamic;
	static public var tpu_strategy : Dynamic;
	static public function tpu_strategy_combinations():Dynamic;
	static public var tpu_strategy_one_core : Dynamic;
	static public var tpu_strategy_one_step : Dynamic;
	static public var tpu_strategy_one_step_one_core : Dynamic;
	static public var tpu_strategy_packed_var : Dynamic;
	static public var two_replica_strategies : Dynamic;
}