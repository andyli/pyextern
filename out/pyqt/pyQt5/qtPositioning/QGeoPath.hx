/* This file is generated, do not edit! */
package pyQt5.qtPositioning;
@:pythonImport("PyQt5.QtPositioning", "QGeoPath") extern class QGeoPath {
	static public var CircleType : Dynamic;
	static public var PathType : Dynamic;
	static public var PolygonType : Dynamic;
	static public var RectangleType : Dynamic;
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
	public function ShapeType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UnknownType : Dynamic;
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
		addCoordinate(self, QGeoCoordinate)
	**/
	public function addCoordinate(QGeoCoordinate:Dynamic):Void;
	/**
		boundingGeoRectangle(self) -> QGeoRectangle
	**/
	public function boundingGeoRectangle():Dynamic;
	/**
		center(self) -> QGeoCoordinate
	**/
	public function center():Dynamic;
	/**
		clearPath(self)
	**/
	public function clearPath():Void;
	/**
		contains(self, QGeoCoordinate) -> bool
	**/
	public function contains(QGeoCoordinate:Dynamic):Bool;
	/**
		containsCoordinate(self, QGeoCoordinate) -> bool
	**/
	public function containsCoordinate(QGeoCoordinate:Dynamic):Bool;
	/**
		coordinateAt(self, int) -> QGeoCoordinate
	**/
	public function coordinateAt(int:Int):Dynamic;
	/**
		extendShape(self, QGeoCoordinate)
	**/
	public function extendShape(QGeoCoordinate:Dynamic):Void;
	/**
		insertCoordinate(self, int, QGeoCoordinate)
	**/
	public function insertCoordinate(int:Int, QGeoCoordinate:Dynamic):Void;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		length(self, indexFrom: int = 0, indexTo: int = -1) -> float
	**/
	public function length(?indexFrom:Dynamic, ?indexTo:Dynamic):Float;
	/**
		path(self) -> List[QGeoCoordinate]
	**/
	public function path():Dynamic;
	/**
		removeCoordinate(self, QGeoCoordinate)
		removeCoordinate(self, int)
	**/
	public function removeCoordinate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		replaceCoordinate(self, int, QGeoCoordinate)
	**/
	public function replaceCoordinate(int:Int, QGeoCoordinate:Dynamic):Void;
	/**
		setPath(self, Iterable[QGeoCoordinate])
	**/
	public function setPath(Iterable:Dynamic):Void;
	/**
		setWidth(self, float)
	**/
	public function setWidth(float:Float):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		toString(self) -> str
	**/
	public function toString():String;
	/**
		translate(self, float, float)
	**/
	public function translate(float:Float, float:Float):Void;
	/**
		translated(self, float, float) -> QGeoPath
	**/
	public function translated(float:Float, float:Float):Dynamic;
	/**
		type(self) -> QGeoShape.ShapeType
	**/
	public function type():Dynamic;
	/**
		width(self) -> float
	**/
	public function width():Float;
}