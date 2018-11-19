/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QDataStream") extern class QDataStream {
	static public var BigEndian : Dynamic;
	/**
		int(x=0) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function ByteOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DoublePrecision : Dynamic;
	/**
		int(x=0) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
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
	static public var ReadCorruptData : Dynamic;
	static public var ReadPastEnd : Dynamic;
	static public var SinglePrecision : Dynamic;
	/**
		int(x=0) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int(x=0) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function Version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WriteFailed : Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		atEnd(self) -> bool
	**/
	public function atEnd():Bool;
	/**
		byteOrder(self) -> QDataStream.ByteOrder
	**/
	public function byteOrder():Dynamic;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		floatingPointPrecision(self) -> QDataStream.FloatingPointPrecision
	**/
	public function floatingPointPrecision():Dynamic;
	/**
		readBool(self) -> bool
	**/
	public function readBool():Bool;
	/**
		readBytes(self) -> bytes
	**/
	public function readBytes():Dynamic;
	/**
		readDouble(self) -> float
	**/
	public function readDouble():Float;
	/**
		readFloat(self) -> float
	**/
	public function readFloat():Float;
	/**
		readInt(self) -> int
	**/
	public function readInt():Int;
	/**
		readInt16(self) -> int
	**/
	public function readInt16():Int;
	/**
		readInt32(self) -> int
	**/
	public function readInt32():Int;
	/**
		readInt64(self) -> int
	**/
	public function readInt64():Int;
	/**
		readInt8(self) -> int
	**/
	public function readInt8():Int;
	/**
		readQString(self) -> str
	**/
	public function readQString():String;
	/**
		readQStringList(self) -> List[str]
	**/
	public function readQStringList():Dynamic;
	/**
		readQVariant(self) -> Any
	**/
	public function readQVariant():Dynamic;
	/**
		readQVariantHash(self) -> Dict[str, Any]
	**/
	public function readQVariantHash():Dynamic;
	/**
		readQVariantList(self) -> List[Any]
	**/
	public function readQVariantList():Dynamic;
	/**
		readQVariantMap(self) -> Dict[str, Any]
	**/
	public function readQVariantMap():Dynamic;
	/**
		readRawData(self, int) -> bytes
	**/
	public function readRawData(int:Int):Dynamic;
	/**
		readString(self) -> bytes
	**/
	public function readString():Dynamic;
	/**
		readUInt16(self) -> int
	**/
	public function readUInt16():Int;
	/**
		readUInt32(self) -> int
	**/
	public function readUInt32():Int;
	/**
		readUInt64(self) -> int
	**/
	public function readUInt64():Int;
	/**
		readUInt8(self) -> int
	**/
	public function readUInt8():Int;
	/**
		resetStatus(self)
	**/
	public function resetStatus():Void;
	/**
		setByteOrder(self, QDataStream.ByteOrder)
	**/
	public function setByteOrder(QDataStream:Dynamic):Void;
	/**
		setDevice(self, QIODevice)
	**/
	public function setDevice(QIODevice:Dynamic):Void;
	/**
		setFloatingPointPrecision(self, QDataStream.FloatingPointPrecision)
	**/
	public function setFloatingPointPrecision(QDataStream:Dynamic):Void;
	/**
		setStatus(self, QDataStream.Status)
	**/
	public function setStatus(QDataStream:Dynamic):Void;
	/**
		setVersion(self, int)
	**/
	public function setVersion(int:Int):Void;
	/**
		skipRawData(self, int) -> int
	**/
	public function skipRawData(int:Int):Int;
	/**
		status(self) -> QDataStream.Status
	**/
	public function status():Dynamic;
	/**
		version(self) -> int
	**/
	public function version():Int;
	/**
		writeBool(self, bool)
	**/
	public function writeBool(bool:Bool):Void;
	/**
		writeBytes(self, bytes) -> QDataStream
	**/
	public function writeBytes(bytes:Dynamic):Dynamic;
	/**
		writeDouble(self, float)
	**/
	public function writeDouble(float:Float):Void;
	/**
		writeFloat(self, float)
	**/
	public function writeFloat(float:Float):Void;
	/**
		writeInt(self, int)
	**/
	public function writeInt(int:Int):Void;
	/**
		writeInt16(self, int)
	**/
	public function writeInt16(int:Int):Void;
	/**
		writeInt32(self, int)
	**/
	public function writeInt32(int:Int):Void;
	/**
		writeInt64(self, int)
	**/
	public function writeInt64(int:Int):Void;
	/**
		writeInt8(self, int)
	**/
	public function writeInt8(int:Int):Void;
	/**
		writeQString(self, str)
	**/
	public function writeQString(str:String):Void;
	/**
		writeQStringList(self, Iterable[str])
	**/
	public function writeQStringList(Iterable:Dynamic):Void;
	/**
		writeQVariant(self, Any)
	**/
	public function writeQVariant(Any:Dynamic):Void;
	/**
		writeQVariantHash(self, Dict[str, Any])
	**/
	public function writeQVariantHash(Dict:Dynamic):Void;
	/**
		writeQVariantList(self, List[Any])
	**/
	public function writeQVariantList(List:Dynamic):Void;
	/**
		writeQVariantMap(self, Dict[str, Any])
	**/
	public function writeQVariantMap(Dict:Dynamic):Void;
	/**
		writeRawData(self, bytes) -> int
	**/
	public function writeRawData(bytes:Dynamic):Int;
	/**
		writeString(self, str)
	**/
	public function writeString(str:String):Void;
	/**
		writeUInt16(self, int)
	**/
	public function writeUInt16(int:Int):Void;
	/**
		writeUInt32(self, int)
	**/
	public function writeUInt32(int:Int):Void;
	/**
		writeUInt64(self, int)
	**/
	public function writeUInt64(int:Int):Void;
	/**
		writeUInt8(self, int)
	**/
	public function writeUInt8(int:Int):Void;
}