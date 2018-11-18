/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.cross_tower_ops;
@:pythonImport("tensorflow.contrib.distribute.python.cross_tower_ops") extern class Cross_tower_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all_devices_match(value_destination_pairs:Dynamic):Dynamic;
	static public function _choose_all_reduce_algorithm(device_links:Dynamic):Dynamic;
	static public function _devices_match(left:Dynamic, right:Dynamic):Dynamic;
	static public var _dgx1_links : Dynamic;
	/**
		Group values into sublists by their devices.
		
		This grouping is needed to call the all-reduce library because it expects a
		list of the following form:
		  [[(grad0_gpu0, v0_gpu0), (grad1_gpu0, v1_gpu0), (grad2_gpu0, v2_gpu0) ...],
		   [(grad0_gpu1, v0_gpu1), (grad1_gpu1, v1_gpu1), (grad2_gpu1, v2_gpu1) ...],
		   [(grad0_gpu2, v0_gpu2), (grad1_gpu0, v1_gpu2), (grad2_gpu0, v2_gpu2) ...],
		   ...
		  ]
		
		Args:
		  per_device_values: a list of PerDevice obejcts.
		
		Returns:
		  a list of lists, each sublist has components for its corresponding device of
		    PerDevice objects, paired with a None.
	**/
	static public function _group_value_by_device(per_device_values:Dynamic):Dynamic;
	static public function _has_dgx1_like_links(gpu_links:Dynamic):Dynamic;
	/**
		Converts a single tensor into a PerDevice object.
	**/
	static public function _make_tensor_into_per_device(input_tensor:Dynamic):Dynamic;
	/**
		Converts each tensor into a PerDevice object in the input list.
	**/
	static public function _normalize_value_destination_pairs(value_destination_pairs:Dynamic):Dynamic;
	/**
		Pack tensors if specified.
	**/
	static public function _pack_tensors(device_grads:Dynamic, ?num_packs:Dynamic, ?agg_small_grads_max_bytes:Dynamic, ?agg_small_grads_max_group:Dynamic):Dynamic;
	static public function _simple_broadcast(value:Dynamic, destinations:Dynamic):Dynamic;
	static public function _simple_reduce(per_device_value:Dynamic, reduce_to_device:Dynamic, accumulation_fn:Dynamic, aggregation:Dynamic):Dynamic;
	/**
		Ungroup results from all-reduce and make Mirrored objects.
		
		Each all-reduce result will be divided by the number of destinations before
		Mirrored objects are created if aggregation is "mean".
		
		Args:
		  grouped_reduced: a list of lists, each sublist has components for each
		    device, paired with a None. It is the result from
		    cross_tower_utils.aggregate_gradients_using*.
		  destinations: a list of device strings for returned Mirrored objects.
		  aggregation: Indicates how a variable will be aggregated. Accepted values
		    are `tf.VariableAggregation.SUM`, `tf.VariableAggregation.MEAN`.
		  num_between_graph_workers: number of workers in the between-graph
		    replication.
		
		Returns:
		  a list of Mirrored objects.
	**/
	static public function _ungroup_and_make_mirrored(grouped_reduced:Dynamic, destinations:Dynamic, aggregation:Dynamic, ?num_between_graph_workers:Dynamic):Dynamic;
	/**
		Unpack tensors if they are packed before all-reduce.
	**/
	static public function _unpack_tensors(reduced:Dynamic, ?tensor_packer:Dynamic):Dynamic;
	static public function _validate_value_destination_pairs(value_destination_pairs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks whether `destinations` is not empty.
		
		Args:
		  destinations: a DistributedValues, Variable, string or a list of strings.
		
		Returns:
		  Boolean which is True if `destinations` is not empty.
	**/
	static public function check_destinations(destinations:Dynamic):Dynamic;
	/**
		Find the best subclass of CrossTowerOps given a tensorflow session.
		
		Args:
		  devices: a list of devices passed for distribute strategy.
		  session_config: a tensorflow session config or None. If None, it will make
		    deciesion based on all local devices.
		
		Returns:
		  a subclass of CrossTowerOps.
	**/
	static public function choose_the_best(devices:Dynamic, ?session_config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_devices_from(destinations:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function validate_destinations(destinations:Dynamic):Dynamic;
}