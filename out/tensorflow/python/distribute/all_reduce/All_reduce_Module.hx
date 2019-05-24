/* This file is generated, do not edit! */
package tensorflow.python.distribute.all_reduce;
@:pythonImport("tensorflow.python.distribute.all_reduce") extern class All_reduce_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Apply a unary op to each tensor in chunks_by_dev, on same device.
		
		Args:
		  f: a unary function over T `tf.Tensor`.
		  chunks_by_dev: list of lists of T `tf.Tensor`.
		
		Returns:
		  new list of lists of T `tf.Tensor` with the same structure as
		  chunks_by_dev containing the derived tensors.
	**/
	static public function _apply_unary_to_chunks(f:Dynamic, chunks_by_dev:Dynamic):Dynamic;
	/**
		Construct a subgraph for NCCL hybrid all-reduce.
		
		Args:
		  input_tensors: list of T `tf.Tensor` of same-shape and type values to
		    be reduced.
		  red_op: binary elementwise reduction operator.
		  upper_level_f: function for reducing one value per worker, across
		    workers.
		
		Returns:
		  list of T `tf.Tensor` of reduced values.
		
		Raises:
		  ValueError: inputs not well-formed.
	**/
	static public function _build_nccl_hybrid(input_tensors:Dynamic, red_op:Dynamic, upper_level_f:Dynamic):Dynamic;
	/**
		Construct the gather phase of recursive halving-doubling all-reduce.
		
		Args:
		  input_tensors: list of T `tf.Tensor` to be elementwise reduced.
		  devices: a list of strings naming the devices hosting input_tensors,
		    which will also be used to host the (partial) reduction values.
		  red_op: a binary elementwise reduction Op.
		
		Returns:
		  list of T `tf.Tensor` which are the fully reduced tensor shards.
		
		Raises:
		  ValueError: num_devices not a power of 2, or tensor len not divisible
		  by 2 the proper number of times.
	**/
	static public function _build_recursive_hd_gather(input_tensors:Dynamic, devices:Dynamic, red_op:Dynamic):Dynamic;
	/**
		Construct the scatter phase of recursive halving-doublng all-reduce.
		
		Args:
		  input_tensors: list of T `tf.Tensor` that are fully-reduced shards.
		  devices: a list of strings naming the devices on which the reconstituted
		    full tensors should be placed.
		
		Returns:
		  list of T `tf.Tensor` which are the fully reduced tensors.
	**/
	static public function _build_recursive_hd_scatter(input_tensors:Dynamic, devices:Dynamic):Dynamic;
	/**
		Construct a subgraph for the first (reduction) pass of ring all-reduce.
		
		Args:
		  input_tensors: a list of T `tf.Tensor` 1D input tensors of same
		    shape and type.
		  devices: array of device name strings
		  num_subchunks: number of subchunks each device should process in one tick.
		  pred_by_s_d: as produced by _ring_permutations
		  rank_by_s_d: as produced by _ring_permutations
		  red_op: a binary operator for elementwise reduction
		
		Raises:
		  ValueError: tensors must all be one dimensional.
		
		Returns:
		  list of list of T `tf.Tensor` of (partially) reduced values where
		  exactly num_subchunks chunks at each device are fully reduced.
	**/
	static public function _build_ring_gather(input_tensors:Dynamic, devices:Dynamic, num_subchunks:Dynamic, pred_by_s_d:Dynamic, rank_by_s_d:Dynamic, red_op:Dynamic):Dynamic;
	/**
		Construct subgraph for second (scatter) pass of ring all-reduce.
		
		Args:
		  pred_by_s_d: as produced by _ring_permutations
		  rank_by_s_d: as produced by _ring_permutations
		  chunks_by_dev: list of list of T `tf.Tensor` indexed by ints
		    (device, chunk)
		
		Raises:
		  ValueError: chunks_by_dev is not well-formed
		
		Returns:
		  list of T `tf.Tensor` which are the fully reduced tensors, one
		  at each device corresponding to the outer dimension of chunks_by_dev.
	**/
	static public function _build_ring_scatter(pred_by_s_d:Dynamic, rank_by_s_d:Dynamic, chunks_by_dev:Dynamic):Dynamic;
	/**
		Construct the gather (concentrate and reduce) phase of shuffle all-reduce.
		
		Args:
		  input_tensors: list of T @(tf.Tensor} values to be reduced.
		  gather_devices: list of names of devices on which reduction shards
		    should be placed.
		  red_op: the binary reduction Op
		  un_op: optional elementwise unary Op to be applied to fully-reduced values.
		
		Returns:
		  list of T `tf.Tensor` which are the fully reduced shards.
		
		Raises:
		  ValueError: inputs not well-formed.
	**/
	static public function _build_shuffle_gather(input_tensors:Dynamic, gather_devices:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct a subgraph for Shuffle hybrid all-reduce.
		
		Args:
		  input_tensors: list of T `tf.Tensor` of same-shape and type values to
		    be reduced.
		  gather_devices: list of device names on which to host gather shards.
		  red_op: binary elementwise reduction operator.
		  upper_level_f: function for reducing one value per worker, across
		    workers.
		
		Returns:
		  list of T `tf.Tensor` of reduced values.
		
		Raises:
		  ValueError: inputs not well-formed.
	**/
	static public function _build_shuffle_hybrid(input_tensors:Dynamic, gather_devices:Dynamic, red_op:Dynamic, upper_level_f:Dynamic):Dynamic;
	/**
		Build the scatter phase of shuffle all-reduce.
		
		Args:
		  reduced_shards:  list of T @(tf.Tensor} fully reduced shards
		  dst_devices: list of names of devices at which the fully-reduced value
		    should be reconstituted.
		
		Returns:
		  list of T `tf.Tensor` scattered tensors.
	**/
	static public function _build_shuffle_scatter(reduced_shards:Dynamic, dst_devices:Dynamic):Dynamic;
	/**
		Check tensors for isomorphism and flatten.
		
		Args:
		  tensors: list of T `tf.Tensor` which must all have the same shape.
		
		Returns:
		  tensors: a list of T `tf.Tensor` which are flattened (1D) views of tensors
		  shape: the original shape of each element of input tensors
		
		Raises:
		  ValueError: tensors are empty or non-isomorphic or have unknown shape.
	**/
	static public function _flatten_tensors(tensors:Dynamic):Dynamic;
	/**
		Like split for 1D tensors but pads-out case where len % pieces != 0.
		
		Args:
		  tensor: T `tf.Tensor` that must be 1D.
		  pieces: a positive integer specifying the number of pieces into which
		    tensor should be split.
		
		Returns:
		  list of T `tf.Tensor` of length pieces, which hold the values of
		    thin input tensor, in order.  The final tensor may
		    be zero-padded on the end to make its size equal to those of all
		    of the other tensors.
		
		Raises:
		  ValueError: The input tensor is not 1D.
	**/
	static public function _padded_split(tensor:Dynamic, pieces:Dynamic):Dynamic;
	/**
		Like split for 1D tensors but allows case where len % pieces != 0.
		
		Args:
		  tensor: T `tf.Tensor` that must be 1D.
		  pieces: a positive integer specifying the number of pieces into which
		    tensor should be split.
		
		Returns:
		  list of T `tf.Tensor` of length pieces, which hold the values of
		    the input tensor, in order.  The final tensor may be shorter
		    than the others, which will all be of equal length.
		
		Raises:
		  ValueError: input tensor must be 1D.
	**/
	static public function _ragged_split(tensor:Dynamic, pieces:Dynamic):Dynamic;
	/**
		If len(input_tensors) > 1, apply red_f, else apply un_op.
	**/
	static public function _reduce_non_singleton(input_tensors:Dynamic, red_f:Dynamic, un_op:Dynamic):Dynamic;
	/**
		Reshape tensors flattened by _flatten_tensors.
		
		Args:
		  tensors: list of T `tf.Tensor` of identical length 1D tensors.
		  shape: list of integers describing the desired shape.  Product of
		    the elements must equal the length of each tensor.
		
		Returns:
		  list of T `tf.Tensor` which are the reshaped inputs.
	**/
	static public function _reshape_tensors(tensors:Dynamic, shape:Dynamic):Dynamic;
	/**
		"Generate an array of device index arrays, one for each subchunk.
		
		In the basic ring reduction algorithm there are size(T)/num_devices
		data chunks and each device process one chunk per tick, i.e. sending
		one chunk and receiving one chunk.  The idea of subchunking is that
		each device processes num_subchunks smaller data regions per tick,
		and the ring rank permutation is different for each subchunk index
		so that a device is potentially sending to and receiving from
		num_subchunks different other devices at each tick.  Where multiple
		independent data channels exist between devices, this strategy
		supplies a method of using them in parallel.
		
		Args:
		  num_workers: number of worker tasks
		  num_subchunks: number of subchunks into which to divide each per-GPU chunk.
		  gpu_perm: an array of integers in [0, num_gpus-1] giving the default
		    ring order of GPUs at each worker.  Other permutations will be generated
		    by rotating this array and splicing together per-worker instances.
		
		Raises:
		  ValueError: the number of subchunks may not exceed the number of GPUs.
		
		Returns:
		  pred_by_s_d: list of lists that maps (by index) from (subchunk, dev) to
		      preceding device in the permutation for that subchunk.  The
		      device index of GPU i at worker j is i + (j * num_gpus).
		  rank_by_s_d: list of lists that maps (by index) from (subchunk, dev) to
		     local rank of device d in the permutation for that subchunk.
	**/
	static public function _ring_permutations(num_workers:Dynamic, num_subchunks:Dynamic, gpu_perm:Dynamic):Dynamic;
	/**
		Partition devices and values by common task.
		
		Args:
		  devices: list of device name strings
		  values: list of T `tf.tensor` of same length as devices.
		
		Returns:
		  (per_task_devices, per_task_values) where both values are
		  lists of lists with isomorphic structure: the outer list is
		  indexed by task, and the inner list has length of the number
		  of values belonging to that task.  per_task_devices contains
		  the specific devices to which the values are local, and
		  per_task_values contains the corresponding values.
		
		Raises:
		  ValueError: devices must be same length as values.
	**/
	static public function _split_by_task(devices:Dynamic, values:Dynamic):Dynamic;
	/**
		Strip the suffix padding added by _padded_split.
		
		Args:
		  tensors: list of T `tf.Tensor` of identical length 1D tensors.
		  pad_len: number of elements to be stripped from the end of each tensor.
		
		Returns:
		  list of T `tf.Tensor` which are the stripped inputs.
		
		Raises:
		  ValueError: tensors must be a non-empty list of 1D tensors, and
		    each must be longer than pad_len.
	**/
	static public function _strip_padding(tensors:Dynamic, pad_len:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build a subgraph that does one full all-reduce, using NCCL.
		
		Args:
		  input_tensors: list of T `tf.Tensor` of same-shape and type values to
		    be reduced.
		  red_op: binary elementwise reduction operator.  Must be one of
		    {tf.add}
		  un_op: optional unary elementwise Op to apply to fully-reduce values.
		
		Returns:
		  list of T `tf.Tensor` of reduced values.
		
		Raises:
		  ValueError: red_op not supported.
	**/
	static public function build_nccl_all_reduce(input_tensors:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct hybrid of NCCL within workers, Recursive-HD across workers.
	**/
	static public function build_nccl_then_recursive_hd(input_tensors:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct hybrid of NCCL within workers, Ring across workers.
	**/
	static public function build_nccl_then_ring(input_tensors:Dynamic, subdiv:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct hybrid of NCCL within workers, Shuffle across workers.
	**/
	static public function build_nccl_then_shuffle(input_tensors:Dynamic, gather_devices:Dynamic, nccl_red_op:Dynamic, shuffle_red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct a subgraph for recursive halving-doubling all-reduce.
		
		The recursive halving-doubling algorithm is described in
		http://www.mcs.anl.gov/~thakur/papers/ijhpca-coll.pdf
		
		The concept is to arrange the participating n devices in
		a linear sequence where devices exchange data pairwise
		with one other device in each round.  During the gather
		phase there are lg(n) rounds where devices exchange
		increasingly smaller sub-tensors with another device
		at increasingly greater distances, until at the top
		each device has 1/n of the fully reduced values.  During the
		scatter phase each device exchanges its fully reduced
		sub-tensor (which doubles in length at each round)
		with one other device at increasingly smaller distances
		until each device has all of the fully reduced values.
		
		Note: this preliminary version requires that len(input_tensors) be a
		  power of 2.  TODO(tucker): relax this restriction.  Also, the
		  number of elements in each tensor must be divisible by 2^h where h
		  is the number of hops in each phase.  This will also be relaxed in
		  the future with edge-case specific logic.
		
		Args:
		  input_tensors: list of T `tf.Tensor` to be elementwise reduced.
		  red_op: a binary elementwise reduction Op.
		  un_op: an optional unary elementwise Op to apply to reduced values.
		
		Returns:
		  list of T `tf.Tensor` which are the fully reduced tensors, one
		  at each device of input_tensors.
		
		Raises:
		  ValueError: num_devices not a power of 2, or tensor len not divisible
		  by 2 the proper number of times.
	**/
	static public function build_recursive_hd_all_reduce(input_tensors:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct a subgraph performing a ring-style all-reduce of input_tensors.
		
		Args:
		  input_tensors: a list of T `tf.Tensor` objects, which must all
		    have the same shape and type.
		  num_workers: number of worker tasks spanned by input_tensors.
		  num_subchunks: number of subchunks each device should process in one tick.
		  gpu_perm: a list of ints giving a ring-wise rank ordering of GPUs at
		    each worker.  All workers must have the same number of
		    GPUs with the same rank ordering.  If NVLINK is available, this should
		    be a ring order supported by NVLINK edges.
		  red_op: a binary operator for elementwise reduction.
		  un_op: an optional unary operator to apply to fully reduced values.
		
		Raises:
		  ValueError: empty input_tensors or they don't all have same
		  size.
		
		Returns:
		  a list of T `tf.Tensor` identical sum-reductions of input_tensors.
	**/
	static public function build_ring_all_reduce(input_tensors:Dynamic, num_workers:Dynamic, num_subchunks:Dynamic, gpu_perm:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct a subgraph for shuffle all-reduce.
		
		Shuffle reduce is essentially the algorithm implemented when using
		parameter servers.  Suppose tensor length is n, there are d devices
		and g gather shards.  Each device sends a n/g length sub-tensor to
		each gather shard.  The gather shards perform a reduction across d
		fragments, then broadcast the result back to each device.  The
		devices then join the g fully reduced fragments they receive from
		the shards.  The gather shards could perform d-1 pairwise
		reductions, or one d-way reduction.  The first is better where
		reduction Op time is low compared to transmission time, the second
		better in the other case.
		
		Args:
		  input_tensors: list of T @(tf.Tensor} values to be reduced.
		  gather_devices: list of names of devices on which reduction shards
		    should be placed.
		  red_op: an n-array elementwise reduction Op
		  un_op: optional elementwise unary Op to be applied to fully-reduced values.
		
		Returns:
		  list of T `tf.Tensor` which are the fully reduced tensors.
	**/
	static public function build_shuffle_all_reduce(input_tensors:Dynamic, gather_devices:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct hybrid of Shuffle within workers, Ring across workers.
	**/
	static public function build_shuffle_then_ring(input_tensors:Dynamic, gather_devices:Dynamic, subdiv:Dynamic, red_n_op:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	/**
		Construct hybrid of Shuffle within workers, Shuffle across workers.
	**/
	static public function build_shuffle_then_shuffle(input_tensors:Dynamic, first_gather_devices:Dynamic, second_gather_devices:Dynamic, red_op:Dynamic, ?un_op:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}