/* This file is generated, do not edit! */
package torch._c._jit;
@:pythonImport("torch._C._jit", "BatchTensor") extern class BatchTensor {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__init__(*args, **kwargs)
		Overloaded function.
		
		1. __init__(self: torch._C._jit.BatchTensor, arg0: at::Tensor, arg1: at::Tensor, arg2: at::Tensor) -> None
		
		2. __init__(self: torch._C._jit.BatchTensor, arg0: at::Tensor, arg1: int) -> None
		
		3. __init__(self: torch._C._jit.BatchTensor, arg0: List[at::Tensor], arg1: at::Tensor) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(*args, **kwargs)
		Overloaded function.
		
		1. __init__(self: torch._C._jit.BatchTensor, arg0: at::Tensor, arg1: at::Tensor, arg2: at::Tensor) -> None
		
		2. __init__(self: torch._C._jit.BatchTensor, arg0: at::Tensor, arg1: int) -> None
		
		3. __init__(self: torch._C._jit.BatchTensor, arg0: List[at::Tensor], arg1: at::Tensor) -> None
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		examples(self: torch._C._jit.BatchTensor) -> List[at::Tensor]
	**/
	public function examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_data(self: torch._C._jit.BatchTensor) -> at::Tensor
	**/
	public function get_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_dims(self: torch._C._jit.BatchTensor) -> at::Tensor
	**/
	public function get_dims(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_mask(self: torch._C._jit.BatchTensor) -> at::Tensor
	**/
	public function get_mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
}