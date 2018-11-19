/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPaintEngine") extern class QPaintEngine {
	static public var AllDirty : Dynamic;
	static public var AllFeatures : Dynamic;
	static public var AlphaBlend : Dynamic;
	static public var Antialiasing : Dynamic;
	static public var BlendModes : Dynamic;
	static public var Blitter : Dynamic;
	static public var BrushStroke : Dynamic;
	static public var ConicalGradientFill : Dynamic;
	static public var ConstantOpacity : Dynamic;
	static public var ConvexMode : Dynamic;
	static public var CoreGraphics : Dynamic;
	static public var Direct2D : Dynamic;
	static public var Direct3D : Dynamic;
	static public var DirtyBackground : Dynamic;
	static public var DirtyBackgroundMode : Dynamic;
	static public var DirtyBrush : Dynamic;
	static public var DirtyBrushOrigin : Dynamic;
	static public var DirtyClipEnabled : Dynamic;
	static public var DirtyClipPath : Dynamic;
	static public var DirtyClipRegion : Dynamic;
	static public var DirtyCompositionMode : Dynamic;
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
	public function DirtyFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintEngine.DirtyFlags()
		QPaintEngine.DirtyFlags(Union[QPaintEngine.DirtyFlags, QPaintEngine.DirtyFlag])
		QPaintEngine.DirtyFlags(QPaintEngine.DirtyFlags)
	**/
	static public function DirtyFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var DirtyFont : Dynamic;
	static public var DirtyHints : Dynamic;
	static public var DirtyOpacity : Dynamic;
	static public var DirtyPen : Dynamic;
	static public var DirtyTransform : Dynamic;
	static public var LinearGradientFill : Dynamic;
	static public var MacPrinter : Dynamic;
	static public var MaskedBrush : Dynamic;
	static public var MaxUser : Dynamic;
	static public var ObjectBoundingModeGradients : Dynamic;
	static public var OddEvenMode : Dynamic;
	static public var OpenGL : Dynamic;
	static public var OpenGL2 : Dynamic;
	static public var OpenVG : Dynamic;
	static public var PaintBuffer : Dynamic;
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
	public function PaintEngineFeature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintEngine.PaintEngineFeatures()
		QPaintEngine.PaintEngineFeatures(Union[QPaintEngine.PaintEngineFeatures, QPaintEngine.PaintEngineFeature])
		QPaintEngine.PaintEngineFeatures(QPaintEngine.PaintEngineFeatures)
	**/
	static public function PaintEngineFeatures(args:haxe.extern.Rest<Dynamic>):Void;
	static public var PaintOutsidePaintEvent : Dynamic;
	static public var PainterPaths : Dynamic;
	static public var PatternBrush : Dynamic;
	static public var PatternTransform : Dynamic;
	static public var Pdf : Dynamic;
	static public var PerspectiveTransform : Dynamic;
	static public var Picture : Dynamic;
	static public var PixmapTransform : Dynamic;
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
	public function PolygonDrawMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PolylineMode : Dynamic;
	static public var PorterDuff : Dynamic;
	static public var PostScript : Dynamic;
	static public var PrimitiveTransform : Dynamic;
	static public var QWindowSystem : Dynamic;
	static public var QuickDraw : Dynamic;
	static public var RadialGradientFill : Dynamic;
	static public var Raster : Dynamic;
	static public var RasterOpModes : Dynamic;
	static public var SVG : Dynamic;
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
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var User : Dynamic;
	static public var WindingMode : Dynamic;
	static public var Windows : Dynamic;
	static public var X11 : Dynamic;
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
		begin(self, QPaintDevice) -> bool
	**/
	public function begin(QPaintDevice:Dynamic):Bool;
	/**
		drawEllipse(self, QRectF)
		drawEllipse(self, QRect)
	**/
	public function drawEllipse(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawImage(self, QRectF, QImage, QRectF, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor)
	**/
	public function drawImage(QRectF:Dynamic, QImage:Dynamic, QRectF:Dynamic, ?flags:Dynamic):Void;
	/**
		drawLines(self, QLine)
		drawLines(self, QLineF)
	**/
	public function drawLines(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPath(self, QPainterPath)
	**/
	public function drawPath(QPainterPath:Dynamic):Void;
	/**
		drawPixmap(self, QRectF, QPixmap, QRectF)
	**/
	public function drawPixmap(QRectF:Dynamic, QPixmap:Dynamic, QRectF:Dynamic):Void;
	/**
		drawPoints(self, Union[QPointF, QPoint])
		drawPoints(self, QPoint)
	**/
	public function drawPoints(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPolygon(self, Union[QPointF, QPoint], QPaintEngine.PolygonDrawMode)
		drawPolygon(self, QPoint, QPaintEngine.PolygonDrawMode)
	**/
	public function drawPolygon(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawRects(self, QRect)
		drawRects(self, QRectF)
	**/
	public function drawRects(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawTextItem(self, Union[QPointF, QPoint], QTextItem)
	**/
	public function drawTextItem(Union:Dynamic, QTextItem:Dynamic):Void;
	/**
		drawTiledPixmap(self, QRectF, QPixmap, Union[QPointF, QPoint])
	**/
	public function drawTiledPixmap(QRectF:Dynamic, QPixmap:Dynamic, Union:Dynamic):Void;
	/**
		end(self) -> bool
	**/
	public function end():Bool;
	/**
		hasFeature(self, Union[QPaintEngine.PaintEngineFeatures, QPaintEngine.PaintEngineFeature]) -> bool
	**/
	public function hasFeature(Union:Dynamic):Bool;
	/**
		isActive(self) -> bool
	**/
	public function isActive():Bool;
	/**
		paintDevice(self) -> QPaintDevice
	**/
	public function paintDevice():Dynamic;
	/**
		painter(self) -> QPainter
	**/
	public function painter():Dynamic;
	/**
		setActive(self, bool)
	**/
	public function setActive(bool:Bool):Void;
	/**
		setPaintDevice(self, QPaintDevice)
	**/
	public function setPaintDevice(QPaintDevice:Dynamic):Void;
	/**
		type(self) -> QPaintEngine.Type
	**/
	public function type():Dynamic;
	/**
		updateState(self, QPaintEngineState)
	**/
	public function updateState(QPaintEngineState:Dynamic):Void;
}