/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QFontMetricsF") extern class QFontMetricsF {
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
		ascent(self) -> float
	**/
	public function ascent():Float;
	/**
		averageCharWidth(self) -> float
	**/
	public function averageCharWidth():Float;
	/**
		boundingRect(self, str) -> QRectF
		boundingRect(self, QRectF, int, str, tabStops: int = 0, tabArray: Optional[List[int]] = 0) -> QRectF
	**/
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		boundingRectChar(self, str) -> QRectF
	**/
	public function boundingRectChar(str:String):Dynamic;
	/**
		descent(self) -> float
	**/
	public function descent():Float;
	/**
		elidedText(self, str, Qt.TextElideMode, float, flags: int = 0) -> str
	**/
	public function elidedText(str:String, Qt:Dynamic, float:Float, ?flags:Dynamic):String;
	/**
		height(self) -> float
	**/
	public function height():Float;
	/**
		inFont(self, str) -> bool
	**/
	public function inFont(str:String):Bool;
	/**
		inFontUcs4(self, int) -> bool
	**/
	public function inFontUcs4(int:Int):Bool;
	/**
		leading(self) -> float
	**/
	public function leading():Float;
	/**
		leftBearing(self, str) -> float
	**/
	public function leftBearing(str:String):Float;
	/**
		lineSpacing(self) -> float
	**/
	public function lineSpacing():Float;
	/**
		lineWidth(self) -> float
	**/
	public function lineWidth():Float;
	/**
		maxWidth(self) -> float
	**/
	public function maxWidth():Float;
	/**
		minLeftBearing(self) -> float
	**/
	public function minLeftBearing():Float;
	/**
		minRightBearing(self) -> float
	**/
	public function minRightBearing():Float;
	/**
		overlinePos(self) -> float
	**/
	public function overlinePos():Float;
	/**
		rightBearing(self, str) -> float
	**/
	public function rightBearing(str:String):Float;
	/**
		size(self, int, str, tabStops: int = 0, tabArray: Optional[List[int]] = 0) -> QSizeF
	**/
	public function size(int:Int, str:String, ?tabStops:Dynamic, ?tabArray:Dynamic):Dynamic;
	/**
		strikeOutPos(self) -> float
	**/
	public function strikeOutPos():Float;
	/**
		swap(self, QFontMetricsF)
	**/
	public function swap(QFontMetricsF:Dynamic):Void;
	/**
		tightBoundingRect(self, str) -> QRectF
	**/
	public function tightBoundingRect(str:String):Dynamic;
	/**
		underlinePos(self) -> float
	**/
	public function underlinePos():Float;
	/**
		width(self, str) -> float
	**/
	public function width(str:String):Float;
	/**
		widthChar(self, str) -> float
	**/
	public function widthChar(str:String):Float;
	/**
		xHeight(self) -> float
	**/
	public function xHeight():Float;
}