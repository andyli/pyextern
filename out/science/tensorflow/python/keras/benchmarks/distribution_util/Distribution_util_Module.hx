/* This file is generated, do not edit! */
package tensorflow.python.keras.benchmarks.distribution_util;
@:pythonImport("tensorflow.python.keras.benchmarks.distribution_util") extern class Distribution_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a CollectiveCommunication based on all_reduce_alg.
		
		Args:
		  all_reduce_alg: a string specifying which collective communication to pick,
		    or None.
		
		Returns:
		  tf.distribute.experimental.CollectiveCommunication object
		
		Raises:
		  ValueError: if `all_reduce_alg` not in [None, "ring", "nccl"]
	**/
	static public function _collective_communication(all_reduce_alg:Dynamic):Dynamic;
	/**
		Return a CrossDeviceOps based on all_reduce_alg and num_packs.
		
		Args:
		  all_reduce_alg: a string specifying which cross device op to pick, or None.
		  num_packs: an integer specifying number of packs for the cross device op.
		
		Returns:
		  tf.distribute.CrossDeviceOps object or None.
		
		Raises:
		  ValueError: if `all_reduce_alg` not in [None, "nccl", "hierarchical_copy"].
	**/
	static public function _mirrored_cross_device_ops(all_reduce_alg:Dynamic, num_packs:Dynamic):Dynamic;
	/**
		Set multi-worker cluster spec in TF_CONFIG environment variable.
		
		Args:
		  worker_hosts: comma-separated list of worker ip:port pairs.
		
		Returns:
		  Number of workers in the cluster.
	**/
	static public function configure_cluster(?worker_hosts:Dynamic, ?task_index:Dynamic):Dynamic;
	/**
		Return a DistributionStrategy for running the model.
		
		Args:
		  distribution_strategy: a string specifying which distribution strategy to
		    use. Accepted values are "off", "one_device", "mirrored", and
		    "multi_worker_mirrored" -- case insensitive. "off" means not to use
		    Distribution Strategy.
		  num_gpus: Number of GPUs to run this model.
		
		Returns:
		  tf.distribute.DistibutionStrategy object.
		Raises:
		  ValueError: if `distribution_strategy` is "off" or "one_device" and
		    `num_gpus` is larger than 1; or `num_gpus` is negative.
	**/
	static public function get_distribution_strategy(?distribution_strategy:Dynamic, ?num_gpus:Dynamic, ?all_reduce_alg:Dynamic, ?num_packs:Dynamic):Dynamic;
	static public function get_strategy_scope(strategy:Dynamic):Dynamic;
}