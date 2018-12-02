/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QMetaObject") extern class QMetaObject {
	public function Call(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CreateInstance : Dynamic;
	static public var IndexOfMethod : Dynamic;
	static public var InvokeMetaMethod : Dynamic;
	static public var QueryPropertyDesignable : Dynamic;
	static public var QueryPropertyEditable : Dynamic;
	static public var QueryPropertyScriptable : Dynamic;
	static public var QueryPropertyStored : Dynamic;
	static public var QueryPropertyUser : Dynamic;
	static public var ReadProperty : Dynamic;
	static public var RegisterMethodArgumentMetaType : Dynamic;
	static public var RegisterPropertyMetaType : Dynamic;
	static public var ResetProperty : Dynamic;
	static public var WriteProperty : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	@:native("cast")
	public function _cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function checkConnectArgs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function classInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function classInfoCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function classInfoOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function className(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connectSlotsByName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function constructor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function constructorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnectOne(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function enumerator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function enumeratorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function enumeratorOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOfClassInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOfConstructor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOfEnumerator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOfMethod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOfProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOfSignal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOfSlot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function invokeMethod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function method(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function methodCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function methodOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function newInstance(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function normalizedSignature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function normalizedType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function propertyCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function propertyOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function superClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function userProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
}