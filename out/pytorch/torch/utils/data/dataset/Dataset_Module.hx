/* This file is generated, do not edit! */
package torch.utils.data.dataset;
@:pythonImport("torch.utils.data.dataset") extern class Dataset_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	static public var T_co : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var UNTRACABLE_DATAFRAME_PIPES : Dynamic;
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
	static public var default_generator : Dynamic;
	/**
		Randomly split a dataset into non-overlapping new datasets of given lengths.
		Optionally fix the generator for reproducible results, e.g.:
		
		>>> random_split(range(10), [3, 7], generator=torch.Generator().manual_seed(42))
		
		Args:
		    dataset (Dataset): Dataset to be split
		    lengths (sequence): lengths of splits to be produced
		    generator (Generator): Generator used for the random permutation.
	**/
	static public function random_split(dataset:Dynamic, lengths:Dynamic, ?generator:Dynamic):Dynamic;
	/**
		randperm(n, *, generator=None, out=None, dtype=torch.int64,layout=torch.strided, device=None, requires_grad=False, pin_memory=False) -> Tensor
		
		Returns a random permutation of integers from ``0`` to ``n - 1``.
		
		Args:
		    n (int): the upper bound (exclusive)
		
		Keyword args:
		    generator (:class:`torch.Generator`, optional): a pseudorandom number generator for sampling
		    out (Tensor, optional): the output tensor.
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
		    pin_memory (bool, optional): If set, returned tensor would be allocated in
		        the pinned memory. Works only for CPU tensors. Default: ``False``.
		
		Example::
		
		    >>> torch.randperm(4)
		    tensor([2, 1, 0, 3])
	**/
	static public function randperm(args:haxe.extern.Rest<Dynamic>):Dynamic;
}