/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QMatrix4x4") extern class QMatrix4x4 {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return self@=value.
	**/
	public function __imatmul__(value:Dynamic):Dynamic;
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
	/**
		Return self@value.
	**/
	public function __matmul__(value:Dynamic):Dynamic;
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
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value@self.
	**/
	public function __rmatmul__(value:Dynamic):Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
		column(self, int) -> QVector4D
	**/
	public function column(int:Int):Dynamic;
	/**
		copyDataTo(self) -> List[float]
	**/
	public function copyDataTo():Dynamic;
	/**
		data(self) -> List[float]
	**/
	public function data():Dynamic;
	/**
		determinant(self) -> float
	**/
	public function determinant():Float;
	/**
		fill(self, float)
	**/
	public function fill(float:Float):Void;
	/**
		frustum(self, float, float, float, float, float, float)
	**/
	public function frustum(float:Float, float:Float, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		inverted(self) -> Tuple[QMatrix4x4, bool]
	**/
	public function inverted():Dynamic;
	/**
		isAffine(self) -> bool
	**/
	public function isAffine():Bool;
	/**
		isIdentity(self) -> bool
	**/
	public function isIdentity():Bool;
	/**
		lookAt(self, QVector3D, QVector3D, QVector3D)
	**/
	public function lookAt(QVector3D:Dynamic, QVector3D:Dynamic, QVector3D:Dynamic):Void;
	/**
		map(self, QPoint) -> QPoint
		map(self, Union[QPointF, QPoint]) -> QPointF
		map(self, QVector3D) -> QVector3D
		map(self, QVector4D) -> QVector4D
	**/
	public function map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapRect(self, QRect) -> QRect
		mapRect(self, QRectF) -> QRectF
	**/
	public function mapRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapVector(self, QVector3D) -> QVector3D
	**/
	public function mapVector(QVector3D:Dynamic):Dynamic;
	/**
		normalMatrix(self) -> QMatrix3x3
	**/
	public function normalMatrix():Dynamic;
	/**
		optimize(self)
	**/
	public function optimize():Void;
	/**
		ortho(self, QRect)
		ortho(self, QRectF)
		ortho(self, float, float, float, float, float, float)
	**/
	public function ortho(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		perspective(self, float, float, float, float)
	**/
	public function perspective(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		rotate(self, float, QVector3D)
		rotate(self, float, float, float, z: float = 0)
		rotate(self, QQuaternion)
	**/
	public function rotate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		row(self, int) -> QVector4D
	**/
	public function row(int:Int):Dynamic;
	/**
		scale(self, QVector3D)
		scale(self, float, float)
		scale(self, float, float, float)
		scale(self, float)
	**/
	public function scale(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setColumn(self, int, QVector4D)
	**/
	public function setColumn(int:Int, QVector4D:Dynamic):Void;
	/**
		setRow(self, int, QVector4D)
	**/
	public function setRow(int:Int, QVector4D:Dynamic):Void;
	/**
		setToIdentity(self)
	**/
	public function setToIdentity():Void;
	/**
		toTransform(self) -> QTransform
		toTransform(self, float) -> QTransform
	**/
	public function toTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		translate(self, QVector3D)
		translate(self, float, float)
		translate(self, float, float, float)
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		transposed(self) -> QMatrix4x4
	**/
	public function transposed():Dynamic;
	/**
		viewport(self, float, float, float, float, nearPlane: float = 0, farPlane: float = 1)
		viewport(self, QRectF)
	**/
	public function viewport(args:haxe.extern.Rest<Dynamic>):Void;
}