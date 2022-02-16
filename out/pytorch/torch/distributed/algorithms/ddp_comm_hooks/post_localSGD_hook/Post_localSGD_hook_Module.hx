/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks.post_localSGD_hook;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks.post_localSGD_hook") extern class Post_localSGD_hook_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This DDP communication hook is used for running post-localSGD algorithm,
		by combining with a model averaging component (e.g.,
		:class:`~torch.distributed.algorithms.model_averaging.averagers.PeriodicModelAverager`)
		that runs after the optimizer step.
		
		Args:
		    state (PostLocalSGDState): State information to run post-localSGD.
		        Users mainly need to tune ``start_localSGD_iter`` to determine when to start local SGD.
		    bucket (dist.GradBucket): Bucket that stores a 1D flattened gradient tensor that batches multiple per-variable tensors.
		        Note that since DDP comm hook only supports single process single device mode,
		        only exactly one tensor is stored in this bucket.
		
		Returns:
		    Future handler of the communication, which updates the gradients in place.
		
		Example::
		    >>> state = PostLocalSGDState(process_group=process_group, subgroup=subgroup,
		                              start_localSGD_iter=10)
		    >>> ddp_model.register_comm_hook(state, post_localSGD_hook)
		    >>> # Also need to establish a model averaging module and run model averaging after ``optimizer.step()``.
		    >>> # Please refer to the examples in ``torch.distributed.algorithms.model_averaging.averagers`` module.
	**/
	static public function post_localSGD_hook(state:Dynamic, bucket:Dynamic):Dynamic;
}