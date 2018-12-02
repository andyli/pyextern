/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QColor") extern class QColor {
	static public var Cmyk : Dynamic;
	static public var HexArgb : Dynamic;
	static public var HexRgb : Dynamic;
	static public var Hsl : Dynamic;
	static public var Hsv : Dynamic;
	static public var Invalid : Dynamic;
	public function NameFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Rgb : Dynamic;
	public function Spec(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function alpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alphaF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function black(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blackF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blueF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function colorNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function convertTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cyan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cyanF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dark(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function darker(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromCmyk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromCmykF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromHsl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromHslF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromHsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromHsvF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromRgb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromRgbF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromRgba(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromRgba64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getCmyk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getCmykF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getHsl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getHslF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getHsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getHsvF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getRgb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getRgbF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function green(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function greenF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hslHue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hslHueF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hslSaturation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hslSaturationF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hsvHue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hsvHueF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hsvSaturation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hsvSaturationF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hueF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isValidColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function light(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lighter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lightness(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lightnessF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function magenta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function magentaF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function red(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rgb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rgba(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function saturation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function saturationF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAlpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAlphaF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBlue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBlueF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCmyk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCmykF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGreenF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHsl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHslF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHsvF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNamedColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRedF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRgb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRgbF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRgba(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function spec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toCmyk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toHsl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toHsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toRgb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toTuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function valueF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function yellow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function yellowF(args:haxe.extern.Rest<Dynamic>):Dynamic;
}