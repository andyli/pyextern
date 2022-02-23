/* This file is generated, do not edit! */
package pyQt5.qtLocation;
@:pythonImport("PyQt5.QtLocation", "QGeoRouteSegment") extern class QGeoRouteSegment {
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
		distance(self) -> float
	**/
	public function distance():Float;
	/**
		isLegLastSegment(self) -> bool
	**/
	public function isLegLastSegment():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		maneuver(self) -> QGeoManeuver
	**/
	public function maneuver():Dynamic;
	/**
		nextRouteSegment(self) -> QGeoRouteSegment
	**/
	public function nextRouteSegment():Dynamic;
	/**
		path(self) -> List[QGeoCoordinate]
	**/
	public function path():Dynamic;
	/**
		setDistance(self, float)
	**/
	public function setDistance(float:Float):Void;
	/**
		setManeuver(self, QGeoManeuver)
	**/
	public function setManeuver(QGeoManeuver:Dynamic):Void;
	/**
		setNextRouteSegment(self, QGeoRouteSegment)
	**/
	public function setNextRouteSegment(QGeoRouteSegment:Dynamic):Void;
	/**
		setPath(self, Iterable[QGeoCoordinate])
	**/
	public function setPath(Iterable:Dynamic):Void;
	/**
		setTravelTime(self, int)
	**/
	public function setTravelTime(int:Int):Void;
	/**
		travelTime(self) -> int
	**/
	public function travelTime():Int;
}