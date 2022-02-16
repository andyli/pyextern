/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QRect") extern class QRect {
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
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		adjust(self, int, int, int, int)
	**/
	public function adjust(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		adjusted(self, int, int, int, int) -> QRect
	**/
	public function adjusted(int:Int, int:Int, int:Int, int:Int):Dynamic;
	/**
		bottom(self) -> int
	**/
	public function bottom():Int;
	/**
		bottomLeft(self) -> QPoint
	**/
	public function bottomLeft():Dynamic;
	/**
		bottomRight(self) -> QPoint
	**/
	public function bottomRight():Dynamic;
	/**
		center(self) -> QPoint
	**/
	public function center():Dynamic;
	/**
		contains(self, QPoint, proper: bool = False) -> bool
		contains(self, QRect, proper: bool = False) -> bool
		contains(self, int, int, bool) -> bool
		contains(self, int, int) -> bool
	**/
	public function contains(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		getCoords(self) -> Tuple[int, int, int, int]
	**/
	public function getCoords():Dynamic;
	/**
		getRect(self) -> Tuple[int, int, int, int]
	**/
	public function getRect():Dynamic;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		intersected(self, QRect) -> QRect
	**/
	public function intersected(QRect:Dynamic):Dynamic;
	/**
		intersects(self, QRect) -> bool
	**/
	public function intersects(QRect:Dynamic):Bool;
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
		left(self) -> int
	**/
	public function left():Int;
	/**
		marginsAdded(self, QMargins) -> QRect
	**/
	public function marginsAdded(QMargins:Dynamic):Dynamic;
	/**
		marginsRemoved(self, QMargins) -> QRect
	**/
	public function marginsRemoved(QMargins:Dynamic):Dynamic;
	/**
		moveBottom(self, int)
	**/
	public function moveBottom(int:Int):Void;
	/**
		moveBottomLeft(self, QPoint)
	**/
	public function moveBottomLeft(QPoint:Dynamic):Void;
	/**
		moveBottomRight(self, QPoint)
	**/
	public function moveBottomRight(QPoint:Dynamic):Void;
	/**
		moveCenter(self, QPoint)
	**/
	public function moveCenter(QPoint:Dynamic):Void;
	/**
		moveLeft(self, int)
	**/
	public function moveLeft(int:Int):Void;
	/**
		moveRight(self, int)
	**/
	public function moveRight(int:Int):Void;
	/**
		moveTo(self, int, int)
		moveTo(self, QPoint)
	**/
	public function moveTo(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		moveTop(self, int)
	**/
	public function moveTop(int:Int):Void;
	/**
		moveTopLeft(self, QPoint)
	**/
	public function moveTopLeft(QPoint:Dynamic):Void;
	/**
		moveTopRight(self, QPoint)
	**/
	public function moveTopRight(QPoint:Dynamic):Void;
	/**
		normalized(self) -> QRect
	**/
	public function normalized():Dynamic;
	/**
		right(self) -> int
	**/
	public function right():Int;
	/**
		setBottom(self, int)
	**/
	public function setBottom(int:Int):Void;
	/**
		setBottomLeft(self, QPoint)
	**/
	public function setBottomLeft(QPoint:Dynamic):Void;
	/**
		setBottomRight(self, QPoint)
	**/
	public function setBottomRight(QPoint:Dynamic):Void;
	/**
		setCoords(self, int, int, int, int)
	**/
	public function setCoords(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		setHeight(self, int)
	**/
	public function setHeight(int:Int):Void;
	/**
		setLeft(self, int)
	**/
	public function setLeft(int:Int):Void;
	/**
		setRect(self, int, int, int, int)
	**/
	public function setRect(int:Int, int:Int, int:Int, int:Int):Void;
	/**
		setRight(self, int)
	**/
	public function setRight(int:Int):Void;
	/**
		setSize(self, QSize)
	**/
	public function setSize(QSize:Dynamic):Void;
	/**
		setTop(self, int)
	**/
	public function setTop(int:Int):Void;
	/**
		setTopLeft(self, QPoint)
	**/
	public function setTopLeft(QPoint:Dynamic):Void;
	/**
		setTopRight(self, QPoint)
	**/
	public function setTopRight(QPoint:Dynamic):Void;
	/**
		setWidth(self, int)
	**/
	public function setWidth(int:Int):Void;
	/**
		setX(self, int)
	**/
	public function setX(int:Int):Void;
	/**
		setY(self, int)
	**/
	public function setY(int:Int):Void;
	/**
		size(self) -> QSize
	**/
	public function size():Dynamic;
	/**
		top(self) -> int
	**/
	public function top():Int;
	/**
		topLeft(self) -> QPoint
	**/
	public function topLeft():Dynamic;
	/**
		topRight(self) -> QPoint
	**/
	public function topRight():Dynamic;
	/**
		translate(self, int, int)
		translate(self, QPoint)
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		translated(self, int, int) -> QRect
		translated(self, QPoint) -> QRect
	**/
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		transposed(self) -> QRect
	**/
	public function transposed():Dynamic;
	/**
		united(self, QRect) -> QRect
	**/
	public function united(QRect:Dynamic):Dynamic;
	/**
		width(self) -> int
	**/
	public function width():Int;
	/**
		x(self) -> int
	**/
	public function x():Int;
	/**
		y(self) -> int
	**/
	public function y():Int;
}