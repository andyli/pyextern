/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPainterPath") extern class QPainterPath {
	static public var CurveToDataElement : Dynamic;
	static public var CurveToElement : Dynamic;
	/**
		QPainterPath.Element()
		QPainterPath.Element(QPainterPath.Element)
	**/
	static public function Element(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		int(x=0) -> integer
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
	public function ElementType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LineToElement : Dynamic;
	static public var MoveToElement : Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Return self&value.
	**/
	public function __and__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Return self&=value.
	**/
	public function __iand__(value:Dynamic):Dynamic;
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
		Return self|=value.
	**/
	public function __ior__(value:Dynamic):Dynamic;
	/**
		Return self-=value.
	**/
	public function __isub__(value:Dynamic):Dynamic;
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
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return self|value.
	**/
	public function __or__(value:Dynamic):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		Return value&self.
	**/
	public function __rand__(value:Dynamic):Dynamic;
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
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value|self.
	**/
	public function __ror__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		addEllipse(self, QRectF)
		addEllipse(self, float, float, float, float)
		addEllipse(self, Union[QPointF, QPoint], float, float)
	**/
	public function addEllipse(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		addPath(self, QPainterPath)
	**/
	public function addPath(QPainterPath:Dynamic):Void;
	/**
		addPolygon(self, QPolygonF)
	**/
	public function addPolygon(QPolygonF:Dynamic):Void;
	/**
		addRect(self, QRectF)
		addRect(self, float, float, float, float)
	**/
	public function addRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		addRegion(self, QRegion)
	**/
	public function addRegion(QRegion:Dynamic):Void;
	/**
		addRoundedRect(self, QRectF, float, float, mode: Qt.SizeMode = Qt.AbsoluteSize)
		addRoundedRect(self, float, float, float, float, float, float, mode: Qt.SizeMode = Qt.AbsoluteSize)
	**/
	public function addRoundedRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		addText(self, Union[QPointF, QPoint], QFont, str)
		addText(self, float, float, QFont, str)
	**/
	public function addText(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		angleAtPercent(self, float) -> float
	**/
	public function angleAtPercent(float:Float):Float;
	/**
		arcMoveTo(self, QRectF, float)
		arcMoveTo(self, float, float, float, float, float)
	**/
	public function arcMoveTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		arcTo(self, QRectF, float, float)
		arcTo(self, float, float, float, float, float, float)
	**/
	public function arcTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		boundingRect(self) -> QRectF
	**/
	public function boundingRect():Dynamic;
	/**
		closeSubpath(self)
	**/
	public function closeSubpath():Void;
	/**
		connectPath(self, QPainterPath)
	**/
	public function connectPath(QPainterPath:Dynamic):Void;
	/**
		contains(self, Union[QPointF, QPoint]) -> bool
		contains(self, QRectF) -> bool
		contains(self, QPainterPath) -> bool
	**/
	public function contains(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		controlPointRect(self) -> QRectF
	**/
	public function controlPointRect():Dynamic;
	/**
		cubicTo(self, Union[QPointF, QPoint], Union[QPointF, QPoint], Union[QPointF, QPoint])
		cubicTo(self, float, float, float, float, float, float)
	**/
	public function cubicTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		currentPosition(self) -> QPointF
	**/
	public function currentPosition():Dynamic;
	/**
		elementAt(self, int) -> QPainterPath.Element
	**/
	public function elementAt(int:Int):Dynamic;
	/**
		elementCount(self) -> int
	**/
	public function elementCount():Int;
	/**
		fillRule(self) -> Qt.FillRule
	**/
	public function fillRule():Dynamic;
	/**
		intersected(self, QPainterPath) -> QPainterPath
	**/
	public function intersected(QPainterPath:Dynamic):Dynamic;
	/**
		intersects(self, QRectF) -> bool
		intersects(self, QPainterPath) -> bool
	**/
	public function intersects(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		length(self) -> float
	**/
	public function length():Float;
	/**
		lineTo(self, Union[QPointF, QPoint])
		lineTo(self, float, float)
	**/
	public function lineTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		moveTo(self, Union[QPointF, QPoint])
		moveTo(self, float, float)
	**/
	public function moveTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		percentAtLength(self, float) -> float
	**/
	public function percentAtLength(float:Float):Float;
	/**
		pointAtPercent(self, float) -> QPointF
	**/
	public function pointAtPercent(float:Float):Dynamic;
	/**
		quadTo(self, Union[QPointF, QPoint], Union[QPointF, QPoint])
		quadTo(self, float, float, float, float)
	**/
	public function quadTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setElementPositionAt(self, int, float, float)
	**/
	public function setElementPositionAt(int:Int, float:Float, float:Float):Void;
	/**
		setFillRule(self, Qt.FillRule)
	**/
	public function setFillRule(Qt:Dynamic):Void;
	/**
		simplified(self) -> QPainterPath
	**/
	public function simplified():Dynamic;
	/**
		slopeAtPercent(self, float) -> float
	**/
	public function slopeAtPercent(float:Float):Float;
	/**
		subtracted(self, QPainterPath) -> QPainterPath
	**/
	public function subtracted(QPainterPath:Dynamic):Dynamic;
	/**
		swap(self, QPainterPath)
	**/
	public function swap(QPainterPath:Dynamic):Void;
	/**
		toFillPolygon(self, QTransform) -> QPolygonF
	**/
	public function toFillPolygon(QTransform:Dynamic):Dynamic;
	/**
		toFillPolygons(self, QTransform) -> List[QPolygonF]
	**/
	public function toFillPolygons(QTransform:Dynamic):Dynamic;
	/**
		toReversed(self) -> QPainterPath
	**/
	public function toReversed():Dynamic;
	/**
		toSubpathPolygons(self, QTransform) -> object
	**/
	public function toSubpathPolygons(QTransform:Dynamic):Dynamic;
	/**
		translate(self, float, float)
		translate(self, Union[QPointF, QPoint])
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		translated(self, float, float) -> QPainterPath
		translated(self, Union[QPointF, QPoint]) -> QPainterPath
	**/
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		united(self, QPainterPath) -> QPainterPath
	**/
	public function united(QPainterPath:Dynamic):Dynamic;
}