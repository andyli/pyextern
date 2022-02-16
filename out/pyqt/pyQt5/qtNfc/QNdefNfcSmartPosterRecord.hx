/* This file is generated, do not edit! */
package pyQt5.qtNfc;
@:pythonImport("PyQt5.QtNfc", "QNdefNfcSmartPosterRecord") extern class QNdefNfcSmartPosterRecord {
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
	public function Action(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DoAction : Dynamic;
	static public var EditAction : Dynamic;
	static public var Empty : Dynamic;
	static public var ExternalRtd : Dynamic;
	static public var Mime : Dynamic;
	static public var NfcRtd : Dynamic;
	static public var SaveAction : Dynamic;
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
	public function TypeNameFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Unknown : Dynamic;
	static public var UnspecifiedAction : Dynamic;
	static public var Uri : Dynamic;
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
		action(self) -> QNdefNfcSmartPosterRecord.Action
	**/
	public function action():Dynamic;
	/**
		addIcon(self, QNdefNfcIconRecord)
		addIcon(self, Union[QByteArray, bytes, bytearray], Union[QByteArray, bytes, bytearray])
	**/
	public function addIcon(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		addTitle(self, QNdefNfcTextRecord) -> bool
		addTitle(self, str, str, QNdefNfcTextRecord.Encoding) -> bool
	**/
	public function addTitle(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		hasAction(self) -> bool
	**/
	public function hasAction():Bool;
	/**
		hasIcon(self, mimetype: Union[QByteArray, bytes, bytearray] = QByteArray()) -> bool
	**/
	public function hasIcon(?mimetype:Dynamic):Bool;
	/**
		hasSize(self) -> bool
	**/
	public function hasSize():Bool;
	/**
		hasTitle(self, locale: str = '') -> bool
	**/
	public function hasTitle(?locale:Dynamic):Bool;
	/**
		hasTypeInfo(self) -> bool
	**/
	public function hasTypeInfo():Bool;
	/**
		icon(self, mimetype: Union[QByteArray, bytes, bytearray] = QByteArray()) -> QByteArray
	**/
	public function icon(?mimetype:Dynamic):Dynamic;
	/**
		iconCount(self) -> int
	**/
	public function iconCount():Int;
	/**
		iconRecord(self, int) -> QNdefNfcIconRecord
	**/
	public function iconRecord(int:Int):Dynamic;
	/**
		iconRecords(self) -> List[QNdefNfcIconRecord]
	**/
	public function iconRecords():Dynamic;
	/**
		id(self) -> QByteArray
	**/
	public function id():Dynamic;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		payload(self) -> QByteArray
	**/
	public function payload():Dynamic;
	/**
		removeIcon(self, QNdefNfcIconRecord) -> bool
		removeIcon(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function removeIcon(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		removeTitle(self, QNdefNfcTextRecord) -> bool
		removeTitle(self, str) -> bool
	**/
	public function removeTitle(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		setAction(self, QNdefNfcSmartPosterRecord.Action)
	**/
	public function setAction(QNdefNfcSmartPosterRecord:Dynamic):Void;
	/**
		setIcons(self, Iterable[QNdefNfcIconRecord])
	**/
	public function setIcons(Iterable:Dynamic):Void;
	/**
		setId(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setId(Union:Dynamic):Void;
	/**
		setPayload(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setPayload(Union:Dynamic):Void;
	/**
		setSize(self, int)
	**/
	public function setSize(int:Int):Void;
	/**
		setTitles(self, Iterable[QNdefNfcTextRecord])
	**/
	public function setTitles(Iterable:Dynamic):Void;
	/**
		setType(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setType(Union:Dynamic):Void;
	/**
		setTypeInfo(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setTypeInfo(Union:Dynamic):Void;
	/**
		setTypeNameFormat(self, QNdefRecord.TypeNameFormat)
	**/
	public function setTypeNameFormat(QNdefRecord:Dynamic):Void;
	/**
		setUri(self, QNdefNfcUriRecord)
		setUri(self, QUrl)
	**/
	public function setUri(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		title(self, locale: str = '') -> str
	**/
	public function title(?locale:Dynamic):String;
	/**
		titleCount(self) -> int
	**/
	public function titleCount():Int;
	/**
		titleRecord(self, int) -> QNdefNfcTextRecord
	**/
	public function titleRecord(int:Int):Dynamic;
	/**
		titleRecords(self) -> List[QNdefNfcTextRecord]
	**/
	public function titleRecords():Dynamic;
	/**
		type(self) -> QByteArray
	**/
	public function type():Dynamic;
	/**
		typeInfo(self) -> QByteArray
	**/
	public function typeInfo():Dynamic;
	/**
		typeNameFormat(self) -> QNdefRecord.TypeNameFormat
	**/
	public function typeNameFormat():Dynamic;
	/**
		uri(self) -> QUrl
	**/
	public function uri():Dynamic;
	/**
		uriRecord(self) -> QNdefNfcUriRecord
	**/
	public function uriRecord():Dynamic;
}