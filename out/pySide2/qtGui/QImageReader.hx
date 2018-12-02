/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QImageReader") extern class QImageReader {
	static public var DeviceError : Dynamic;
	static public var FileNotFoundError : Dynamic;
	public function ImageReaderError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var InvalidDataError : Dynamic;
	static public var UnknownError : Dynamic;
	static public var UnsupportedFormatError : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function autoDetectImageFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function autoTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backgroundColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentImageNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentImageRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function decideFormatFromContent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function imageCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function imageFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function jumpToImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function jumpToNextImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loopCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextImageDelay(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function quality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scaledClipRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scaledSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoDetectImageFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackgroundColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setClipRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDecideFormatFromContent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setQuality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScaledClipRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScaledSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function subType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function supportedImageFormats(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function supportedMimeTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedSubTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportsAnimation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportsOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function text(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function textKeys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
}