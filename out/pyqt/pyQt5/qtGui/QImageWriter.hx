/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QImageWriter") extern class QImageWriter {
	static public var DeviceError : Dynamic;
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
	public function ImageWriterError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var InvalidImageError : Dynamic;
	static public var UnknownError : Dynamic;
	static public var UnsupportedFormatError : Dynamic;
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
		canWrite(self) -> bool
	**/
	public function canWrite():Bool;
	/**
		compression(self) -> int
	**/
	public function compression():Int;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		error(self) -> QImageWriter.ImageWriterError
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
		imageFormatsForMimeType(Union[QByteArray, bytes, bytearray]) -> List[QByteArray]
	**/
	static public function imageFormatsForMimeType(Union:Dynamic):Dynamic;
	/**
		optimizedWrite(self) -> bool
	**/
	public function optimizedWrite():Bool;
	/**
		progressiveScanWrite(self) -> bool
	**/
	public function progressiveScanWrite():Bool;
	/**
		quality(self) -> int
	**/
	public function quality():Int;
	/**
		setCompression(self, int)
	**/
	public function setCompression(int:Int):Void;
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
		setOptimizedWrite(self, bool)
	**/
	public function setOptimizedWrite(bool:Bool):Void;
	/**
		setProgressiveScanWrite(self, bool)
	**/
	public function setProgressiveScanWrite(bool:Bool):Void;
	/**
		setQuality(self, int)
	**/
	public function setQuality(int:Int):Void;
	/**
		setSubType(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setSubType(Union:Dynamic):Void;
	/**
		setText(self, str, str)
	**/
	public function setText(str:String, str:String):Void;
	/**
		setTransformation(self, Union[QImageIOHandler.Transformations, QImageIOHandler.Transformation])
	**/
	public function setTransformation(Union:Dynamic):Void;
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
		supportsOption(self, QImageIOHandler.ImageOption) -> bool
	**/
	public function supportsOption(QImageIOHandler:Dynamic):Bool;
	/**
		transformation(self) -> QImageIOHandler.Transformations
	**/
	public function transformation():Dynamic;
	/**
		write(self, QImage) -> bool
	**/
	public function write(QImage:Dynamic):Bool;
}