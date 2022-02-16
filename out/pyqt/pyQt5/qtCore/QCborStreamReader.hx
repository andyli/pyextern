/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QCborStreamReader") extern class QCborStreamReader {
	static public var Array : Dynamic;
	static public var ByteArray : Dynamic;
	static public var ByteString : Dynamic;
	static public var Double : Dynamic;
	static public var EndOfString : Dynamic;
	static public var Error : Dynamic;
	static public var Float : Dynamic;
	static public var Float16 : Dynamic;
	static public var HalfFloat : Dynamic;
	static public var Invalid : Dynamic;
	static public var Map : Dynamic;
	static public var NegativeInteger : Dynamic;
	static public var Ok : Dynamic;
	static public var SimpleType : Dynamic;
	static public var String : Dynamic;
	/**
		int([x]) -> integer
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
	public function StringResultCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Tag : Dynamic;
	static public var TextString : Dynamic;
	/**
		int([x]) -> integer
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
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UnsignedInteger : Dynamic;
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
		addData(self, Union[QByteArray, bytes, bytearray])
	**/
	public function addData(Union:Dynamic):Void;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		containerDepth(self) -> int
	**/
	public function containerDepth():Int;
	/**
		currentOffset(self) -> int
	**/
	public function currentOffset():Int;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		enterContainer(self) -> bool
	**/
	public function enterContainer():Bool;
	/**
		hasNext(self) -> bool
	**/
	public function hasNext():Bool;
	/**
		isArray(self) -> bool
	**/
	public function isArray():Bool;
	/**
		isBool(self) -> bool
	**/
	public function isBool():Bool;
	/**
		isByteArray(self) -> bool
	**/
	public function isByteArray():Bool;
	/**
		isContainer(self) -> bool
	**/
	public function isContainer():Bool;
	/**
		isDouble(self) -> bool
	**/
	public function isDouble():Bool;
	/**
		isFalse(self) -> bool
	**/
	public function isFalse():Bool;
	/**
		isFloat(self) -> bool
	**/
	public function isFloat():Bool;
	/**
		isFloat16(self) -> bool
	**/
	public function isFloat16():Bool;
	/**
		isInteger(self) -> bool
	**/
	public function isInteger():Bool;
	/**
		isInvalid(self) -> bool
	**/
	public function isInvalid():Bool;
	/**
		isLengthKnown(self) -> bool
	**/
	public function isLengthKnown():Bool;
	/**
		isMap(self) -> bool
	**/
	public function isMap():Bool;
	/**
		isNegativeInteger(self) -> bool
	**/
	public function isNegativeInteger():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isSimpleType(self) -> bool
		isSimpleType(self, QCborSimpleType) -> bool
	**/
	public function isSimpleType(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		isString(self) -> bool
	**/
	public function isString():Bool;
	/**
		isTag(self) -> bool
	**/
	public function isTag():Bool;
	/**
		isTrue(self) -> bool
	**/
	public function isTrue():Bool;
	/**
		isUndefined(self) -> bool
	**/
	public function isUndefined():Bool;
	/**
		isUnsignedInteger(self) -> bool
	**/
	public function isUnsignedInteger():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		lastError(self) -> QCborError
	**/
	public function lastError():Dynamic;
	/**
		leaveContainer(self) -> bool
	**/
	public function leaveContainer():Bool;
	/**
		length(self) -> int
	**/
	public function length():Int;
	/**
		next(self, maxRecursion: int = 10000) -> bool
	**/
	public function next(?maxRecursion:Dynamic):Bool;
	/**
		parentContainerType(self) -> QCborStreamReader.Type
	**/
	public function parentContainerType():Dynamic;
	/**
		readByteArray(self) -> Tuple[QByteArray, QCborStreamReader.StringResultCode]
	**/
	public function readByteArray():Dynamic;
	/**
		readString(self) -> Tuple[str, QCborStreamReader.StringResultCode]
	**/
	public function readString():Dynamic;
	/**
		reparse(self)
	**/
	public function reparse():Void;
	/**
		reset(self)
	**/
	public function reset():Void;
	/**
		setDevice(self, QIODevice)
	**/
	public function setDevice(QIODevice:Dynamic):Void;
	/**
		toBool(self) -> bool
	**/
	public function toBool():Bool;
	/**
		toDouble(self) -> float
	**/
	public function toDouble():Float;
	/**
		toInteger(self) -> int
	**/
	public function toInteger():Int;
	/**
		toSimpleType(self) -> QCborSimpleType
	**/
	public function toSimpleType():Dynamic;
	/**
		toUnsignedInteger(self) -> int
	**/
	public function toUnsignedInteger():Int;
	/**
		type(self) -> QCborStreamReader.Type
	**/
	public function type():Dynamic;
}