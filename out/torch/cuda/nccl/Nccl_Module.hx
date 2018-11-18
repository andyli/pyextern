/* This file is generated, do not edit! */
package torch.cuda.nccl;
@:pythonImport("torch.cuda.nccl") extern class Nccl_Module {
	static public var SUM : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function all_gather(inputs:Dynamic, outputs:Dynamic, ?streams:Dynamic, ?comms:Dynamic):Dynamic;
	static public function all_reduce(inputs:Dynamic, ?outputs:Dynamic, ?op:Dynamic, ?streams:Dynamic, ?comms:Dynamic):Dynamic;
	static public function broadcast(inputs:Dynamic, ?root:Dynamic, ?streams:Dynamic, ?comms:Dynamic):Dynamic;
	static public function init_rank(num_ranks:Dynamic, uid:Dynamic, rank:Dynamic):Dynamic;
	static public function is_available(tensors:Dynamic):Dynamic;
	static public function reduce(inputs:Dynamic, ?outputs:Dynamic, ?root:Dynamic, ?op:Dynamic, ?streams:Dynamic, ?comms:Dynamic):Dynamic;
	static public function reduce_scatter(inputs:Dynamic, outputs:Dynamic, ?op:Dynamic, ?streams:Dynamic, ?comms:Dynamic):Dynamic;
	static public function unique_id():Dynamic;
	static public function version():Dynamic;
}