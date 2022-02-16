/* This file is generated, do not edit! */
package torch.fx.experimental.accelerator_partitioner;
@:pythonImport("torch.fx.experimental.accelerator_partitioner") extern class Accelerator_partitioner_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given a partition,check if there is a circular dependency on
		this partition using bfs
	**/
	static public function check_dependency(partition:Dynamic):Dynamic;
	/**
		Given a list of partitions and its two partitions,
		combine these two partitions into a new one appending to the partitions
		and remove the previous two partitions from the list of partitions
	**/
	static public function combine_two_partitions(partition_0:Dynamic, partition_1:Dynamic, partitions:Dynamic):Dynamic;
	/**
		Given a list of partitions,
		mark the bfs level for each partition
	**/
	static public function get_bfs_level_partition(partitions:Dynamic):Dynamic;
	/**
		Given a list of partitions and a list of devices, returns:
		1. A mapping from device to partitions on it;
		2. A mapping from device to its remaining memory size;
		3. A list of partitions that do not have a device.
	**/
	static public function get_device_partition_stats(partitions:Dynamic, devices:Dynamic):Dynamic;
	/**
		Given a list of partitions and a list of devices,
		map each partition into a device.
	**/
	static public function get_device_to_partitions_mapping(partitions:Dynamic, devices:Dynamic):Dynamic;
	/**
		Given a node and a set of nodes,
		this function return the extra size that needed
		if this node is included in this set.
	**/
	static public function get_extra_size_of(node:Dynamic, nodes:Dynamic):Dynamic;
	/**
		Given all paritions in a graph, find the critical path among all partitions
		and return its latency as the latency of the whole graph
	**/
	static public function get_latency_of_partitioned_graph(partitions:Dynamic, partition_to_latency_mapping:Dynamic, transfer_rate_bytes_per_sec:Dynamic):Dynamic;
	/**
		Get a mapping from device logical ID to Device object.
	**/
	static public function get_logical_id_to_device(devices:Dynamic):Dynamic;
	/**
		Given a list of partitions,return node to partition mapping
	**/
	static public function get_node_to_partition_mapping(partitions:Dynamic):Dynamic;
	/**
		Given all the partitions and node_to_latency_mapping dictionary,
		return a mapping dictionary of each partition to its overall latency
	**/
	static public function get_partition_to_latency_mapping(partitions:Dynamic, node_to_latency_mapping:Dynamic):Dynamic;
	/**
		Given a fx graph module, update each node with its total size (weights + bias + output)
		    and its output_size(output). For a non-module node, the total size is the output size.
		    return total size
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function get_size_of_all_nodes(fx_module:Dynamic, ?args:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Given a list of partitions, reorganzie partiton id,
		its parents and its children for each partition
	**/
	static public function reorganize_partitions(partitions:Dynamic):Dynamic;
	static public function reset_partition_device(partitions:Dynamic):Dynamic;
	/**
		Given a list of partitions, mark parents and children for each partition
	**/
	static public function set_parents_and_children(partitions:Dynamic):Dynamic;
	/**
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function split_module(m:Dynamic, root_m:Dynamic, split_callback:Dynamic):Dynamic;
}