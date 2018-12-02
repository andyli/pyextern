/* This file is generated, do not edit! */
package pySide2.qtMultimedia;
@:pythonImport("PySide2.QtMultimedia", "QVideoFrame") extern class QVideoFrame {
	static public var BottomField : Dynamic;
	public function FieldType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Format_ARGB32 : Dynamic;
	static public var Format_ARGB32_Premultiplied : Dynamic;
	static public var Format_ARGB8565_Premultiplied : Dynamic;
	static public var Format_AYUV444 : Dynamic;
	static public var Format_AYUV444_Premultiplied : Dynamic;
	static public var Format_AdobeDng : Dynamic;
	static public var Format_BGR24 : Dynamic;
	static public var Format_BGR32 : Dynamic;
	static public var Format_BGR555 : Dynamic;
	static public var Format_BGR565 : Dynamic;
	static public var Format_BGRA32 : Dynamic;
	static public var Format_BGRA32_Premultiplied : Dynamic;
	static public var Format_BGRA5658_Premultiplied : Dynamic;
	static public var Format_CameraRaw : Dynamic;
	static public var Format_IMC1 : Dynamic;
	static public var Format_IMC2 : Dynamic;
	static public var Format_IMC3 : Dynamic;
	static public var Format_IMC4 : Dynamic;
	static public var Format_Invalid : Dynamic;
	static public var Format_Jpeg : Dynamic;
	static public var Format_NV12 : Dynamic;
	static public var Format_NV21 : Dynamic;
	static public var Format_RGB24 : Dynamic;
	static public var Format_RGB32 : Dynamic;
	static public var Format_RGB555 : Dynamic;
	static public var Format_RGB565 : Dynamic;
	static public var Format_UYVY : Dynamic;
	static public var Format_User : Dynamic;
	static public var Format_Y16 : Dynamic;
	static public var Format_Y8 : Dynamic;
	static public var Format_YUV420P : Dynamic;
	static public var Format_YUV444 : Dynamic;
	static public var Format_YUYV : Dynamic;
	static public var Format_YV12 : Dynamic;
	static public var InterlacedFrame : Dynamic;
	public function PixelFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ProgressiveFrame : Dynamic;
	static public var TopField : Dynamic;
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
	public function availableMetaData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesPerLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fieldType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function handle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function handleType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function imageFormatFromPixelFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMapped(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isReadable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWritable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mappedBytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixelFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pixelFormatFromImageFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function planeCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEndTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFieldType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMetaData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStartTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
}