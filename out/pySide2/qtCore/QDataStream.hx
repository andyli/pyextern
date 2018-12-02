/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QDataStream") extern class QDataStream {
	static public var BigEndian : Dynamic;
	public function ByteOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DoublePrecision : Dynamic;
	public function FloatingPointPrecision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LittleEndian : Dynamic;
	static public var Ok : Dynamic;
	static public var Qt_1_0 : Dynamic;
	static public var Qt_2_0 : Dynamic;
	static public var Qt_2_1 : Dynamic;
	static public var Qt_3_0 : Dynamic;
	static public var Qt_3_1 : Dynamic;
	static public var Qt_3_3 : Dynamic;
	static public var Qt_4_0 : Dynamic;
	static public var Qt_4_1 : Dynamic;
	static public var Qt_4_2 : Dynamic;
	static public var Qt_4_3 : Dynamic;
	static public var Qt_4_4 : Dynamic;
	static public var Qt_4_5 : Dynamic;
	static public var Qt_4_6 : Dynamic;
	static public var Qt_4_7 : Dynamic;
	static public var Qt_4_8 : Dynamic;
	static public var Qt_4_9 : Dynamic;
	static public var Qt_5_0 : Dynamic;
	static public var Qt_5_1 : Dynamic;
	static public var Qt_5_2 : Dynamic;
	static public var Qt_5_3 : Dynamic;
	static public var Qt_5_4 : Dynamic;
	static public var Qt_5_5 : Dynamic;
	static public var Qt_5_6 : Dynamic;
	static public var Qt_DefaultCompiledVersion : Dynamic;
	static public var ReadCorruptData : Dynamic;
	static public var ReadPastEnd : Dynamic;
	static public var SinglePrecision : Dynamic;
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WriteFailed : Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
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
	public function atEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function byteOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function floatingPointPrecision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readBool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readDouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readFloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readInt16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readInt32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readInt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readInt8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readQChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readQString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readQStringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readQVariant(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readRawData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readUInt16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readUInt32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readUInt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readUInt8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setByteOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFloatingPointPrecision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function skipRawData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeBool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeDouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeFloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeInt16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeInt32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeInt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeInt8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeQChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeQString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeQStringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeQVariant(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeRawData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeUInt16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeUInt32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeUInt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeUInt8(args:haxe.extern.Rest<Dynamic>):Dynamic;
}