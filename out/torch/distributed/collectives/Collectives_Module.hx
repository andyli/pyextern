/* This file is generated, do not edit! */
package torch.distributed.collectives;
@:pythonImport("torch.distributed.collectives") extern class Collectives_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function all_gather(tensors:Dynamic, tensor:Dynamic, ?group:Dynamic):Dynamic;
	static public function all_reduce(tensor:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	static public function barrier(?group:Dynamic):Dynamic;
	static public function broadcast(tensor:Dynamic, src_rank:Dynamic, ?group:Dynamic):Dynamic;
	static public function gather_recv(tensors:Dynamic, tensor:Dynamic, ?group:Dynamic):Dynamic;
	static public function gather_send(tensor:Dynamic, dst_rank:Dynamic, ?group:Dynamic):Dynamic;
	static public function get_num_processes():Dynamic;
	static public function get_rank():Dynamic;
	static public function irecv(tensor:Dynamic, src_rank:Dynamic):Dynamic;
	static public function isend(tensor:Dynamic, dst_rank:Dynamic):Dynamic;
	static public function new_group(ranks:Dynamic):Dynamic;
	static public function recv(tensor:Dynamic, ?src_rank:Dynamic):Dynamic;
	static public function reduce(tensor:Dynamic, dst_rank:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	static public function scatter_recv(tensor:Dynamic, src_rank:Dynamic, ?group:Dynamic):Dynamic;
	static public function scatter_send(tensors:Dynamic, tensor:Dynamic, ?group:Dynamic):Dynamic;
	static public function send(tensor:Dynamic, dst_rank:Dynamic):Dynamic;
}