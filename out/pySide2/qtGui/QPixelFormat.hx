/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPixelFormat") extern class QPixelFormat {
	static public var Alpha : Dynamic;
	public function AlphaPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function AlphaPremultiplied(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function AlphaUsage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AtBeginning : Dynamic;
	static public var AtEnd : Dynamic;
	static public var BGR : Dynamic;
	static public var BigEndian : Dynamic;
	public function ByteOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CMYK : Dynamic;
	public function ColorModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CurrentSystemEndian : Dynamic;
	static public var FloatingPoint : Dynamic;
	static public var Grayscale : Dynamic;
	static public var HSL : Dynamic;
	static public var HSV : Dynamic;
	static public var IMC1 : Dynamic;
	static public var IMC2 : Dynamic;
	static public var IMC3 : Dynamic;
	static public var IMC4 : Dynamic;
	static public var IgnoresAlpha : Dynamic;
	static public var Indexed : Dynamic;
	static public var LittleEndian : Dynamic;
	static public var NV12 : Dynamic;
	static public var NV21 : Dynamic;
	static public var NotPremultiplied : Dynamic;
	static public var Premultiplied : Dynamic;
	static public var RGB : Dynamic;
	public function TypeInterpretation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UYVY : Dynamic;
	static public var UnsignedByte : Dynamic;
	static public var UnsignedInteger : Dynamic;
	static public var UnsignedShort : Dynamic;
	static public var UsesAlpha : Dynamic;
	static public var Y16 : Dynamic;
	static public var Y8 : Dynamic;
	static public var YUV : Dynamic;
	static public var YUV411 : Dynamic;
	static public var YUV420P : Dynamic;
	static public var YUV420SP : Dynamic;
	static public var YUV422 : Dynamic;
	static public var YUV444 : Dynamic;
	public function YUVLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var YUYV : Dynamic;
	static public var YV12 : Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
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
	public function alphaPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alphaSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alphaUsage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bitsPerPixel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blackSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blueSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function brightnessSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function byteOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function channelCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cyanSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function greenSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hueSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lightnessSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function magentaSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function premultiplied(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function saturationSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function subEnum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function typeInterpretation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function yellowSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function yuvLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
}