/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPicture") extern class QPicture {
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
	public function PaintDeviceMetric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PdmDepth : Dynamic;
	static public var PdmDevicePixelRatio : Dynamic;
	static public var PdmDevicePixelRatioScaled : Dynamic;
	static public var PdmDpiX : Dynamic;
	static public var PdmDpiY : Dynamic;
	static public var PdmHeight : Dynamic;
	static public var PdmHeightMM : Dynamic;
	static public var PdmNumColors : Dynamic;
	static public var PdmPhysicalDpiX : Dynamic;
	static public var PdmPhysicalDpiY : Dynamic;
	static public var PdmWidth : Dynamic;
	static public var PdmWidthMM : Dynamic;
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
		boundingRect(self) -> QRect
	**/
	public function boundingRect():Dynamic;
	/**
		colorCount(self) -> int
	**/
	public function colorCount():Int;
	/**
		data(self) -> str
	**/
	public function data():String;
	/**
		depth(self) -> int
	**/
	public function depth():Int;
	/**
		detach(self)
	**/
	public function detach():Void;
	/**
		devType(self) -> int
	**/
	public function devType():Int;
	/**
		devicePixelRatio(self) -> int
	**/
	public function devicePixelRatio():Int;
	/**
		devicePixelRatioF(self) -> float
	**/
	public function devicePixelRatioF():Float;
	/**
		devicePixelRatioFScale() -> float
	**/
	static public function devicePixelRatioFScale():Float;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		heightMM(self) -> int
	**/
	public function heightMM():Int;
	/**
		isDetached(self) -> bool
	**/
	public function isDetached():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		load(self, QIODevice, format: str = None) -> bool
		load(self, str, format: str = None) -> bool
	**/
	public function load(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		logicalDpiX(self) -> int
	**/
	public function logicalDpiX():Int;
	/**
		logicalDpiY(self) -> int
	**/
	public function logicalDpiY():Int;
	/**
		metric(self, QPaintDevice.PaintDeviceMetric) -> int
	**/
	public function metric(QPaintDevice:Dynamic):Int;
	/**
		paintEngine(self) -> QPaintEngine
	**/
	public function paintEngine():Dynamic;
	/**
		paintingActive(self) -> bool
	**/
	public function paintingActive():Bool;
	/**
		physicalDpiX(self) -> int
	**/
	public function physicalDpiX():Int;
	/**
		physicalDpiY(self) -> int
	**/
	public function physicalDpiY():Int;
	/**
		play(self, QPainter) -> bool
	**/
	public function play(QPainter:Dynamic):Bool;
	/**
		save(self, QIODevice, format: str = None) -> bool
		save(self, str, format: str = None) -> bool
	**/
	public function save(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		setBoundingRect(self, QRect)
	**/
	public function setBoundingRect(QRect:Dynamic):Void;
	/**
		setData(self, bytes)
	**/
	public function setData(bytes:Dynamic):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		swap(self, QPicture)
	**/
	public function swap(QPicture:Dynamic):Void;
	/**
		width(self) -> int
	**/
	public function width():Int;
	/**
		widthMM(self) -> int
	**/
	public function widthMM():Int;
}