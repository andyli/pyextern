/* This file is generated, do not edit! */
package torch.functional;
@:pythonImport("torch.functional") extern class Functional_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _range(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Unpacks the data and pivots from a batched LU factorization (btrifact) of a tensor.
		
		Returns a tuple indexed by:
		  0: The pivots.
		  1: The L tensor.
		  2: The U tensor.
		
		Arguments:
		    LU_data (Tensor): The packed LU factorization data.
		    LU_pivots (Tensor): The packed LU factorization pivots.
		    unpack_data (bool): Flag indicating if the data should be unpacked.
		    unpack_pivots (bool): Flag indicating if the pivots should be unpacked.
	**/
	static public function btriunpack(LU_data:Dynamic, LU_pivots:Dynamic, ?unpack_data:Dynamic, ?unpack_pivots:Dynamic):Dynamic;
	/**
		Splits a tensor into a number of chunks along a given dimension.
		
		Arguments:
		    tensor (Tensor): tensor to split.
		    chunks (int): number of chunks to return.
		    dim (int): dimension along which to split the tensor.
	**/
	static public function chunk(tensor:Dynamic, chunks:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Splits the tensor into equally sized chunks (if possible).
		
		Last chunk will be smaller if the tensor size along a given dimension
		is not divisible by ``split_size``.
		
		Arguments:
		    tensor (Tensor): tensor to split.
		    split_size (int): size of a single chunk.
		    dim (int): dimension along which to split the tensor.
	**/
	static public function split(tensor:Dynamic, split_size:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Concatenates sequence of tensors along a new dimension.
		
		All tensors need to be of the same size.
		
		Arguments:
		    sequence (Sequence): sequence of tensors to concatenate.
		    dim (int): dimension to insert. Has to be between 0 and the number
		        of dimensions of concatenated tensors (inclusive).
	**/
	static public function stack(sequence:Dynamic, ?dim:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Removes a tensor dimension.
		
		Returns a tuple of all slices along a given dimension, already without it.
		
		Arguments:
		    tensor (Tensor): tensor to unbind.
		    dim (int): dimension to remove.
	**/
	static public function unbind(tensor:Dynamic, ?dim:Dynamic):Dynamic;
}