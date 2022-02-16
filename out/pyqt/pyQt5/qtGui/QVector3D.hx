/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QVector3D") extern class QVector3D {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Return self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Return self*=value.
	**/
	public function __imul__(value:Dynamic):Dynamic;
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
		Return self-=value.
	**/
	public function __isub__(value:Dynamic):Dynamic;
	/**
		Return self/=value.
	**/
	public function __itruediv__(value:Dynamic):Dynamic;
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
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
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
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	/**
		Return value/self.
	**/
	public function __rtruediv__(value:Dynamic):Dynamic;
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
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		crossProduct(QVector3D, QVector3D) -> QVector3D
	**/
	static public function crossProduct(QVector3D:Dynamic, QVector3D:Dynamic):Dynamic;
	/**
		distanceToLine(self, QVector3D, QVector3D) -> float
	**/
	public function distanceToLine(QVector3D:Dynamic, QVector3D:Dynamic):Float;
	/**
		distanceToPlane(self, QVector3D, QVector3D) -> float
		distanceToPlane(self, QVector3D, QVector3D, QVector3D) -> float
	**/
	public function distanceToPlane(QVector3D:Dynamic, QVector3D:Dynamic, args:haxe.extern.Rest<Dynamic>):Float;
	/**
		distanceToPoint(self, QVector3D) -> float
	**/
	public function distanceToPoint(QVector3D:Dynamic):Float;
	/**
		dotProduct(QVector3D, QVector3D) -> float
	**/
	static public function dotProduct(QVector3D:Dynamic, QVector3D:Dynamic):Float;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		length(self) -> float
	**/
	public function length():Float;
	/**
		lengthSquared(self) -> float
	**/
	public function lengthSquared():Float;
	/**
		normal(QVector3D, QVector3D) -> QVector3D
		normal(QVector3D, QVector3D, QVector3D) -> QVector3D
	**/
	static public function normal(QVector3D:Dynamic, QVector3D:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		normalize(self)
	**/
	public function normalize():Void;
	/**
		normalized(self) -> QVector3D
	**/
	public function normalized():Dynamic;
	/**
		project(self, QMatrix4x4, QMatrix4x4, QRect) -> QVector3D
	**/
	public function project(QMatrix4x4:Dynamic, QMatrix4x4:Dynamic, QRect:Dynamic):Dynamic;
	/**
		setX(self, float)
	**/
	public function setX(float:Float):Void;
	/**
		setY(self, float)
	**/
	public function setY(float:Float):Void;
	/**
		setZ(self, float)
	**/
	public function setZ(float:Float):Void;
	/**
		toPoint(self) -> QPoint
	**/
	public function toPoint():Dynamic;
	/**
		toPointF(self) -> QPointF
	**/
	public function toPointF():Dynamic;
	/**
		toVector2D(self) -> QVector2D
	**/
	public function toVector2D():Dynamic;
	/**
		toVector4D(self) -> QVector4D
	**/
	public function toVector4D():Dynamic;
	/**
		unproject(self, QMatrix4x4, QMatrix4x4, QRect) -> QVector3D
	**/
	public function unproject(QMatrix4x4:Dynamic, QMatrix4x4:Dynamic, QRect:Dynamic):Dynamic;
	/**
		x(self) -> float
	**/
	public function x():Float;
	/**
		y(self) -> float
	**/
	public function y():Float;
	/**
		z(self) -> float
	**/
	public function z():Float;
}