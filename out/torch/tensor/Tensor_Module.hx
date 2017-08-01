/* This file is generated, do not edit! */
package torch.tensor;
@:pythonImport("torch.tensor") extern class Tensor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a copy of this object in CUDA memory.
		
		If this object is already in CUDA memory and on the correct device, then
		no copy is performed and the original object is returned.
		
		Args:
		    device (int): The destination GPU id. Defaults to the current device.
		    async (bool): If True and the source is in pinned memory, the copy will
		                  be asynchronous with respect to the host. Otherwise, the
		                  argument has no effect.
	**/
	static public function _cuda(self:Dynamic, ?device:Dynamic, ?async:Dynamic):Dynamic;
	static public function _range(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _rebuild_tensor(storage:Dynamic, storage_offset:Dynamic, size:Dynamic, stride:Dynamic):Dynamic;
	/**
		Casts this object to the specified type.
		
		If this is already of the correct type, no copy is performed and the
		original object is returned.
		
		Args:
		    new_type (type or string): The desired type
		    async (bool): If True, and the source is in pinned memory and
		                  destination is on the GPU or vice versa, the copy is
		                  performed asynchronously with respect to the host.
		                  Otherwise, the argument has no effect.
	**/
	static public function _type(self:Dynamic, ?new_type:Dynamic, ?async:Dynamic):Dynamic;
}