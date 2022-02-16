/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QByteArray") extern class QByteArray {
	static public var Base64Encoding : Dynamic;
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
	public function Base64Option(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QByteArray.Base64Options()
		QByteArray.Base64Options(Union[QByteArray.Base64Options, QByteArray.Base64Option])
		QByteArray.Base64Options(QByteArray.Base64Options)
	**/
	static public function Base64Options(args:haxe.extern.Rest<Dynamic>):Void;
	static public var Base64UrlEncoding : Dynamic;
	static public var KeepTrailingEquals : Dynamic;
	static public var OmitTrailingEquals : Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Implement self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Implement self*=value.
	**/
	public function __imul__(value:Dynamic):Dynamic;
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
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
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
		append(self, Union[QByteArray, bytes, bytearray]) -> QByteArray
		append(self, str) -> QByteArray
		append(self, int, str) -> QByteArray
	**/
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		at(self, int) -> str
	**/
	public function at(int:Int):String;
	/**
		capacity(self) -> int
	**/
	public function capacity():Int;
	/**
		chop(self, int)
	**/
	public function chop(int:Int):Void;
	/**
		chopped(self, int) -> QByteArray
	**/
	public function chopped(int:Int):Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		compare(self, Union[QByteArray, bytes, bytearray], cs: Qt.CaseSensitivity = Qt.CaseSensitive) -> int
	**/
	public function compare(Union:Dynamic, ?cs:Dynamic):Int;
	/**
		contains(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function contains(Union:Dynamic):Bool;
	/**
		count(self, Union[QByteArray, bytes, bytearray]) -> int
		count(self) -> int
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		data(self) -> bytes
	**/
	public function data():Dynamic;
	/**
		endsWith(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function endsWith(Union:Dynamic):Bool;
	/**
		fill(self, str, size: int = -1) -> QByteArray
	**/
	public function fill(str:String, ?size:Dynamic):Dynamic;
	/**
		fromBase64(Union[QByteArray, bytes, bytearray]) -> QByteArray
		fromBase64(Union[QByteArray, bytes, bytearray], Union[QByteArray.Base64Options, QByteArray.Base64Option]) -> QByteArray
	**/
	static public function fromBase64(Union:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromHex(Union[QByteArray, bytes, bytearray]) -> QByteArray
	**/
	static public function fromHex(Union:Dynamic):Dynamic;
	/**
		fromPercentEncoding(Union[QByteArray, bytes, bytearray], percent: str = '%') -> QByteArray
	**/
	static public function fromPercentEncoding(Union:Dynamic, ?percent:Dynamic):Dynamic;
	/**
		fromRawData(bytes) -> QByteArray
	**/
	static public function fromRawData(bytes:Dynamic):Dynamic;
	/**
		indexOf(self, Union[QByteArray, bytes, bytearray], from_: int = 0) -> int
		indexOf(self, str, from_: int = 0) -> int
	**/
	public function indexOf(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		insert(self, int, Union[QByteArray, bytes, bytearray]) -> QByteArray
		insert(self, int, str) -> QByteArray
		insert(self, int, int, str) -> QByteArray
	**/
	public function insert(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isLower(self) -> bool
	**/
	public function isLower():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isUpper(self) -> bool
	**/
	public function isUpper():Bool;
	/**
		lastIndexOf(self, Union[QByteArray, bytes, bytearray], from_: int = -1) -> int
		lastIndexOf(self, str, from_: int = -1) -> int
	**/
	public function lastIndexOf(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		left(self, int) -> QByteArray
	**/
	public function left(int:Int):Dynamic;
	/**
		leftJustified(self, int, fill: str = ' ', truncate: bool = False) -> QByteArray
	**/
	public function leftJustified(int:Int, ?fill:Dynamic, ?truncate:Dynamic):Dynamic;
	/**
		length(self) -> int
	**/
	public function length():Int;
	/**
		mid(self, int, length: int = -1) -> QByteArray
	**/
	public function mid(int:Int, ?length:Dynamic):Dynamic;
	/**
		number(float, format: str = 'g', precision: int = 6) -> QByteArray
		number(int, base: int = 10) -> QByteArray
	**/
	static public function number(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prepend(self, Union[QByteArray, bytes, bytearray]) -> QByteArray
		prepend(self, int, str) -> QByteArray
	**/
	public function prepend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		push_back(self, Union[QByteArray, bytes, bytearray])
	**/
	public function push_back(Union:Dynamic):Void;
	/**
		push_front(self, Union[QByteArray, bytes, bytearray])
	**/
	public function push_front(Union:Dynamic):Void;
	/**
		remove(self, int, int) -> QByteArray
	**/
	public function remove(int:Int, int:Int):Dynamic;
	/**
		repeated(self, int) -> QByteArray
	**/
	public function repeated(int:Int):Dynamic;
	/**
		replace(self, int, int, Union[QByteArray, bytes, bytearray]) -> QByteArray
		replace(self, Union[QByteArray, bytes, bytearray], Union[QByteArray, bytes, bytearray]) -> QByteArray
		replace(self, str, Union[QByteArray, bytes, bytearray]) -> QByteArray
	**/
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reserve(self, int)
	**/
	public function reserve(int:Int):Void;
	/**
		resize(self, int)
	**/
	public function resize(int:Int):Void;
	/**
		right(self, int) -> QByteArray
	**/
	public function right(int:Int):Dynamic;
	/**
		rightJustified(self, int, fill: str = ' ', truncate: bool = False) -> QByteArray
	**/
	public function rightJustified(int:Int, ?fill:Dynamic, ?truncate:Dynamic):Dynamic;
	/**
		setNum(self, float, format: str = 'g', precision: int = 6) -> QByteArray
		setNum(self, int, base: int = 10) -> QByteArray
	**/
	public function setNum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		simplified(self) -> QByteArray
	**/
	public function simplified():Dynamic;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		split(self, str) -> List[QByteArray]
	**/
	public function split(str:String):Dynamic;
	/**
		squeeze(self)
	**/
	public function squeeze():Void;
	/**
		startsWith(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function startsWith(Union:Dynamic):Bool;
	/**
		swap(self, QByteArray)
	**/
	public function swap(QByteArray:Dynamic):Void;
	/**
		toBase64(self) -> QByteArray
		toBase64(self, Union[QByteArray.Base64Options, QByteArray.Base64Option]) -> QByteArray
	**/
	public function toBase64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		toDouble(self) -> Tuple[float, bool]
	**/
	public function toDouble():Dynamic;
	/**
		toFloat(self) -> Tuple[float, bool]
	**/
	public function toFloat():Dynamic;
	/**
		toHex(self) -> QByteArray
		toHex(self, str) -> QByteArray
	**/
	public function toHex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		toInt(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toInt(?base:Dynamic):Dynamic;
	/**
		toLong(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toLong(?base:Dynamic):Dynamic;
	/**
		toLongLong(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toLongLong(?base:Dynamic):Dynamic;
	/**
		toLower(self) -> QByteArray
	**/
	public function toLower():Dynamic;
	/**
		toPercentEncoding(self, exclude: Union[QByteArray, bytes, bytearray] = QByteArray(), include: Union[QByteArray, bytes, bytearray] = QByteArray(), percent: str = '%') -> QByteArray
	**/
	public function toPercentEncoding(?exclude:Dynamic, ?include:Dynamic, ?percent:Dynamic):Dynamic;
	/**
		toShort(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toShort(?base:Dynamic):Dynamic;
	/**
		toUInt(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toUInt(?base:Dynamic):Dynamic;
	/**
		toULong(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toULong(?base:Dynamic):Dynamic;
	/**
		toULongLong(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toULongLong(?base:Dynamic):Dynamic;
	/**
		toUShort(self, base: int = 10) -> Tuple[int, bool]
	**/
	public function toUShort(?base:Dynamic):Dynamic;
	/**
		toUpper(self) -> QByteArray
	**/
	public function toUpper():Dynamic;
	/**
		trimmed(self) -> QByteArray
	**/
	public function trimmed():Dynamic;
	/**
		truncate(self, int)
	**/
	public function truncate(int:Int):Void;
}