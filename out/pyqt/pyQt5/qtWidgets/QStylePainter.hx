/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QStylePainter") extern class QStylePainter {
	static public var Antialiasing : Dynamic;
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
	/**
		QPainter.PixmapFragment()
		QPainter.PixmapFragment(QPainter.PixmapFragment)
	**/
	static public function PixmapFragment(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function PixmapFragmentHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPainter.PixmapFragmentHints()
		QPainter.PixmapFragmentHints(Union[QPainter.PixmapFragmentHints, QPainter.PixmapFragmentHint])
		QPainter.PixmapFragmentHints(QPainter.PixmapFragmentHints)
	**/
	static public function PixmapFragmentHints(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function RenderHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPainter.RenderHints()
		QPainter.RenderHints(Union[QPainter.RenderHints, QPainter.RenderHint])
		QPainter.RenderHints(QPainter.RenderHints)
	**/
	static public function RenderHints(args:haxe.extern.Rest<Dynamic>):Void;
	static public var SmoothPixmapTransform : Dynamic;
	static public var TextAntialiasing : Dynamic;
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
		__enter__(self) -> object
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		__exit__(self, object, object, object)
	**/
	public function __exit__(object:Dynamic, object:Dynamic, object:Dynamic):Void;
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
		background(self) -> QBrush
	**/
	public function background():Dynamic;
	/**
		backgroundMode(self) -> Qt.BGMode
	**/
	public function backgroundMode():Dynamic;
	/**
		begin(self, QWidget) -> bool
		begin(self, QPaintDevice, QWidget) -> bool
	**/
	public function begin(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		beginNativePainting(self)
	**/
	public function beginNativePainting():Void;
	/**
		boundingRect(self, QRectF, int, str) -> QRectF
		boundingRect(self, QRect, int, str) -> QRect
		boundingRect(self, QRectF, str, option: QTextOption = QTextOption()) -> QRectF
		boundingRect(self, int, int, int, int, int, str) -> QRect
	**/
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		brush(self) -> QBrush
	**/
	public function brush():Dynamic;
	/**
		brushOrigin(self) -> QPoint
	**/
	public function brushOrigin():Dynamic;
	/**
		clipBoundingRect(self) -> QRectF
	**/
	public function clipBoundingRect():Dynamic;
	/**
		clipPath(self) -> QPainterPath
	**/
	public function clipPath():Dynamic;
	/**
		clipRegion(self) -> QRegion
	**/
	public function clipRegion():Dynamic;
	/**
		combinedTransform(self) -> QTransform
	**/
	public function combinedTransform():Dynamic;
	/**
		compositionMode(self) -> QPainter.CompositionMode
	**/
	public function compositionMode():Dynamic;
	/**
		device(self) -> QPaintDevice
	**/
	public function device():Dynamic;
	/**
		deviceTransform(self) -> QTransform
	**/
	public function deviceTransform():Dynamic;
	/**
		drawArc(self, QRectF, int, int)
		drawArc(self, QRect, int, int)
		drawArc(self, int, int, int, int, int, int)
	**/
	public function drawArc(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawChord(self, QRectF, int, int)
		drawChord(self, QRect, int, int)
		drawChord(self, int, int, int, int, int, int)
	**/
	public function drawChord(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawComplexControl(self, QStyle.ComplexControl, QStyleOptionComplex)
	**/
	public function drawComplexControl(QStyle:Dynamic, QStyleOptionComplex:Dynamic):Void;
	/**
		drawControl(self, QStyle.ControlElement, QStyleOption)
	**/
	public function drawControl(QStyle:Dynamic, QStyleOption:Dynamic):Void;
	/**
		drawConvexPolygon(self, Union[QPointF, QPoint], *)
		drawConvexPolygon(self, QPolygonF)
		drawConvexPolygon(self, QPoint, *)
		drawConvexPolygon(self, QPolygon)
	**/
	public function drawConvexPolygon(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawEllipse(self, QRectF)
		drawEllipse(self, QRect)
		drawEllipse(self, int, int, int, int)
		drawEllipse(self, Union[QPointF, QPoint], float, float)
		drawEllipse(self, QPoint, int, int)
	**/
	public function drawEllipse(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawGlyphRun(self, Union[QPointF, QPoint], QGlyphRun)
	**/
	public function drawGlyphRun(Union:Dynamic, QGlyphRun:Dynamic):Void;
	/**
		drawImage(self, QRectF, QImage, QRectF, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor)
		drawImage(self, QRect, QImage, QRect, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor)
		drawImage(self, Union[QPointF, QPoint], QImage, QRectF, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor)
		drawImage(self, QPoint, QImage, QRect, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor)
		drawImage(self, QRectF, QImage)
		drawImage(self, QRect, QImage)
		drawImage(self, Union[QPointF, QPoint], QImage)
		drawImage(self, QPoint, QImage)
		drawImage(self, int, int, QImage, sx: int = 0, sy: int = 0, sw: int = -1, sh: int = -1, flags: Union[Qt.ImageConversionFlags, Qt.ImageConversionFlag] = Qt.AutoColor)
	**/
	public function drawImage(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawItemPixmap(self, QRect, int, QPixmap)
	**/
	public function drawItemPixmap(QRect:Dynamic, int:Int, QPixmap:Dynamic):Void;
	/**
		drawItemText(self, QRect, int, QPalette, bool, str, textRole: QPalette.ColorRole = QPalette.NoRole)
	**/
	public function drawItemText(QRect:Dynamic, int:Int, QPalette:Dynamic, bool:Bool, str:String, ?textRole:Dynamic):Void;
	/**
		drawLine(self, QLineF)
		drawLine(self, QLine)
		drawLine(self, int, int, int, int)
		drawLine(self, QPoint, QPoint)
		drawLine(self, Union[QPointF, QPoint], Union[QPointF, QPoint])
	**/
	public function drawLine(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawLines(self, QLineF, *)
		drawLines(self, Iterable[QLineF])
		drawLines(self, Union[QPointF, QPoint], *)
		drawLines(self, Iterable[Union[QPointF, QPoint]])
		drawLines(self, QLine, *)
		drawLines(self, Iterable[QLine])
		drawLines(self, QPoint, *)
		drawLines(self, Iterable[QPoint])
	**/
	public function drawLines(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPath(self, QPainterPath)
	**/
	public function drawPath(QPainterPath:Dynamic):Void;
	/**
		drawPicture(self, Union[QPointF, QPoint], QPicture)
		drawPicture(self, int, int, QPicture)
		drawPicture(self, QPoint, QPicture)
	**/
	public function drawPicture(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPie(self, QRectF, int, int)
		drawPie(self, QRect, int, int)
		drawPie(self, int, int, int, int, int, int)
	**/
	public function drawPie(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPixmap(self, QRectF, QPixmap, QRectF)
		drawPixmap(self, QRect, QPixmap, QRect)
		drawPixmap(self, Union[QPointF, QPoint], QPixmap)
		drawPixmap(self, QPoint, QPixmap)
		drawPixmap(self, QRect, QPixmap)
		drawPixmap(self, int, int, QPixmap)
		drawPixmap(self, int, int, int, int, QPixmap)
		drawPixmap(self, int, int, int, int, QPixmap, int, int, int, int)
		drawPixmap(self, int, int, QPixmap, int, int, int, int)
		drawPixmap(self, Union[QPointF, QPoint], QPixmap, QRectF)
		drawPixmap(self, QPoint, QPixmap, QRect)
	**/
	public function drawPixmap(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPixmapFragments(self, List[QPainter.PixmapFragment], QPixmap, hints: QPainter.PixmapFragmentHints = 0)
	**/
	public function drawPixmapFragments(List:Dynamic, QPixmap:Dynamic, ?hints:Dynamic):Void;
	/**
		drawPoint(self, Union[QPointF, QPoint])
		drawPoint(self, int, int)
		drawPoint(self, QPoint)
	**/
	public function drawPoint(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPoints(self, Union[QPointF, QPoint], *)
		drawPoints(self, QPolygonF)
		drawPoints(self, QPoint, *)
		drawPoints(self, QPolygon)
	**/
	public function drawPoints(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPolygon(self, Union[QPointF, QPoint], *)
		drawPolygon(self, QPolygonF, fillRule: Qt.FillRule = Qt.OddEvenFill)
		drawPolygon(self, QPoint, *)
		drawPolygon(self, QPolygon, fillRule: Qt.FillRule = Qt.OddEvenFill)
	**/
	public function drawPolygon(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPolyline(self, Union[QPointF, QPoint], *)
		drawPolyline(self, QPolygonF)
		drawPolyline(self, QPoint, *)
		drawPolyline(self, QPolygon)
	**/
	public function drawPolyline(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawPrimitive(self, QStyle.PrimitiveElement, QStyleOption)
	**/
	public function drawPrimitive(QStyle:Dynamic, QStyleOption:Dynamic):Void;
	/**
		drawRect(self, QRectF)
		drawRect(self, int, int, int, int)
		drawRect(self, QRect)
	**/
	public function drawRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawRects(self, QRectF, *)
		drawRects(self, Iterable[QRectF])
		drawRects(self, QRect, *)
		drawRects(self, Iterable[QRect])
	**/
	public function drawRects(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawRoundedRect(self, QRectF, float, float, mode: Qt.SizeMode = Qt.AbsoluteSize)
		drawRoundedRect(self, int, int, int, int, float, float, mode: Qt.SizeMode = Qt.AbsoluteSize)
		drawRoundedRect(self, QRect, float, float, mode: Qt.SizeMode = Qt.AbsoluteSize)
	**/
	public function drawRoundedRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawStaticText(self, Union[QPointF, QPoint], QStaticText)
		drawStaticText(self, QPoint, QStaticText)
		drawStaticText(self, int, int, QStaticText)
	**/
	public function drawStaticText(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		drawText(self, Union[QPointF, QPoint], str)
		drawText(self, QRectF, int, str) -> QRectF
		drawText(self, QRect, int, str) -> QRect
		drawText(self, QRectF, str, option: QTextOption = QTextOption())
		drawText(self, QPoint, str)
		drawText(self, int, int, int, int, int, str) -> QRect
		drawText(self, int, int, str)
	**/
	public function drawText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		drawTiledPixmap(self, QRectF, QPixmap, pos: Union[QPointF, QPoint] = QPointF())
		drawTiledPixmap(self, QRect, QPixmap, pos: QPoint = QPoint())
		drawTiledPixmap(self, int, int, int, int, QPixmap, sx: int = 0, sy: int = 0)
	**/
	public function drawTiledPixmap(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		end(self) -> bool
	**/
	public function end():Bool;
	/**
		endNativePainting(self)
	**/
	public function endNativePainting():Void;
	/**
		eraseRect(self, QRectF)
		eraseRect(self, QRect)
		eraseRect(self, int, int, int, int)
	**/
	public function eraseRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		fillPath(self, QPainterPath, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function fillPath(QPainterPath:Dynamic, Union:Dynamic):Void;
	/**
		fillRect(self, QRectF, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
		fillRect(self, QRect, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
		fillRect(self, int, int, int, int, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
		fillRect(self, QRectF, Union[QColor, Qt.GlobalColor, QGradient])
		fillRect(self, QRect, Union[QColor, Qt.GlobalColor, QGradient])
		fillRect(self, int, int, int, int, Union[QColor, Qt.GlobalColor, QGradient])
		fillRect(self, int, int, int, int, Qt.GlobalColor)
		fillRect(self, QRect, Qt.GlobalColor)
		fillRect(self, QRectF, Qt.GlobalColor)
		fillRect(self, int, int, int, int, Qt.BrushStyle)
		fillRect(self, QRect, Qt.BrushStyle)
		fillRect(self, QRectF, Qt.BrushStyle)
		fillRect(self, int, int, int, int, QGradient.Preset)
		fillRect(self, QRect, QGradient.Preset)
		fillRect(self, QRectF, QGradient.Preset)
	**/
	public function fillRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		font(self) -> QFont
	**/
	public function font():Dynamic;
	/**
		fontInfo(self) -> QFontInfo
	**/
	public function fontInfo():Dynamic;
	/**
		fontMetrics(self) -> QFontMetrics
	**/
	public function fontMetrics():Dynamic;
	/**
		hasClipping(self) -> bool
	**/
	public function hasClipping():Bool;
	/**
		isActive(self) -> bool
	**/
	public function isActive():Bool;
	/**
		layoutDirection(self) -> Qt.LayoutDirection
	**/
	public function layoutDirection():Dynamic;
	/**
		opacity(self) -> float
	**/
	public function opacity():Float;
	/**
		paintEngine(self) -> QPaintEngine
	**/
	public function paintEngine():Dynamic;
	/**
		pen(self) -> QPen
	**/
	public function pen():Dynamic;
	/**
		renderHints(self) -> QPainter.RenderHints
	**/
	public function renderHints():Dynamic;
	/**
		resetTransform(self)
	**/
	public function resetTransform():Void;
	/**
		restore(self)
	**/
	public function restore():Void;
	/**
		rotate(self, float)
	**/
	public function rotate(float:Float):Void;
	/**
		save(self)
	**/
	public function save():Void;
	/**
		scale(self, float, float)
	**/
	public function scale(float:Float, float:Float):Void;
	/**
		setBackground(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
	**/
	public function setBackground(Union:Dynamic):Void;
	/**
		setBackgroundMode(self, Qt.BGMode)
	**/
	public function setBackgroundMode(Qt:Dynamic):Void;
	/**
		setBrush(self, Union[QBrush, QColor, Qt.GlobalColor, QGradient])
		setBrush(self, Qt.BrushStyle)
	**/
	public function setBrush(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setBrushOrigin(self, Union[QPointF, QPoint])
		setBrushOrigin(self, int, int)
		setBrushOrigin(self, QPoint)
	**/
	public function setBrushOrigin(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setClipPath(self, QPainterPath, operation: Qt.ClipOperation = Qt.ReplaceClip)
	**/
	public function setClipPath(QPainterPath:Dynamic, ?operation:Dynamic):Void;
	/**
		setClipRect(self, QRectF, operation: Qt.ClipOperation = Qt.ReplaceClip)
		setClipRect(self, int, int, int, int, operation: Qt.ClipOperation = Qt.ReplaceClip)
		setClipRect(self, QRect, operation: Qt.ClipOperation = Qt.ReplaceClip)
	**/
	public function setClipRect(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setClipRegion(self, QRegion, operation: Qt.ClipOperation = Qt.ReplaceClip)
	**/
	public function setClipRegion(QRegion:Dynamic, ?operation:Dynamic):Void;
	/**
		setClipping(self, bool)
	**/
	public function setClipping(bool:Bool):Void;
	/**
		setCompositionMode(self, QPainter.CompositionMode)
	**/
	public function setCompositionMode(QPainter:Dynamic):Void;
	/**
		setFont(self, QFont)
	**/
	public function setFont(QFont:Dynamic):Void;
	/**
		setLayoutDirection(self, Qt.LayoutDirection)
	**/
	public function setLayoutDirection(Qt:Dynamic):Void;
	/**
		setOpacity(self, float)
	**/
	public function setOpacity(float:Float):Void;
	/**
		setPen(self, Union[QColor, Qt.GlobalColor, QGradient])
		setPen(self, Union[QPen, QColor, Qt.GlobalColor, QGradient])
		setPen(self, Qt.PenStyle)
	**/
	public function setPen(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setRenderHint(self, QPainter.RenderHint, on: bool = True)
	**/
	public function setRenderHint(QPainter:Dynamic, ?on:Dynamic):Void;
	/**
		setRenderHints(self, Union[QPainter.RenderHints, QPainter.RenderHint], on: bool = True)
	**/
	public function setRenderHints(Union:Dynamic, ?on:Dynamic):Void;
	/**
		setTransform(self, QTransform, combine: bool = False)
	**/
	public function setTransform(QTransform:Dynamic, ?combine:Dynamic):Void;
	/**
		setViewTransformEnabled(self, bool)
	**/
	public function setViewTransformEnabled(bool:Bool):Void;
	/**
		setViewport(self, QRect)
		setViewport(self, int, int, int, int)
	**/
	public function setViewport(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setWindow(self, QRect)
		setWindow(self, int, int, int, int)
	**/
	public function setWindow(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setWorldMatrixEnabled(self, bool)
	**/
	public function setWorldMatrixEnabled(bool:Bool):Void;
	/**
		setWorldTransform(self, QTransform, combine: bool = False)
	**/
	public function setWorldTransform(QTransform:Dynamic, ?combine:Dynamic):Void;
	/**
		shear(self, float, float)
	**/
	public function shear(float:Float, float:Float):Void;
	/**
		strokePath(self, QPainterPath, Union[QPen, QColor, Qt.GlobalColor, QGradient])
	**/
	public function strokePath(QPainterPath:Dynamic, Union:Dynamic):Void;
	/**
		style(self) -> QStyle
	**/
	public function style():Dynamic;
	/**
		testRenderHint(self, QPainter.RenderHint) -> bool
	**/
	public function testRenderHint(QPainter:Dynamic):Bool;
	/**
		transform(self) -> QTransform
	**/
	public function transform():Dynamic;
	/**
		translate(self, Union[QPointF, QPoint])
		translate(self, float, float)
		translate(self, QPoint)
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		viewTransformEnabled(self) -> bool
	**/
	public function viewTransformEnabled():Bool;
	/**
		viewport(self) -> QRect
	**/
	public function viewport():Dynamic;
	/**
		window(self) -> QRect
	**/
	public function window():Dynamic;
	/**
		worldMatrixEnabled(self) -> bool
	**/
	public function worldMatrixEnabled():Bool;
	/**
		worldTransform(self) -> QTransform
	**/
	public function worldTransform():Dynamic;
}