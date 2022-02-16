/* This file is generated, do not edit! */
package torch.utils.dlpack;
@:pythonImport("torch.utils.dlpack") extern class Dlpack_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _from_dlpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		from_dlpack(ext_tensor) -> Tensor
		
		Convers a tensor from a external library into a ``torch.Tensor``
		by means of the ``__dlpack__`` protocol.
		
		The tensor will share the memory with the object represented
		in the DLPack.
		
		.. warning::
		  Only call from_dlpack once per capsule. Its behavior when used
		  on the same capsule multiple times is undefined.
		
		Args:
		    ext_tensor (object with __dlpack__ attribute or DLPack capsule):
		        The tensor or DLPack capsule to convert.
	**/
	static public function from_dlpack(ext_tensor:Dynamic):Dynamic;
	/**
		to_dlpack(tensor) -> PyCapsule
		
		Returns a DLPack representing the tensor.
		
		Args:
		    tensor: a tensor to be exported
		
		The DLPack shares the tensors memory.
		Note that each DLPack can only be consumed once.
	**/
	static public function to_dlpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
}