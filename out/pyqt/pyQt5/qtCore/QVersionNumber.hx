/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QVersionNumber") extern class QVersionNumber {
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
		commonPrefix(QVersionNumber, QVersionNumber) -> QVersionNumber
	**/
	static public function commonPrefix(QVersionNumber:Dynamic, QVersionNumber:Dynamic):Dynamic;
	/**
		compare(QVersionNumber, QVersionNumber) -> int
	**/
	static public function compare(QVersionNumber:Dynamic, QVersionNumber:Dynamic):Int;
	/**
		fromString(str) -> Tuple[QVersionNumber, int]
	**/
	static public function fromString(str:String):Dynamic;
	/**
		isNormalized(self) -> bool
	**/
	public function isNormalized():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isPrefixOf(self, QVersionNumber) -> bool
	**/
	public function isPrefixOf(QVersionNumber:Dynamic):Bool;
	/**
		majorVersion(self) -> int
	**/
	public function majorVersion():Int;
	/**
		microVersion(self) -> int
	**/
	public function microVersion():Int;
	/**
		minorVersion(self) -> int
	**/
	public function minorVersion():Int;
	/**
		normalized(self) -> QVersionNumber
	**/
	public function normalized():Dynamic;
	/**
		segmentAt(self, int) -> int
	**/
	public function segmentAt(int:Int):Int;
	/**
		segmentCount(self) -> int
	**/
	public function segmentCount():Int;
	/**
		segments(self) -> List[int]
	**/
	public function segments():Dynamic;
	/**
		toString(self) -> str
	**/
	public function toString():String;
}