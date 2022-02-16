/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QDate") extern class QDate {
	static public var DateFormat : Dynamic;
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
	public function MonthNameType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StandaloneFormat : Dynamic;
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
		addDays(self, int) -> QDate
	**/
	public function addDays(int:Int):Dynamic;
	/**
		addMonths(self, int) -> QDate
	**/
	public function addMonths(int:Int):Dynamic;
	/**
		addYears(self, int) -> QDate
	**/
	public function addYears(int:Int):Dynamic;
	/**
		currentDate() -> QDate
	**/
	static public function currentDate():Dynamic;
	/**
		day(self) -> int
	**/
	public function day():Int;
	/**
		dayOfWeek(self) -> int
	**/
	public function dayOfWeek():Int;
	/**
		dayOfYear(self) -> int
	**/
	public function dayOfYear():Int;
	/**
		daysInMonth(self) -> int
	**/
	public function daysInMonth():Int;
	/**
		daysInYear(self) -> int
	**/
	public function daysInYear():Int;
	/**
		daysTo(self, Union[QDate, datetime.date]) -> int
	**/
	public function daysTo(Union:Dynamic):Int;
	/**
		fromJulianDay(int) -> QDate
	**/
	static public function fromJulianDay(int:Int):Dynamic;
	/**
		fromString(str, format: Qt.DateFormat = Qt.TextDate) -> QDate
		fromString(str, str) -> QDate
	**/
	static public function fromString(str:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getDate(self) -> Tuple[int, int, int]
	**/
	public function getDate():Dynamic;
	/**
		isLeapYear(int) -> bool
	**/
	static public function isLeapYear(int:Int):Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isValid(self) -> bool
		isValid(int, int, int) -> bool
	**/
	static public function isValid(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		longDayName(int, type: QDate.MonthNameType = QDate.DateFormat) -> str
	**/
	static public function longDayName(int:Int, ?type:Dynamic):String;
	/**
		longMonthName(int, type: QDate.MonthNameType = QDate.DateFormat) -> str
	**/
	static public function longMonthName(int:Int, ?type:Dynamic):String;
	/**
		month(self) -> int
	**/
	public function month():Int;
	/**
		setDate(self, int, int, int) -> bool
	**/
	public function setDate(int:Int, int:Int, int:Int):Bool;
	/**
		shortDayName(int, type: QDate.MonthNameType = QDate.DateFormat) -> str
	**/
	static public function shortDayName(int:Int, ?type:Dynamic):String;
	/**
		shortMonthName(int, type: QDate.MonthNameType = QDate.DateFormat) -> str
	**/
	static public function shortMonthName(int:Int, ?type:Dynamic):String;
	/**
		toJulianDay(self) -> int
	**/
	public function toJulianDay():Int;
	/**
		toPyDate(self) -> datetime.date
	**/
	public function toPyDate():Dynamic;
	/**
		toString(self, format: Qt.DateFormat = Qt.TextDate) -> str
		toString(self, str) -> str
	**/
	public function toString(args:haxe.extern.Rest<Dynamic>):String;
	/**
		weekNumber(self) -> Tuple[int, int]
	**/
	public function weekNumber():Dynamic;
	/**
		year(self) -> int
	**/
	public function year():Int;
}