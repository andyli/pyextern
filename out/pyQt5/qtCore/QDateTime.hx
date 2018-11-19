/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QDateTime") extern class QDateTime {
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
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
		addDays(self, int) -> QDateTime
	**/
	public function addDays(int:Int):Dynamic;
	/**
		addMSecs(self, int) -> QDateTime
	**/
	public function addMSecs(int:Int):Dynamic;
	/**
		addMonths(self, int) -> QDateTime
	**/
	public function addMonths(int:Int):Dynamic;
	/**
		addSecs(self, int) -> QDateTime
	**/
	public function addSecs(int:Int):Dynamic;
	/**
		addYears(self, int) -> QDateTime
	**/
	public function addYears(int:Int):Dynamic;
	/**
		currentDateTime() -> QDateTime
	**/
	static public function currentDateTime():Dynamic;
	/**
		currentDateTimeUtc() -> QDateTime
	**/
	static public function currentDateTimeUtc():Dynamic;
	/**
		currentMSecsSinceEpoch() -> int
	**/
	static public function currentMSecsSinceEpoch():Int;
	/**
		date(self) -> QDate
	**/
	public function date():Dynamic;
	/**
		daysTo(self, Union[QDateTime, datetime.datetime]) -> int
	**/
	public function daysTo(Union:Dynamic):Int;
	/**
		fromMSecsSinceEpoch(int) -> QDateTime
		fromMSecsSinceEpoch(int, Qt.TimeSpec, offsetSeconds: int = 0) -> QDateTime
		fromMSecsSinceEpoch(int, QTimeZone) -> QDateTime
	**/
	static public function fromMSecsSinceEpoch(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromString(str, format: Qt.DateFormat = Qt.TextDate) -> QDateTime
		fromString(str, str) -> QDateTime
	**/
	static public function fromString(str:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromTime_t(int) -> QDateTime
		fromTime_t(int, Qt.TimeSpec, offsetSeconds: int = 0) -> QDateTime
		fromTime_t(int, QTimeZone) -> QDateTime
	**/
	static public function fromTime_t(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isDaylightTime(self) -> bool
	**/
	public function isDaylightTime():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		msecsTo(self, Union[QDateTime, datetime.datetime]) -> int
	**/
	public function msecsTo(Union:Dynamic):Int;
	/**
		offsetFromUtc(self) -> int
	**/
	public function offsetFromUtc():Int;
	/**
		secsTo(self, Union[QDateTime, datetime.datetime]) -> int
	**/
	public function secsTo(Union:Dynamic):Int;
	/**
		setDate(self, Union[QDate, datetime.date])
	**/
	public function setDate(Union:Dynamic):Void;
	/**
		setMSecsSinceEpoch(self, int)
	**/
	public function setMSecsSinceEpoch(int:Int):Void;
	/**
		setOffsetFromUtc(self, int)
	**/
	public function setOffsetFromUtc(int:Int):Void;
	/**
		setTime(self, Union[QTime, datetime.time])
	**/
	public function setTime(Union:Dynamic):Void;
	/**
		setTimeSpec(self, Qt.TimeSpec)
	**/
	public function setTimeSpec(Qt:Dynamic):Void;
	/**
		setTimeZone(self, QTimeZone)
	**/
	public function setTimeZone(QTimeZone:Dynamic):Void;
	/**
		setTime_t(self, int)
	**/
	public function setTime_t(int:Int):Void;
	/**
		swap(self, QDateTime)
	**/
	public function swap(QDateTime:Dynamic):Void;
	/**
		time(self) -> QTime
	**/
	public function time():Dynamic;
	/**
		timeSpec(self) -> Qt.TimeSpec
	**/
	public function timeSpec():Dynamic;
	/**
		timeZone(self) -> QTimeZone
	**/
	public function timeZone():Dynamic;
	/**
		timeZoneAbbreviation(self) -> str
	**/
	public function timeZoneAbbreviation():String;
	/**
		toLocalTime(self) -> QDateTime
	**/
	public function toLocalTime():Dynamic;
	/**
		toMSecsSinceEpoch(self) -> int
	**/
	public function toMSecsSinceEpoch():Int;
	/**
		toOffsetFromUtc(self, int) -> QDateTime
	**/
	public function toOffsetFromUtc(int:Int):Dynamic;
	/**
		toPyDateTime(self) -> datetime.datetime
	**/
	public function toPyDateTime():Dynamic;
	/**
		toString(self, format: Qt.DateFormat = Qt.TextDate) -> str
		toString(self, str) -> str
	**/
	public function toString(args:haxe.extern.Rest<Dynamic>):String;
	/**
		toTimeSpec(self, Qt.TimeSpec) -> QDateTime
	**/
	public function toTimeSpec(Qt:Dynamic):Dynamic;
	/**
		toTimeZone(self, QTimeZone) -> QDateTime
	**/
	public function toTimeZone(QTimeZone:Dynamic):Dynamic;
	/**
		toTime_t(self) -> int
	**/
	public function toTime_t():Int;
	/**
		toUTC(self) -> QDateTime
	**/
	public function toUTC():Dynamic;
}