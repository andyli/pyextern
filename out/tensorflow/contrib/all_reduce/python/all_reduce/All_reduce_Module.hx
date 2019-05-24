/* This file is generated, do not edit! */
package tensorflow.contrib.all_reduce.python.all_reduce;
@:pythonImport("tensorflow.contrib.all_reduce.python.all_reduce") extern class All_reduce_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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