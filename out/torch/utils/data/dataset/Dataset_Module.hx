/* This file is generated, do not edit! */
package torch.utils.data.dataset;
@:pythonImport("torch.utils.data.dataset") extern class Dataset_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return running totals
	**/
	static public function _accumulate(iterable:Dynamic, ?fn:Dynamic):Dynamic;
	/**
		Randomly split a dataset into non-overlapping new datasets of given lengths.
		
		Arguments:
		    dataset (Dataset): Dataset to be split
		    lengths (sequence): lengths of splits to be produced
	**/
	static public function random_split(dataset:Dynamic, lengths:Dynamic):Dynamic;
	/**
		randperm(n, out=None, dtype=torch.int64, layout=torch.strided, device=None, requires_grad=False) -> LongTensor
		
		Returns a random permutation of integers from ``0`` to ``n - 1``.
		
		Args:
		    n (int): the upper bound (exclusive)
		    out (Tensor, optional): the output tensor
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		        Default: ``torch.int64``.
		    layout (:class:`torch.layout`, optional): the desired layout of returned Tensor.
		        Default: ``torch.strided``.
		    device (:class:`torch.device`, optional): the desired device of returned tensor.
		        Default: if ``None``, uses the current device for the default tensor type
		        (see :func:`torch.set_default_tensor_type`). :attr:`device` will be the CPU
		        for CPU tensor types and the current CUDA device for CUDA tensor types.
		    requires_grad (bool, optional): If autograd should record operations on the
		        returned tensor. Default: ``False``.
		
		Example::
		
		    >>> torch.randperm(4)
		    tensor([2, 1, 0, 3])
	**/
	static public function randperm(args:haxe.extern.Rest<Dynamic>):Dynamic;
}