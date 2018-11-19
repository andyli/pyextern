/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QXmlStreamAttributes") extern class QXmlStreamAttributes {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Implement self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		append(self, str, str, str)
		append(self, str, str)
		append(self, QXmlStreamAttribute)
	**/
	public function append(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		at(self, int) -> QXmlStreamAttribute
	**/
	public function at(int:Int):Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		contains(self, QXmlStreamAttribute) -> bool
	**/
	public function contains(QXmlStreamAttribute:Dynamic):Bool;
	/**
		count(self, QXmlStreamAttribute) -> int
		count(self) -> int
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		data(self) -> sip.voidptr
	**/
	public function data():Dynamic;
	/**
		fill(self, QXmlStreamAttribute, size: int = -1)
	**/
	public function fill(QXmlStreamAttribute:Dynamic, ?size:Dynamic):Void;
	/**
		first(self) -> QXmlStreamAttribute
	**/
	public function first():Dynamic;
	/**
		hasAttribute(self, str) -> bool
		hasAttribute(self, str, str) -> bool
	**/
	public function hasAttribute(str:String, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		indexOf(self, QXmlStreamAttribute, from_: int = 0) -> int
	**/
	public function indexOf(QXmlStreamAttribute:Dynamic, ?from:Dynamic):Int;
	/**
		insert(self, int, QXmlStreamAttribute)
	**/
	public function insert(int:Int, QXmlStreamAttribute:Dynamic):Void;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		last(self) -> QXmlStreamAttribute
	**/
	public function last():Dynamic;
	/**
		lastIndexOf(self, QXmlStreamAttribute, from_: int = -1) -> int
	**/
	public function lastIndexOf(QXmlStreamAttribute:Dynamic, ?from:Dynamic):Int;
	/**
		prepend(self, QXmlStreamAttribute)
	**/
	public function prepend(QXmlStreamAttribute:Dynamic):Void;
	/**
		remove(self, int)
		remove(self, int, int)
	**/
	public function remove(int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		replace(self, int, QXmlStreamAttribute)
	**/
	public function replace(int:Int, QXmlStreamAttribute:Dynamic):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		value(self, str, str) -> str
		value(self, str) -> str
	**/
	public function value(str:String, args:haxe.extern.Rest<Dynamic>):String;
}