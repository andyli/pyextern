/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPaintEngine") extern class QPaintEngine {
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
	public function DirtyFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function DirtyFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function PaintEngineFeature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function PaintEngineFeatures(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PaintOutsidePaintEvent : Dynamic;
	static public var PainterPaths : Dynamic;
	static public var PatternBrush : Dynamic;
	static public var PatternTransform : Dynamic;
	static public var Pdf : Dynamic;
	static public var PerspectiveTransform : Dynamic;
	static public var Picture : Dynamic;
	static public var PixmapTransform : Dynamic;
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
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var User : Dynamic;
	static public var WindingMode : Dynamic;
	static public var Windows : Dynamic;
	static public var X11 : Dynamic;
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
	public var active : Dynamic;
	public function begin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearDirty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function coordinateOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawEllipse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawLines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPoints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPolygon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawRects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawTextItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawTiledPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function end(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var extended : Dynamic;
	public var gccaps : Dynamic;
	public function hasFeature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isExtended(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function painter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var selfDestruct : Dynamic;
	public function setActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDirty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSystemClip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSystemRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var state : Dynamic;
	public function syncState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function systemClip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function systemRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testDirty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateState(args:haxe.extern.Rest<Dynamic>):Dynamic;
}