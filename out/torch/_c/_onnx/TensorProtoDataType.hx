/* This file is generated, do not edit! */
package torch._c._onnx;
@:pythonImport("torch._C._onnx", "TensorProtoDataType") extern class TensorProtoDataType {
	static public var BOOL : Dynamic;
	static public var COMPLEX128 : Dynamic;
	static public var COMPLEX64 : Dynamic;
	static public var DOUBLE : Dynamic;
	static public var FLOAT : Dynamic;
	static public var FLOAT16 : Dynamic;
	static public var INT16 : Dynamic;
	static public var INT32 : Dynamic;
	static public var INT64 : Dynamic;
	static public var INT8 : Dynamic;
	static public var STRING : Dynamic;
	static public var UINT16 : Dynamic;
	static public var UINT32 : Dynamic;
	static public var UINT64 : Dynamic;
	static public var UINT8 : Dynamic;
	static public var UNDEFINED : Dynamic;
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
		__eq__(*args, **kwargs)
		Overloaded function.
		
		1. __eq__(self: torch._C._onnx.TensorProtoDataType, arg0: torch._C._onnx.TensorProtoDataType) -> bool
		
		2. __eq__(self: torch._C._onnx.TensorProtoDataType, arg0: int) -> bool
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
		__getstate__(self: torch._C._onnx.TensorProtoDataType) -> tuple
	**/
	public function __getstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		__hash__(self: torch._C._onnx.TensorProtoDataType) -> int
	**/
	public function __hash__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: torch._C._onnx.TensorProtoDataType, arg0: int) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: torch._C._onnx.TensorProtoDataType, arg0: int) -> None
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__int__(self: torch._C._onnx.TensorProtoDataType) -> int
	**/
	public function __int__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __members__ : Dynamic;
	static public var __module__ : Dynamic;
	/**
		__ne__(*args, **kwargs)
		Overloaded function.
		
		1. __ne__(self: torch._C._onnx.TensorProtoDataType, arg0: torch._C._onnx.TensorProtoDataType) -> bool
		
		2. __ne__(self: torch._C._onnx.TensorProtoDataType, arg0: int) -> bool
	**/
	public function __ne__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__repr__(self: torch._C._onnx.TensorProtoDataType) -> str
	**/
	public function __repr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__setstate__(self: torch._C._onnx.TensorProtoDataType, arg0: tuple) -> None
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}