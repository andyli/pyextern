/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QMetaObject") extern class QMetaObject {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		checkConnectArgs(str, str) -> bool
		checkConnectArgs(QMetaMethod, QMetaMethod) -> bool
	**/
	static public function checkConnectArgs(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		classInfo(self, int) -> QMetaClassInfo
	**/
	public function classInfo(int:Int):Dynamic;
	/**
		classInfoCount(self) -> int
	**/
	public function classInfoCount():Int;
	/**
		classInfoOffset(self) -> int
	**/
	public function classInfoOffset():Int;
	/**
		className(self) -> str
	**/
	public function className():String;
	/**
		connectSlotsByName(QObject)
	**/
	static public function connectSlotsByName(QObject:Dynamic):Void;
	/**
		constructor(self, int) -> QMetaMethod
	**/
	public function constructor(int:Int):Dynamic;
	/**
		constructorCount(self) -> int
	**/
	public function constructorCount():Int;
	/**
		enumerator(self, int) -> QMetaEnum
	**/
	public function enumerator(int:Int):Dynamic;
	/**
		enumeratorCount(self) -> int
	**/
	public function enumeratorCount():Int;
	/**
		enumeratorOffset(self) -> int
	**/
	public function enumeratorOffset():Int;
	/**
		indexOfClassInfo(self, str) -> int
	**/
	public function indexOfClassInfo(str:String):Int;
	/**
		indexOfConstructor(self, str) -> int
	**/
	public function indexOfConstructor(str:String):Int;
	/**
		indexOfEnumerator(self, str) -> int
	**/
	public function indexOfEnumerator(str:String):Int;
	/**
		indexOfMethod(self, str) -> int
	**/
	public function indexOfMethod(str:String):Int;
	/**
		indexOfProperty(self, str) -> int
	**/
	public function indexOfProperty(str:String):Int;
	/**
		indexOfSignal(self, str) -> int
	**/
	public function indexOfSignal(str:String):Int;
	/**
		indexOfSlot(self, str) -> int
	**/
	public function indexOfSlot(str:String):Int;
	/**
		invokeMethod(QObject, str, Qt.ConnectionType, QGenericReturnArgument, value0: QGenericArgument = QGenericArgument(0,0), value1: QGenericArgument = QGenericArgument(0,0), value2: QGenericArgument = QGenericArgument(0,0), value3: QGenericArgument = QGenericArgument(0,0), value4: QGenericArgument = QGenericArgument(0,0), value5: QGenericArgument = QGenericArgument(0,0), value6: QGenericArgument = QGenericArgument(0,0), value7: QGenericArgument = QGenericArgument(0,0), value8: QGenericArgument = QGenericArgument(0,0), value9: QGenericArgument = QGenericArgument(0,0)) -> object
		invokeMethod(QObject, str, QGenericReturnArgument, value0: QGenericArgument = QGenericArgument(0,0), value1: QGenericArgument = QGenericArgument(0,0), value2: QGenericArgument = QGenericArgument(0,0), value3: QGenericArgument = QGenericArgument(0,0), value4: QGenericArgument = QGenericArgument(0,0), value5: QGenericArgument = QGenericArgument(0,0), value6: QGenericArgument = QGenericArgument(0,0), value7: QGenericArgument = QGenericArgument(0,0), value8: QGenericArgument = QGenericArgument(0,0), value9: QGenericArgument = QGenericArgument(0,0)) -> object
		invokeMethod(QObject, str, Qt.ConnectionType, value0: QGenericArgument = QGenericArgument(0,0), value1: QGenericArgument = QGenericArgument(0,0), value2: QGenericArgument = QGenericArgument(0,0), value3: QGenericArgument = QGenericArgument(0,0), value4: QGenericArgument = QGenericArgument(0,0), value5: QGenericArgument = QGenericArgument(0,0), value6: QGenericArgument = QGenericArgument(0,0), value7: QGenericArgument = QGenericArgument(0,0), value8: QGenericArgument = QGenericArgument(0,0), value9: QGenericArgument = QGenericArgument(0,0)) -> object
		invokeMethod(QObject, str, value0: QGenericArgument = QGenericArgument(0,0), value1: QGenericArgument = QGenericArgument(0,0), value2: QGenericArgument = QGenericArgument(0,0), value3: QGenericArgument = QGenericArgument(0,0), value4: QGenericArgument = QGenericArgument(0,0), value5: QGenericArgument = QGenericArgument(0,0), value6: QGenericArgument = QGenericArgument(0,0), value7: QGenericArgument = QGenericArgument(0,0), value8: QGenericArgument = QGenericArgument(0,0), value9: QGenericArgument = QGenericArgument(0,0)) -> object
	**/
	static public function invokeMethod(QObject:Dynamic, str:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		method(self, int) -> QMetaMethod
	**/
	public function method(int:Int):Dynamic;
	/**
		methodCount(self) -> int
	**/
	public function methodCount():Int;
	/**
		methodOffset(self) -> int
	**/
	public function methodOffset():Int;
	/**
		normalizedSignature(str) -> QByteArray
	**/
	static public function normalizedSignature(str:String):Dynamic;
	/**
		normalizedType(str) -> QByteArray
	**/
	static public function normalizedType(str:String):Dynamic;
	/**
		property(self, int) -> QMetaProperty
	**/
	public function property(int:Int):Dynamic;
	/**
		propertyCount(self) -> int
	**/
	public function propertyCount():Int;
	/**
		propertyOffset(self) -> int
	**/
	public function propertyOffset():Int;
	/**
		superClass(self) -> QMetaObject
	**/
	public function superClass():Dynamic;
	/**
		userProperty(self) -> QMetaProperty
	**/
	public function userProperty():Dynamic;
}