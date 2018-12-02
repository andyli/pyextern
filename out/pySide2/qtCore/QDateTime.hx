/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QDateTime") extern class QDateTime {
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
	public function addMSecs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addMonths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addSecs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addYears(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function currentDateTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function currentDateTimeUtc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function currentMSecsSinceEpoch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function daysTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromMSecsSinceEpoch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromTime_t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDaylightTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function msecsTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function offsetFromUtc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function secsTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMSecsSinceEpoch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOffsetFromUtc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTimeSpec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTimeZone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTime_t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUtcOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timeSpec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timeZone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timeZoneAbbreviation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toLocalTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toMSecsSinceEpoch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toOffsetFromUtc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toPython(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toTimeSpec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toTimeZone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toTime_t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toUTC(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function utcOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
}