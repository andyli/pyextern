/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QImageIOHandler") extern class QImageIOHandler {
	static public var Animation : Dynamic;
	static public var BackgroundColor : Dynamic;
	static public var ClipRect : Dynamic;
	static public var CompressionRatio : Dynamic;
	static public var Description : Dynamic;
	static public var Endianness : Dynamic;
	static public var Gamma : Dynamic;
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
	public function ImageOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ImageTransformation : Dynamic;
	static public var IncrementalReading : Dynamic;
	static public var Name : Dynamic;
	static public var OptimizedWrite : Dynamic;
	static public var ProgressiveScanWrite : Dynamic;
	static public var Quality : Dynamic;
	static public var ScaledClipRect : Dynamic;
	static public var ScaledSize : Dynamic;
	static public var Size : Dynamic;
	static public var SubType : Dynamic;
	static public var SupportedSubTypes : Dynamic;
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
	public function Transformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TransformationFlip : Dynamic;
	static public var TransformationFlipAndRotate90 : Dynamic;
	static public var TransformationMirror : Dynamic;
	static public var TransformationMirrorAndRotate90 : Dynamic;
	static public var TransformationNone : Dynamic;
	static public var TransformationRotate180 : Dynamic;
	static public var TransformationRotate270 : Dynamic;
	static public var TransformationRotate90 : Dynamic;
	/**
		QImageIOHandler.Transformations()
		QImageIOHandler.Transformations(Union[QImageIOHandler.Transformations, QImageIOHandler.Transformation])
		QImageIOHandler.Transformations(QImageIOHandler.Transformations)
	**/
	static public function Transformations(args:haxe.extern.Rest<Dynamic>):Void;
	static public var TransformedByDefault : Dynamic;
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
		canRead(self) -> bool
	**/
	public function canRead():Bool;
	/**
		currentImageNumber(self) -> int
	**/
	public function currentImageNumber():Int;
	/**
		currentImageRect(self) -> QRect
	**/
	public function currentImageRect():Dynamic;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		format(self) -> QByteArray
	**/
	public function format():Dynamic;
	/**
		imageCount(self) -> int
	**/
	public function imageCount():Int;
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
		option(self, QImageIOHandler.ImageOption) -> Any
	**/
	public function option(QImageIOHandler:Dynamic):Dynamic;
	/**
		read(self, QImage) -> bool
	**/
	public function read(QImage:Dynamic):Bool;
	/**
		setDevice(self, QIODevice)
	**/
	public function setDevice(QIODevice:Dynamic):Void;
	/**
		setFormat(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setFormat(Union:Dynamic):Void;
	/**
		setOption(self, QImageIOHandler.ImageOption, Any)
	**/
	public function setOption(QImageIOHandler:Dynamic, Any:Dynamic):Void;
	/**
		supportsOption(self, QImageIOHandler.ImageOption) -> bool
	**/
	public function supportsOption(QImageIOHandler:Dynamic):Bool;
	/**
		write(self, QImage) -> bool
	**/
	public function write(QImage:Dynamic):Bool;
}