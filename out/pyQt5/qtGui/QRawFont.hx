/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QRawFont") extern class QRawFont {
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
	public function AntialiasingType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var KernedAdvances : Dynamic;
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
	public function LayoutFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QRawFont.LayoutFlags()
		QRawFont.LayoutFlags(Union[QRawFont.LayoutFlags, QRawFont.LayoutFlag])
		QRawFont.LayoutFlags(QRawFont.LayoutFlags)
	**/
	static public function LayoutFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var PixelAntialiasing : Dynamic;
	static public var SeparateAdvances : Dynamic;
	static public var SubPixelAntialiasing : Dynamic;
	static public var UseDesignMetrics : Dynamic;
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
		advancesForGlyphIndexes(self, Iterable[int]) -> List[QPointF]
		advancesForGlyphIndexes(self, Iterable[int], Union[QRawFont.LayoutFlags, QRawFont.LayoutFlag]) -> List[QPointF]
	**/
	public function advancesForGlyphIndexes(Iterable:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alphaMapForGlyph(self, int, antialiasingType: QRawFont.AntialiasingType = QRawFont.SubPixelAntialiasing, transform: QTransform = QTransform()) -> QImage
	**/
	public function alphaMapForGlyph(int:Int, ?antialiasingType:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		ascent(self) -> float
	**/
	public function ascent():Float;
	/**
		averageCharWidth(self) -> float
	**/
	public function averageCharWidth():Float;
	/**
		boundingRect(self, int) -> QRectF
	**/
	public function boundingRect(int:Int):Dynamic;
	/**
		descent(self) -> float
	**/
	public function descent():Float;
	/**
		familyName(self) -> str
	**/
	public function familyName():String;
	/**
		fontTable(self, str) -> QByteArray
	**/
	public function fontTable(str:String):Dynamic;
	/**
		fromFont(QFont, writingSystem: QFontDatabase.WritingSystem = QFontDatabase.Any) -> QRawFont
	**/
	static public function fromFont(QFont:Dynamic, ?writingSystem:Dynamic):Dynamic;
	/**
		glyphIndexesForString(self, str) -> List[int]
	**/
	public function glyphIndexesForString(str:String):Dynamic;
	/**
		hintingPreference(self) -> QFont.HintingPreference
	**/
	public function hintingPreference():Dynamic;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		leading(self) -> float
	**/
	public function leading():Float;
	/**
		lineThickness(self) -> float
	**/
	public function lineThickness():Float;
	/**
		loadFromData(self, Union[QByteArray, bytes, bytearray], float, QFont.HintingPreference)
	**/
	public function loadFromData(Union:Dynamic, float:Float, QFont:Dynamic):Void;
	/**
		loadFromFile(self, str, float, QFont.HintingPreference)
	**/
	public function loadFromFile(str:String, float:Float, QFont:Dynamic):Void;
	/**
		maxCharWidth(self) -> float
	**/
	public function maxCharWidth():Float;
	/**
		pathForGlyph(self, int) -> QPainterPath
	**/
	public function pathForGlyph(int:Int):Dynamic;
	/**
		pixelSize(self) -> float
	**/
	public function pixelSize():Float;
	/**
		setPixelSize(self, float)
	**/
	public function setPixelSize(float:Float):Void;
	/**
		style(self) -> QFont.Style
	**/
	public function style():Dynamic;
	/**
		styleName(self) -> str
	**/
	public function styleName():String;
	/**
		supportedWritingSystems(self) -> List[QFontDatabase.WritingSystem]
	**/
	public function supportedWritingSystems():Dynamic;
	/**
		supportsCharacter(self, int) -> bool
		supportsCharacter(self, str) -> bool
	**/
	public function supportsCharacter(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		swap(self, QRawFont)
	**/
	public function swap(QRawFont:Dynamic):Void;
	/**
		underlinePosition(self) -> float
	**/
	public function underlinePosition():Float;
	/**
		unitsPerEm(self) -> float
	**/
	public function unitsPerEm():Float;
	/**
		weight(self) -> int
	**/
	public function weight():Int;
	/**
		xHeight(self) -> float
	**/
	public function xHeight():Float;
}