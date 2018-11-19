/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QMainWindow") extern class QMainWindow {
	static public var AllowNestedDocks : Dynamic;
	static public var AllowTabbedDocks : Dynamic;
	static public var AnimatedDocks : Dynamic;
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
	public function DockOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QMainWindow.DockOptions()
		QMainWindow.DockOptions(Union[QMainWindow.DockOptions, QMainWindow.DockOption])
		QMainWindow.DockOptions(QMainWindow.DockOptions)
	**/
	static public function DockOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var DrawChildren : Dynamic;
	static public var DrawWindowBackground : Dynamic;
	static public var ForceTabbedDocks : Dynamic;
	static public var GroupedDragging : Dynamic;
	static public var IgnoreMask : Dynamic;
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
	public function RenderFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.RenderFlags()
		QWidget.RenderFlags(Union[QWidget.RenderFlags, QWidget.RenderFlag])
		QWidget.RenderFlags(QWidget.RenderFlags)
	**/
	static public function RenderFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var VerticalTabs : Dynamic;
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
		acceptDrops(self) -> bool
	**/
	public function acceptDrops():Bool;
	/**
		accessibleDescription(self) -> str
	**/
	public function accessibleDescription():String;
	/**
		accessibleName(self) -> str
	**/
	public function accessibleName():String;
	/**
		actionEvent(self, QActionEvent)
	**/
	public function actionEvent(QActionEvent:Dynamic):Void;
	/**
		actions(self) -> List[QAction]
	**/
	public function actions():Dynamic;
	/**
		activateWindow(self)
	**/
	public function activateWindow():Void;
	/**
		addAction(self, QAction)
	**/
	public function addAction(QAction:Dynamic):Void;
	/**
		addActions(self, object)
	**/
	public function addActions(object:Dynamic):Void;
	/**
		addDockWidget(self, Qt.DockWidgetArea, QDockWidget)
		addDockWidget(self, Qt.DockWidgetArea, QDockWidget, Qt.Orientation)
	**/
	public function addDockWidget(Qt:Dynamic, QDockWidget:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		addToolBar(self, Qt.ToolBarArea, QToolBar)
		addToolBar(self, QToolBar)
		addToolBar(self, str) -> QToolBar
	**/
	public function addToolBar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addToolBarBreak(self, area: Qt.ToolBarArea = Qt.TopToolBarArea)
	**/
	public function addToolBarBreak(?area:Dynamic):Void;
	/**
		adjustSize(self)
	**/
	public function adjustSize():Void;
	/**
		autoFillBackground(self) -> bool
	**/
	public function autoFillBackground():Bool;
	/**
		backgroundRole(self) -> QPalette.ColorRole
	**/
	public function backgroundRole():Dynamic;
	/**
		baseSize(self) -> QSize
	**/
	public function baseSize():Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		centralWidget(self) -> QWidget
	**/
	public function centralWidget():Dynamic;
	/**
		changeEvent(self, QEvent)
	**/
	public function changeEvent(QEvent:Dynamic):Void;
	/**
		childAt(self, QPoint) -> QWidget
		childAt(self, int, int) -> QWidget
	**/
	public function childAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		childrenRect(self) -> QRect
	**/
	public function childrenRect():Dynamic;
	/**
		childrenRegion(self) -> QRegion
	**/
	public function childrenRegion():Dynamic;
	/**
		clearFocus(self)
	**/
	public function clearFocus():Void;
	/**
		clearMask(self)
	**/
	public function clearMask():Void;
	/**
		close(self) -> bool
	**/
	public function close():Bool;
	/**
		closeEvent(self, QCloseEvent)
	**/
	public function closeEvent(QCloseEvent:Dynamic):Void;
	/**
		colorCount(self) -> int
	**/
	public function colorCount():Int;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		contentsMargins(self) -> QMargins
	**/
	public function contentsMargins():Dynamic;
	/**
		contentsRect(self) -> QRect
	**/
	public function contentsRect():Dynamic;
	/**
		contextMenuEvent(self, QContextMenuEvent)
	**/
	public function contextMenuEvent(QContextMenuEvent:Dynamic):Void;
	/**
		contextMenuPolicy(self) -> Qt.ContextMenuPolicy
	**/
	public function contextMenuPolicy():Dynamic;
	/**
		corner(self, Qt.Corner) -> Qt.DockWidgetArea
	**/
	public function corner(Qt:Dynamic):Dynamic;
	/**
		create(self, window: sip.voidptr = 0, initializeWindow: bool = True, destroyOldWindow: bool = True)
	**/
	public function create(?window:Dynamic, ?initializeWindow:Dynamic, ?destroyOldWindow:Dynamic):Void;
	/**
		createPopupMenu(self) -> QMenu
	**/
	public function createPopupMenu():Dynamic;
	/**
		createWindowContainer(QWindow, parent: QWidget = None, flags: Union[Qt.WindowFlags, Qt.WindowType] = 0) -> QWidget
	**/
	static public function createWindowContainer(QWindow:Dynamic, ?parent:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		cursor(self) -> QCursor
	**/
	public function cursor():Dynamic;
	/**
		customContextMenuRequested(self, QPoint) [signal]
	**/
	public var customContextMenuRequested : Dynamic;
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
		destroy(self, destroyWindow: bool = True, destroySubWindows: bool = True)
	**/
	public function destroy(?destroyWindow:Dynamic, ?destroySubWindows:Dynamic):Void;
	/**
		destroyed(self, QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
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
		disconnect(self)
	**/
	public function disconnect():Void;
	/**
		disconnectNotify(self, QMetaMethod)
	**/
	public function disconnectNotify(QMetaMethod:Dynamic):Void;
	/**
		dockOptions(self) -> QMainWindow.DockOptions
	**/
	public function dockOptions():Dynamic;
	/**
		dockWidgetArea(self, QDockWidget) -> Qt.DockWidgetArea
	**/
	public function dockWidgetArea(QDockWidget:Dynamic):Dynamic;
	/**
		documentMode(self) -> bool
	**/
	public function documentMode():Bool;
	/**
		dragEnterEvent(self, QDragEnterEvent)
	**/
	public function dragEnterEvent(QDragEnterEvent:Dynamic):Void;
	/**
		dragLeaveEvent(self, QDragLeaveEvent)
	**/
	public function dragLeaveEvent(QDragLeaveEvent:Dynamic):Void;
	/**
		dragMoveEvent(self, QDragMoveEvent)
	**/
	public function dragMoveEvent(QDragMoveEvent:Dynamic):Void;
	/**
		dropEvent(self, QDropEvent)
	**/
	public function dropEvent(QDropEvent:Dynamic):Void;
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
		effectiveWinId(self) -> sip.voidptr
	**/
	public function effectiveWinId():Dynamic;
	/**
		ensurePolished(self)
	**/
	public function ensurePolished():Void;
	/**
		enterEvent(self, QEvent)
	**/
	public function enterEvent(QEvent:Dynamic):Void;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		find(sip.voidptr) -> QWidget
	**/
	static public function find(sip:Dynamic):Dynamic;
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
		focusInEvent(self, QFocusEvent)
	**/
	public function focusInEvent(QFocusEvent:Dynamic):Void;
	/**
		focusNextChild(self) -> bool
	**/
	public function focusNextChild():Bool;
	/**
		focusNextPrevChild(self, bool) -> bool
	**/
	public function focusNextPrevChild(bool:Bool):Bool;
	/**
		focusOutEvent(self, QFocusEvent)
	**/
	public function focusOutEvent(QFocusEvent:Dynamic):Void;
	/**
		focusPolicy(self) -> Qt.FocusPolicy
	**/
	public function focusPolicy():Dynamic;
	/**
		focusPreviousChild(self) -> bool
	**/
	public function focusPreviousChild():Bool;
	/**
		focusProxy(self) -> QWidget
	**/
	public function focusProxy():Dynamic;
	/**
		focusWidget(self) -> QWidget
	**/
	public function focusWidget():Dynamic;
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
		foregroundRole(self) -> QPalette.ColorRole
	**/
	public function foregroundRole():Dynamic;
	/**
		frameGeometry(self) -> QRect
	**/
	public function frameGeometry():Dynamic;
	/**
		frameSize(self) -> QSize
	**/
	public function frameSize():Dynamic;
	/**
		geometry(self) -> QRect
	**/
	public function geometry():Dynamic;
	/**
		getContentsMargins(self) -> Tuple[int, int, int, int]
	**/
	public function getContentsMargins():Dynamic;
	/**
		grab(self, rectangle: QRect = QRect(QPoint(0,0),QSize(-1,-1))) -> QPixmap
	**/
	public function grab(?rectangle:Dynamic):Dynamic;
	/**
		grabGesture(self, Qt.GestureType, flags: Union[Qt.GestureFlags, Qt.GestureFlag] = Qt.GestureFlags())
	**/
	public function grabGesture(Qt:Dynamic, ?flags:Dynamic):Void;
	/**
		grabKeyboard(self)
	**/
	public function grabKeyboard():Void;
	/**
		grabMouse(self)
		grabMouse(self, Union[QCursor, Qt.CursorShape])
	**/
	public function grabMouse(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		grabShortcut(self, Union[QKeySequence, QKeySequence.StandardKey, str, int], context: Qt.ShortcutContext = Qt.WindowShortcut) -> int
	**/
	public function grabShortcut(Union:Dynamic, ?context:Dynamic):Int;
	/**
		graphicsEffect(self) -> QGraphicsEffect
	**/
	public function graphicsEffect():Dynamic;
	/**
		graphicsProxyWidget(self) -> QGraphicsProxyWidget
	**/
	public function graphicsProxyWidget():Dynamic;
	/**
		hasFocus(self) -> bool
	**/
	public function hasFocus():Bool;
	/**
		hasHeightForWidth(self) -> bool
	**/
	public function hasHeightForWidth():Bool;
	/**
		hasMouseTracking(self) -> bool
	**/
	public function hasMouseTracking():Bool;
	/**
		height(self) -> int
	**/
	public function height():Int;
	/**
		heightForWidth(self, int) -> int
	**/
	public function heightForWidth(int:Int):Int;
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
		iconSize(self) -> QSize
	**/
	public function iconSize():Dynamic;
	/**
		iconSizeChanged(self, QSize) [signal]
	**/
	public var iconSizeChanged : Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		initPainter(self, QPainter)
	**/
	public function initPainter(QPainter:Dynamic):Void;
	/**
		inputMethodEvent(self, QInputMethodEvent)
	**/
	public function inputMethodEvent(QInputMethodEvent:Dynamic):Void;
	/**
		inputMethodHints(self) -> Qt.InputMethodHints
	**/
	public function inputMethodHints():Dynamic;
	/**
		inputMethodQuery(self, Qt.InputMethodQuery) -> Any
	**/
	public function inputMethodQuery(Qt:Dynamic):Dynamic;
	/**
		insertAction(self, QAction, QAction)
	**/
	public function insertAction(QAction:Dynamic, QAction:Dynamic):Void;
	/**
		insertActions(self, QAction, Iterable[QAction])
	**/
	public function insertActions(QAction:Dynamic, Iterable:Dynamic):Void;
	/**
		insertToolBar(self, QToolBar, QToolBar)
	**/
	public function insertToolBar(QToolBar:Dynamic, QToolBar:Dynamic):Void;
	/**
		insertToolBarBreak(self, QToolBar)
	**/
	public function insertToolBarBreak(QToolBar:Dynamic):Void;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isActiveWindow(self) -> bool
	**/
	public function isActiveWindow():Bool;
	/**
		isAncestorOf(self, QWidget) -> bool
	**/
	public function isAncestorOf(QWidget:Dynamic):Bool;
	/**
		isAnimated(self) -> bool
	**/
	public function isAnimated():Bool;
	/**
		isDockNestingEnabled(self) -> bool
	**/
	public function isDockNestingEnabled():Bool;
	/**
		isEnabled(self) -> bool
	**/
	public function isEnabled():Bool;
	/**
		isEnabledTo(self, QWidget) -> bool
	**/
	public function isEnabledTo(QWidget:Dynamic):Bool;
	/**
		isFullScreen(self) -> bool
	**/
	public function isFullScreen():Bool;
	/**
		isHidden(self) -> bool
	**/
	public function isHidden():Bool;
	/**
		isLeftToRight(self) -> bool
	**/
	public function isLeftToRight():Bool;
	/**
		isMaximized(self) -> bool
	**/
	public function isMaximized():Bool;
	/**
		isMinimized(self) -> bool
	**/
	public function isMinimized():Bool;
	/**
		isModal(self) -> bool
	**/
	public function isModal():Bool;
	/**
		isRightToLeft(self) -> bool
	**/
	public function isRightToLeft():Bool;
	/**
		isSeparator(self, QPoint) -> bool
	**/
	public function isSeparator(QPoint:Dynamic):Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isVisible(self) -> bool
	**/
	public function isVisible():Bool;
	/**
		isVisibleTo(self, QWidget) -> bool
	**/
	public function isVisibleTo(QWidget:Dynamic):Bool;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType():Bool;
	/**
		isWindow(self) -> bool
	**/
	public function isWindow():Bool;
	/**
		isWindowModified(self) -> bool
	**/
	public function isWindowModified():Bool;
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
		keyboardGrabber() -> QWidget
	**/
	static public function keyboardGrabber():Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		layout(self) -> QLayout
	**/
	public function layout():Dynamic;
	/**
		layoutDirection(self) -> Qt.LayoutDirection
	**/
	public function layoutDirection():Dynamic;
	/**
		leaveEvent(self, QEvent)
	**/
	public function leaveEvent(QEvent:Dynamic):Void;
	/**
		locale(self) -> QLocale
	**/
	public function locale():Dynamic;
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
		mapFrom(self, QWidget, QPoint) -> QPoint
	**/
	public function mapFrom(QWidget:Dynamic, QPoint:Dynamic):Dynamic;
	/**
		mapFromGlobal(self, QPoint) -> QPoint
	**/
	public function mapFromGlobal(QPoint:Dynamic):Dynamic;
	/**
		mapFromParent(self, QPoint) -> QPoint
	**/
	public function mapFromParent(QPoint:Dynamic):Dynamic;
	/**
		mapTo(self, QWidget, QPoint) -> QPoint
	**/
	public function mapTo(QWidget:Dynamic, QPoint:Dynamic):Dynamic;
	/**
		mapToGlobal(self, QPoint) -> QPoint
	**/
	public function mapToGlobal(QPoint:Dynamic):Dynamic;
	/**
		mapToParent(self, QPoint) -> QPoint
	**/
	public function mapToParent(QPoint:Dynamic):Dynamic;
	/**
		mask(self) -> QRegion
	**/
	public function mask():Dynamic;
	/**
		maximumHeight(self) -> int
	**/
	public function maximumHeight():Int;
	/**
		maximumSize(self) -> QSize
	**/
	public function maximumSize():Dynamic;
	/**
		maximumWidth(self) -> int
	**/
	public function maximumWidth():Int;
	/**
		menuBar(self) -> QMenuBar
	**/
	public function menuBar():Dynamic;
	/**
		menuWidget(self) -> QWidget
	**/
	public function menuWidget():Dynamic;
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
		minimumSize(self) -> QSize
	**/
	public function minimumSize():Dynamic;
	/**
		minimumSizeHint(self) -> QSize
	**/
	public function minimumSizeHint():Dynamic;
	/**
		minimumWidth(self) -> int
	**/
	public function minimumWidth():Int;
	/**
		mouseDoubleClickEvent(self, QMouseEvent)
	**/
	public function mouseDoubleClickEvent(QMouseEvent:Dynamic):Void;
	/**
		mouseGrabber() -> QWidget
	**/
	static public function mouseGrabber():Dynamic;
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
		move(self, QPoint)
		move(self, int, int)
	**/
	public function move(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		moveEvent(self, QMoveEvent)
	**/
	public function moveEvent(QMoveEvent:Dynamic):Void;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		nativeEvent(self, Union[QByteArray, bytes, bytearray], sip.voidptr) -> Tuple[bool, int]
	**/
	public function nativeEvent(Union:Dynamic, sip:Dynamic):Dynamic;
	/**
		nativeParentWidget(self) -> QWidget
	**/
	public function nativeParentWidget():Dynamic;
	/**
		nextInFocusChain(self) -> QWidget
	**/
	public function nextInFocusChain():Dynamic;
	/**
		normalGeometry(self) -> QRect
	**/
	public function normalGeometry():Dynamic;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		overrideWindowFlags(self, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	public function overrideWindowFlags(Union:Dynamic):Void;
	/**
		overrideWindowState(self, Union[Qt.WindowStates, Qt.WindowState])
	**/
	public function overrideWindowState(Union:Dynamic):Void;
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
		palette(self) -> QPalette
	**/
	public function palette():Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		parentWidget(self) -> QWidget
	**/
	public function parentWidget():Dynamic;
	/**
		physicalDpiX(self) -> int
	**/
	public function physicalDpiX():Int;
	/**
		physicalDpiY(self) -> int
	**/
	public function physicalDpiY():Int;
	/**
		pos(self) -> QPoint
	**/
	public function pos():Dynamic;
	/**
		previousInFocusChain(self) -> QWidget
	**/
	public function previousInFocusChain():Dynamic;
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
		rect(self) -> QRect
	**/
	public function rect():Dynamic;
	/**
		releaseKeyboard(self)
	**/
	public function releaseKeyboard():Void;
	/**
		releaseMouse(self)
	**/
	public function releaseMouse():Void;
	/**
		releaseShortcut(self, int)
	**/
	public function releaseShortcut(int:Int):Void;
	/**
		removeAction(self, QAction)
	**/
	public function removeAction(QAction:Dynamic):Void;
	/**
		removeDockWidget(self, QDockWidget)
	**/
	public function removeDockWidget(QDockWidget:Dynamic):Void;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeToolBar(self, QToolBar)
	**/
	public function removeToolBar(QToolBar:Dynamic):Void;
	/**
		removeToolBarBreak(self, QToolBar)
	**/
	public function removeToolBarBreak(QToolBar:Dynamic):Void;
	/**
		render(self, QPaintDevice, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: Union[QWidget.RenderFlags, QWidget.RenderFlag] = QWidget.RenderFlags(QWidget.DrawWindowBackground|QWidget.DrawChildren))
		render(self, QPainter, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: Union[QWidget.RenderFlags, QWidget.RenderFlag] = QWidget.RenderFlags(QWidget.DrawWindowBackground|QWidget.DrawChildren))
	**/
	public function render(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		repaint(self)
		repaint(self, int, int, int, int)
		repaint(self, QRect)
		repaint(self, QRegion)
	**/
	public function repaint(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		resize(self, QSize)
		resize(self, int, int)
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		resizeDocks(self, Iterable[QDockWidget], Iterable[int], Qt.Orientation)
	**/
	public function resizeDocks(Iterable:Dynamic, Iterable:Dynamic, Qt:Dynamic):Void;
	/**
		resizeEvent(self, QResizeEvent)
	**/
	public function resizeEvent(QResizeEvent:Dynamic):Void;
	/**
		restoreDockWidget(self, QDockWidget) -> bool
	**/
	public function restoreDockWidget(QDockWidget:Dynamic):Bool;
	/**
		restoreGeometry(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function restoreGeometry(Union:Dynamic):Bool;
	/**
		restoreState(self, Union[QByteArray, bytes, bytearray], version: int = 0) -> bool
	**/
	public function restoreState(Union:Dynamic, ?version:Dynamic):Bool;
	/**
		saveGeometry(self) -> QByteArray
	**/
	public function saveGeometry():Dynamic;
	/**
		saveState(self, version: int = 0) -> QByteArray
	**/
	public function saveState(?version:Dynamic):Dynamic;
	/**
		scroll(self, int, int)
		scroll(self, int, int, QRect)
	**/
	public function scroll(int:Int, int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setAcceptDrops(self, bool)
	**/
	public function setAcceptDrops(bool:Bool):Void;
	/**
		setAccessibleDescription(self, str)
	**/
	public function setAccessibleDescription(str:String):Void;
	/**
		setAccessibleName(self, str)
	**/
	public function setAccessibleName(str:String):Void;
	/**
		setAnimated(self, bool)
	**/
	public function setAnimated(bool:Bool):Void;
	/**
		setAttribute(self, Qt.WidgetAttribute, on: bool = True)
	**/
	public function setAttribute(Qt:Dynamic, ?on:Dynamic):Void;
	/**
		setAutoFillBackground(self, bool)
	**/
	public function setAutoFillBackground(bool:Bool):Void;
	/**
		setBackgroundRole(self, QPalette.ColorRole)
	**/
	public function setBackgroundRole(QPalette:Dynamic):Void;
	/**
		setBaseSize(self, int, int)
		setBaseSize(self, QSize)
	**/
	public function setBaseSize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setCentralWidget(self, QWidget)
	**/
	public function setCentralWidget(QWidget:Dynamic):Void;
	/**
		setContentsMargins(self, int, int, int, int)
		setContentsMargins(self, QMargins)
	**/
	public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setContextMenuPolicy(self, Qt.ContextMenuPolicy)
	**/
	public function setContextMenuPolicy(Qt:Dynamic):Void;
	/**
		setCorner(self, Qt.Corner, Qt.DockWidgetArea)
	**/
	public function setCorner(Qt:Dynamic, Qt:Dynamic):Void;
	/**
		setCursor(self, Union[QCursor, Qt.CursorShape])
	**/
	public function setCursor(Union:Dynamic):Void;
	/**
		setDisabled(self, bool)
	**/
	public function setDisabled(bool:Bool):Void;
	/**
		setDockNestingEnabled(self, bool)
	**/
	public function setDockNestingEnabled(bool:Bool):Void;
	/**
		setDockOptions(self, Union[QMainWindow.DockOptions, QMainWindow.DockOption])
	**/
	public function setDockOptions(Union:Dynamic):Void;
	/**
		setDocumentMode(self, bool)
	**/
	public function setDocumentMode(bool:Bool):Void;
	/**
		setEnabled(self, bool)
	**/
	public function setEnabled(bool:Bool):Void;
	/**
		setFixedHeight(self, int)
	**/
	public function setFixedHeight(int:Int):Void;
	/**
		setFixedSize(self, QSize)
		setFixedSize(self, int, int)
	**/
	public function setFixedSize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setFixedWidth(self, int)
	**/
	public function setFixedWidth(int:Int):Void;
	/**
		setFocus(self)
		setFocus(self, Qt.FocusReason)
	**/
	public function setFocus(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setFocusPolicy(self, Qt.FocusPolicy)
	**/
	public function setFocusPolicy(Qt:Dynamic):Void;
	/**
		setFocusProxy(self, QWidget)
	**/
	public function setFocusProxy(QWidget:Dynamic):Void;
	/**
		setFont(self, QFont)
	**/
	public function setFont(QFont:Dynamic):Void;
	/**
		setForegroundRole(self, QPalette.ColorRole)
	**/
	public function setForegroundRole(QPalette:Dynamic):Void;
	/**
		setGeometry(self, QRect)
		setGeometry(self, int, int, int, int)
	**/
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setGraphicsEffect(self, QGraphicsEffect)
	**/
	public function setGraphicsEffect(QGraphicsEffect:Dynamic):Void;
	/**
		setHidden(self, bool)
	**/
	public function setHidden(bool:Bool):Void;
	/**
		setIconSize(self, QSize)
	**/
	public function setIconSize(QSize:Dynamic):Void;
	/**
		setInputMethodHints(self, Union[Qt.InputMethodHints, Qt.InputMethodHint])
	**/
	public function setInputMethodHints(Union:Dynamic):Void;
	/**
		setLayout(self, QLayout)
	**/
	public function setLayout(QLayout:Dynamic):Void;
	/**
		setLayoutDirection(self, Qt.LayoutDirection)
	**/
	public function setLayoutDirection(Qt:Dynamic):Void;
	/**
		setLocale(self, QLocale)
	**/
	public function setLocale(QLocale:Dynamic):Void;
	/**
		setMask(self, QBitmap)
		setMask(self, QRegion)
	**/
	public function setMask(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setMaximumHeight(self, int)
	**/
	public function setMaximumHeight(int:Int):Void;
	/**
		setMaximumSize(self, int, int)
		setMaximumSize(self, QSize)
	**/
	public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setMaximumWidth(self, int)
	**/
	public function setMaximumWidth(int:Int):Void;
	/**
		setMenuBar(self, QMenuBar)
	**/
	public function setMenuBar(QMenuBar:Dynamic):Void;
	/**
		setMenuWidget(self, QWidget)
	**/
	public function setMenuWidget(QWidget:Dynamic):Void;
	/**
		setMinimumHeight(self, int)
	**/
	public function setMinimumHeight(int:Int):Void;
	/**
		setMinimumSize(self, int, int)
		setMinimumSize(self, QSize)
	**/
	public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setMinimumWidth(self, int)
	**/
	public function setMinimumWidth(int:Int):Void;
	/**
		setMouseTracking(self, bool)
	**/
	public function setMouseTracking(bool:Bool):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setPalette(self, QPalette)
	**/
	public function setPalette(QPalette:Dynamic):Void;
	/**
		setParent(self, QWidget)
		setParent(self, QWidget, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	public function setParent(QWidget:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setShortcutAutoRepeat(self, int, enabled: bool = True)
	**/
	public function setShortcutAutoRepeat(int:Int, ?enabled:Dynamic):Void;
	/**
		setShortcutEnabled(self, int, enabled: bool = True)
	**/
	public function setShortcutEnabled(int:Int, ?enabled:Dynamic):Void;
	/**
		setSizeIncrement(self, int, int)
		setSizeIncrement(self, QSize)
	**/
	public function setSizeIncrement(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setSizePolicy(self, QSizePolicy)
		setSizePolicy(self, QSizePolicy.Policy, QSizePolicy.Policy)
	**/
	public function setSizePolicy(QSizePolicy:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setStatusBar(self, QStatusBar)
	**/
	public function setStatusBar(QStatusBar:Dynamic):Void;
	/**
		setStatusTip(self, str)
	**/
	public function setStatusTip(str:String):Void;
	/**
		setStyle(self, QStyle)
	**/
	public function setStyle(QStyle:Dynamic):Void;
	/**
		setStyleSheet(self, str)
	**/
	public function setStyleSheet(str:String):Void;
	/**
		setTabOrder(QWidget, QWidget)
	**/
	static public function setTabOrder(QWidget:Dynamic, QWidget:Dynamic):Void;
	/**
		setTabPosition(self, Union[Qt.DockWidgetAreas, Qt.DockWidgetArea], QTabWidget.TabPosition)
	**/
	public function setTabPosition(Union:Dynamic, QTabWidget:Dynamic):Void;
	/**
		setTabShape(self, QTabWidget.TabShape)
	**/
	public function setTabShape(QTabWidget:Dynamic):Void;
	/**
		setToolButtonStyle(self, Qt.ToolButtonStyle)
	**/
	public function setToolButtonStyle(Qt:Dynamic):Void;
	/**
		setToolTip(self, str)
	**/
	public function setToolTip(str:String):Void;
	/**
		setToolTipDuration(self, int)
	**/
	public function setToolTipDuration(int:Int):Void;
	/**
		setUnifiedTitleAndToolBarOnMac(self, bool)
	**/
	public function setUnifiedTitleAndToolBarOnMac(bool:Bool):Void;
	/**
		setUpdatesEnabled(self, bool)
	**/
	public function setUpdatesEnabled(bool:Bool):Void;
	/**
		setVisible(self, bool)
	**/
	public function setVisible(bool:Bool):Void;
	/**
		setWhatsThis(self, str)
	**/
	public function setWhatsThis(str:String):Void;
	/**
		setWindowFilePath(self, str)
	**/
	public function setWindowFilePath(str:String):Void;
	/**
		setWindowFlags(self, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	public function setWindowFlags(Union:Dynamic):Void;
	/**
		setWindowIcon(self, QIcon)
	**/
	public function setWindowIcon(QIcon:Dynamic):Void;
	/**
		setWindowIconText(self, str)
	**/
	public function setWindowIconText(str:String):Void;
	/**
		setWindowModality(self, Qt.WindowModality)
	**/
	public function setWindowModality(Qt:Dynamic):Void;
	/**
		setWindowModified(self, bool)
	**/
	public function setWindowModified(bool:Bool):Void;
	/**
		setWindowOpacity(self, float)
	**/
	public function setWindowOpacity(float:Float):Void;
	/**
		setWindowRole(self, str)
	**/
	public function setWindowRole(str:String):Void;
	/**
		setWindowState(self, Union[Qt.WindowStates, Qt.WindowState])
	**/
	public function setWindowState(Union:Dynamic):Void;
	/**
		setWindowTitle(self, str)
	**/
	public function setWindowTitle(str:String):Void;
	/**
		sharedPainter(self) -> QPainter
	**/
	public function sharedPainter():Dynamic;
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
		sizeHint(self) -> QSize
	**/
	public function sizeHint():Dynamic;
	/**
		sizeIncrement(self) -> QSize
	**/
	public function sizeIncrement():Dynamic;
	/**
		sizePolicy(self) -> QSizePolicy
	**/
	public function sizePolicy():Dynamic;
	/**
		splitDockWidget(self, QDockWidget, QDockWidget, Qt.Orientation)
	**/
	public function splitDockWidget(QDockWidget:Dynamic, QDockWidget:Dynamic, Qt:Dynamic):Void;
	/**
		stackUnder(self, QWidget)
	**/
	public function stackUnder(QWidget:Dynamic):Void;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		statusBar(self) -> QStatusBar
	**/
	public function statusBar():Dynamic;
	/**
		statusTip(self) -> str
	**/
	public function statusTip():String;
	/**
		style(self) -> QStyle
	**/
	public function style():Dynamic;
	/**
		styleSheet(self) -> str
	**/
	public function styleSheet():String;
	/**
		tabPosition(self, Qt.DockWidgetArea) -> QTabWidget.TabPosition
	**/
	public function tabPosition(Qt:Dynamic):Dynamic;
	/**
		tabShape(self) -> QTabWidget.TabShape
	**/
	public function tabShape():Dynamic;
	/**
		tabifiedDockWidgets(self, QDockWidget) -> object
	**/
	public function tabifiedDockWidgets(QDockWidget:Dynamic):Dynamic;
	/**
		tabifyDockWidget(self, QDockWidget, QDockWidget)
	**/
	public function tabifyDockWidget(QDockWidget:Dynamic, QDockWidget:Dynamic):Void;
	/**
		tabletEvent(self, QTabletEvent)
	**/
	public function tabletEvent(QTabletEvent:Dynamic):Void;
	/**
		takeCentralWidget(self) -> QWidget
	**/
	public function takeCentralWidget():Dynamic;
	/**
		testAttribute(self, Qt.WidgetAttribute) -> bool
	**/
	public function testAttribute(Qt:Dynamic):Bool;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		toolBarArea(self, QToolBar) -> Qt.ToolBarArea
	**/
	public function toolBarArea(QToolBar:Dynamic):Dynamic;
	/**
		toolBarBreak(self, QToolBar) -> bool
	**/
	public function toolBarBreak(QToolBar:Dynamic):Bool;
	/**
		toolButtonStyle(self) -> Qt.ToolButtonStyle
	**/
	public function toolButtonStyle():Dynamic;
	/**
		toolButtonStyleChanged(self, Qt.ToolButtonStyle) [signal]
	**/
	public var toolButtonStyleChanged : Dynamic;
	/**
		toolTip(self) -> str
	**/
	public function toolTip():String;
	/**
		toolTipDuration(self) -> int
	**/
	public function toolTipDuration():Int;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		underMouse(self) -> bool
	**/
	public function underMouse():Bool;
	/**
		ungrabGesture(self, Qt.GestureType)
	**/
	public function ungrabGesture(Qt:Dynamic):Void;
	/**
		unifiedTitleAndToolBarOnMac(self) -> bool
	**/
	public function unifiedTitleAndToolBarOnMac():Bool;
	/**
		unsetCursor(self)
	**/
	public function unsetCursor():Void;
	/**
		unsetLayoutDirection(self)
	**/
	public function unsetLayoutDirection():Void;
	/**
		unsetLocale(self)
	**/
	public function unsetLocale():Void;
	/**
		update(self)
		update(self, QRect)
		update(self, QRegion)
		update(self, int, int, int, int)
	**/
	public function update(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		updateGeometry(self)
	**/
	public function updateGeometry():Void;
	/**
		updateMicroFocus(self)
	**/
	public function updateMicroFocus():Void;
	/**
		updatesEnabled(self) -> bool
	**/
	public function updatesEnabled():Bool;
	/**
		visibleRegion(self) -> QRegion
	**/
	public function visibleRegion():Dynamic;
	/**
		whatsThis(self) -> str
	**/
	public function whatsThis():String;
	/**
		wheelEvent(self, QWheelEvent)
	**/
	public function wheelEvent(QWheelEvent:Dynamic):Void;
	/**
		width(self) -> int
	**/
	public function width():Int;
	/**
		widthMM(self) -> int
	**/
	public function widthMM():Int;
	/**
		winId(self) -> sip.voidptr
	**/
	public function winId():Dynamic;
	/**
		window(self) -> QWidget
	**/
	public function window():Dynamic;
	/**
		windowFilePath(self) -> str
	**/
	public function windowFilePath():String;
	/**
		windowFlags(self) -> Qt.WindowFlags
	**/
	public function windowFlags():Dynamic;
	/**
		windowHandle(self) -> QWindow
	**/
	public function windowHandle():Dynamic;
	/**
		windowIcon(self) -> QIcon
	**/
	public function windowIcon():Dynamic;
	/**
		windowIconChanged(self, QIcon) [signal]
	**/
	public var windowIconChanged : Dynamic;
	/**
		windowIconText(self) -> str
	**/
	public function windowIconText():String;
	/**
		windowIconTextChanged(self, str) [signal]
	**/
	public var windowIconTextChanged : Dynamic;
	/**
		windowModality(self) -> Qt.WindowModality
	**/
	public function windowModality():Dynamic;
	/**
		windowOpacity(self) -> float
	**/
	public function windowOpacity():Float;
	/**
		windowRole(self) -> str
	**/
	public function windowRole():String;
	/**
		windowState(self) -> Qt.WindowStates
	**/
	public function windowState():Dynamic;
	/**
		windowTitle(self) -> str
	**/
	public function windowTitle():String;
	/**
		windowTitleChanged(self, str) [signal]
	**/
	public var windowTitleChanged : Dynamic;
	/**
		windowType(self) -> Qt.WindowType
	**/
	public function windowType():Dynamic;
	/**
		x(self) -> int
	**/
	public function x():Int;
	/**
		y(self) -> int
	**/
	public function y():Int;
}