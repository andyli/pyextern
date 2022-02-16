/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QTime") extern class QTime {
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
		addMSecs(self, int) -> QTime
	**/
	public function addMSecs(int:Int):Dynamic;
	/**
		addSecs(self, int) -> QTime
	**/
	public function addSecs(int:Int):Dynamic;
	/**
		currentTime() -> QTime
	**/
	static public function currentTime():Dynamic;
	/**
		elapsed(self) -> int
	**/
	public function elapsed():Int;
	/**
		fromMSecsSinceStartOfDay(int) -> QTime
	**/
	static public function fromMSecsSinceStartOfDay(int:Int):Dynamic;
	/**
		fromString(str, format: Qt.DateFormat = Qt.TextDate) -> QTime
		fromString(str, str) -> QTime
	**/
	static public function fromString(str:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hour(self) -> int
	**/
	public function hour():Int;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isValid(self) -> bool
		isValid(int, int, int, msec: int = 0) -> bool
	**/
	static public function isValid(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		minute(self) -> int
	**/
	public function minute():Int;
	/**
		msec(self) -> int
	**/
	public function msec():Int;
	/**
		msecsSinceStartOfDay(self) -> int
	**/
	public function msecsSinceStartOfDay():Int;
	/**
		msecsTo(self, Union[QTime, datetime.time]) -> int
	**/
	public function msecsTo(Union:Dynamic):Int;
	/**
		restart(self) -> int
	**/
	public function restart():Int;
	/**
		second(self) -> int
	**/
	public function second():Int;
	/**
		secsTo(self, Union[QTime, datetime.time]) -> int
	**/
	public function secsTo(Union:Dynamic):Int;
	/**
		setHMS(self, int, int, int, msec: int = 0) -> bool
	**/
	public function setHMS(int:Int, int:Int, int:Int, ?msec:Dynamic):Bool;
	/**
		start(self)
	**/
	public function start():Void;
	/**
		toPyTime(self) -> datetime.time
	**/
	public function toPyTime():Dynamic;
	/**
		toString(self, format: Qt.DateFormat = Qt.TextDate) -> str
		toString(self, str) -> str
	**/
	public function toString(args:haxe.extern.Rest<Dynamic>):String;
}