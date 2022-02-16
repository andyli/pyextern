/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QTransform") extern class QTransform {
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
	public function TransformationType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TxNone : Dynamic;
	static public var TxProject : Dynamic;
	static public var TxRotate : Dynamic;
	static public var TxScale : Dynamic;
	static public var TxShear : Dynamic;
	static public var TxTranslate : Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
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
		adjoint(self) -> QTransform
	**/
	public function adjoint():Dynamic;
	/**
		determinant(self) -> float
	**/
	public function determinant():Float;
	/**
		dx(self) -> float
	**/
	public function dx():Float;
	/**
		dy(self) -> float
	**/
	public function dy():Float;
	/**
		fromScale(float, float) -> QTransform
	**/
	static public function fromScale(float:Float, float:Float):Dynamic;
	/**
		fromTranslate(float, float) -> QTransform
	**/
	static public function fromTranslate(float:Float, float:Float):Dynamic;
	/**
		inverted(self) -> Tuple[QTransform, bool]
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
		isInvertible(self) -> bool
	**/
	public function isInvertible():Bool;
	/**
		isRotating(self) -> bool
	**/
	public function isRotating():Bool;
	/**
		isScaling(self) -> bool
	**/
	public function isScaling():Bool;
	/**
		isTranslating(self) -> bool
	**/
	public function isTranslating():Bool;
	/**
		m11(self) -> float
	**/
	public function m11():Float;
	/**
		m12(self) -> float
	**/
	public function m12():Float;
	/**
		m13(self) -> float
	**/
	public function m13():Float;
	/**
		m21(self) -> float
	**/
	public function m21():Float;
	/**
		m22(self) -> float
	**/
	public function m22():Float;
	/**
		m23(self) -> float
	**/
	public function m23():Float;
	/**
		m31(self) -> float
	**/
	public function m31():Float;
	/**
		m32(self) -> float
	**/
	public function m32():Float;
	/**
		m33(self) -> float
	**/
	public function m33():Float;
	/**
		map(self, int, int) -> Tuple[int, int]
		map(self, float, float) -> Tuple[float, float]
		map(self, QPoint) -> QPoint
		map(self, Union[QPointF, QPoint]) -> QPointF
		map(self, QLine) -> QLine
		map(self, QLineF) -> QLineF
		map(self, QPolygonF) -> QPolygonF
		map(self, QPolygon) -> QPolygon
		map(self, QRegion) -> QRegion
		map(self, QPainterPath) -> QPainterPath
	**/
	public function map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapRect(self, QRect) -> QRect
		mapRect(self, QRectF) -> QRectF
	**/
	public function mapRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapToPolygon(self, QRect) -> QPolygon
	**/
	public function mapToPolygon(QRect:Dynamic):Dynamic;
	/**
		quadToQuad(QPolygonF, QPolygonF, QTransform) -> bool
	**/
	static public function quadToQuad(QPolygonF:Dynamic, QPolygonF:Dynamic, QTransform:Dynamic):Bool;
	/**
		quadToSquare(QPolygonF, QTransform) -> bool
	**/
	static public function quadToSquare(QPolygonF:Dynamic, QTransform:Dynamic):Bool;
	/**
		reset(self)
	**/
	public function reset():Void;
	/**
		rotate(self, float, axis: Qt.Axis = Qt.ZAxis) -> QTransform
	**/
	public function rotate(float:Float, ?axis:Dynamic):Dynamic;
	/**
		rotateRadians(self, float, axis: Qt.Axis = Qt.ZAxis) -> QTransform
	**/
	public function rotateRadians(float:Float, ?axis:Dynamic):Dynamic;
	/**
		scale(self, float, float) -> QTransform
	**/
	public function scale(float:Float, float:Float):Dynamic;
	/**
		setMatrix(self, float, float, float, float, float, float, float, float, float)
	**/
	public function setMatrix(float:Float, float:Float, float:Float, float:Float, float:Float, float:Float, float:Float, float:Float, float:Float):Void;
	/**
		shear(self, float, float) -> QTransform
	**/
	public function shear(float:Float, float:Float):Dynamic;
	/**
		squareToQuad(QPolygonF, QTransform) -> bool
	**/
	static public function squareToQuad(QPolygonF:Dynamic, QTransform:Dynamic):Bool;
	/**
		translate(self, float, float) -> QTransform
	**/
	public function translate(float:Float, float:Float):Dynamic;
	/**
		transposed(self) -> QTransform
	**/
	public function transposed():Dynamic;
	/**
		type(self) -> QTransform.TransformationType
	**/
	public function type():Dynamic;
}