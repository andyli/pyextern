/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QImage") extern class QImage {
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
	static public var Format_RGBA8888 : Dynamic;
	static public var Format_RGBA8888_Premultiplied : Dynamic;
	static public var Format_RGBX8888 : Dynamic;
	public function InvertMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var InvertRgb : Dynamic;
	static public var InvertRgba : Dynamic;
	static public var NImageFormats : Dynamic;
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
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
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
	public function allGray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alphaChannel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bitPlaneCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function byteCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesPerLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cacheKey(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function color(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorTable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function constBits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function constScanLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function convertToFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function convertToFormat_helper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function convertToFormat_inplace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createAlphaMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createHeuristicMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createMaskFromColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatioF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function devicePixelRatioFScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dotsPerMeterX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dotsPerMeterY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasAlphaChannel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function invertPixels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isGrayscale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function load(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loadFromData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mirrored(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mirrored_helper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mirrored_inplace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var painters : Dynamic;
	public function paintingActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixelColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixelFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixelIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redirected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rgbSwapped(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rgbSwapped_helper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rgbSwapped_inplace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function save(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scaled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scaledToHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scaledToWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scanLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAlphaChannel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColorTable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDotsPerMeterX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDotsPerMeterY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPixel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPixelColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sharedPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function smoothScaled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function text(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function textKeys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function toImageFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function toPixelFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function trueMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function valid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
}