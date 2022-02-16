/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks.default_hooks;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks.default_hooks") extern class Default_hooks_Module {
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Averages the input gradient tensor by allreduce and returns a future.
	**/
	static public function _allreduce_fut(process_group:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Runs optimizer in a functional fashion after DDP communication hook.
		
		.. warning ::
		    This API is experimental adn subject to change.
	**/
	static public function _hook_then_optimizer(hook:Dynamic, optimizer_state:Dynamic):Dynamic;
	/**
		This DDP communication hook just calls ``allreduce`` using ``GradBucket``
		tensors. Once gradient tensors are aggregated across all workers, its ``then``
		callback takes the mean and returns the result. If user registers this hook,
		DDP results is expected to be same as the case where no hook was registered.
		Hence, this won't change behavior of DDP and user can use this as a reference
		or modify this hook to log useful information or any other purposes while
		unaffecting DDP behavior.
		
		Example::
		    >>> ddp_model.register_comm_hook(process_group, allreduce_hook)
	**/
	static public function allreduce_hook(process_group:Dynamic, bucket:Dynamic):Dynamic;
	/**
		Warning: This API is experimental, and it requires NCCL version later than 2.9.6.
		
		This DDP communication hook implements a simple gradient compression
		approach that casts ``GradBucket`` tensor to half-precision
		`Brain floating point format <https://en.wikipedia.org/wiki/Bfloat16_floating-point_format>`_ (``torch.bfloat16``)
		and then divides it by the process group size.
		It allreduces those ``bfloat16`` gradient tensors. Once compressed gradient
		tensors are allreduced, the chained callback ``decompress`` casts it back to the input data type (such as ``float32``).
		
		Example::
		    >>> ddp_model.register_comm_hook(process_group, bf16_compress_hook)
	**/
	static public function bf16_compress_hook(process_group:Dynamic, bucket:Dynamic):Dynamic;
	/**
		Warning: This API is experimental, and it requires NCCL version later than 2.9.6.
		
		This wrapper casts the input gradient tensor of a given DDP communication hook to half-precision
		`Brain floating point format <https://en.wikipedia.org/wiki/Bfloat16_floating-point_format> `_  (``torch.bfloat16``),
		and casts the resulting tensor of the given hook back to the input data type, such as ``float32``.
		
		Therefore, ``bf16_compress_hook`` is equivalent to ``bf16_compress_wrapper(allreduce_hook)``.
		
		Example::
		    >>> state = PowerSGDState(process_group=process_group, matrix_approximation_rank=1, start_powerSGD_iter=10)
		    >>> ddp_model.register_comm_hook(state, bf16_compress_wrapper(powerSGD_hook))
	**/
	static public function bf16_compress_wrapper(hook:Dynamic):Dynamic;
	/**
		This DDP communication hook implements a simple gradient compression
		approach that casts ``GradBucket`` tensor to half-precision floating-point format (``torch.float16``)
		and then divides it by the process group size.
		It allreduces those ``float16`` gradient tensors. Once compressed gradient
		tensors are allreduced, the chained callback ``decompress`` casts it back to the input data type (such as ``float32``).
		
		Example::
		    >>> ddp_model.register_comm_hook(process_group, fp16_compress_hook)
	**/
	static public function fp16_compress_hook(process_group:Dynamic, bucket:Dynamic):Dynamic;
	/**
		This wrapper casts the input gradient tensor of a given DDP communication hook to half-precision
		floating point format (``torch.float16``), and casts the resulting tensor of the given hook back to
		the input data type, such as ``float32``.
		
		Therefore, ``fp16_compress_hook`` is equivalent to ``fp16_compress_wrapper(allreduce_hook)``.
		
		Example::
		    >>> state = PowerSGDState(process_group=process_group, matrix_approximation_rank=1, start_powerSGD_iter=10)
		    >>> ddp_model.register_comm_hook(state, fp16_compress_wrapper(powerSGD_hook))
	**/
	static public function fp16_compress_wrapper(hook:Dynamic):Dynamic;
}