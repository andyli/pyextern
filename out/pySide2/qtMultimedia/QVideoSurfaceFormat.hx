/* This file is generated, do not edit! */
package pySide2.qtMultimedia;
@:pythonImport("PySide2.QtMultimedia", "QVideoSurfaceFormat") extern class QVideoSurfaceFormat {
	static public var BottomToTop : Dynamic;
	public function Direction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TopToBottom : Dynamic;
	public function YCbCrColorSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var YCbCr_BT601 : Dynamic;
	static public var YCbCr_BT709 : Dynamic;
	static public var YCbCr_CustomMatrix : Dynamic;
	static public var YCbCr_JPEG : Dynamic;
	static public var YCbCr_Undefined : Dynamic;
	static public var YCbCr_xvYCC601 : Dynamic;
	static public var YCbCr_xvYCC709 : Dynamic;
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
	public function frameHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameRate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function handleType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixelAspectRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixelFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function propertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scanLineDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFrameRate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFrameSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPixelAspectRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScanLineDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setViewport(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setYCbCrColorSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function viewport(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function yCbCrColorSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
}