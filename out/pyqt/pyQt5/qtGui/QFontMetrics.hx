/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QFontMetrics") extern class QFontMetrics {
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
		ascent(self) -> int
	**/
	public function ascent():Int;
	/**
		averageCharWidth(self) -> int
	**/
	public function averageCharWidth():Int;
	/**
		boundingRect(self, str) -> QRect
		boundingRect(self, QRect, int, str, tabStops: int = 0, tabArray: Optional[List[int]] = 0) -> QRect
		boundingRect(self, int, int, int, int, int, str, tabStops: int = 0, tabArray: Optional[List[int]] = 0) -> QRect
	**/
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		boundingRectChar(self, str) -> QRect
	**/
	public function boundingRectChar(str:String):Dynamic;
	/**
		capHeight(self) -> int
	**/
	public function capHeight():Int;
	/**
		descent(self) -> int
	**/
	public function descent():Int;
	/**
		elidedText(self, str, Qt.TextElideMode, int, flags: int = 0) -> str
	**/
	public function elidedText(str:String, Qt:Dynamic, int:Int, ?flags:Dynamic):String;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		horizontalAdvance(self, str, length: int = -1) -> int
	**/
	public function horizontalAdvance(str:String, ?length:Dynamic):Int;
	/**
		inFont(self, str) -> bool
	**/
	public function inFont(str:String):Bool;
	/**
		inFontUcs4(self, int) -> bool
	**/
	public function inFontUcs4(int:Int):Bool;
	/**
		leading(self) -> int
	**/
	public function leading():Int;
	/**
		leftBearing(self, str) -> int
	**/
	public function leftBearing(str:String):Int;
	/**
		lineSpacing(self) -> int
	**/
	public function lineSpacing():Int;
	/**
		lineWidth(self) -> int
	**/
	public function lineWidth():Int;
	/**
		maxWidth(self) -> int
	**/
	public function maxWidth():Int;
	/**
		minLeftBearing(self) -> int
	**/
	public function minLeftBearing():Int;
	/**
		minRightBearing(self) -> int
	**/
	public function minRightBearing():Int;
	/**
		overlinePos(self) -> int
	**/
	public function overlinePos():Int;
	/**
		rightBearing(self, str) -> int
	**/
	public function rightBearing(str:String):Int;
	/**
		size(self, int, str, tabStops: int = 0, tabArray: Optional[List[int]] = 0) -> QSize
	**/
	public function size(int:Int, str:String, ?tabStops:Dynamic, ?tabArray:Dynamic):Dynamic;
	/**
		strikeOutPos(self) -> int
	**/
	public function strikeOutPos():Int;
	/**
		swap(self, QFontMetrics)
	**/
	public function swap(QFontMetrics:Dynamic):Void;
	/**
		tightBoundingRect(self, str) -> QRect
	**/
	public function tightBoundingRect(str:String):Dynamic;
	/**
		underlinePos(self) -> int
	**/
	public function underlinePos():Int;
	/**
		width(self, str, length: int = -1) -> int
	**/
	public function width(str:String, ?length:Dynamic):Int;
	/**
		widthChar(self, str) -> int
	**/
	public function widthChar(str:String):Int;
	/**
		xHeight(self) -> int
	**/
	public function xHeight():Int;
}