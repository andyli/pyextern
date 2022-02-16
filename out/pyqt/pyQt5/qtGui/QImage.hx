/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QImage") extern class QImage {
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
	public function Format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Format_A2BGR30_Premultiplied : Dynamic;
	static public var Format_A2RGB30_Premultiplied : Dynamic;
	static public var Format_ARGB32 : Dynamic;
	static public var Format_ARGB32_Premultiplied : Dynamic;
	static public var Format_ARGB4444_Premultiplied : Dynamic;
	static public var Format_ARGB6666_Premultiplied : Dynamic;
	static public var Format_ARGB8555_Premultiplied : Dynamic;
	static public var Format_ARGB8565_Premultiplied : Dynamic;
	static public var Format_Alpha8 : Dynamic;
	static public var Format_BGR30 : Dynamic;
	static public var Format_Grayscale8 : Dynamic;
	static public var Format_Indexed8 : Dynamic;
	static public var Format_Invalid : Dynamic;
	static public var Format_Mono : Dynamic;
	static public var Format_MonoLSB : Dynamic;
	static public var Format_RGB16 : Dynamic;
	static public var Format_RGB30 : Dynamic;
	static public var Format_RGB32 : Dynamic;
	static public var Format_RGB444 : Dynamic;
	static public var Format_RGB555 : Dynamic;
	static public var Format_RGB666 : Dynamic;
	static public var Format_RGB888 : Dynamic;
	static public var Format_RGBA64 : Dynamic;
	static public var Format_RGBA64_Premultiplied : Dynamic;
	static public var Format_RGBA8888 : Dynamic;
	static public var Format_RGBA8888_Premultiplied : Dynamic;
	static public var Format_RGBX64 : Dynamic;
	static public var Format_RGBX8888 : Dynamic;
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
	public function InvertMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var InvertRgb : Dynamic;
	static public var InvertRgba : Dynamic;
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
	public function PaintDeviceMetric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PdmDepth : Dynamic;
	static public var PdmDevicePixelRatio : Dynamic;
	static public var PdmDevicePixelRatioScaled : Dynamic;
	static public var PdmDpiX : Dynamic;
	static public var PdmDpiY : Dynamic;
	static public var PdmHeight : Dynamic;
	static public var PdmHeightMM : Dynamic;
	static public var PdmNumColors : Dynamic;
	static public var PdmPhysicalDpiX : Dynamic;
	static public var PdmPhysicalDpiY : Dynamic;
	static public var PdmWidth : Dynamic;
	static public var PdmWidthMM : Dynamic;
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
		allGray(self) -> bool
	**/
	public function allGray():Bool;
	/**
		bitPlaneCount(self) -> int
	**/
	public function bitPlaneCount():Int;
	/**
		bits(self) -> sip.voidptr
	**/
	public function bits():Dynamic;
	/**
		byteCount(self) -> int
	**/
	public function byteCount():Int;
	/**
		bytesPerLine(self) -> int
	**/
	public function bytesPerLine():Int;
	/**
		cacheKey(self) -> int
	**/
	public function cacheKey():Int;
	/**
		color(self, int) -> int
	**/
	public function color(int:Int):Int;
	/**
		colorCount(self) -> int
	**/
	public function colorCount():Int;
	/**
		colorTable(self) -> List[int]
	**/
	public function colorTable():Dynamic;
	/**
		constBits(self) -> sip.voidptr
	**/
	public function constBits():Dynamic;
	/**
		constScanLine(self, int) -> sip.voidptr
	**/
	public function constScanLine(int:Int):Dynamic;
	/**
		convertToFormat(self, QImage.Format, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor) -> QImage
		convertToFormat(self, QImage.Format, Iterable[int], flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor) -> QImage
	**/
	public function convertToFormat(QImage:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copy(self, rect: QRect = QRect()) -> QImage
		copy(self, int, int, int, int) -> QImage
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createAlphaMask(self, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor) -> QImage
	**/
	public function createAlphaMask(?flags:Dynamic):Dynamic;
	/**
		createHeuristicMask(self, clipTight: bool = True) -> QImage
	**/
	public function createHeuristicMask(?clipTight:Dynamic):Dynamic;
	/**
		createMaskFromColor(self, int, mode: Qt.MaskMode = Qt.MaskInColor) -> QImage
	**/
	public function createMaskFromColor(int:Int, ?mode:Dynamic):Dynamic;
	/**
		depth(self) -> int
	**/
	public function depth():Int;
	/**
		detach(self)
	**/
	public function detach():Void;
	/**
		devType(self) -> int
	**/
	public function devType():Int;
	/**
		devicePixelRatio(self) -> float
	**/
	public function devicePixelRatio():Float;
	/**
		devicePixelRatioF(self) -> float
	**/
	public function devicePixelRatioF():Float;
	/**
		devicePixelRatioFScale() -> float
	**/
	static public function devicePixelRatioFScale():Float;
	/**
		dotsPerMeterX(self) -> int
	**/
	public function dotsPerMeterX():Int;
	/**
		dotsPerMeterY(self) -> int
	**/
	public function dotsPerMeterY():Int;
	/**
		fill(self, Qt.GlobalColor)
		fill(self, Union[QColor, Qt.GlobalColor, QGradient])
		fill(self, int)
	**/
	public function fill(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		format(self) -> QImage.Format
	**/
	public function format():Dynamic;
	/**
		fromData(bytes, format: str = None) -> QImage
		fromData(Union[QByteArray, bytes, bytearray], format: str = None) -> QImage
	**/
	static public function fromData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasAlphaChannel(self) -> bool
	**/
	public function hasAlphaChannel():Bool;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		heightMM(self) -> int
	**/
	public function heightMM():Int;
	/**
		invertPixels(self, mode: QImage.InvertMode = QImage.InvertRgb)
	**/
	public function invertPixels(?mode:Dynamic):Void;
	/**
		isDetached(self) -> bool
	**/
	public function isDetached():Bool;
	/**
		isGrayscale(self) -> bool
	**/
	public function isGrayscale():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		load(self, QIODevice, str) -> bool
		load(self, str, format: str = None) -> bool
	**/
	public function load(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		loadFromData(self, bytes, format: str = None) -> bool
		loadFromData(self, Union[QByteArray, bytes, bytearray], format: str = None) -> bool
	**/
	public function loadFromData(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		logicalDpiX(self) -> int
	**/
	public function logicalDpiX():Int;
	/**
		logicalDpiY(self) -> int
	**/
	public function logicalDpiY():Int;
	/**
		metric(self, QPaintDevice.PaintDeviceMetric) -> int
	**/
	public function metric(QPaintDevice:Dynamic):Int;
	/**
		mirrored(self, horizontal: bool = False, vertical: bool = True) -> QImage
	**/
	public function mirrored(?horizontal:Dynamic, ?vertical:Dynamic):Dynamic;
	/**
		offset(self) -> QPoint
	**/
	public function offset():Dynamic;
	/**
		paintEngine(self) -> QPaintEngine
	**/
	public function paintEngine():Dynamic;
	/**
		paintingActive(self) -> bool
	**/
	public function paintingActive():Bool;
	/**
		physicalDpiX(self) -> int
	**/
	public function physicalDpiX():Int;
	/**
		physicalDpiY(self) -> int
	**/
	public function physicalDpiY():Int;
	/**
		pixel(self, QPoint) -> int
		pixel(self, int, int) -> int
	**/
	public function pixel(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		pixelColor(self, int, int) -> QColor
		pixelColor(self, QPoint) -> QColor
	**/
	public function pixelColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pixelFormat(self) -> QPixelFormat
	**/
	public function pixelFormat():Dynamic;
	/**
		pixelIndex(self, QPoint) -> int
		pixelIndex(self, int, int) -> int
	**/
	public function pixelIndex(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		rect(self) -> QRect
	**/
	public function rect():Dynamic;
	/**
		reinterpretAsFormat(self, QImage.Format) -> bool
	**/
	public function reinterpretAsFormat(QImage:Dynamic):Bool;
	/**
		rgbSwapped(self) -> QImage
	**/
	public function rgbSwapped():Dynamic;
	/**
		save(self, str, format: str = None, quality: int = -1) -> bool
		save(self, QIODevice, format: str = None, quality: int = -1) -> bool
	**/
	public function save(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		scaled(self, int, int, aspectRatioMode: Qt.AspectRatioMode = Qt.IgnoreAspectRatio, transformMode: Qt.TransformationMode = Qt.FastTransformation) -> QImage
		scaled(self, QSize, aspectRatioMode: Qt.AspectRatioMode = Qt.IgnoreAspectRatio, transformMode: Qt.TransformationMode = Qt.FastTransformation) -> QImage
	**/
	public function scaled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scaledToHeight(self, int, mode: Qt.TransformationMode = Qt.FastTransformation) -> QImage
	**/
	public function scaledToHeight(int:Int, ?mode:Dynamic):Dynamic;
	/**
		scaledToWidth(self, int, mode: Qt.TransformationMode = Qt.FastTransformation) -> QImage
	**/
	public function scaledToWidth(int:Int, ?mode:Dynamic):Dynamic;
	/**
		scanLine(self, int) -> sip.voidptr
	**/
	public function scanLine(int:Int):Dynamic;
	/**
		setColor(self, int, int)
	**/
	public function setColor(int:Int, int:Int):Void;
	/**
		setColorCount(self, int)
	**/
	public function setColorCount(int:Int):Void;
	/**
		setColorTable(self, Iterable[int])
	**/
	public function setColorTable(Iterable:Dynamic):Void;
	/**
		setDevicePixelRatio(self, float)
	**/
	public function setDevicePixelRatio(float:Float):Void;
	/**
		setDotsPerMeterX(self, int)
	**/
	public function setDotsPerMeterX(int:Int):Void;
	/**
		setDotsPerMeterY(self, int)
	**/
	public function setDotsPerMeterY(int:Int):Void;
	/**
		setOffset(self, QPoint)
	**/
	public function setOffset(QPoint:Dynamic):Void;
	/**
		setPixel(self, QPoint, int)
		setPixel(self, int, int, int)
	**/
	public function setPixel(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setPixelColor(self, int, int, Union[QColor, Qt.GlobalColor, QGradient])
		setPixelColor(self, QPoint, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setPixelColor(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setText(self, str, str)
	**/
	public function setText(str:String, str:String):Void;
	/**
		size(self) -> QSize
	**/
	public function size():Dynamic;
	/**
		sizeInBytes(self) -> int
	**/
	public function sizeInBytes():Int;
	/**
		smoothScaled(self, int, int) -> QImage
	**/
	public function smoothScaled(int:Int, int:Int):Dynamic;
	/**
		swap(self, QImage)
	**/
	public function swap(QImage:Dynamic):Void;
	/**
		text(self, key: str = '') -> str
	**/
	public function text(?key:Dynamic):String;
	/**
		textKeys(self) -> List[str]
	**/
	public function textKeys():Dynamic;
	/**
		toImageFormat(QPixelFormat) -> QImage.Format
	**/
	static public function toImageFormat(QPixelFormat:Dynamic):Dynamic;
	/**
		toPixelFormat(QImage.Format) -> QPixelFormat
	**/
	static public function toPixelFormat(QImage:Dynamic):Dynamic;
	/**
		transformed(self, QTransform, mode: Qt.TransformationMode = Qt.FastTransformation) -> QImage
	**/
	public function transformed(QTransform:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		trueMatrix(QTransform, int, int) -> QTransform
	**/
	static public function trueMatrix(QTransform:Dynamic, int:Int, int:Int):Dynamic;
	/**
		valid(self, QPoint) -> bool
		valid(self, int, int) -> bool
	**/
	public function valid(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		width(self) -> int
	**/
	public function width():Int;
	/**
		widthMM(self) -> int
	**/
	public function widthMM():Int;
}