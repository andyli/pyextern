/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QRectF") extern class QRectF {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Return self&value.
	**/
	public function __and__(value:Dynamic):Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		adjust(self, float, float, float, float)
	**/
	public function adjust(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		adjusted(self, float, float, float, float) -> QRectF
	**/
	public function adjusted(float:Float, float:Float, float:Float, float:Float):Dynamic;
	/**
		bottom(self) -> float
	**/
	public function bottom():Float;
	/**
		bottomLeft(self) -> QPointF
	**/
	public function bottomLeft():Dynamic;
	/**
		bottomRight(self) -> QPointF
	**/
	public function bottomRight():Dynamic;
	/**
		center(self) -> QPointF
	**/
	public function center():Dynamic;
	/**
		contains(self, Union[QPointF, QPoint]) -> bool
		contains(self, QRectF) -> bool
		contains(self, float, float) -> bool
	**/
	public function contains(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		getCoords(self) -> Tuple[float, float, float, float]
	**/
	public function getCoords():Dynamic;
	/**
		getRect(self) -> Tuple[float, float, float, float]
	**/
	public function getRect():Dynamic;
	/**
		height(self) -> float
	**/
	public function height():Float;
	/**
		intersected(self, QRectF) -> QRectF
	**/
	public function intersected(QRectF:Dynamic):Dynamic;
	/**
		intersects(self, QRectF) -> bool
	**/
	public function intersects(QRectF:Dynamic):Bool;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		left(self) -> float
	**/
	public function left():Float;
	/**
		marginsAdded(self, QMarginsF) -> QRectF
	**/
	public function marginsAdded(QMarginsF:Dynamic):Dynamic;
	/**
		marginsRemoved(self, QMarginsF) -> QRectF
	**/
	public function marginsRemoved(QMarginsF:Dynamic):Dynamic;
	/**
		moveBottom(self, float)
	**/
	public function moveBottom(float:Float):Void;
	/**
		moveBottomLeft(self, Union[QPointF, QPoint])
	**/
	public function moveBottomLeft(Union:Dynamic):Void;
	/**
		moveBottomRight(self, Union[QPointF, QPoint])
	**/
	public function moveBottomRight(Union:Dynamic):Void;
	/**
		moveCenter(self, Union[QPointF, QPoint])
	**/
	public function moveCenter(Union:Dynamic):Void;
	/**
		moveLeft(self, float)
	**/
	public function moveLeft(float:Float):Void;
	/**
		moveRight(self, float)
	**/
	public function moveRight(float:Float):Void;
	/**
		moveTo(self, float, float)
		moveTo(self, Union[QPointF, QPoint])
	**/
	public function moveTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		moveTop(self, float)
	**/
	public function moveTop(float:Float):Void;
	/**
		moveTopLeft(self, Union[QPointF, QPoint])
	**/
	public function moveTopLeft(Union:Dynamic):Void;
	/**
		moveTopRight(self, Union[QPointF, QPoint])
	**/
	public function moveTopRight(Union:Dynamic):Void;
	/**
		normalized(self) -> QRectF
	**/
	public function normalized():Dynamic;
	/**
		right(self) -> float
	**/
	public function right():Float;
	/**
		setBottom(self, float)
	**/
	public function setBottom(float:Float):Void;
	/**
		setBottomLeft(self, Union[QPointF, QPoint])
	**/
	public function setBottomLeft(Union:Dynamic):Void;
	/**
		setBottomRight(self, Union[QPointF, QPoint])
	**/
	public function setBottomRight(Union:Dynamic):Void;
	/**
		setCoords(self, float, float, float, float)
	**/
	public function setCoords(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		setHeight(self, float)
	**/
	public function setHeight(float:Float):Void;
	/**
		setLeft(self, float)
	**/
	public function setLeft(float:Float):Void;
	/**
		setRect(self, float, float, float, float)
	**/
	public function setRect(float:Float, float:Float, float:Float, float:Float):Void;
	/**
		setRight(self, float)
	**/
	public function setRight(float:Float):Void;
	/**
		setSize(self, QSizeF)
	**/
	public function setSize(QSizeF:Dynamic):Void;
	/**
		setTop(self, float)
	**/
	public function setTop(float:Float):Void;
	/**
		setTopLeft(self, Union[QPointF, QPoint])
	**/
	public function setTopLeft(Union:Dynamic):Void;
	/**
		setTopRight(self, Union[QPointF, QPoint])
	**/
	public function setTopRight(Union:Dynamic):Void;
	/**
		setWidth(self, float)
	**/
	public function setWidth(float:Float):Void;
	/**
		setX(self, float)
	**/
	public function setX(float:Float):Void;
	/**
		setY(self, float)
	**/
	public function setY(float:Float):Void;
	/**
		size(self) -> QSizeF
	**/
	public function size():Dynamic;
	/**
		toAlignedRect(self) -> QRect
	**/
	public function toAlignedRect():Dynamic;
	/**
		toRect(self) -> QRect
	**/
	public function toRect():Dynamic;
	/**
		top(self) -> float
	**/
	public function top():Float;
	/**
		topLeft(self) -> QPointF
	**/
	public function topLeft():Dynamic;
	/**
		topRight(self) -> QPointF
	**/
	public function topRight():Dynamic;
	/**
		translate(self, float, float)
		translate(self, Union[QPointF, QPoint])
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		translated(self, float, float) -> QRectF
		translated(self, Union[QPointF, QPoint]) -> QRectF
	**/
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		united(self, QRectF) -> QRectF
	**/
	public function united(QRectF:Dynamic):Dynamic;
	/**
		width(self) -> float
	**/
	public function width():Float;
	/**
		x(self) -> float
	**/
	public function x():Float;
	/**
		y(self) -> float
	**/
	public function y():Float;
}