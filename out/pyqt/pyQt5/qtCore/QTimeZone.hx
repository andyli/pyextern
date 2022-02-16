/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QTimeZone") extern class QTimeZone {
	static public var DaylightTime : Dynamic;
	static public var DefaultName : Dynamic;
	static public var GenericTime : Dynamic;
	static public var LongName : Dynamic;
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
	public function NameType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QTimeZone.OffsetData()
		QTimeZone.OffsetData(QTimeZone.OffsetData)
	**/
	static public function OffsetData(args:haxe.extern.Rest<Dynamic>):Void;
	static public var OffsetName : Dynamic;
	static public var ShortName : Dynamic;
	static public var StandardTime : Dynamic;
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
	public function TimeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __hash__ : Dynamic;
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
		abbreviation(self, Union[QDateTime, datetime.datetime]) -> str
	**/
	public function abbreviation(Union:Dynamic):String;
	/**
		availableTimeZoneIds() -> List[QByteArray]
		availableTimeZoneIds(QLocale.Country) -> List[QByteArray]
		availableTimeZoneIds(int) -> List[QByteArray]
	**/
	static public function availableTimeZoneIds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		comment(self) -> str
	**/
	public function comment():String;
	/**
		country(self) -> QLocale.Country
	**/
	public function country():Dynamic;
	/**
		daylightTimeOffset(self, Union[QDateTime, datetime.datetime]) -> int
	**/
	public function daylightTimeOffset(Union:Dynamic):Int;
	/**
		displayName(self, Union[QDateTime, datetime.datetime], nameType: QTimeZone.NameType = QTimeZone.DefaultName, locale: QLocale = QLocale()) -> str
		displayName(self, QTimeZone.TimeType, nameType: QTimeZone.NameType = QTimeZone.DefaultName, locale: QLocale = QLocale()) -> str
	**/
	public function displayName(args:haxe.extern.Rest<Dynamic>):String;
	/**
		hasDaylightTime(self) -> bool
	**/
	public function hasDaylightTime():Bool;
	/**
		hasTransitions(self) -> bool
	**/
	public function hasTransitions():Bool;
	/**
		ianaIdToWindowsId(Union[QByteArray, bytes, bytearray]) -> QByteArray
	**/
	static public function ianaIdToWindowsId(Union:Dynamic):Dynamic;
	/**
		id(self) -> QByteArray
	**/
	public function id():Dynamic;
	/**
		isDaylightTime(self, Union[QDateTime, datetime.datetime]) -> bool
	**/
	public function isDaylightTime(Union:Dynamic):Bool;
	/**
		isTimeZoneIdAvailable(Union[QByteArray, bytes, bytearray]) -> bool
	**/
	static public function isTimeZoneIdAvailable(Union:Dynamic):Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		nextTransition(self, Union[QDateTime, datetime.datetime]) -> QTimeZone.OffsetData
	**/
	public function nextTransition(Union:Dynamic):Dynamic;
	/**
		offsetData(self, Union[QDateTime, datetime.datetime]) -> QTimeZone.OffsetData
	**/
	public function offsetData(Union:Dynamic):Dynamic;
	/**
		offsetFromUtc(self, Union[QDateTime, datetime.datetime]) -> int
	**/
	public function offsetFromUtc(Union:Dynamic):Int;
	/**
		previousTransition(self, Union[QDateTime, datetime.datetime]) -> QTimeZone.OffsetData
	**/
	public function previousTransition(Union:Dynamic):Dynamic;
	/**
		standardTimeOffset(self, Union[QDateTime, datetime.datetime]) -> int
	**/
	public function standardTimeOffset(Union:Dynamic):Int;
	/**
		swap(self, QTimeZone)
	**/
	public function swap(QTimeZone:Dynamic):Void;
	/**
		systemTimeZone() -> QTimeZone
	**/
	static public function systemTimeZone():Dynamic;
	/**
		systemTimeZoneId() -> QByteArray
	**/
	static public function systemTimeZoneId():Dynamic;
	/**
		transitions(self, Union[QDateTime, datetime.datetime], Union[QDateTime, datetime.datetime]) -> List[QTimeZone.OffsetData]
	**/
	public function transitions(Union:Dynamic, Union:Dynamic):Dynamic;
	/**
		utc() -> QTimeZone
	**/
	static public function utc():Dynamic;
	/**
		windowsIdToDefaultIanaId(Union[QByteArray, bytes, bytearray]) -> QByteArray
		windowsIdToDefaultIanaId(Union[QByteArray, bytes, bytearray], QLocale.Country) -> QByteArray
	**/
	static public function windowsIdToDefaultIanaId(Union:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowsIdToIanaIds(Union[QByteArray, bytes, bytearray]) -> List[QByteArray]
		windowsIdToIanaIds(Union[QByteArray, bytes, bytearray], QLocale.Country) -> List[QByteArray]
	**/
	static public function windowsIdToIanaIds(Union:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
}