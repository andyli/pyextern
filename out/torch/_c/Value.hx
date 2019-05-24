/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "Value") extern class Value {
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
		__repr__(self: torch._C.Value) -> str
	**/
	public function __repr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		copyMetadata(self: torch._C.Value, arg0: torch._C.Value) -> torch._C.Value
	**/
	public function copyMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inferTypeFrom(self: torch._C.Value, arg0: at::Tensor) -> None
	**/
	public function inferTypeFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isTensor(self: torch._C.Value) -> bool
	**/
	public function isTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		node(self: torch._C.Value) -> torch::jit::Node
	**/
	public function node(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		offset(self: torch._C.Value) -> int
	**/
	public function offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		replaceAllUsesWith(self: torch._C.Value, arg0: torch._C.Value) -> None
	**/
	public function replaceAllUsesWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setType(self: torch._C.Value, arg0: c10::Type) -> torch._C.Value
	**/
	public function setType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setTypeAs(self: torch._C.Value, arg0: torch._C.Value) -> torch._C.Value
	**/
	public function setTypeAs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setUniqueName(self: torch._C.Value, arg0: str) -> torch._C.Value
	**/
	public function setUniqueName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		type(self: torch._C.Value) -> c10::Type
	**/
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unique(self: torch._C.Value) -> int
	**/
	public function unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uniqueName(self: torch._C.Value) -> str
	**/
	public function uniqueName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uses(self: torch._C.Value) -> List[torch::jit::Use]
	**/
	public function uses(args:haxe.extern.Rest<Dynamic>):Dynamic;
}