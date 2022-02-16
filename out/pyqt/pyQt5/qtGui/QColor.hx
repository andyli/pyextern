/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QColor") extern class QColor {
	static public var Cmyk : Dynamic;
	static public var HexArgb : Dynamic;
	static public var HexRgb : Dynamic;
	static public var Hsl : Dynamic;
	static public var Hsv : Dynamic;
	static public var Invalid : Dynamic;
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
	public function NameFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Rgb : Dynamic;
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
	public function Spec(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		alpha(self) -> int
	**/
	public function alpha():Int;
	/**
		alphaF(self) -> float
	**/
	public function alphaF():Float;
	/**
		black(self) -> int
	**/
	public function black():Int;
	/**
		blackF(self) -> float
	**/
	public function blackF():Float;
	/**
		blue(self) -> int
	**/
	public function blue():Int;
	/**
		blueF(self) -> float
	**/
	public function blueF():Float;
	/**
		colorNames() -> List[str]
	**/
	static public function colorNames():Dynamic;
	/**
		convertTo(self, QColor.Spec) -> QColor
	**/
	public function convertTo(QColor:Dynamic):Dynamic;
	/**
		cyan(self) -> int
	**/
	public function cyan():Int;
	/**
		cyanF(self) -> float
	**/
	public function cyanF():Float;
	/**
		darker(self, factor: int = 200) -> QColor
	**/
	public function darker(?factor:Dynamic):Dynamic;
	/**
		fromCmyk(int, int, int, int, alpha: int = 255) -> QColor
	**/
	static public function fromCmyk(int:Int, int:Int, int:Int, int:Int, ?alpha:Dynamic):Dynamic;
	/**
		fromCmykF(float, float, float, float, alpha: float = 1) -> QColor
	**/
	static public function fromCmykF(float:Float, float:Float, float:Float, float:Float, ?alpha:Dynamic):Dynamic;
	/**
		fromHsl(int, int, int, alpha: int = 255) -> QColor
	**/
	static public function fromHsl(int:Int, int:Int, int:Int, ?alpha:Dynamic):Dynamic;
	/**
		fromHslF(float, float, float, alpha: float = 1) -> QColor
	**/
	static public function fromHslF(float:Float, float:Float, float:Float, ?alpha:Dynamic):Dynamic;
	/**
		fromHsv(int, int, int, alpha: int = 255) -> QColor
	**/
	static public function fromHsv(int:Int, int:Int, int:Int, ?alpha:Dynamic):Dynamic;
	/**
		fromHsvF(float, float, float, alpha: float = 1) -> QColor
	**/
	static public function fromHsvF(float:Float, float:Float, float:Float, ?alpha:Dynamic):Dynamic;
	/**
		fromRgb(int) -> QColor
		fromRgb(int, int, int, alpha: int = 255) -> QColor
	**/
	static public function fromRgb(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromRgbF(float, float, float, alpha: float = 1) -> QColor
	**/
	static public function fromRgbF(float:Float, float:Float, float:Float, ?alpha:Dynamic):Dynamic;
	/**
		fromRgba(int) -> QColor
	**/
	static public function fromRgba(int:Int):Dynamic;
	/**
		fromRgba64(int, int, int, alpha: int = 65535) -> QColor
		fromRgba64(QRgba64) -> QColor
	**/
	static public function fromRgba64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getCmyk(self) -> Tuple[int, int, int, int, int]
	**/
	public function getCmyk():Dynamic;
	/**
		getCmykF(self) -> Tuple[float, float, float, float, float]
	**/
	public function getCmykF():Dynamic;
	/**
		getHsl(self) -> Tuple[int, int, int, int]
	**/
	public function getHsl():Dynamic;
	/**
		getHslF(self) -> Tuple[float, float, float, float]
	**/
	public function getHslF():Dynamic;
	/**
		getHsv(self) -> Tuple[int, int, int, int]
	**/
	public function getHsv():Dynamic;
	/**
		getHsvF(self) -> Tuple[float, float, float, float]
	**/
	public function getHsvF():Dynamic;
	/**
		getRgb(self) -> Tuple[int, int, int, int]
	**/
	public function getRgb():Dynamic;
	/**
		getRgbF(self) -> Tuple[float, float, float, float]
	**/
	public function getRgbF():Dynamic;
	/**
		green(self) -> int
	**/
	public function green():Int;
	/**
		greenF(self) -> float
	**/
	public function greenF():Float;
	/**
		hslHue(self) -> int
	**/
	public function hslHue():Int;
	/**
		hslHueF(self) -> float
	**/
	public function hslHueF():Float;
	/**
		hslSaturation(self) -> int
	**/
	public function hslSaturation():Int;
	/**
		hslSaturationF(self) -> float
	**/
	public function hslSaturationF():Float;
	/**
		hsvHue(self) -> int
	**/
	public function hsvHue():Int;
	/**
		hsvHueF(self) -> float
	**/
	public function hsvHueF():Float;
	/**
		hsvSaturation(self) -> int
	**/
	public function hsvSaturation():Int;
	/**
		hsvSaturationF(self) -> float
	**/
	public function hsvSaturationF():Float;
	/**
		hue(self) -> int
	**/
	public function hue():Int;
	/**
		hueF(self) -> float
	**/
	public function hueF():Float;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		isValidColor(str) -> bool
	**/
	static public function isValidColor(str:String):Bool;
	/**
		lighter(self, factor: int = 150) -> QColor
	**/
	public function lighter(?factor:Dynamic):Dynamic;
	/**
		lightness(self) -> int
	**/
	public function lightness():Int;
	/**
		lightnessF(self) -> float
	**/
	public function lightnessF():Float;
	/**
		magenta(self) -> int
	**/
	public function magenta():Int;
	/**
		magentaF(self) -> float
	**/
	public function magentaF():Float;
	/**
		name(self) -> str
		name(self, QColor.NameFormat) -> str
	**/
	public function name(args:haxe.extern.Rest<Dynamic>):String;
	/**
		red(self) -> int
	**/
	public function red():Int;
	/**
		redF(self) -> float
	**/
	public function redF():Float;
	/**
		rgb(self) -> int
	**/
	public function rgb():Int;
	/**
		rgba(self) -> int
	**/
	public function rgba():Int;
	/**
		rgba64(self) -> QRgba64
	**/
	public function rgba64():Dynamic;
	/**
		saturation(self) -> int
	**/
	public function saturation():Int;
	/**
		saturationF(self) -> float
	**/
	public function saturationF():Float;
	/**
		setAlpha(self, int)
	**/
	public function setAlpha(int:Int):Void;
	/**
		setAlphaF(self, float)
	**/
	public function setAlphaF(float:Float):Void;
	/**
		setBlue(self, int)
	**/
	public function setBlue(int:Int):Void;
	/**
		setBlueF(self, float)
	**/
	public function setBlueF(float:Float):Void;
	/**
		setCmyk(self, int, int, int, int, alpha: int = 255)
	**/
	public function setCmyk(int:Int, int:Int, int:Int, int:Int, ?alpha:Dynamic):Void;
	/**
		setCmykF(self, float, float, float, float, alpha: float = 1)
	**/
	public function setCmykF(float:Float, float:Float, float:Float, float:Float, ?alpha:Dynamic):Void;
	/**
		setGreen(self, int)
	**/
	public function setGreen(int:Int):Void;
	/**
		setGreenF(self, float)
	**/
	public function setGreenF(float:Float):Void;
	/**
		setHsl(self, int, int, int, alpha: int = 255)
	**/
	public function setHsl(int:Int, int:Int, int:Int, ?alpha:Dynamic):Void;
	/**
		setHslF(self, float, float, float, alpha: float = 1)
	**/
	public function setHslF(float:Float, float:Float, float:Float, ?alpha:Dynamic):Void;
	/**
		setHsv(self, int, int, int, alpha: int = 255)
	**/
	public function setHsv(int:Int, int:Int, int:Int, ?alpha:Dynamic):Void;
	/**
		setHsvF(self, float, float, float, alpha: float = 1)
	**/
	public function setHsvF(float:Float, float:Float, float:Float, ?alpha:Dynamic):Void;
	/**
		setNamedColor(self, str)
	**/
	public function setNamedColor(str:String):Void;
	/**
		setRed(self, int)
	**/
	public function setRed(int:Int):Void;
	/**
		setRedF(self, float)
	**/
	public function setRedF(float:Float):Void;
	/**
		setRgb(self, int, int, int, alpha: int = 255)
		setRgb(self, int)
	**/
	public function setRgb(int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setRgbF(self, float, float, float, alpha: float = 1)
	**/
	public function setRgbF(float:Float, float:Float, float:Float, ?alpha:Dynamic):Void;
	/**
		setRgba(self, int)
	**/
	public function setRgba(int:Int):Void;
	/**
		setRgba64(self, QRgba64)
	**/
	public function setRgba64(QRgba64:Dynamic):Void;
	/**
		spec(self) -> QColor.Spec
	**/
	public function spec():Dynamic;
	/**
		toCmyk(self) -> QColor
	**/
	public function toCmyk():Dynamic;
	/**
		toHsl(self) -> QColor
	**/
	public function toHsl():Dynamic;
	/**
		toHsv(self) -> QColor
	**/
	public function toHsv():Dynamic;
	/**
		toRgb(self) -> QColor
	**/
	public function toRgb():Dynamic;
	/**
		value(self) -> int
	**/
	public function value():Int;
	/**
		valueF(self) -> float
	**/
	public function valueF():Float;
	/**
		yellow(self) -> int
	**/
	public function yellow():Int;
	/**
		yellowF(self) -> float
	**/
	public function yellowF():Float;
}