/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QImageIOHandler") extern class QImageIOHandler {
	static public var Animation : Dynamic;
	static public var BackgroundColor : Dynamic;
	static public var ClipRect : Dynamic;
	static public var CompressionRatio : Dynamic;
	static public var Description : Dynamic;
	static public var Endianness : Dynamic;
	static public var Gamma : Dynamic;
	static public var ImageFormat : Dynamic;
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
	public function Transformation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TransformationFlip : Dynamic;
	static public var TransformationFlipAndRotate90 : Dynamic;
	static public var TransformationMirror : Dynamic;
	static public var TransformationMirrorAndRotate90 : Dynamic;
	static public var TransformationNone : Dynamic;
	static public var TransformationRotate180 : Dynamic;
	static public var TransformationRotate270 : Dynamic;
	static public var TransformationRotate90 : Dynamic;
	public function Transformations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TransformedByDefault : Dynamic;
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
	public function canRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentImageNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentImageRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function imageCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function jumpToImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function jumpToNextImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loopCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextImageDelay(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function option(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportsOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
}