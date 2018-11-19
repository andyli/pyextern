/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QVideoFrame") extern class QVideoFrame {
	static public var BottomField : Dynamic;
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
	public function PixelFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ProgressiveFrame : Dynamic;
	static public var TopField : Dynamic;
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
		availableMetaData(self) -> Dict[str, Any]
	**/
	public function availableMetaData():Dynamic;
	/**
		bits(self) -> sip.voidptr
		bits(self, int) -> sip.voidptr
	**/
	public function bits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bytesPerLine(self) -> int
		bytesPerLine(self, int) -> int
	**/
	public function bytesPerLine(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		endTime(self) -> int
	**/
	public function endTime():Int;
	/**
		fieldType(self) -> QVideoFrame.FieldType
	**/
	public function fieldType():Dynamic;
	/**
		handle(self) -> Any
	**/
	public function handle():Dynamic;
	/**
		handleType(self) -> QAbstractVideoBuffer.HandleType
	**/
	public function handleType():Dynamic;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		imageFormatFromPixelFormat(QVideoFrame.PixelFormat) -> QImage.Format
	**/
	static public function imageFormatFromPixelFormat(QVideoFrame:Dynamic):Dynamic;
	/**
		isMapped(self) -> bool
	**/
	public function isMapped():Bool;
	/**
		isReadable(self) -> bool
	**/
	public function isReadable():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		isWritable(self) -> bool
	**/
	public function isWritable():Bool;
	/**
		map(self, QAbstractVideoBuffer.MapMode) -> bool
	**/
	public function map(QAbstractVideoBuffer:Dynamic):Bool;
	/**
		mapMode(self) -> QAbstractVideoBuffer.MapMode
	**/
	public function mapMode():Dynamic;
	/**
		mappedBytes(self) -> int
	**/
	public function mappedBytes():Int;
	/**
		metaData(self, str) -> Any
	**/
	public function metaData(str:String):Dynamic;
	/**
		pixelFormat(self) -> QVideoFrame.PixelFormat
	**/
	public function pixelFormat():Dynamic;
	/**
		pixelFormatFromImageFormat(QImage.Format) -> QVideoFrame.PixelFormat
	**/
	static public function pixelFormatFromImageFormat(QImage:Dynamic):Dynamic;
	/**
		planeCount(self) -> int
	**/
	public function planeCount():Int;
	/**
		setEndTime(self, int)
	**/
	public function setEndTime(int:Int):Void;
	/**
		setFieldType(self, QVideoFrame.FieldType)
	**/
	public function setFieldType(QVideoFrame:Dynamic):Void;
	/**
		setMetaData(self, str, Any)
	**/
	public function setMetaData(str:String, Any:Dynamic):Void;
	/**
		setStartTime(self, int)
	**/
	public function setStartTime(int:Int):Void;
	/**
		size(self) -> QSize
	**/
	public function size():Dynamic;
	/**
		startTime(self) -> int
	**/
	public function startTime():Int;
	/**
		unmap(self)
	**/
	public function unmap():Void;
	/**
		width(self) -> int
	**/
	public function width():Int;
}