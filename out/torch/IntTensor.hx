/* This file is generated, do not edit! */
package torch;
@:pythonImport("torch", "IntTensor") extern class IntTensor {
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(_memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __div__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __iand__(other:Dynamic):Dynamic;
	public function __idiv__(other:Dynamic):Dynamic;
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ior__(other:Dynamic):Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	public function __ixor__(other:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __matmul__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	public var _cdata : Dynamic;
	static public function _new_with_metadata_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _torch : Dynamic;
	public function _write_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function abs_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addbmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcdiv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcdiv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcmul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addr_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function apply_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baddbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baddbmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bernoulli_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to byte type
	**/
	public function byte():Dynamic;
	/**
		Casts this tensor to char type
	**/
	public function char():Dynamic;
	/**
		Splits this tensor into a tuple of tensors.
		
		See :func:`torch.chunk`.
	**/
	public function chunk(n_chunks:Dynamic, ?dim:Dynamic):Dynamic;
	public function clamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a CPU copy of this tensor if it's not already on the CPU
	**/
	public function cpu():Dynamic;
	public function cross(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function cuda(?device:Dynamic, ?async:Dynamic):Dynamic;
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function diag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function div_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to double type
	**/
	public function double():Dynamic;
	public function element_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eq_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function expand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Expands this tensor to the size of the specified tensor.
		
		This is equivalent to::
		
		    self.expand(tensor.size())
	**/
	public function expand_as(tensor:Dynamic):Dynamic;
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to float type
	**/
	public function float():Dynamic;
	public function fmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fmod_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ge_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometric_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to half-precision float type
	**/
	public function half():Dynamic;
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to int type
	**/
	public function int():Dynamic;
	public function is_contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_cuda : Dynamic;
	/**
		Returns true if this tensor resides in pinned memory
	**/
	public function is_pinned():Dynamic;
	public function is_same_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_set_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if tensor is in shared memory.
		
		This is always ``True`` for CUDA tensors.
	**/
	public function is_shared():Dynamic;
	public function is_signed():Dynamic;
	static public var is_sparse : Dynamic;
	public function kthvalue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function le(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function le_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to long type
	**/
	public function long():Dynamic;
	public function lt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map2_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function masked_copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function masked_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function masked_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function median(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function narrow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ndimension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ne(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ne_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nelement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Constructs a new tensor of the same data type.
	**/
	@:native("new")
	public function _new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function numel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Permute the dimensions of this tensor.
		
		Args:
		    *dims (int...): The desired ordering of dimensions
		
		Example:
		    >>> x = torch.randn(2, 3, 5)
		    >>> x.size()
		    torch.Size([2, 3, 5])
		    >>> x.permute(2, 0, 1).size()
		    torch.Size([5, 2, 3])
	**/
	public function permute(?dims:python.VarArgs<Dynamic>):Dynamic;
	/**
		Copies the tensor to pinned memory, if it's not already pinned.
	**/
	public function pin_memory():Dynamic;
	public function prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function random_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remainder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remainder_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Repeats this tensor along the specified dimensions.
		
		Unlike :meth:`expand`, this function copies the tensor's data.
		
		Args:
		    *sizes (torch.Size or int...): The number of times to repeat this tensor along each dimension
		
		Example:
		    >>> x = torch.Tensor([1, 2, 3])
		    >>> x.repeat(4, 2)
		     1  2  3  1  2  3
		     1  2  3  1  2  3
		     1  2  3  1  2  3
		     1  2  3  1  2  3
		    [torch.FloatTensor of size 4x6]
		    >>> x.repeat(4, 2, 1).size()
		    torch.Size([4, 2, 3])
	**/
	public function repeat(?sizes:python.VarArgs<Dynamic>):Dynamic;
	public function resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize_as_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scatter_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moves the underlying storage to shared memory.
		
		This is a no-op if the underlying storage is already in shared memory
		and for CUDA tensors. Tensors in shared memory cannot be resized.
	**/
	public function share_memory_():Dynamic;
	/**
		Casts this tensor to short type
	**/
	public function short():Dynamic;
	public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sign_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sparse_mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Splits this tensor into a tuple of tensors.
		
		See :func:`torch.split`.
	**/
	public function split(split_size:Dynamic, ?dim:Dynamic):Dynamic;
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function squeeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function storage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function storage_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function storage_type():Dynamic;
	public function stride(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sub(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sub_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function t_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a nested list represenation of this tensor.
	**/
	public function tolist():Dynamic;
	public function topk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transpose_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tril(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tril_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function triu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function triu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function type(?new_type:Dynamic, ?async:Dynamic):Dynamic;
	/**
		Returns this tensor cast to the type of the given tensor.
		
		This is a no-op if the tensor is already of the correct type. This is
		equivalent to::
		
		    self.type(tensor.type())
		
		Params:
		    tensor (Tensor): the tensor which has the desired type
	**/
	public function type_as(tensor:Dynamic):Dynamic;
	public function unfold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsqueeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsqueeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns this tensor viewed as the size as the specified tensor.
		
		This is equivalent to::
		
		        self.view(tensor.size())
	**/
	public function view_as(tensor:Dynamic):Dynamic;
	public function zero_(args:haxe.extern.Rest<Dynamic>):Dynamic;
}