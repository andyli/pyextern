/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QPaintDeviceWindow") extern class QPaintDeviceWindow {
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
	public function AncestorMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AutomaticVisibility : Dynamic;
	static public var ExcludeTransients : Dynamic;
	static public var FullScreen : Dynamic;
	static public var Hidden : Dynamic;
	static public var IncludeTransients : Dynamic;
	static public var Maximized : Dynamic;
	static public var Minimized : Dynamic;
	static public var Offscreen : Dynamic;
	static public var OpenGLSurface : Dynamic;
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
	static public var RasterGLSurface : Dynamic;
	static public var RasterSurface : Dynamic;
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
	public function SurfaceClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function SurfaceType(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function Visibility(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Window : Dynamic;
	static public var Windowed : Dynamic;
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
		__getattr__(self, str) -> object
	**/
	public function __getattr__(str:String):Dynamic;
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
		activeChanged(self) [signal]
	**/
	public var activeChanged : Dynamic;
	/**
		alert(self, int)
	**/
	public function alert(int:Int):Void;
	/**
		baseSize(self) -> QSize
	**/
	public function baseSize():Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		close(self) -> bool
	**/
	public function close():Bool;
	/**
		colorCount(self) -> int
	**/
	public function colorCount():Int;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		contentOrientation(self) -> Qt.ScreenOrientation
	**/
	public function contentOrientation():Dynamic;
	/**
		contentOrientationChanged(self, Qt.ScreenOrientation) [signal]
	**/
	public var contentOrientationChanged : Dynamic;
	/**
		create(self)
	**/
	public function create():Void;
	/**
		cursor(self) -> QCursor
	**/
	public function cursor():Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		depth(self) -> int
	**/
	public function depth():Int;
	/**
		destroy(self)
	**/
	public function destroy():Void;
	/**
		destroyed(self, QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
	/**
		devicePixelRatio(self) -> float
	**/
	public function devicePixelRatio():Float;
	/**
		devicePixelRatioF(self) -> float
	**/
	public function devicePixelRatioF():Float;
	/**
		devicePixelRatioFScale() -> float
	**/
	static public function devicePixelRatioFScale():Float;
	/**
		disconnect(self)
	**/
	public function disconnect():Void;
	/**
		disconnectNotify(self, QMetaMethod)
	**/
	public function disconnectNotify(QMetaMethod:Dynamic):Void;
	/**
		dumpObjectInfo(self)
	**/
	public function dumpObjectInfo():Void;
	/**
		dumpObjectTree(self)
	**/
	public function dumpObjectTree():Void;
	/**
		dynamicPropertyNames(self) -> object
	**/
	public function dynamicPropertyNames():Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		exposeEvent(self, QExposeEvent)
	**/
	public function exposeEvent(QExposeEvent:Dynamic):Void;
	/**
		filePath(self) -> str
	**/
	public function filePath():String;
	/**
		findChild(self, type, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> QObject
		findChild(self, Tuple, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> QObject
	**/
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		findChildren(self, type, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, type, QRegExp, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, QRegExp, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, type, QRegularExpression, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, QRegularExpression, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
	**/
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		flags(self) -> Qt.WindowFlags
	**/
	public function flags():Dynamic;
	/**
		focusInEvent(self, QFocusEvent)
	**/
	public function focusInEvent(QFocusEvent:Dynamic):Void;
	/**
		focusObject(self) -> QObject
	**/
	public function focusObject():Dynamic;
	/**
		focusObjectChanged(self, QObject) [signal]
	**/
	public var focusObjectChanged : Dynamic;
	/**
		focusOutEvent(self, QFocusEvent)
	**/
	public function focusOutEvent(QFocusEvent:Dynamic):Void;
	/**
		format(self) -> QSurfaceFormat
	**/
	public function format():Dynamic;
	/**
		frameGeometry(self) -> QRect
	**/
	public function frameGeometry():Dynamic;
	/**
		frameMargins(self) -> QMargins
	**/
	public function frameMargins():Dynamic;
	/**
		framePosition(self) -> QPoint
	**/
	public function framePosition():Dynamic;
	/**
		fromWinId(sip.voidptr) -> QWindow
	**/
	static public function fromWinId(sip:Dynamic):Dynamic;
	/**
		geometry(self) -> QRect
	**/
	public function geometry():Dynamic;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		heightChanged(self, int) [signal]
	**/
	public var heightChanged : Dynamic;
	/**
		heightMM(self) -> int
	**/
	public function heightMM():Int;
	/**
		hide(self)
	**/
	public function hide():Void;
	/**
		hideEvent(self, QHideEvent)
	**/
	public function hideEvent(QHideEvent:Dynamic):Void;
	/**
		icon(self) -> QIcon
	**/
	public function icon():Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isActive(self) -> bool
	**/
	public function isActive():Bool;
	/**
		isAncestorOf(self, QWindow, mode: QWindow.AncestorMode = QWindow.IncludeTransients) -> bool
	**/
	public function isAncestorOf(QWindow:Dynamic, ?mode:Dynamic):Bool;
	/**
		isExposed(self) -> bool
	**/
	public function isExposed():Bool;
	/**
		isModal(self) -> bool
	**/
	public function isModal():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isTopLevel(self) -> bool
	**/
	public function isTopLevel():Bool;
	/**
		isVisible(self) -> bool
	**/
	public function isVisible():Bool;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType():Bool;
	/**
		isWindowType(self) -> bool
	**/
	public function isWindowType():Bool;
	/**
		keyPressEvent(self, QKeyEvent)
	**/
	public function keyPressEvent(QKeyEvent:Dynamic):Void;
	/**
		keyReleaseEvent(self, QKeyEvent)
	**/
	public function keyReleaseEvent(QKeyEvent:Dynamic):Void;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		logicalDpiX(self) -> int
	**/
	public function logicalDpiX():Int;
	/**
		logicalDpiY(self) -> int
	**/
	public function logicalDpiY():Int;
	/**
		lower(self)
	**/
	public function lower():Void;
	/**
		mapFromGlobal(self, QPoint) -> QPoint
	**/
	public function mapFromGlobal(QPoint:Dynamic):Dynamic;
	/**
		mapToGlobal(self, QPoint) -> QPoint
	**/
	public function mapToGlobal(QPoint:Dynamic):Dynamic;
	/**
		mask(self) -> QRegion
	**/
	public function mask():Dynamic;
	/**
		maximumHeight(self) -> int
	**/
	public function maximumHeight():Int;
	/**
		maximumHeightChanged(self, int) [signal]
	**/
	public var maximumHeightChanged : Dynamic;
	/**
		maximumSize(self) -> QSize
	**/
	public function maximumSize():Dynamic;
	/**
		maximumWidth(self) -> int
	**/
	public function maximumWidth():Int;
	/**
		maximumWidthChanged(self, int) [signal]
	**/
	public var maximumWidthChanged : Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		metric(self, QPaintDevice.PaintDeviceMetric) -> int
	**/
	public function metric(QPaintDevice:Dynamic):Int;
	/**
		minimumHeight(self) -> int
	**/
	public function minimumHeight():Int;
	/**
		minimumHeightChanged(self, int) [signal]
	**/
	public var minimumHeightChanged : Dynamic;
	/**
		minimumSize(self) -> QSize
	**/
	public function minimumSize():Dynamic;
	/**
		minimumWidth(self) -> int
	**/
	public function minimumWidth():Int;
	/**
		minimumWidthChanged(self, int) [signal]
	**/
	public var minimumWidthChanged : Dynamic;
	/**
		modality(self) -> Qt.WindowModality
	**/
	public function modality():Dynamic;
	/**
		modalityChanged(self, Qt.WindowModality) [signal]
	**/
	public var modalityChanged : Dynamic;
	/**
		mouseDoubleClickEvent(self, QMouseEvent)
	**/
	public function mouseDoubleClickEvent(QMouseEvent:Dynamic):Void;
	/**
		mouseMoveEvent(self, QMouseEvent)
	**/
	public function mouseMoveEvent(QMouseEvent:Dynamic):Void;
	/**
		mousePressEvent(self, QMouseEvent)
	**/
	public function mousePressEvent(QMouseEvent:Dynamic):Void;
	/**
		mouseReleaseEvent(self, QMouseEvent)
	**/
	public function mouseReleaseEvent(QMouseEvent:Dynamic):Void;
	/**
		moveEvent(self, QMoveEvent)
	**/
	public function moveEvent(QMoveEvent:Dynamic):Void;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		opacity(self) -> float
	**/
	public function opacity():Float;
	/**
		opacityChanged(self, float) [signal]
	**/
	public var opacityChanged : Dynamic;
	/**
		paintEngine(self) -> QPaintEngine
	**/
	public function paintEngine():Dynamic;
	/**
		paintEvent(self, QPaintEvent)
	**/
	public function paintEvent(QPaintEvent:Dynamic):Void;
	/**
		paintingActive(self) -> bool
	**/
	public function paintingActive():Bool;
	/**
		parent(self) -> QWindow
	**/
	public function parent():Dynamic;
	/**
		physicalDpiX(self) -> int
	**/
	public function physicalDpiX():Int;
	/**
		physicalDpiY(self) -> int
	**/
	public function physicalDpiY():Int;
	/**
		position(self) -> QPoint
	**/
	public function position():Dynamic;
	/**
		property(self, str) -> Any
	**/
	public function property(str:String):Dynamic;
	/**
		QObject.pyqtConfigure(...)
		
		Each keyword argument is either the name of a Qt property or a Qt signal.
		For properties the property is set to the given value which should be of an
		appropriate type.
		For signals the signal is connected to the given value which should be a
		callable.
	**/
	public function pyqtConfigure(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		raise_(self)
	**/
	public function raise_():Void;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		reportContentOrientationChange(self, Qt.ScreenOrientation)
	**/
	public function reportContentOrientationChange(Qt:Dynamic):Void;
	/**
		requestActivate(self)
	**/
	public function requestActivate():Void;
	/**
		requestUpdate(self)
	**/
	public function requestUpdate():Void;
	/**
		requestedFormat(self) -> QSurfaceFormat
	**/
	public function requestedFormat():Dynamic;
	/**
		resize(self, QSize)
		resize(self, int, int)
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		resizeEvent(self, QResizeEvent)
	**/
	public function resizeEvent(QResizeEvent:Dynamic):Void;
	/**
		screen(self) -> QScreen
	**/
	public function screen():Dynamic;
	/**
		screenChanged(self, QScreen) [signal]
	**/
	public var screenChanged : Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setBaseSize(self, QSize)
	**/
	public function setBaseSize(QSize:Dynamic):Void;
	/**
		setCursor(self, Union[QCursor, Qt.CursorShape])
	**/
	public function setCursor(Union:Dynamic):Void;
	/**
		setFilePath(self, str)
	**/
	public function setFilePath(str:String):Void;
	/**
		setFlags(self, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	public function setFlags(Union:Dynamic):Void;
	/**
		setFormat(self, QSurfaceFormat)
	**/
	public function setFormat(QSurfaceFormat:Dynamic):Void;
	/**
		setFramePosition(self, QPoint)
	**/
	public function setFramePosition(QPoint:Dynamic):Void;
	/**
		setGeometry(self, int, int, int, int)
		setGeometry(self, QRect)
	**/
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setHeight(self, int)
	**/
	public function setHeight(int:Int):Void;
	/**
		setIcon(self, QIcon)
	**/
	public function setIcon(QIcon:Dynamic):Void;
	/**
		setKeyboardGrabEnabled(self, bool) -> bool
	**/
	public function setKeyboardGrabEnabled(bool:Bool):Bool;
	/**
		setMask(self, QRegion)
	**/
	public function setMask(QRegion:Dynamic):Void;
	/**
		setMaximumHeight(self, int)
	**/
	public function setMaximumHeight(int:Int):Void;
	/**
		setMaximumSize(self, QSize)
	**/
	public function setMaximumSize(QSize:Dynamic):Void;
	/**
		setMaximumWidth(self, int)
	**/
	public function setMaximumWidth(int:Int):Void;
	/**
		setMinimumHeight(self, int)
	**/
	public function setMinimumHeight(int:Int):Void;
	/**
		setMinimumSize(self, QSize)
	**/
	public function setMinimumSize(QSize:Dynamic):Void;
	/**
		setMinimumWidth(self, int)
	**/
	public function setMinimumWidth(int:Int):Void;
	/**
		setModality(self, Qt.WindowModality)
	**/
	public function setModality(Qt:Dynamic):Void;
	/**
		setMouseGrabEnabled(self, bool) -> bool
	**/
	public function setMouseGrabEnabled(bool:Bool):Bool;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOpacity(self, float)
	**/
	public function setOpacity(float:Float):Void;
	/**
		setParent(self, QWindow)
	**/
	public function setParent(QWindow:Dynamic):Void;
	/**
		setPosition(self, QPoint)
		setPosition(self, int, int)
	**/
	public function setPosition(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setScreen(self, QScreen)
	**/
	public function setScreen(QScreen:Dynamic):Void;
	/**
		setSizeIncrement(self, QSize)
	**/
	public function setSizeIncrement(QSize:Dynamic):Void;
	/**
		setSurfaceType(self, QSurface.SurfaceType)
	**/
	public function setSurfaceType(QSurface:Dynamic):Void;
	/**
		setTitle(self, str)
	**/
	public function setTitle(str:String):Void;
	/**
		setTransientParent(self, QWindow)
	**/
	public function setTransientParent(QWindow:Dynamic):Void;
	/**
		setVisibility(self, QWindow.Visibility)
	**/
	public function setVisibility(QWindow:Dynamic):Void;
	/**
		setVisible(self, bool)
	**/
	public function setVisible(bool:Bool):Void;
	/**
		setWidth(self, int)
	**/
	public function setWidth(int:Int):Void;
	/**
		setWindowState(self, Qt.WindowState)
	**/
	public function setWindowState(Qt:Dynamic):Void;
	/**
		setX(self, int)
	**/
	public function setX(int:Int):Void;
	/**
		setY(self, int)
	**/
	public function setY(int:Int):Void;
	/**
		show(self)
	**/
	public function show():Void;
	/**
		showEvent(self, QShowEvent)
	**/
	public function showEvent(QShowEvent:Dynamic):Void;
	/**
		showFullScreen(self)
	**/
	public function showFullScreen():Void;
	/**
		showMaximized(self)
	**/
	public function showMaximized():Void;
	/**
		showMinimized(self)
	**/
	public function showMinimized():Void;
	/**
		showNormal(self)
	**/
	public function showNormal():Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		size(self) -> QSize
	**/
	public function size():Dynamic;
	/**
		sizeIncrement(self) -> QSize
	**/
	public function sizeIncrement():Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		supportsOpenGL(self) -> bool
	**/
	public function supportsOpenGL():Bool;
	/**
		surfaceClass(self) -> QSurface.SurfaceClass
	**/
	public function surfaceClass():Dynamic;
	/**
		surfaceType(self) -> QSurface.SurfaceType
	**/
	public function surfaceType():Dynamic;
	/**
		tabletEvent(self, QTabletEvent)
	**/
	public function tabletEvent(QTabletEvent:Dynamic):Void;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		title(self) -> str
	**/
	public function title():String;
	/**
		touchEvent(self, QTouchEvent)
	**/
	public function touchEvent(QTouchEvent:Dynamic):Void;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		transientParent(self) -> QWindow
	**/
	public function transientParent():Dynamic;
	/**
		type(self) -> Qt.WindowType
	**/
	public function type():Dynamic;
	/**
		unsetCursor(self)
	**/
	public function unsetCursor():Void;
	/**
		update(self, QRect)
		update(self, QRegion)
		update(self)
	**/
	public function update(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		visibility(self) -> QWindow.Visibility
	**/
	public function visibility():Dynamic;
	/**
		visibilityChanged(self, QWindow.Visibility) [signal]
	**/
	public var visibilityChanged : Dynamic;
	/**
		visibleChanged(self, bool) [signal]
	**/
	public var visibleChanged : Dynamic;
	/**
		wheelEvent(self, QWheelEvent)
	**/
	public function wheelEvent(QWheelEvent:Dynamic):Void;
	/**
		width(self) -> int
	**/
	public function width():Int;
	/**
		widthChanged(self, int) [signal]
	**/
	public var widthChanged : Dynamic;
	/**
		widthMM(self) -> int
	**/
	public function widthMM():Int;
	/**
		winId(self) -> sip.voidptr
	**/
	public function winId():Dynamic;
	/**
		windowState(self) -> Qt.WindowState
	**/
	public function windowState():Dynamic;
	/**
		windowStateChanged(self, Qt.WindowState) [signal]
	**/
	public var windowStateChanged : Dynamic;
	/**
		windowTitleChanged(self, str) [signal]
	**/
	public var windowTitleChanged : Dynamic;
	/**
		x(self) -> int
	**/
	public function x():Int;
	/**
		xChanged(self, int) [signal]
	**/
	public var xChanged : Dynamic;
	/**
		y(self) -> int
	**/
	public function y():Int;
	/**
		yChanged(self, int) [signal]
	**/
	public var yChanged : Dynamic;
}