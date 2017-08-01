/* This file is generated, do not edit! */
package torch.cuda.sparse;
@:pythonImport("torch.cuda.sparse", "ShortTensor") extern class ShortTensor {
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
	static public var __hash__ : Dynamic;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public var _cdata : Dynamic;
	static public var _torch : Dynamic;
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to byte type
	**/
	public function byte():Dynamic;
	/**
		Casts this tensor to char type
	**/
	public function char():Dynamic;
	public function chunk(n_chunks:Dynamic, ?dim:Dynamic):Dynamic;
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function coalesce(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function div_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to double type
	**/
	public function double():Dynamic;
	public function expand(?sizes:python.VarArgs<Dynamic>):Dynamic;
	public function expand_as(tensor:Dynamic):Dynamic;
	/**
		Casts this tensor to float type
	**/
	public function float():Dynamic;
	public function get_device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to half-precision float type
	**/
	public function half():Dynamic;
	public function indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to int type
	**/
	public function int():Dynamic;
	public function is_coalesced(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_cuda : Dynamic;
	public function is_pinned():Dynamic;
	public function is_shared():Dynamic;
	public function is_signed():Dynamic;
	static public var is_sparse : Dynamic;
	/**
		Casts this tensor to long type
	**/
	public function long():Dynamic;
	public function mul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ndimension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Constructs a new tensor of the same data type.
	**/
	@:native("new")
	public function _new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nnz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function permute(?dims:python.VarArgs<Dynamic>):Dynamic;
	public function pin_memory():Dynamic;
	public function repeat(?sizes:python.VarArgs<Dynamic>):Dynamic;
	public function resize_as_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function share_memory_():Dynamic;
	/**
		Casts this tensor to short type
	**/
	public function short():Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function spadd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function split(split_size:Dynamic, ?dim:Dynamic):Dynamic;
	public function sspaddmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sub(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sub_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function t_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function to_dense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tolist():Dynamic;
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transpose_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns this tensor cast to the type of the given tensor.
		
		This is a no-op if the tensor is already of the correct type. This is
		equivalent to::
		
		    self.type(tensor.type())
		
		Params:
		    tensor (Tensor): the tensor which has the desired type
	**/
	public function type_as(tensor:Dynamic):Dynamic;
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function view_as(tensor:Dynamic):Dynamic;
	public function zero_(args:haxe.extern.Rest<Dynamic>):Dynamic;
}