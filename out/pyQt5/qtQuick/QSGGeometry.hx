/* This file is generated, do not edit! */
package pyQt5.qtQuick;
@:pythonImport("PyQt5.QtQuick", "QSGGeometry") extern class QSGGeometry {
	static public var AlwaysUploadPattern : Dynamic;
	/**
		QSGGeometry.Attribute()
		QSGGeometry.Attribute(QSGGeometry.Attribute)
	**/
	static public function Attribute(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		QSGGeometry.AttributeSet(Iterable[QSGGeometry.Attribute], stride: int = 0)
	**/
	static public function AttributeSet(Iterable:Dynamic, ?stride:Dynamic):Void;
	/**
		QSGGeometry.ColoredPoint2D()
		QSGGeometry.ColoredPoint2D(QSGGeometry.ColoredPoint2D)
	**/
	static public function ColoredPoint2D(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function DataPattern(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DynamicPattern : Dynamic;
	static public var GL_BYTE : Dynamic;
	static public var GL_DOUBLE : Dynamic;
	static public var GL_FLOAT : Dynamic;
	static public var GL_INT : Dynamic;
	static public var GL_LINES : Dynamic;
	static public var GL_LINE_LOOP : Dynamic;
	static public var GL_LINE_STRIP : Dynamic;
	static public var GL_POINTS : Dynamic;
	static public var GL_TRIANGLES : Dynamic;
	static public var GL_TRIANGLE_FAN : Dynamic;
	static public var GL_TRIANGLE_STRIP : Dynamic;
	/**
		QSGGeometry.Point2D()
		QSGGeometry.Point2D(QSGGeometry.Point2D)
	**/
	static public function Point2D(args:haxe.extern.Rest<Dynamic>):Void;
	static public var StaticPattern : Dynamic;
	static public var StreamPattern : Dynamic;
	/**
		QSGGeometry.TexturedPoint2D()
		QSGGeometry.TexturedPoint2D(QSGGeometry.TexturedPoint2D)
	**/
	static public function TexturedPoint2D(args:haxe.extern.Rest<Dynamic>):Void;
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
		allocate(self, int, indexCount: int = 0)
	**/
	public function allocate(int:Int, ?indexCount:Dynamic):Void;
	/**
		attributeCount(self) -> int
	**/
	public function attributeCount():Int;
	/**
		attributes(self) -> sip.array[QSGGeometry.Attribute]
	**/
	public function attributes():Dynamic;
	/**
		defaultAttributes_ColoredPoint2D() -> QSGGeometry.AttributeSet
	**/
	static public function defaultAttributes_ColoredPoint2D():Dynamic;
	/**
		defaultAttributes_Point2D() -> QSGGeometry.AttributeSet
	**/
	static public function defaultAttributes_Point2D():Dynamic;
	/**
		defaultAttributes_TexturedPoint2D() -> QSGGeometry.AttributeSet
	**/
	static public function defaultAttributes_TexturedPoint2D():Dynamic;
	/**
		drawingMode(self) -> int
	**/
	public function drawingMode():Int;
	/**
		indexCount(self) -> int
	**/
	public function indexCount():Int;
	/**
		indexData(self) -> sip.voidptr
	**/
	public function indexData():Dynamic;
	/**
		indexDataAsUInt(self) -> sip.array[int]
	**/
	public function indexDataAsUInt():Dynamic;
	/**
		indexDataAsUShort(self) -> sip.array[int]
	**/
	public function indexDataAsUShort():Dynamic;
	/**
		indexDataPattern(self) -> QSGGeometry.DataPattern
	**/
	public function indexDataPattern():Dynamic;
	/**
		indexType(self) -> int
	**/
	public function indexType():Int;
	/**
		lineWidth(self) -> float
	**/
	public function lineWidth():Float;
	/**
		markIndexDataDirty(self)
	**/
	public function markIndexDataDirty():Void;
	/**
		markVertexDataDirty(self)
	**/
	public function markVertexDataDirty():Void;
	/**
		setDrawingMode(self, int)
	**/
	public function setDrawingMode(int:Int):Void;
	/**
		setIndexDataPattern(self, QSGGeometry.DataPattern)
	**/
	public function setIndexDataPattern(QSGGeometry:Dynamic):Void;
	/**
		setLineWidth(self, float)
	**/
	public function setLineWidth(float:Float):Void;
	/**
		setVertexDataPattern(self, QSGGeometry.DataPattern)
	**/
	public function setVertexDataPattern(QSGGeometry:Dynamic):Void;
	/**
		sizeOfIndex(self) -> int
	**/
	public function sizeOfIndex():Int;
	/**
		sizeOfVertex(self) -> int
	**/
	public function sizeOfVertex():Int;
	/**
		updateRectGeometry(QSGGeometry, QRectF)
	**/
	static public function updateRectGeometry(QSGGeometry:Dynamic, QRectF:Dynamic):Void;
	/**
		updateTexturedRectGeometry(QSGGeometry, QRectF, QRectF)
	**/
	static public function updateTexturedRectGeometry(QSGGeometry:Dynamic, QRectF:Dynamic, QRectF:Dynamic):Void;
	/**
		vertexCount(self) -> int
	**/
	public function vertexCount():Int;
	/**
		vertexData(self) -> sip.voidptr
	**/
	public function vertexData():Dynamic;
	/**
		vertexDataAsColoredPoint2D(self) -> sip.array[QSGGeometry.ColoredPoint2D]
	**/
	public function vertexDataAsColoredPoint2D():Dynamic;
	/**
		vertexDataAsPoint2D(self) -> sip.array[QSGGeometry.Point2D]
	**/
	public function vertexDataAsPoint2D():Dynamic;
	/**
		vertexDataAsTexturedPoint2D(self) -> sip.array[QSGGeometry.TexturedPoint2D]
	**/
	public function vertexDataAsTexturedPoint2D():Dynamic;
	/**
		vertexDataPattern(self) -> QSGGeometry.DataPattern
	**/
	public function vertexDataPattern():Dynamic;
}