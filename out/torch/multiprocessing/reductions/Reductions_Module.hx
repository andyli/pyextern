/* This file is generated, do not edit! */
package torch.multiprocessing.reductions;
@:pythonImport("torch.multiprocessing.reductions") extern class Reductions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function fd_id(fd:Dynamic):Dynamic;
	static public function init_reductions():Dynamic;
	static public function rebuild_event(handle:Dynamic):Dynamic;
	static public function rebuild_storage_cuda(cls:Dynamic, device:Dynamic, handle:Dynamic, size:Dynamic, offset:Dynamic, view_size:Dynamic):Dynamic;
	static public function rebuild_storage_fd(cls:Dynamic, df:Dynamic, size:Dynamic):Dynamic;
	static public function rebuild_storage_filename(cls:Dynamic, manager:Dynamic, handle:Dynamic, size:Dynamic):Dynamic;
	static public function rebuild_tensor(cls:Dynamic, storage:Dynamic, metadata:Dynamic):Dynamic;
	static public function reduce_event(event:Dynamic):Dynamic;
	static public function reduce_storage(storage:Dynamic):Dynamic;
	static public function reduce_tensor(tensor:Dynamic):Dynamic;
	static public var shared_cache : Dynamic;
	static public function storage_from_cache(cls:Dynamic, key:Dynamic):Dynamic;
}