/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QImageReader") extern class QImageReader {
	static public var DeviceError : Dynamic;
	static public var FileNotFoundError : Dynamic;
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
	public function ImageReaderError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var InvalidDataError : Dynamic;
	static public var UnknownError : Dynamic;
	static public var UnsupportedFormatError : Dynamic;
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
		autoDetectImageFormat(self) -> bool
	**/
	public function autoDetectImageFormat():Bool;
	/**
		autoTransform(self) -> bool
	**/
	public function autoTransform():Bool;
	/**
		backgroundColor(self) -> QColor
	**/
	public function backgroundColor():Dynamic;
	/**
		canRead(self) -> bool
	**/
	public function canRead():Bool;
	/**
		clipRect(self) -> QRect
	**/
	public function clipRect():Dynamic;
	/**
		currentImageNumber(self) -> int
	**/
	public function currentImageNumber():Int;
	/**
		currentImageRect(self) -> QRect
	**/
	public function currentImageRect():Dynamic;
	/**
		decideFormatFromContent(self) -> bool
	**/
	public function decideFormatFromContent():Bool;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		error(self) -> QImageReader.ImageReaderError
	**/
	public function error():Dynamic;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		fileName(self) -> str
	**/
	public function fileName():String;
	/**
		format(self) -> QByteArray
	**/
	public function format():Dynamic;
	/**
		gamma(self) -> float
	**/
	public function gamma():Float;
	/**
		imageCount(self) -> int
	**/
	public function imageCount():Int;
	/**
		imageFormat(str) -> QByteArray
		imageFormat(QIODevice) -> QByteArray
		imageFormat(self) -> QImage.Format
	**/
	static public function imageFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jumpToImage(self, int) -> bool
	**/
	public function jumpToImage(int:Int):Bool;
	/**
		jumpToNextImage(self) -> bool
	**/
	public function jumpToNextImage():Bool;
	/**
		loopCount(self) -> int
	**/
	public function loopCount():Int;
	/**
		nextImageDelay(self) -> int
	**/
	public function nextImageDelay():Int;
	/**
		quality(self) -> int
	**/
	public function quality():Int;
	/**
		read(self) -> QImage
		read(self, QImage) -> bool
	**/
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scaledClipRect(self) -> QRect
	**/
	public function scaledClipRect():Dynamic;
	/**
		scaledSize(self) -> QSize
	**/
	public function scaledSize():Dynamic;
	/**
		setAutoDetectImageFormat(self, bool)
	**/
	public function setAutoDetectImageFormat(bool:Bool):Void;
	/**
		setAutoTransform(self, bool)
	**/
	public function setAutoTransform(bool:Bool):Void;
	/**
		setBackgroundColor(self, Union[QColor, Qt.GlobalColor, QGradient])
	**/
	public function setBackgroundColor(Union:Dynamic):Void;
	/**
		setClipRect(self, QRect)
	**/
	public function setClipRect(QRect:Dynamic):Void;
	/**
		setDecideFormatFromContent(self, bool)
	**/
	public function setDecideFormatFromContent(bool:Bool):Void;
	/**
		setDevice(self, QIODevice)
	**/
	public function setDevice(QIODevice:Dynamic):Void;
	/**
		setFileName(self, str)
	**/
	public function setFileName(str:String):Void;
	/**
		setFormat(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setFormat(Union:Dynamic):Void;
	/**
		setGamma(self, float)
	**/
	public function setGamma(float:Float):Void;
	/**
		setQuality(self, int)
	**/
	public function setQuality(int:Int):Void;
	/**
		setScaledClipRect(self, QRect)
	**/
	public function setScaledClipRect(QRect:Dynamic):Void;
	/**
		setScaledSize(self, QSize)
	**/
	public function setScaledSize(QSize:Dynamic):Void;
	/**
		size(self) -> QSize
	**/
	public function size():Dynamic;
	/**
		subType(self) -> QByteArray
	**/
	public function subType():Dynamic;
	/**
		supportedImageFormats() -> List[QByteArray]
	**/
	static public function supportedImageFormats():Dynamic;
	/**
		supportedMimeTypes() -> List[QByteArray]
	**/
	static public function supportedMimeTypes():Dynamic;
	/**
		supportedSubTypes(self) -> List[QByteArray]
	**/
	public function supportedSubTypes():Dynamic;
	/**
		supportsAnimation(self) -> bool
	**/
	public function supportsAnimation():Bool;
	/**
		supportsOption(self, QImageIOHandler.ImageOption) -> bool
	**/
	public function supportsOption(QImageIOHandler:Dynamic):Bool;
	/**
		text(self, str) -> str
	**/
	public function text(str:String):String;
	/**
		textKeys(self) -> List[str]
	**/
	public function textKeys():Dynamic;
	/**
		transformation(self) -> QImageIOHandler.Transformations
	**/
	public function transformation():Dynamic;
}