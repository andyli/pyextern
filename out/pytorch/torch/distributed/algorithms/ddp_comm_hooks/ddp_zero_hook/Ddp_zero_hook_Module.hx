/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks.ddp_zero_hook;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks.ddp_zero_hook") extern class Ddp_zero_hook_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _NO_PARAM_UPDATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Broadcasts a bucket's parameters.
		
		Arguments:
		    bucket_index (int): the index of the bucket corresponding to the
		        parameters to broadcast.
		    zero (ZeroRedundancyOptimizer): the calling process's
		        :class:`ZeroRedundancyOptimizer` instance.
	**/
	static public function _broadcast_bucket(bucket_index:Dynamic, zero:Dynamic):Dynamic;
	/**
		Returns the global rank for the given group and rank.
	**/
	static public function _get_global_rank(group:Dynamic, rank:Dynamic):Dynamic;
	/**
		Encapsulates the setup logic for :func:`hook_with_zero_step` and
		:func:`hook_with_zero_step_interleaved`, meaning the logic to run in the
		hook before the backward pass and optimizer step can actually be
		overlapped. This is factored out since it is common to both
		:func:`hook_with_zero_step` and :func:`hook_with_zero_step_interleaved`.
		
		Arguments:
		    ddp_ref (weakref.ReferenceType): weak reference to the process's
		        :class:`DistributedDataParallel` instance.
		    zero (ZeroRedundancyOptimizer): the calling process's
		        :class:`ZeroRedundancyOptimizer` instance.
		    bucket (dist.GradBucket): the current gradient bucket.
	**/
	static public function _hook_with_zero_step_setup(ddp_ref:Dynamic, zero:Dynamic, bucket:Dynamic):Dynamic;
	/**
		Performs a local optimizer step using the gradients provided by ``bucket``.
		
		Arguments:
		    bucket (dist.GradBucket): the bucket providing the gradients.
		    zero (ZeroRedundancyOptimizer): the :class:`ZeroRedundancyOptimizer`
		        instance to perform the :meth:`_local_step`.
		    rank (int): the calling process's rank.
		
		.. warning::
		    This function assumes that appropriate synchronization has taken place
		    so that the bucket's gradients can be used.
	**/
	static public function _perform_local_step(bucket:Dynamic, zero:Dynamic, rank:Dynamic):Dynamic;
	/**
		Saves :class:`DistributedDataParallel` gradient bucket information for the
		:class:`ZeroRedundancyOptimizer` instance ``zero`` to use when overlapping.
		In particular, this function is meant to be called upon seeing each
		gradient bucket, meaning it does not save or compute any global
		information.
		
		Arguments:
		    bucket (dist.GradBucket): the current gradient bucket.
		    zero (ZeroRedundancyOptimizer): the calling process's
		        :class:`ZeroRedundancyOptimizer` instance.
	**/
	static public function _save_ddp_bucket_info(bucket:Dynamic, zero:Dynamic):Dynamic;
	/**
		Modifies the given ``hook`` to overlap the :class:`ZeroRedundancyOptimizer`
		optimizer step with the :class:`DistributedDataParallel` backward pass,
		where the optimizer step computation begins after the last gradient bucket
		computation has finished.
		
		This approach overlaps the optimizer computation and communication with the
		backward communication. In particular, the backward computation proceeds
		contiguously, and the optimizer computation follows, overlapping with
		outstanding backward communication (i.e. all-reduces) and possibly other
		optimizer communication (i.e. broadcasts).
		
		This approach may be preferred over :meth:`hook_with_zero_step_interleaved`
		if communication is relatively slow compared to computation.
		
		Arguments:
		    hook (Callable[[Any, dist.GradBucket], torch.futures.Future]): the hook
		        to modify.
		    ddp (DistributedDataParallel): the :class:`DistributedDataParallel`
		        instance to use.
		    zero (ZeroRedundancyOptimizer): the :class:`ZeroRedundancyOptimizer`
		        instance to use.
		    shard_buckets (bool): if ``True``, then the assignment of each
		        :class:`DistributedDataParallel` bucket is partitioned across
		        possibly multiple :class:`ZeroRedundancyOptimizer` instances (i.e.
		        across possibly multiple ranks) to approximate uniformity; if
		        ``False``, then each bucket is wholly assigned to a single
		        :class:`ZeroRedundancyOptimizer` instance (i.e. to a single rank).
		
		Returns:
		    The modified hook.
		
		Raises:
		    ValueError: if ``zero`` was constructed with ``overlap_with_ddp=False``.
		    RuntimeError: if using any backend other than NCCL since currently
		        Gloo may hang.
		
		.. warning::
		    Given the way that overlapping :class:`DistributedDataParallel` with
		    :class:`ZeroRedundancyOptimizer` is currently implemented, the first
		    two or three training iterations do not perform parameter updates in
		    the optimizer step, depending on if ``static_graph=False`` or
		    ``static_graph=True``, respectively. This is because it needs
		    information about the gradient bucketing strategy used by
		    :class:`DistributedDataParallel`, which is not finalized until the
		    second forward pass if ``static_graph=False`` or until the third
		    forward pass if ``static_graph=True``.
	**/
	static public function hook_with_zero_step(hook:Dynamic, ddp:Dynamic, zero:Dynamic, ?shard_buckets:Dynamic):Dynamic;
	/**
		Modifies the given ``hook`` to overlap the :class:`ZeroRedundancyOptimizer`
		optimizer step with the :class:`DistributedDataParallel` backward pass,
		where the optimizer step computation interleaves with the backward
		computation.
		
		This approach overlaps the optimizer computation and communication with the
		backward computation and communication. In particular, once a bucket's
		gradients have been computed, the optimizer computation using those
		gradients is launched (though the actual computation must wait for the
		bucket's all-reduce to complete). This yields an interleaving of all-
		reduces and broadcasts in the communication stream.
		
		This approach may be preferred over :meth:`hook_with_zero_step` if
		communication is relatively fast compared to computation.
		
		Arguments:
		    hook (Any * dist.GradBucket -> torch.futures.Future): the hook to
		        modify.
		    ddp (DistributedDataParallel): the :class:`DistributedDataParallel`
		        instance to use.
		    zero (ZeroRedundancyOptimizer): the :class:`ZeroRedundancyOptimizer`
		        instance to use.
		    shard_buckets (bool): if ``True``, then the assignment of each
		        :class:`DistributedDataParallel` bucket is partitioned across
		        possibly multiple :class:`ZeroRedundancyOptimizer` instances (i.e.
		        across possibly multiple ranks) to approximate uniformity; if
		        ``False``, then each bucket is wholly assigned to a single
		        :class:`ZeroRedundancyOptimizer` instance (i.e. to a single rank).
		
		Returns:
		    The modified hook.
		
		Raises:
		    ValueError: if ``zero`` was constructed with ``overlap_with_ddp=False``.
		    RuntimeError: if using any backend other than NCCL since currently
		        Gloo may hang.
		
		.. warning::
		    Given the way that overlapping :class:`DistributedDataParallel` with
		    :class:`ZeroRedundancyOptimizer` is currently implemented, the first
		    two or three training iterations do not perform parameter updates in
		    the optimizer step, depending on if ``static_graph=False`` or
		    ``static_graph=True``, respectively. This is because it needs
		    information about the gradient bucketing strategy used by
		    :class:`DistributedDataParallel`, which is not finalized until the
		    second forward pass if ``static_graph=False`` or until the third
		    forward pass if ``static_graph=True``.
	**/
	static public function hook_with_zero_step_interleaved(hook:Dynamic, ddp:Dynamic, zero:Dynamic, ?shard_buckets:Dynamic):Dynamic;
}