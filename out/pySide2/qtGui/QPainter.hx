/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPainter") extern class QPainter {
	static public var Antialiasing : Dynamic;
	public function CompositionMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CompositionMode_Clear : Dynamic;
	static public var CompositionMode_ColorBurn : Dynamic;
	static public var CompositionMode_ColorDodge : Dynamic;
	static public var CompositionMode_Darken : Dynamic;
	static public var CompositionMode_Destination : Dynamic;
	static public var CompositionMode_DestinationAtop : Dynamic;
	static public var CompositionMode_DestinationIn : Dynamic;
	static public var CompositionMode_DestinationOut : Dynamic;
	static public var CompositionMode_DestinationOver : Dynamic;
	static public var CompositionMode_Difference : Dynamic;
	static public var CompositionMode_Exclusion : Dynamic;
	static public var CompositionMode_HardLight : Dynamic;
	static public var CompositionMode_Lighten : Dynamic;
	static public var CompositionMode_Multiply : Dynamic;
	static public var CompositionMode_Overlay : Dynamic;
	static public var CompositionMode_Plus : Dynamic;
	static public var CompositionMode_Screen : Dynamic;
	static public var CompositionMode_SoftLight : Dynamic;
	static public var CompositionMode_Source : Dynamic;
	static public var CompositionMode_SourceAtop : Dynamic;
	static public var CompositionMode_SourceIn : Dynamic;
	static public var CompositionMode_SourceOut : Dynamic;
	static public var CompositionMode_SourceOver : Dynamic;
	static public var CompositionMode_Xor : Dynamic;
	static public var HighQualityAntialiasing : Dynamic;
	static public var NonCosmeticDefaultPen : Dynamic;
	static public var OpaqueHint : Dynamic;
	public function PixmapFragment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function PixmapFragmentHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function PixmapFragmentHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Qt4CompatiblePainting : Dynamic;
	static public var RasterOp_ClearDestination : Dynamic;
	static public var RasterOp_NotDestination : Dynamic;
	static public var RasterOp_NotSource : Dynamic;
	static public var RasterOp_NotSourceAndDestination : Dynamic;
	static public var RasterOp_NotSourceAndNotDestination : Dynamic;
	static public var RasterOp_NotSourceOrDestination : Dynamic;
	static public var RasterOp_NotSourceOrNotDestination : Dynamic;
	static public var RasterOp_NotSourceXorDestination : Dynamic;
	static public var RasterOp_SetDestination : Dynamic;
	static public var RasterOp_SourceAndDestination : Dynamic;
	static public var RasterOp_SourceAndNotDestination : Dynamic;
	static public var RasterOp_SourceOrDestination : Dynamic;
	static public var RasterOp_SourceOrNotDestination : Dynamic;
	static public var RasterOp_SourceXorDestination : Dynamic;
	public function RenderHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function RenderHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SmoothPixmapTransform : Dynamic;
	static public var TextAntialiasing : Dynamic;
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
	public function background(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backgroundMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function begin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beginNativePainting(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function brush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function brushOrigin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipBoundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clipRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function combinedMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function combinedTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function compositionMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deviceMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deviceTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawArc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawChord(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawConvexPolygon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawEllipse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawLines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPicture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPie(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPixmapFragments(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPoints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPolygon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawPolyline(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawRects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawRoundRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawRoundedRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawStaticText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawTextItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawTiledPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function end(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endNativePainting(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eraseRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fillPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fillRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasClipping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function matrixEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function opacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function redirected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function renderHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function restore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function restoreRedirected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rotate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function save(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackgroundMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBrush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBrushOrigin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setClipPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setClipRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setClipRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setClipping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCompositionMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMatrixEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setRedirected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRenderHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRenderHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setViewTransformEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setViewport(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWorldMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWorldMatrixEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWorldTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function shear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function strokePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testRenderHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function viewTransformEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function viewport(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function worldMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function worldMatrixEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function worldTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
}