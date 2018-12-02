/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QTimeZone") extern class QTimeZone {
	static public var DaylightTime : Dynamic;
	static public var DefaultName : Dynamic;
	static public var GenericTime : Dynamic;
	static public var LongName : Dynamic;
	public function NameType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function OffsetData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OffsetName : Dynamic;
	static public var ShortName : Dynamic;
	static public var StandardTime : Dynamic;
	public function TimeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function abbreviation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function availableTimeZoneIds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function comment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function country(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function daylightTimeOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function displayName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasDaylightTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasTransitions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ianaIdToWindowsId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function id(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDaylightTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isTimeZoneIdAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextTransition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function offsetData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function offsetFromUtc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function previousTransition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function standardTimeOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function systemTimeZone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function systemTimeZoneId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transitions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function windowsIdToDefaultIanaId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function windowsIdToIanaIds(args:haxe.extern.Rest<Dynamic>):Dynamic;
}