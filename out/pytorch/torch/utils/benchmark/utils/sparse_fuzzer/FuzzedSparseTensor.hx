/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.sparse_fuzzer;
@:pythonImport("torch.utils.benchmark.utils.sparse_fuzzer", "FuzzedSparseTensor") extern class FuzzedSparseTensor {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Args:
		    name:
		        A string identifier for the generated Tensor.
		    size:
		        A tuple of integers or strings specifying the size of the generated
		        Tensor. String values will replaced with a concrete int during the
		        generation process, while ints are simply passed as literals.
		    min_elements:
		        The minimum number of parameters that this Tensor must have for a
		        set of parameters to be valid. (Otherwise they are resampled.)
		    max_elements:
		        Like `min_elements`, but setting an upper bound.
		    dim_parameter:
		        The length of `size` will be truncated to this value.
		        This allows Tensors of varying dimensions to be generated by the
		        Fuzzer.
		    sparse_dim:
		        The number of sparse dimensions in a sparse tensor.
		    density:
		        This value allows tensors of varying sparsities to be generated by the Fuzzer.
		    coalesced:
		        The sparse tensor format permits uncoalesced sparse tensors,
		        where there may be duplicate coordinates in the indices.
		    dtype:
		        The PyTorch dtype of the generated Tensor.
		    cuda:
		        Whether to place the Tensor on a GPU.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, size:Dynamic, ?min_elements:Dynamic, ?max_elements:Dynamic, ?dim_parameter:Dynamic, ?sparse_dim:Dynamic, ?nnz:Dynamic, ?density:Dynamic, ?coalesced:Dynamic, ?dtype:Dynamic, ?cuda:Dynamic):Dynamic;
	/**
		Args:
		    name:
		        A string identifier for the generated Tensor.
		    size:
		        A tuple of integers or strings specifying the size of the generated
		        Tensor. String values will replaced with a concrete int during the
		        generation process, while ints are simply passed as literals.
		    min_elements:
		        The minimum number of parameters that this Tensor must have for a
		        set of parameters to be valid. (Otherwise they are resampled.)
		    max_elements:
		        Like `min_elements`, but setting an upper bound.
		    dim_parameter:
		        The length of `size` will be truncated to this value.
		        This allows Tensors of varying dimensions to be generated by the
		        Fuzzer.
		    sparse_dim:
		        The number of sparse dimensions in a sparse tensor.
		    density:
		        This value allows tensors of varying sparsities to be generated by the Fuzzer.
		    coalesced:
		        The sparse tensor format permits uncoalesced sparse tensors,
		        where there may be duplicate coordinates in the indices.
		    dtype:
		        The PyTorch dtype of the generated Tensor.
		    cuda:
		        Whether to place the Tensor on a GPU.
	**/
	public function new(name:Dynamic, size:Dynamic, ?min_elements:Dynamic, ?max_elements:Dynamic, ?dim_parameter:Dynamic, ?sparse_dim:Dynamic, ?nnz:Dynamic, ?density:Dynamic, ?coalesced:Dynamic, ?dtype:Dynamic, ?cuda:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _get_size_and_steps(params:Dynamic):Dynamic;
	public function _make_tensor(params:Dynamic, state:Dynamic):Dynamic;
	static public function default_tensor_constructor(size:Dynamic, dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var name : Dynamic;
	public function satisfies_constraints(params:Dynamic):Dynamic;
	/**
		sparse_tensor_constructor creates a sparse tensor with coo format.
		
		Note that when `is_coalesced` is False, the number of elements is doubled but the number of indices
		represents the same amount of number of non zeros `nnz`, i.e, this is virtually the same tensor
		with the same sparsity pattern. Moreover, most of the sparse operation will use coalesce() method
		and what we want here is to get a sparse tensor with the same `nnz` even if this is coalesced or not.
		
		In the other hand when `is_coalesced` is True the number of elements is reduced in the coalescing process
		by an unclear amount however the probability to generate duplicates indices are low for most of the cases.
		This decision was taken on purpose to maintain the construction cost as low as possible.
	**/
	static public function sparse_tensor_constructor(size:Dynamic, dtype:Dynamic, sparse_dim:Dynamic, nnz:Dynamic, is_coalesced:Dynamic):Dynamic;
}