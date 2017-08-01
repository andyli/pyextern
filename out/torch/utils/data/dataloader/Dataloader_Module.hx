/* This file is generated, do not edit! */
package torch.utils.data.dataloader;
@:pythonImport("torch.utils.data.dataloader") extern class Dataloader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _pin_memory_loop(in_queue:Dynamic, out_queue:Dynamic, done_event:Dynamic):Dynamic;
	static public var _use_shared_memory : Dynamic;
	static public function _worker_loop(dataset:Dynamic, index_queue:Dynamic, data_queue:Dynamic, collate_fn:Dynamic):Dynamic;
	/**
		Puts each data field into a tensor with outer dimension batch size
	**/
	static public function default_collate(batch:Dynamic):Dynamic;
	static public var numpy_type_map : Dynamic;
	static public function pin_memory_batch(batch:Dynamic):Dynamic;
	static public var string_classes : Dynamic;
}