/* This file is generated, do not edit! */
package torch.distributed.optim.optimizer;
@:pythonImport("torch.distributed.optim.optimizer") extern class Optimizer_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		allocate_lock() -> lock object
		(allocate() is an obsolete synonym)
		
		Create a new lock object. See help(type(threading.Lock())) for
		information about locks.
	**/
	static public function Lock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _local_optimizer_step(local_optim_rref:Dynamic, autograd_ctx_id:Dynamic):Dynamic;
	static public function _new_local_optimizer(optim_cls:Dynamic, local_params_rref:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _new_script_local_optimizer(optim_cls:Dynamic, local_params_rref:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _script_local_optimizer_step(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _wait_for_all(rpc_futs:Dynamic):Dynamic;
	static public var functional_optim_map : Dynamic;
	static public var logger : Dynamic;
}