/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt;
@:pythonImport("matplotlib.backends.backend_qt", "SubplotToolQt") extern class SubplotToolQt {
	static public var Accepted : Dynamic;
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
	public function DialogCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DrawChildren : Dynamic;
	static public var DrawWindowBackground : Dynamic;
	static public var IgnoreMask : Dynamic;
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
	static public var Rejected : Dynamic;
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
	public function RenderFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.RenderFlags()
		QWidget.RenderFlags(Union[QWidget.RenderFlags, QWidget.RenderFlag])
		QWidget.RenderFlags(QWidget.RenderFlags)
	**/
	public function RenderFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__getattr__(self, str) -> object
	**/
	public function __getattr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(targetfig:Dynamic, parent:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(targetfig:Dynamic, parent:Dynamic):Void;
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
	public function _export_values():Dynamic;
	public function _on_value_changed():Dynamic;
	public function _reset():Dynamic;
	public function _tight_layout():Dynamic;
	/**
		accept(self)
	**/
	public function accept(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acceptDrops(self) -> bool
	**/
	public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accepted(self) [signal]
	**/
	public function accepted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accessibleDescription(self) -> str
	**/
	public function accessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accessibleName(self) -> str
	**/
	public function accessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		actionEvent(self, QActionEvent)
	**/
	public function actionEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		actions(self) -> List[QAction]
	**/
	public function actions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		activateWindow(self)
	**/
	public function activateWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addAction(self, QAction)
	**/
	public function addAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addActions(self, Iterable[QAction])
	**/
	public function addActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		adjustSize(self)
	**/
	public function adjustSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		autoFillBackground(self) -> bool
	**/
	public function autoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		backgroundRole(self) -> QPalette.ColorRole
	**/
	public function backgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		baseSize(self) -> QSize
	**/
	public function baseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		changeEvent(self, QEvent)
	**/
	public function changeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childAt(self, QPoint) -> QWidget
		childAt(self, int, int) -> QWidget
	**/
	public function childAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		children(self) -> List[QObject]
	**/
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childrenRect(self) -> QRect
	**/
	public function childrenRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childrenRegion(self) -> QRegion
	**/
	public function childrenRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clearFocus(self)
	**/
	public function clearFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clearMask(self)
	**/
	public function clearMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		close(self) -> bool
	**/
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		closeEvent(self, QCloseEvent)
	**/
	public function closeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		colorCount(self) -> int
	**/
	public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contentsMargins(self) -> QMargins
	**/
	public function contentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contentsRect(self) -> QRect
	**/
	public function contentsRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contextMenuEvent(self, QContextMenuEvent)
	**/
	public function contextMenuEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contextMenuPolicy(self) -> Qt.ContextMenuPolicy
	**/
	public function contextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		create(self, window: sip.voidptr = 0, initializeWindow: bool = True, destroyOldWindow: bool = True)
	**/
	public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createWindowContainer(QWindow, parent: QWidget = None, flags: Union[Qt.WindowFlags, Qt.WindowType] = 0) -> QWidget
	**/
	public function createWindowContainer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cursor(self) -> QCursor
	**/
	public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		customContextMenuRequested(self, QPoint) [signal]
	**/
	public function customContextMenuRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deleteLater(self)
	**/
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		depth(self) -> int
	**/
	public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy(self, destroyWindow: bool = True, destroySubWindows: bool = True)
	**/
	public function destroy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroyed(self, object: QObject = None) [signal]
	**/
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devType(self) -> int
	**/
	public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devicePixelRatio(self) -> int
	**/
	public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devicePixelRatioF(self) -> float
	**/
	public function devicePixelRatioF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devicePixelRatioFScale() -> float
	**/
	public function devicePixelRatioFScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		disconnect(self)
	**/
	public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		disconnectNotify(self, QMetaMethod)
	**/
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		done(self, int)
	**/
	public function done(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dragEnterEvent(self, QDragEnterEvent)
	**/
	public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dragLeaveEvent(self, QDragLeaveEvent)
	**/
	public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dragMoveEvent(self, QDragMoveEvent)
	**/
	public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dropEvent(self, QDropEvent)
	**/
	public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dumpObjectInfo(self)
	**/
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dumpObjectTree(self)
	**/
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dynamicPropertyNames(self) -> List[QByteArray]
	**/
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		effectiveWinId(self) -> sip.voidptr
	**/
	public function effectiveWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ensurePolished(self)
	**/
	public function ensurePolished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		enterEvent(self, QEvent)
	**/
	public function enterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exec(self) -> int
	**/
	public function exec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exec_(self) -> int
	**/
	public function exec_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		find(sip.voidptr) -> QWidget
	**/
	public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		finished(self, int) [signal]
	**/
	public function finished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusInEvent(self, QFocusEvent)
	**/
	public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusNextChild(self) -> bool
	**/
	public function focusNextChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusNextPrevChild(self, bool) -> bool
	**/
	public function focusNextPrevChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusOutEvent(self, QFocusEvent)
	**/
	public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusPolicy(self) -> Qt.FocusPolicy
	**/
	public function focusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusPreviousChild(self) -> bool
	**/
	public function focusPreviousChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusProxy(self) -> QWidget
	**/
	public function focusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusWidget(self) -> QWidget
	**/
	public function focusWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		font(self) -> QFont
	**/
	public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fontInfo(self) -> QFontInfo
	**/
	public function fontInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fontMetrics(self) -> QFontMetrics
	**/
	public function fontMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		foregroundRole(self) -> QPalette.ColorRole
	**/
	public function foregroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frameGeometry(self) -> QRect
	**/
	public function frameGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frameSize(self) -> QSize
	**/
	public function frameSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geometry(self) -> QRect
	**/
	public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getContentsMargins(self) -> Tuple[int, int, int, int]
	**/
	public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grab(self, rectangle: QRect = QRect(QPoint(0,0),QSize(-1,-1))) -> QPixmap
	**/
	public function grab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabGesture(self, Qt.GestureType, flags: Union[Qt.GestureFlags, Qt.GestureFlag] = Qt.GestureFlags())
	**/
	public function grabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabKeyboard(self)
	**/
	public function grabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabMouse(self)
		grabMouse(self, Union[QCursor, Qt.CursorShape])
	**/
	public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabShortcut(self, Union[QKeySequence, QKeySequence.StandardKey, str, int], context: Qt.ShortcutContext = Qt.WindowShortcut) -> int
	**/
	public function grabShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		graphicsEffect(self) -> QGraphicsEffect
	**/
	public function graphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		graphicsProxyWidget(self) -> QGraphicsProxyWidget
	**/
	public function graphicsProxyWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasFocus(self) -> bool
	**/
	public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasHeightForWidth(self) -> bool
	**/
	public function hasHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasMouseTracking(self) -> bool
	**/
	public function hasMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasTabletTracking(self) -> bool
	**/
	public function hasTabletTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		height(self) -> int
	**/
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heightForWidth(self, int) -> int
	**/
	public function heightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heightMM(self) -> int
	**/
	public function heightMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hide(self)
	**/
	public function hide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hideEvent(self, QHideEvent)
	**/
	public function hideEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		initPainter(self, QPainter)
	**/
	public function initPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodEvent(self, QInputMethodEvent)
	**/
	public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodHints(self) -> Qt.InputMethodHints
	**/
	public function inputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodQuery(self, Qt.InputMethodQuery) -> Any
	**/
	public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertAction(self, QAction, QAction)
	**/
	public function insertAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertActions(self, QAction, Iterable[QAction])
	**/
	public function insertActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isActiveWindow(self) -> bool
	**/
	public function isActiveWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isAncestorOf(self, QWidget) -> bool
	**/
	public function isAncestorOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEnabled(self) -> bool
	**/
	public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEnabledTo(self, QWidget) -> bool
	**/
	public function isEnabledTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isFullScreen(self) -> bool
	**/
	public function isFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isHidden(self) -> bool
	**/
	public function isHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isLeftToRight(self) -> bool
	**/
	public function isLeftToRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isMaximized(self) -> bool
	**/
	public function isMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isMinimized(self) -> bool
	**/
	public function isMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isModal(self) -> bool
	**/
	public function isModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isRightToLeft(self) -> bool
	**/
	public function isRightToLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isSizeGripEnabled(self) -> bool
	**/
	public function isSizeGripEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isVisible(self) -> bool
	**/
	public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isVisibleTo(self, QWidget) -> bool
	**/
	public function isVisibleTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWindow(self) -> bool
	**/
	public function isWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWindowModified(self) -> bool
	**/
	public function isWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWindowType(self) -> bool
	**/
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		keyPressEvent(self, QKeyEvent)
	**/
	public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		keyReleaseEvent(self, QKeyEvent)
	**/
	public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		keyboardGrabber() -> QWidget
	**/
	public function keyboardGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		layout(self) -> QLayout
	**/
	public function layout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		layoutDirection(self) -> Qt.LayoutDirection
	**/
	public function layoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		leaveEvent(self, QEvent)
	**/
	public function leaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		locale(self) -> QLocale
	**/
	public function locale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logicalDpiX(self) -> int
	**/
	public function logicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logicalDpiY(self) -> int
	**/
	public function logicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lower(self)
	**/
	public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapFrom(self, QWidget, QPoint) -> QPoint
	**/
	public function mapFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapFromGlobal(self, QPoint) -> QPoint
	**/
	public function mapFromGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapFromParent(self, QPoint) -> QPoint
	**/
	public function mapFromParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapTo(self, QWidget, QPoint) -> QPoint
	**/
	public function mapTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapToGlobal(self, QPoint) -> QPoint
	**/
	public function mapToGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapToParent(self, QPoint) -> QPoint
	**/
	public function mapToParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mask(self) -> QRegion
	**/
	public function mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumHeight(self) -> int
	**/
	public function maximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumSize(self) -> QSize
	**/
	public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumWidth(self) -> int
	**/
	public function maximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		metric(self, QPaintDevice.PaintDeviceMetric) -> int
	**/
	public function metric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumHeight(self) -> int
	**/
	public function minimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumSize(self) -> QSize
	**/
	public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumSizeHint(self) -> QSize
	**/
	public function minimumSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumWidth(self) -> int
	**/
	public function minimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseDoubleClickEvent(self, QMouseEvent)
	**/
	public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseGrabber() -> QWidget
	**/
	public function mouseGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseMoveEvent(self, QMouseEvent)
	**/
	public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mousePressEvent(self, QMouseEvent)
	**/
	public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseReleaseEvent(self, QMouseEvent)
	**/
	public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		move(self, QPoint)
		move(self, int, int)
	**/
	public function move(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		moveEvent(self, QMoveEvent)
	**/
	public function moveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nativeEvent(self, Union[QByteArray, bytes, bytearray], sip.voidptr) -> Tuple[bool, int]
	**/
	public function nativeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nativeParentWidget(self) -> QWidget
	**/
	public function nativeParentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nextInFocusChain(self) -> QWidget
	**/
	public function nextInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		normalGeometry(self) -> QRect
	**/
	public function normalGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		objectName(self) -> str
	**/
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		open(self)
	**/
	public function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		overrideWindowFlags(self, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	public function overrideWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		overrideWindowState(self, Union[Qt.WindowStates, Qt.WindowState])
	**/
	public function overrideWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paintEngine(self) -> QPaintEngine
	**/
	public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paintEvent(self, QPaintEvent)
	**/
	public function paintEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paintingActive(self) -> bool
	**/
	public function paintingActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		palette(self) -> QPalette
	**/
	public function palette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parentWidget(self) -> QWidget
	**/
	public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		physicalDpiX(self) -> int
	**/
	public function physicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		physicalDpiY(self) -> int
	**/
	public function physicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pos(self) -> QPoint
	**/
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		previousInFocusChain(self) -> QWidget
	**/
	public function previousInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		property(self, str) -> Any
	**/
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function raise_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rect(self) -> QRect
	**/
	public function rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reject(self)
	**/
	public function reject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rejected(self) [signal]
	**/
	public function rejected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		releaseKeyboard(self)
	**/
	public function releaseKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		releaseMouse(self)
	**/
	public function releaseMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		releaseShortcut(self, int)
	**/
	public function releaseShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeAction(self, QAction)
	**/
	public function removeAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		render(self, QPaintDevice, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: Union[QWidget.RenderFlags, QWidget.RenderFlag] = QWidget.RenderFlags(QWidget.DrawWindowBackground|QWidget.DrawChildren))
		render(self, QPainter, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: Union[QWidget.RenderFlags, QWidget.RenderFlag] = QWidget.RenderFlags(QWidget.DrawWindowBackground|QWidget.DrawChildren))
	**/
	public function render(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		repaint(self)
		repaint(self, int, int, int, int)
		repaint(self, QRect)
		repaint(self, QRegion)
	**/
	public function repaint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resize(self, QSize)
		resize(self, int, int)
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resizeEvent(self, QResizeEvent)
	**/
	public function resizeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		restoreGeometry(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function restoreGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		result(self) -> int
	**/
	public function result(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		saveGeometry(self) -> QByteArray
	**/
	public function saveGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scroll(self, int, int)
		scroll(self, int, int, QRect)
	**/
	public function scroll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAcceptDrops(self, bool)
	**/
	public function setAcceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAccessibleDescription(self, str)
	**/
	public function setAccessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAccessibleName(self, str)
	**/
	public function setAccessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAttribute(self, Qt.WidgetAttribute, on: bool = True)
	**/
	public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAutoFillBackground(self, bool)
	**/
	public function setAutoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setBackgroundRole(self, QPalette.ColorRole)
	**/
	public function setBackgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setBaseSize(self, int, int)
		setBaseSize(self, QSize)
	**/
	public function setBaseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setContentsMargins(self, int, int, int, int)
		setContentsMargins(self, QMargins)
	**/
	public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setContextMenuPolicy(self, Qt.ContextMenuPolicy)
	**/
	public function setContextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setCursor(self, Union[QCursor, Qt.CursorShape])
	**/
	public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setDisabled(self, bool)
	**/
	public function setDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setEnabled(self, bool)
	**/
	public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFixedHeight(self, int)
	**/
	public function setFixedHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFixedSize(self, QSize)
		setFixedSize(self, int, int)
	**/
	public function setFixedSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFixedWidth(self, int)
	**/
	public function setFixedWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFocus(self)
		setFocus(self, Qt.FocusReason)
	**/
	public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFocusPolicy(self, Qt.FocusPolicy)
	**/
	public function setFocusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFocusProxy(self, QWidget)
	**/
	public function setFocusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFont(self, QFont)
	**/
	public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setForegroundRole(self, QPalette.ColorRole)
	**/
	public function setForegroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setGeometry(self, QRect)
		setGeometry(self, int, int, int, int)
	**/
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setGraphicsEffect(self, QGraphicsEffect)
	**/
	public function setGraphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setHidden(self, bool)
	**/
	public function setHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setInputMethodHints(self, Union[Qt.InputMethodHints, Qt.InputMethodHint])
	**/
	public function setInputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setLayout(self, QLayout)
	**/
	public function setLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setLayoutDirection(self, Qt.LayoutDirection)
	**/
	public function setLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setLocale(self, QLocale)
	**/
	public function setLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMask(self, QBitmap)
		setMask(self, QRegion)
	**/
	public function setMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMaximumHeight(self, int)
	**/
	public function setMaximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMaximumSize(self, int, int)
		setMaximumSize(self, QSize)
	**/
	public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMaximumWidth(self, int)
	**/
	public function setMaximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMinimumHeight(self, int)
	**/
	public function setMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMinimumSize(self, int, int)
		setMinimumSize(self, QSize)
	**/
	public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMinimumWidth(self, int)
	**/
	public function setMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setModal(self, bool)
	**/
	public function setModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMouseTracking(self, bool)
	**/
	public function setMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setPalette(self, QPalette)
	**/
	public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setParent(self, QWidget)
		setParent(self, QWidget, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setResult(self, int)
	**/
	public function setResult(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setShortcutAutoRepeat(self, int, enabled: bool = True)
	**/
	public function setShortcutAutoRepeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setShortcutEnabled(self, int, enabled: bool = True)
	**/
	public function setShortcutEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setSizeGripEnabled(self, bool)
	**/
	public function setSizeGripEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setSizeIncrement(self, int, int)
		setSizeIncrement(self, QSize)
	**/
	public function setSizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setSizePolicy(self, QSizePolicy)
		setSizePolicy(self, QSizePolicy.Policy, QSizePolicy.Policy)
	**/
	public function setSizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStatusTip(self, str)
	**/
	public function setStatusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStyle(self, QStyle)
	**/
	public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStyleSheet(self, str)
	**/
	public function setStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setTabOrder(QWidget, QWidget)
	**/
	public function setTabOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setTabletTracking(self, bool)
	**/
	public function setTabletTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setToolTip(self, str)
	**/
	public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setToolTipDuration(self, int)
	**/
	public function setToolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setUpdatesEnabled(self, bool)
	**/
	public function setUpdatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setVisible(self, bool)
	**/
	public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWhatsThis(self, str)
	**/
	public function setWhatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowFilePath(self, str)
	**/
	public function setWindowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowFlag(self, Qt.WindowType, on: bool = True)
	**/
	public function setWindowFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowFlags(self, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	public function setWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowIcon(self, QIcon)
	**/
	public function setWindowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowIconText(self, str)
	**/
	public function setWindowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowModality(self, Qt.WindowModality)
	**/
	public function setWindowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowModified(self, bool)
	**/
	public function setWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowOpacity(self, float)
	**/
	public function setWindowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowRole(self, str)
	**/
	public function setWindowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowState(self, Union[Qt.WindowStates, Qt.WindowState])
	**/
	public function setWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowTitle(self, str)
	**/
	public function setWindowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sharedPainter(self) -> QPainter
	**/
	public function sharedPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		show(self)
	**/
	public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showEvent(self, QShowEvent)
	**/
	public function showEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showFullScreen(self)
	**/
	public function showFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showMaximized(self)
	**/
	public function showMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showMinimized(self)
	**/
	public function showMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showNormal(self)
	**/
	public function showNormal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		size(self) -> QSize
	**/
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizeHint(self) -> QSize
	**/
	public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizeIncrement(self) -> QSize
	**/
	public function sizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizePolicy(self) -> QSizePolicy
	**/
	public function sizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stackUnder(self, QWidget)
	**/
	public function stackUnder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		statusTip(self) -> str
	**/
	public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		style(self) -> QStyle
	**/
	public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		styleSheet(self) -> str
	**/
	public function styleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tabletEvent(self, QTabletEvent)
	**/
	public function tabletEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		testAttribute(self, Qt.WidgetAttribute) -> bool
	**/
	public function testAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		thread(self) -> QThread
	**/
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		toolTip(self) -> str
	**/
	public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		toolTipDuration(self) -> int
	**/
	public function toolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		underMouse(self) -> bool
	**/
	public function underMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ungrabGesture(self, Qt.GestureType)
	**/
	public function ungrabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsetCursor(self)
	**/
	public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsetLayoutDirection(self)
	**/
	public function unsetLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsetLocale(self)
	**/
	public function unsetLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		update(self)
		update(self, QRect)
		update(self, QRegion)
		update(self, int, int, int, int)
	**/
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		updateGeometry(self)
	**/
	public function updateGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		updateMicroFocus(self)
	**/
	public function updateMicroFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update_from_current_subplotpars():Dynamic;
	/**
		updatesEnabled(self) -> bool
	**/
	public function updatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		visibleRegion(self) -> QRegion
	**/
	public function visibleRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		whatsThis(self) -> str
	**/
	public function whatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		wheelEvent(self, QWheelEvent)
	**/
	public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		width(self) -> int
	**/
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		widthMM(self) -> int
	**/
	public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		winId(self) -> sip.voidptr
	**/
	public function winId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		window(self) -> QWidget
	**/
	public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowFilePath(self) -> str
	**/
	public function windowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowFlags(self) -> Qt.WindowFlags
	**/
	public function windowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowHandle(self) -> QWindow
	**/
	public function windowHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIcon(self) -> QIcon
	**/
	public function windowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIconChanged(self, QIcon) [signal]
	**/
	public function windowIconChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIconText(self) -> str
	**/
	public function windowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIconTextChanged(self, str) [signal]
	**/
	public function windowIconTextChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowModality(self) -> Qt.WindowModality
	**/
	public function windowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowOpacity(self) -> float
	**/
	public function windowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowRole(self) -> str
	**/
	public function windowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowState(self) -> Qt.WindowStates
	**/
	public function windowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowTitle(self) -> str
	**/
	public function windowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowTitleChanged(self, str) [signal]
	**/
	public function windowTitleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowType(self) -> Qt.WindowType
	**/
	public function windowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x(self) -> int
	**/
	public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y(self) -> int
	**/
	public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
}