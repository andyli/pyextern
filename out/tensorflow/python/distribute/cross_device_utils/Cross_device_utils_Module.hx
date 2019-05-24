/* This file is generated, do not edit! */
package tensorflow.python.distribute.cross_device_utils;
@:pythonImport("tensorflow.python.distribute.cross_device_utils") extern class Cross_device_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _lock : Dynamic;
	static public var _thread_local : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Aggregate gradients using hierarchical copies.
		
		Args:
		  avail_devices: available GPU devices.
		  replica_grads: List of lists of (gradient, variable) tuples. The outer list
		    is over replicas. The inner list is over individual gradients.
		
		Returns:
		  The list of (aggregated_gradient, variable), where the gradient has been
		    summed across all replicas and the variable is chosen from the first
		    replica.
	**/
	static public function aggregate_gradients_using_hierarchical_copy(avail_devices:Dynamic, replica_grads:Dynamic):Dynamic;
	/**
		Aggregate gradients using nccl allreduce.
	**/
	static public function aggregate_gradients_using_nccl(replica_grads:Dynamic):Dynamic;
	/**
		Calculate the average gradient for a shared variable across all replicas.
		
		Note that this function provides a synchronization point across all replicas.
		
		Args:
		  grad_and_vars: A list or tuple of (gradient, variable) tuples. Each
		    (gradient, variable) pair within the outer list represents the gradient
		    of the variable calculated for a single replica, and the number of pairs
		    equals the number of replicas.
		  use_mean: if True, mean is taken, else sum of gradients is taken.
		  check_inf_nan: check grads for nans and infs.
		
		Returns:
		  The tuple ([(average_gradient, variable),], has_nan_or_inf) where the
		    gradient has been averaged across all replicas. The variable is chosen
		    from the first replica. The has_nan_or_inf indicates the grads has nan or
		    inf.
	**/
	static public function aggregate_single_gradient_using_copy(grad_and_vars:Dynamic, use_mean:Dynamic, check_inf_nan:Dynamic):Dynamic;
	/**
		Aggregate tensors using `accumulation_fn` and IndexedSlices via concat.
	**/
	static public function aggregate_tensors_or_indexed_slices(values:Dynamic, ?accumulation_fn:Dynamic):Dynamic;
	/**
		Build a subgraph that does one full all-reduce, using the collective Op.
		
		Args:
		  input_tensors: tensors within a single worker graph that are to be reduced
		    together; must be one per device.
		  num_workers: total number of workers with identical independent graphs that
		    will be doing this same reduction.  The reduction will actually include
		    the corresponding tensors at all these workers.
		  collective_keys: a CollectiveKeys object.
		  reduction_op: string naming the reduction op.
		  unary_op: string naming the unary final op.
		
		Returns:
		  An array of final tensors, one per device, computed by the full reduction.
		
		Raises:
		  ValueError: There must be at least two tensors over all the workers.
	**/
	static public function build_collective_reduce(input_tensors:Dynamic, num_workers:Dynamic, collective_keys:Dynamic, ?reduction_op:Dynamic, ?unary_op:Dynamic):Dynamic;
	/**
		Check whether the value is `IndexedSlices` or contains `IndexedSlices`.
	**/
	static public function contains_indexed_slices(value:Dynamic):Dynamic;
	static public function copy_tensor_or_indexed_slices_to_device(value:Dynamic, device:Dynamic):Dynamic;
	static public function divide_by_n_tensors_or_indexed_slices(value:Dynamic, n:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Extract consecutive ranges and singles from index_list.
		
		Args:
		  index_list: List of monotone increasing non-negative integers.
		  range_size_limit: Largest size range to return.  If a larger
		    consecutive range exists, it will be returned as multiple
		    ranges.
		
		Returns:
		  (ranges, singles) where ranges is a list of [first, last] pairs of
		    consecutive elements in index_list, and singles is all of the
		    other elements, in original order.
	**/
	static public function extract_ranges(index_list:Dynamic, ?range_size_limit:Dynamic):Dynamic;
	/**
		Group device names into groups of group_size.
		
		Args:
		  devices: a list of canonical device strings.
		  group_size: integer which is equal to or greater than 1.
		
		Returns:
		  list of lists of devices, where each inner list is group_size long,
		    and each device appears at least once in an inner list.  If
		    len(devices) % group_size == 0 then each device will appear exactly once.
		
		Raises:
		  ValueError: if group_size > len(devices)
	**/
	static public function group_device_names(devices:Dynamic, group_size:Dynamic):Dynamic;
	/**
		Form the concatenation of a specified range of gradient tensors.
		
		Args:
		  key: Value under which to store meta-data in packing that will be used
		    later to restore the grad_var list structure.
		  packing: Dict holding data describing packed ranges of small tensors.
		  grad_vars: List of (grad, var) pairs for one replica.
		  rng: A pair of integers giving the first, last indices of a consecutive
		    range of tensors to be packed.
		
		Returns:
		  A tensor that is the concatenation of all the specified small tensors.
	**/
	static public function pack_range(key:Dynamic, packing:Dynamic, grad_vars:Dynamic, rng:Dynamic):Dynamic;
	/**
		Concatenate small gradient tensors together for reduction.
		
		Args:
		  replica_grads: List of lists of (gradient, variable) tuples.
		  max_bytes: Int giving max number of bytes in a tensor that
		    may be considered small.
		  max_group: Int giving max number of small tensors that may be
		    concatenated into one new tensor.
		
		Returns:
		  new_replica_grads, packing where new_replica_grads is identical to
		    replica_grads except that all feasible small_tensors have been removed
		    from their places and concatenated into larger tensors that are
		    now in the front of the list for each replica, and packing contains
		    the data necessary to restore the replica_grads structure.
		
		Look through the first replica for gradients of the same type (float),
		and small size, that are all sequential.  For each such group,
		replace by a new tensor that is a flattened concatenation.  Note
		that the corresponding variable will be absent, which doesn't matter
		because it isn't used during all-reduce.
		
		Requires:
		  Every gv_list in replicas must have isomorphic structure including identical
		    tensor sizes and types.
	**/
	static public function pack_small_tensors(replica_grads:Dynamic, ?max_bytes:Dynamic, ?max_group:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Break gradients into two sets according to tensor size.
		
		Args:
		  threshold_size: int size cutoff for small vs large tensor.
		  device_grads: List of lists of (gradient, variable) tuples.  The outer
		      list is over devices. The inner list is over individual gradients.
		
		Returns:
		  small_grads: Subset of device_grads where shape is <= threshold_size
		     elements.
		  large_grads: Subset of device_grads where shape is > threshold_size
		     elements.
	**/
	static public function split_grads_by_size(threshold_size:Dynamic, device_grads:Dynamic):Dynamic;
	/**
		Apply all-reduce algorithm over specified gradient tensors.
	**/
	static public function sum_grad_and_var_all_reduce(grad_and_vars:Dynamic, num_workers:Dynamic, alg:Dynamic, gpu_indices:Dynamic, ?aux_devices:Dynamic, ?num_shards:Dynamic):Dynamic;
	/**
		Apply all-reduce algorithm over specified gradient tensors.
		
		Args:
		  dev_prefixes: list of prefix strings to use to generate PS device names.
		  replica_grads: the gradients to reduce.
		  num_workers: number of worker processes across entire job.
		  alg: the all-reduce algorithm to apply.
		  num_shards: alg-specific sharding factor.
		  gpu_indices: indices of local GPUs in order usable for ring-reduce.
		
		Returns:
		  list of reduced tensors
	**/
	static public function sum_gradients_all_reduce(dev_prefixes:Dynamic, replica_grads:Dynamic, num_workers:Dynamic, alg:Dynamic, num_shards:Dynamic, gpu_indices:Dynamic):Dynamic;
	/**
		Unpack a previously packed collection of gradient tensors.
		
		Args:
		  gv: A (grad, var) pair to be unpacked.
		  gpt: A GradPackTuple describing the packing operation that produced gv.
		
		Returns:
		  A list of (grad, var) pairs corresponding to the values that were
		   originally packed into gv, maybe following subsequent operations like
		   reduction.
	**/
	static public function unpack_grad_tuple(gv:Dynamic, gpt:Dynamic):Dynamic;
	/**
		Undo the structure alterations to replica_grads done by pack_small_tensors.
		
		Args:
		  replica_grads: List of List of (grad, var) tuples.
		  packing: A dict generated by pack_small_tensors describing the changes
		    it made to replica_grads.
		
		Returns:
		  new_replica_grads: identical to replica_grads except that concatenations
		    of small tensors have been split apart and returned to their original
		    positions, paired with their original variables.
	**/
	static public function unpack_small_tensors(replica_grads:Dynamic, packing:Dynamic):Dynamic;
}