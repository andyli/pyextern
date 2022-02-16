/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks") extern class Ddp_comm_hooks_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ddp_comm_hook_wrapper(comm_hook:Dynamic, model:Dynamic, state:Dynamic):Dynamic;
	/**
		To be consistent with the wrappers of other DDP comm hooks, the input state only needs to be a process group,
		which will be wrapped up with other state info.
	**/
	static public function _powerSGD_comm_hook_wrapper(comm_hook:Dynamic, model:Dynamic, state:Dynamic, matrix_approximation_rank:Dynamic, start_powerSGD_iter:Dynamic):Dynamic;
	/**
		Registers the hooks of ``torch.distributed.algorithms.ddp_comm_hooks``
		to the DDP model. User can specify the type of hook as an enum
		``DDPCommHookType`` type using ``comm_hook_type`` input. State input will
		be passed to the model.
		Uses Python comm hook implementations.
		
		Example::
		    >>> register_ddp_comm_hook(DDPCommHookType.FP16_COMPRESS, model, state)
	**/
	static public function register_ddp_comm_hook(comm_hook_type:Dynamic, model:Dynamic, ?state:Dynamic):Dynamic;
}