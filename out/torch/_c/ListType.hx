/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "ListType") extern class ListType {
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
		__eq__(self: torch._C.Type, arg0: torch._C.Type) -> bool
	**/
	public function __eq__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__repr__(self: torch._C.Type) -> str
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
		contiguous(self: torch._C.Type) -> torch._C.Type
	**/
	public function contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getElementType(self: torch._C.ListType) -> torch._C.Type
	**/
	public function getElementType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isSubtypeOf(self: torch._C.Type, arg0: torch._C.Type) -> bool
	**/
	public function isSubtypeOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kind(self: torch._C.Type) -> str
	**/
	public function kind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ofInts() -> torch._C.ListType
	**/
	public function ofInts(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ofTensors() -> torch._C.ListType
	**/
	public function ofTensors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scalarType(self: torch._C.Type) -> str
	**/
	public function scalarType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizes(self: torch._C.Type) -> List[int]
	**/
	public function sizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		str(self: torch._C.Type) -> str
	**/
	public function str(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		strides(self: torch._C.Type) -> List[int]
	**/
	public function strides(args:haxe.extern.Rest<Dynamic>):Dynamic;
}