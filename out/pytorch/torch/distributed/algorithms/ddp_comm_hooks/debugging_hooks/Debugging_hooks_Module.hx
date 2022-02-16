/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks.debugging_hooks;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks.debugging_hooks") extern class Debugging_hooks_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This DDP communication hook returns the a future that wraps the input,
		so it is a noop that does not incur any communication overheads.
		
		This hook should **only** be used for headroom analysis of allreduce optimization,
		instead of the normal gradient synchronization.
		For example, if only less than 10% speedup of training time can be observed after this hook is registered,
		it usually implies that allreduce is not a performance bottleneck for this case.
		Such instrumentation can be particularly useful
		if GPU traces cannot be easily retrieved or the trace analysis is complicated
		some factors such as the overlap between allreduce and computation or the desynchronization across ranks.
		
		Example::
		    >>> ddp_model.register_comm_hook(None, noop_hook)
	**/
	static public function noop_hook(_:Dynamic, bucket:Dynamic):Dynamic;
}