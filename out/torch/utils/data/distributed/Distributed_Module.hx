/* This file is generated, do not edit! */
package torch.utils.data.distributed;
@:pythonImport("torch.utils.data.distributed") extern class Distributed_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the rank of current process.
		
		Rank is a unique identifier assigned to each process within a distributed
		group. They are always consecutive integers ranging from 0 to ``world_size``.
	**/
	static public function get_rank():Dynamic;
	/**
		Returns the number of processes in the distributed group.
	**/
	static public function get_world_size():Dynamic;
}