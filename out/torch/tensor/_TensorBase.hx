/* This file is generated, do not edit! */
package torch.tensor;
@:pythonImport("torch.tensor", "_TensorBase") extern class _TensorBase {
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(_memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	/**
		Returns a CPU copy of this tensor if it's not already on the CPU
	**/
	public function cpu():Dynamic;
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
	/**
		Casts this tensor to double type
	**/
	public function double():Dynamic;
	/**
		Expands this tensor to the size of the specified tensor.
		
		This is equivalent to::
		
		    self.expand(tensor.size())
	**/
	public function expand_as(tensor:Dynamic):Dynamic;
	/**
		Casts this tensor to float type
	**/
	public function float():Dynamic;
	/**
		Casts this tensor to half-precision float type
	**/
	public function half():Dynamic;
	/**
		Casts this tensor to int type
	**/
	public function int():Dynamic;
	static public var is_cuda : Dynamic;
	/**
		Returns true if this tensor resides in pinned memory
	**/
	public function is_pinned():Dynamic;
	/**
		Checks if tensor is in shared memory.
		
		This is always ``True`` for CUDA tensors.
	**/
	public function is_shared():Dynamic;
	static public var is_sparse : Dynamic;
	/**
		Casts this tensor to long type
	**/
	public function long():Dynamic;
	/**
		Constructs a new tensor of the same data type.
	**/
	@:native("new")
	public function _new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Splits this tensor into a tuple of tensors.
		
		See :func:`torch.split`.
	**/
	public function split(split_size:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Returns a nested list represenation of this tensor.
	**/
	public function tolist():Dynamic;
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
	/**
		Returns this tensor viewed as the size as the specified tensor.
		
		This is equivalent to::
		
		        self.view(tensor.size())
	**/
	public function view_as(tensor:Dynamic):Dynamic;
}