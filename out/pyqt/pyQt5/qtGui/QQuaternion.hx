/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QQuaternion") extern class QQuaternion {
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
		conjugate(self) -> QQuaternion
	**/
	public function conjugate():Dynamic;
	/**
		conjugated(self) -> QQuaternion
	**/
	public function conjugated():Dynamic;
	/**
		dotProduct(QQuaternion, QQuaternion) -> float
	**/
	static public function dotProduct(QQuaternion:Dynamic, QQuaternion:Dynamic):Float;
	/**
		fromAxes(QVector3D, QVector3D, QVector3D) -> QQuaternion
	**/
	static public function fromAxes(QVector3D:Dynamic, QVector3D:Dynamic, QVector3D:Dynamic):Dynamic;
	/**
		fromAxisAndAngle(QVector3D, float) -> QQuaternion
		fromAxisAndAngle(float, float, float, float) -> QQuaternion
	**/
	static public function fromAxisAndAngle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromDirection(QVector3D, QVector3D) -> QQuaternion
	**/
	static public function fromDirection(QVector3D:Dynamic, QVector3D:Dynamic):Dynamic;
	/**
		fromEulerAngles(float, float, float) -> QQuaternion
		fromEulerAngles(QVector3D) -> QQuaternion
	**/
	static public function fromEulerAngles(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromRotationMatrix(QMatrix3x3) -> QQuaternion
	**/
	static public function fromRotationMatrix(QMatrix3x3:Dynamic):Dynamic;
	/**
		getAxes(self) -> Tuple[QVector3D, QVector3D, QVector3D]
	**/
	public function getAxes():Dynamic;
	/**
		getAxisAndAngle(self) -> Tuple[QVector3D, float]
	**/
	public function getAxisAndAngle():Dynamic;
	/**
		getEulerAngles(self) -> Tuple[float, float, float]
	**/
	public function getEulerAngles():Dynamic;
	/**
		inverted(self) -> QQuaternion
	**/
	public function inverted():Dynamic;
	/**
		isIdentity(self) -> bool
	**/
	public function isIdentity():Bool;
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
		nlerp(QQuaternion, QQuaternion, float) -> QQuaternion
	**/
	static public function nlerp(QQuaternion:Dynamic, QQuaternion:Dynamic, float:Float):Dynamic;
	/**
		normalize(self)
	**/
	public function normalize():Void;
	/**
		normalized(self) -> QQuaternion
	**/
	public function normalized():Dynamic;
	/**
		rotatedVector(self, QVector3D) -> QVector3D
	**/
	public function rotatedVector(QVector3D:Dynamic):Dynamic;
	/**
		rotationTo(QVector3D, QVector3D) -> QQuaternion
	**/
	static public function rotationTo(QVector3D:Dynamic, QVector3D:Dynamic):Dynamic;
	/**
		scalar(self) -> float
	**/
	public function scalar():Float;
	/**
		setScalar(self, float)
	**/
	public function setScalar(float:Float):Void;
	/**
		setVector(self, QVector3D)
		setVector(self, float, float, float)
	**/
	public function setVector(args:haxe.extern.Rest<Dynamic>):Void;
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
		slerp(QQuaternion, QQuaternion, float) -> QQuaternion
	**/
	static public function slerp(QQuaternion:Dynamic, QQuaternion:Dynamic, float:Float):Dynamic;
	/**
		toEulerAngles(self) -> QVector3D
	**/
	public function toEulerAngles():Dynamic;
	/**
		toRotationMatrix(self) -> QMatrix3x3
	**/
	public function toRotationMatrix():Dynamic;
	/**
		toVector4D(self) -> QVector4D
	**/
	public function toVector4D():Dynamic;
	/**
		vector(self) -> QVector3D
	**/
	public function vector():Dynamic;
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