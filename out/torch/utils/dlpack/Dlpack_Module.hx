/* This file is generated, do not edit! */
package torch.utils.dlpack;
@:pythonImport("torch.utils.dlpack") extern class Dlpack_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		from_dlpack(dlpack) -> Tensor
		
		Decodes a DLPack to a tensor.
		
		Args:
		    dlpack: a PyCapsule object with the dltensor
		
		The tensor will share the memory with the object represented
		in the dlpack.
		Note that each dlpack can only be consumed once.
	**/
	static public function from_dlpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		to_dlpack(tensor) -> PyCapsule
		
		Returns a DLPack representing the tensor.
		
		Args:
		    tensor: a tensor to be exported
		
		The dlpack shares the tensors memory.
		Note that each dlpack can only be consumed once.
	**/
	static public function to_dlpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
}