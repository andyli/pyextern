/* This file is generated, do not edit! */
package torch.fx.experimental.partitioner_utils;
@:pythonImport("torch.fx.experimental.partitioner_utils") extern class Partitioner_utils_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given two partitions (parent and child),
		calculate the communication latency between the two.
	**/
	static public function get_comm_latency_between(parent_partition:Dynamic, child_partition:Dynamic, transfer_rate_bytes_per_sec:Dynamic):Dynamic;
	/**
		Given a node and a set of nodes,
		this function return the extra size that needed
		if this node is included in this set.
	**/
	static public function get_extra_size_of(node:Dynamic, nodes:Dynamic):Dynamic;
	/**
		Given a partiton and its nodes' latency, return a PartitionLatency for this partition
	**/
	static public function get_latency_of_one_partition(partition:Dynamic, node_to_latency_mapping:Dynamic):Dynamic;
	/**
		Given all paritions in a graph, find the critical path among all partitions
		and return its latency as the latency of the whole graph
	**/
	static public function get_latency_of_partitioned_graph(partitions:Dynamic, partition_to_latency_mapping:Dynamic, transfer_rate_bytes_per_sec:Dynamic):Dynamic;
	/**
		Given all the partitions and node_to_latency_mapping dictionary,
		return a mapping dictionary of each partition to its overall latency
	**/
	static public function get_partition_to_latency_mapping(partitions:Dynamic, node_to_latency_mapping:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
}