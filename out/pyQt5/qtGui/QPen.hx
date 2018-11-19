/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPen") extern class QPen {
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
		brush(self) -> QBrush
	**/
	public function brush():Dynamic;
	/**
		capStyle(self) -> Qt.PenCapStyle
	**/
	public function capStyle():Dynamic;
	/**
		color(self) -> QColor
	**/
	public function color():Dynamic;
	/**
		dashOffset(self) -> float
	**/
	public function dashOffset():Float;
	/**
		dashPattern(self) -> List[float]
	**/
	public function dashPattern():Dynamic;
	/**
		isCosmetic(self) -> bool
	**/
	public function isCosmetic():Bool;
	/**
		isSolid(self) -> bool
	**/
	public function isSolid():Bool;
	/**
		joinStyle(self) -> Qt.PenJoinStyle
	**/
	public function joinStyle():Dynamic;
	/**
		miterLimit(self) -> float
	**/
	public function miterLimit():Float;
	/**
		setBrush(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setBrush(Union:Dynamic):Void;
	/**
		setCapStyle(self, Qt.PenCapStyle)
	**/
	public function setCapStyle(Qt:Dynamic):Void;
	/**
		setColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setColor(Union:Dynamic):Void;
	/**
		setCosmetic(self, bool)
	**/
	public function setCosmetic(bool:Bool):Void;
	/**
		setDashOffset(self, float)
	**/
	public function setDashOffset(float:Float):Void;
	/**
		setDashPattern(self, Iterable[float])
	**/
	public function setDashPattern(Iterable:Dynamic):Void;
	/**
		setJoinStyle(self, Qt.PenJoinStyle)
	**/
	public function setJoinStyle(Qt:Dynamic):Void;
	/**
		setMiterLimit(self, float)
	**/
	public function setMiterLimit(float:Float):Void;
	/**
		setStyle(self, Qt.PenStyle)
	**/
	public function setStyle(Qt:Dynamic):Void;
	/**
		setWidth(self, int)
	**/
	public function setWidth(int:Int):Void;
	/**
		setWidthF(self, float)
	**/
	public function setWidthF(float:Float):Void;
	/**
		style(self) -> Qt.PenStyle
	**/
	public function style():Dynamic;
	/**
		swap(self, QPen)
	**/
	public function swap(QPen:Dynamic):Void;
	/**
		width(self) -> int
	**/
	public function width():Int;
	/**
		widthF(self) -> float
	**/
	public function widthF():Float;
}