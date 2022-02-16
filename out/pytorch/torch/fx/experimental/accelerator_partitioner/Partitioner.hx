/* This file is generated, do not edit! */
package torch.fx.experimental.accelerator_partitioner;
@:pythonImport("torch.fx.experimental.accelerator_partitioner", "Partitioner") extern class Partitioner {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		This function helps to rebuild the partitions given the nodes and its
		corresponding partition id
	**/
	public function aot_based_partition(node_to_partition_mapping:Dynamic, partition_to_logical_device_mapping:Dynamic):Dynamic;
	/**
		This method is to partition the fx module based on the cost.
		The cost is the total latency of running the whole fx module.
		In partitioner_utils.py, the cost model is built.
		The cost aware partition algorithm is:
		#1. At every begining, each node is a partition.
		    Then we map all the partitions to the devices
		    and calculate the cost
		#2. Then try to pre-combine any two of the partitions if the two
		    partitions can be combined.
		    (the bfs level is less than 2 or two partitions are connected and
		    can find partition to device mapping)
		    See if any partition pair could reduce the current cost.
		    Choose the pair that shows the minimum cost and then combine them
		#3. Repeat #2 until the cost cannot be reduced.
	**/
	public function cost_aware_partition(transfer_rate_bytes_per_sec:Dynamic, node_to_latency_mapping:Dynamic):Dynamic;
	/**
		Create a partition and append it to self.partitions.
	**/
	public function create_partition():Dynamic;
	/**
		Create a partition for a single node
	**/
	public function create_single_node_partition(node:Dynamic):Dynamic;
	/**
		Return a new fx module with submodule nodes (partitions).
	**/
	public function do_partition():Dynamic;
	/**
		Return the dag structure and the new fx module with submodules.
	**/
	public function dump_dag(module_with_submodules:Dynamic):Dynamic;
	/**
		Fit the whole fx module into one device
	**/
	public function find_single_partition(total_size_of_graph:Dynamic, ?logical_device_id:Dynamic):Dynamic;
	/**
		This function is a cost aware partition based
		on Kernighan-Lin algorithm.
		First, the graph is partitioned using size_based_partition.
		Then, each node is swapped with any other node in a different
		partition, and at the same time, the cost is estimated after
		the swapping.
		For example, we have nodes n0, n1, n2, n3 and n4.
		Using size_based_partition, n0 and n1 are in Partition p0.
		n2, n3 and n4 in Partition p1. The current cost is esimated.
		We first tried using n0 to swap with n2 from the other partiton.
		Then we see that swapping n0 and n2 shows a lower cost
		than the current cost and it is the minimum among other pairs like
		(n0, None)(This means moving n0 to Partition without swapping other nodes),
		(n0, n3) and (n0, n4). We swap n0 and n2 and set the new cost
		as the current cost.
		Then We repeat this process for all the other nodes until all swapping pairs
		are tried.
	**/
	public function kl_based_partition(transfer_rate_bytes_per_sec:Dynamic, node_to_latency_mapping:Dynamic):Dynamic;
	/**
		Given the fx module, torch module and partitioner_config,
		find the partitions, do the partitions,
		and then return a DAG and a new fx module with submodule nodes (partitions)
	**/
	public function partition_graph(fx_module:Dynamic, torch_module:Dynamic, partitioner_config:Dynamic):Dynamic;
	/**
		Saturate host by assigning replicates to unused devices with enough memory.
		It uses a greedy approach to find a next available set of devices to place all split
		partitions: For each used device, it searches for an idle device with minimal memory
		size that can hold all the partition located on that device; If the search is successful
		for all used devices, it then assigns the new devices' logical ID to the corresponding
		partition.
	**/
	public function saturate_host():Dynamic;
	/**
		This method is to partition the fx module based on memory size.
		It uses greedy approach. The result may not be the best.
		The basic idea is:
		Step 1:
		Find a device which has enough memory to fit the current node, create a empty partition
		with the size of that device.
		Then keep adding the following nodes into the partition until the partition is full.
		Step 2:
		Repeat Step 1 until no device left
		Step 3:
		If some nodes are left, create a partition for each left node (single node partition).
		and then try to map those partitions into logical devices with enough mem left.
	**/
	public function size_based_partition():Dynamic;
	/**
		This method partition a sparse nn module.
		It is size based partition but different from size_based_partition,
		it only works when all the devices have same memory size (available_mem_bytes).
		In the future, devices with different mem sizes will be supported like size_based_partition.
		It first traverse all the nodes and do the partitions based on the same memory size.
		If the current partition has no enough memory left for a new op node
		(call_module, call_method, call_function), a new partition is created.
		When crossing the boundary between non-embedding nodes and embedding nodes,
		a new partition is created regardlessly.
		For example, if the current node is a non-embedding node but the next node is an
		embedding node, a new partition is created for the next node.
		After the partition, the partitions are combined as much as possible.
		The rule is that a non-embedding partition only
		combines with another non-embedding one.
		So as the embedding partitions.
	**/
	public function sparse_nn_partition(available_mem_bytes:Dynamic):Dynamic;
}