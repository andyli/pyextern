/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QDate") extern class QDate {
	static public var DateFormat : Dynamic;
	public function MonthNameType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StandaloneFormat : Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function addDays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addMonths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addYears(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function currentDate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function day(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dayOfWeek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dayOfYear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function daysInMonth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function daysInYear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function daysTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromJulianDay(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getDate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isLeapYear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function longDayName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function longMonthName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function shortDayName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function shortMonthName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toJulianDay(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toPython(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function weekNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function year(args:haxe.extern.Rest<Dynamic>):Dynamic;
}