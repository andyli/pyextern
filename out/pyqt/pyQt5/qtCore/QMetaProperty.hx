/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QMetaProperty") extern class QMetaProperty {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		enumerator(self) -> QMetaEnum
	**/
	public function enumerator():Dynamic;
	/**
		hasNotifySignal(self) -> bool
	**/
	public function hasNotifySignal():Bool;
	/**
		hasStdCppSet(self) -> bool
	**/
	public function hasStdCppSet():Bool;
	/**
		isConstant(self) -> bool
	**/
	public function isConstant():Bool;
	/**
		isDesignable(self, object: QObject = None) -> bool
	**/
	public function isDesignable(?object:Dynamic):Bool;
	/**
		isEnumType(self) -> bool
	**/
	public function isEnumType():Bool;
	/**
		isFinal(self) -> bool
	**/
	public function isFinal():Bool;
	/**
		isFlagType(self) -> bool
	**/
	public function isFlagType():Bool;
	/**
		isReadable(self) -> bool
	**/
	public function isReadable():Bool;
	/**
		isResettable(self) -> bool
	**/
	public function isResettable():Bool;
	/**
		isScriptable(self, object: QObject = None) -> bool
	**/
	public function isScriptable(?object:Dynamic):Bool;
	/**
		isStored(self, object: QObject = None) -> bool
	**/
	public function isStored(?object:Dynamic):Bool;
	/**
		isUser(self, object: QObject = None) -> bool
	**/
	public function isUser(?object:Dynamic):Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		isWritable(self) -> bool
	**/
	public function isWritable():Bool;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		notifySignal(self) -> QMetaMethod
	**/
	public function notifySignal():Dynamic;
	/**
		notifySignalIndex(self) -> int
	**/
	public function notifySignalIndex():Int;
	/**
		propertyIndex(self) -> int
	**/
	public function propertyIndex():Int;
	/**
		read(self, QObject) -> Any
	**/
	public function read(QObject:Dynamic):Dynamic;
	/**
		reset(self, QObject) -> bool
	**/
	public function reset(QObject:Dynamic):Bool;
	/**
		type(self) -> QVariant.Type
	**/
	public function type():Dynamic;
	/**
		typeName(self) -> str
	**/
	public function typeName():String;
	/**
		userType(self) -> int
	**/
	public function userType():Int;
	/**
		write(self, QObject, Any) -> bool
	**/
	public function write(QObject:Dynamic, Any:Dynamic):Bool;
}