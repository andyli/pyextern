/* This file is generated, do not edit! */
package matplotlib.backends.qt_editor.formlayout;
@:pythonImport("matplotlib.backends.qt_editor.formlayout", "FormTabWidget") extern class FormTabWidget {
	static public var DrawChildren : Dynamic;
	static public var DrawWindowBackground : Dynamic;
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
	static public function PaintDeviceMetric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PdmDepth : Dynamic;
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
	static public function RenderFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.RenderFlags(QWidget.RenderFlags)
		QWidget.RenderFlags(int)
		QWidget.RenderFlags()
	**/
	static public function RenderFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __getattr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(datalist:Dynamic, ?comment:Dynamic, ?parent:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(datalist:Dynamic, ?comment:Dynamic, ?parent:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		acceptDrops(self) -> bool
	**/
	static public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accessibleDescription(self) -> object
	**/
	static public function accessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accessibleName(self) -> object
	**/
	static public function accessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		actionEvent(self, QActionEvent)
	**/
	static public function actionEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		actions(self) -> object
	**/
	static public function actions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		activateWindow(self)
	**/
	static public function activateWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addAction(self, QAction)
	**/
	static public function addAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addActions(self, object)
	**/
	static public function addActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		adjustSize(self)
	**/
	static public function adjustSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		autoFillBackground(self) -> bool
	**/
	static public function autoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		backgroundRole(self) -> QPalette.ColorRole
	**/
	static public function backgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		baseSize(self) -> QSize
	**/
	static public function baseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	static public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		changeEvent(self, QEvent)
	**/
	static public function changeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childAt(self, QPoint) -> QWidget
		childAt(self, int, int) -> QWidget
	**/
	static public function childAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	static public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		children(self) -> object
	**/
	static public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childrenRect(self) -> QRect
	**/
	static public function childrenRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childrenRegion(self) -> QRegion
	**/
	static public function childrenRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clearFocus(self)
	**/
	static public function clearFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clearMask(self)
	**/
	static public function clearMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		close(self) -> bool
	**/
	static public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		closeEvent(self, QCloseEvent)
	**/
	static public function closeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		colorCount(self) -> int
	**/
	static public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		connect(QObject, QT_SIGNAL, QObject, QT_SLOT_QT_SIGNAL, Qt.ConnectionType = Qt.AutoConnection) -> object
		connect(QObject, QT_SIGNAL, Callable[..., None], Qt.ConnectionType = Qt.AutoConnection) -> object
		connect(self, QObject, QT_SIGNAL, QT_SLOT_QT_SIGNAL, Qt.ConnectionType = Qt.AutoConnection) -> object
	**/
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		connectNotify(self, QT_SIGNAL)
	**/
	static public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contentsMargins(self) -> QMargins
	**/
	static public function contentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contentsRect(self) -> QRect
	**/
	static public function contentsRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contextMenuEvent(self, QContextMenuEvent)
	**/
	static public function contextMenuEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contextMenuPolicy(self) -> Qt.ContextMenuPolicy
	**/
	static public function contextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		create(self, window: int = 0, initializeWindow: bool = True, destroyOldWindow: bool = True)
	**/
	static public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cursor(self) -> QCursor
	**/
	static public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		customContextMenuRequested(self, QPoint) [signal]
	**/
	public function customContextMenuRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	static public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deleteLater(self)
	**/
	static public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		depth(self) -> int
	**/
	static public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy(self, destroyWindow: bool = True, destroySubWindows: bool = True)
	**/
	static public function destroy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroyed(self, QObject = None) [signal]
		destroyed(self) [signal]
	**/
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devType(self) -> int
	**/
	static public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		disconnect(QObject, QT_SIGNAL, QObject, QT_SLOT_QT_SIGNAL) -> object
		disconnect(QObject, QT_SIGNAL, Callable[..., None]) -> object
	**/
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		disconnectNotify(self, QT_SIGNAL)
	**/
	static public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dragEnterEvent(self, QDragEnterEvent)
	**/
	static public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dragLeaveEvent(self, QDragLeaveEvent)
	**/
	static public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dragMoveEvent(self, QDragMoveEvent)
	**/
	static public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dropEvent(self, QDropEvent)
	**/
	static public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dumpObjectInfo(self)
	**/
	static public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dumpObjectTree(self)
	**/
	static public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dynamicPropertyNames(self) -> object
	**/
	static public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		effectiveWinId(self) -> int
	**/
	static public function effectiveWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		emit(self, QT_SIGNAL, *)
	**/
	static public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		enabledChange(self, bool)
	**/
	static public function enabledChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ensurePolished(self)
	**/
	static public function ensurePolished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		enterEvent(self, QEvent)
	**/
	static public function enterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	static public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	static public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		find(int) -> QWidget
	**/
	static public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		findChild(self, type, name: object = '') -> object
		findChild(self, Tuple, name: object = '') -> object
	**/
	static public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		findChildren(self, type, name: object = '') -> List
		findChildren(self, Tuple, name: object = '') -> List
		findChildren(self, type, QRegExp) -> List
		findChildren(self, Tuple, QRegExp) -> List
	**/
	static public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusInEvent(self, QFocusEvent)
	**/
	static public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusNextChild(self) -> bool
	**/
	static public function focusNextChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusNextPrevChild(self, bool) -> bool
	**/
	static public function focusNextPrevChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusOutEvent(self, QFocusEvent)
	**/
	static public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusPolicy(self) -> Qt.FocusPolicy
	**/
	static public function focusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusPreviousChild(self) -> bool
	**/
	static public function focusPreviousChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusProxy(self) -> QWidget
	**/
	static public function focusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		focusWidget(self) -> QWidget
	**/
	static public function focusWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		font(self) -> QFont
	**/
	static public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fontChange(self, QFont)
	**/
	static public function fontChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fontInfo(self) -> QFontInfo
	**/
	static public function fontInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fontMetrics(self) -> QFontMetrics
	**/
	static public function fontMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		foregroundRole(self) -> QPalette.ColorRole
	**/
	static public function foregroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frameGeometry(self) -> QRect
	**/
	static public function frameGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frameSize(self) -> QSize
	**/
	static public function frameSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geometry(self) -> QRect
	**/
	static public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get():Dynamic;
	/**
		getContentsMargins(self) -> Tuple[int, int, int, int]
	**/
	static public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabGesture(self, Qt.GestureType, flags: Qt.GestureFlags = Qt.GestureFlags(0))
	**/
	static public function grabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabKeyboard(self)
	**/
	static public function grabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabMouse(self)
		grabMouse(self, QCursor)
	**/
	static public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabShortcut(self, QKeySequence, context: Qt.ShortcutContext = Qt.WindowShortcut) -> int
	**/
	static public function grabShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		graphicsEffect(self) -> QGraphicsEffect
	**/
	static public function graphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		graphicsProxyWidget(self) -> QGraphicsProxyWidget
	**/
	static public function graphicsProxyWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		handle(self) -> int
	**/
	static public function handle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasFocus(self) -> bool
	**/
	static public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasMouseTracking(self) -> bool
	**/
	static public function hasMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		height(self) -> int
	**/
	static public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heightForWidth(self, int) -> int
	**/
	static public function heightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heightMM(self) -> int
	**/
	static public function heightMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hide(self)
	**/
	static public function hide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hideEvent(self, QHideEvent)
	**/
	static public function hideEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	static public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputContext(self) -> QInputContext
	**/
	static public function inputContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodEvent(self, QInputMethodEvent)
	**/
	static public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodHints(self) -> Qt.InputMethodHints
	**/
	static public function inputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodQuery(self, Qt.InputMethodQuery) -> object
	**/
	static public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertAction(self, QAction, QAction)
	**/
	static public function insertAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertActions(self, QAction, object)
	**/
	static public function insertActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		installEventFilter(self, QObject)
	**/
	static public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isActiveWindow(self) -> bool
	**/
	static public function isActiveWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isAncestorOf(self, QWidget) -> bool
	**/
	static public function isAncestorOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEnabled(self) -> bool
	**/
	static public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEnabledTo(self, QWidget) -> bool
	**/
	static public function isEnabledTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEnabledToTLW(self) -> bool
	**/
	static public function isEnabledToTLW(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isFullScreen(self) -> bool
	**/
	static public function isFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isHidden(self) -> bool
	**/
	static public function isHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isLeftToRight(self) -> bool
	**/
	static public function isLeftToRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isMaximized(self) -> bool
	**/
	static public function isMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isMinimized(self) -> bool
	**/
	static public function isMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isModal(self) -> bool
	**/
	static public function isModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isRightToLeft(self) -> bool
	**/
	static public function isRightToLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isTopLevel(self) -> bool
	**/
	static public function isTopLevel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isVisible(self) -> bool
	**/
	static public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isVisibleTo(self, QWidget) -> bool
	**/
	static public function isVisibleTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWidgetType(self) -> bool
	**/
	static public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWindow(self) -> bool
	**/
	static public function isWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWindowModified(self) -> bool
	**/
	static public function isWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		keyPressEvent(self, QKeyEvent)
	**/
	static public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		keyReleaseEvent(self, QKeyEvent)
	**/
	static public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		keyboardGrabber() -> QWidget
	**/
	static public function keyboardGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		killTimer(self, int)
	**/
	static public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		languageChange(self)
	**/
	static public function languageChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		layout(self) -> QLayout
	**/
	static public function layout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		layoutDirection(self) -> Qt.LayoutDirection
	**/
	static public function layoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		leaveEvent(self, QEvent)
	**/
	static public function leaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		locale(self) -> QLocale
	**/
	static public function locale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logicalDpiX(self) -> int
	**/
	static public function logicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logicalDpiY(self) -> int
	**/
	static public function logicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lower(self)
	**/
	static public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapFrom(self, QWidget, QPoint) -> QPoint
	**/
	static public function mapFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapFromGlobal(self, QPoint) -> QPoint
	**/
	static public function mapFromGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapFromParent(self, QPoint) -> QPoint
	**/
	static public function mapFromParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapTo(self, QWidget, QPoint) -> QPoint
	**/
	static public function mapTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapToGlobal(self, QPoint) -> QPoint
	**/
	static public function mapToGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mapToParent(self, QPoint) -> QPoint
	**/
	static public function mapToParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mask(self) -> QRegion
	**/
	static public function mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumHeight(self) -> int
	**/
	static public function maximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumSize(self) -> QSize
	**/
	static public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumWidth(self) -> int
	**/
	static public function maximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	static public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		metric(self, QPaintDevice.PaintDeviceMetric) -> int
	**/
	static public function metric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumHeight(self) -> int
	**/
	static public function minimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumSize(self) -> QSize
	**/
	static public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumSizeHint(self) -> QSize
	**/
	static public function minimumSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumWidth(self) -> int
	**/
	static public function minimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseDoubleClickEvent(self, QMouseEvent)
	**/
	static public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseGrabber() -> QWidget
	**/
	static public function mouseGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseMoveEvent(self, QMouseEvent)
	**/
	static public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mousePressEvent(self, QMouseEvent)
	**/
	static public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseReleaseEvent(self, QMouseEvent)
	**/
	static public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		move(self, QPoint)
		move(self, int, int)
	**/
	static public function move(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		moveEvent(self, QMoveEvent)
	**/
	static public function moveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	static public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nativeParentWidget(self) -> QWidget
	**/
	static public function nativeParentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nextInFocusChain(self) -> QWidget
	**/
	static public function nextInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		normalGeometry(self) -> QRect
	**/
	static public function normalGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numColors(self) -> int
	**/
	static public function numColors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		objectName(self) -> object
	**/
	static public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		overrideWindowFlags(self, Qt.WindowFlags)
	**/
	static public function overrideWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		overrideWindowState(self, Qt.WindowStates)
	**/
	static public function overrideWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paintEngine(self) -> QPaintEngine
	**/
	static public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paintEvent(self, QPaintEvent)
	**/
	static public function paintEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paintingActive(self) -> bool
	**/
	static public function paintingActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		palette(self) -> QPalette
	**/
	static public function palette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		paletteChange(self, QPalette)
	**/
	static public function paletteChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parent(self) -> QObject
	**/
	static public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parentWidget(self) -> QWidget
	**/
	static public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		physicalDpiX(self) -> int
	**/
	static public function physicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		physicalDpiY(self) -> int
	**/
	static public function physicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pos(self) -> QPoint
	**/
	static public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		previousInFocusChain(self) -> QWidget
	**/
	static public function previousInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		property(self, str) -> object
	**/
	static public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.pyqtConfigure(...)
		
		Each keyword argument is either the name of a Qt property or a Qt signal.
		For properties the property is set to the given value which should be of an
		appropriate type.
		For signals the signal is connected to the given value which should be a
		callable.
	**/
	static public function pyqtConfigure(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		raise_(self)
	**/
	static public function raise_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		receivers(self, QT_SIGNAL) -> int
	**/
	static public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rect(self) -> QRect
	**/
	static public function rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		releaseKeyboard(self)
	**/
	static public function releaseKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		releaseMouse(self)
	**/
	static public function releaseMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		releaseShortcut(self, int)
	**/
	static public function releaseShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeAction(self, QAction)
	**/
	static public function removeAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	static public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		render(self, QPaintDevice, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: QWidget.RenderFlags = QWidget.DrawWindowBackground|QWidget.DrawChildren)
		render(self, QPainter, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: QWidget.RenderFlags = QWidget.DrawWindowBackground|QWidget.DrawChildren)
	**/
	static public function render(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		repaint(self)
		repaint(self, int, int, int, int)
		repaint(self, QRect)
		repaint(self, QRegion)
	**/
	static public function repaint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resetInputContext(self)
	**/
	static public function resetInputContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resize(self, QSize)
		resize(self, int, int)
	**/
	static public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resizeEvent(self, QResizeEvent)
	**/
	static public function resizeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		restoreGeometry(self, QByteArray) -> bool
	**/
	static public function restoreGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		saveGeometry(self) -> QByteArray
	**/
	static public function saveGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scroll(self, int, int)
		scroll(self, int, int, QRect)
	**/
	static public function scroll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sender(self) -> QObject
	**/
	static public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	static public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAcceptDrops(self, bool)
	**/
	static public function setAcceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAccessibleDescription(self, object)
	**/
	static public function setAccessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAccessibleName(self, object)
	**/
	static public function setAccessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAttribute(self, Qt.WidgetAttribute, on: bool = True)
	**/
	static public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAutoFillBackground(self, bool)
	**/
	static public function setAutoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setBackgroundRole(self, QPalette.ColorRole)
	**/
	static public function setBackgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setBaseSize(self, int, int)
		setBaseSize(self, QSize)
	**/
	static public function setBaseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setContentsMargins(self, int, int, int, int)
		setContentsMargins(self, QMargins)
	**/
	static public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setContextMenuPolicy(self, Qt.ContextMenuPolicy)
	**/
	static public function setContextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setCursor(self, QCursor)
	**/
	static public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setDisabled(self, bool)
	**/
	static public function setDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setEnabled(self, bool)
	**/
	static public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFixedHeight(self, int)
	**/
	static public function setFixedHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFixedSize(self, QSize)
		setFixedSize(self, int, int)
	**/
	static public function setFixedSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFixedWidth(self, int)
	**/
	static public function setFixedWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFocus(self)
		setFocus(self, Qt.FocusReason)
	**/
	static public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFocusPolicy(self, Qt.FocusPolicy)
	**/
	static public function setFocusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFocusProxy(self, QWidget)
	**/
	static public function setFocusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setFont(self, QFont)
	**/
	static public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setForegroundRole(self, QPalette.ColorRole)
	**/
	static public function setForegroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setGeometry(self, QRect)
		setGeometry(self, int, int, int, int)
	**/
	static public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setGraphicsEffect(self, QGraphicsEffect)
	**/
	static public function setGraphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setHidden(self, bool)
	**/
	static public function setHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setInputContext(self, QInputContext)
	**/
	static public function setInputContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setInputMethodHints(self, Qt.InputMethodHints)
	**/
	static public function setInputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setLayout(self, QLayout)
	**/
	static public function setLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setLayoutDirection(self, Qt.LayoutDirection)
	**/
	static public function setLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setLocale(self, QLocale)
	**/
	static public function setLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMask(self, QBitmap)
		setMask(self, QRegion)
	**/
	static public function setMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMaximumHeight(self, int)
	**/
	static public function setMaximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMaximumSize(self, int, int)
		setMaximumSize(self, QSize)
	**/
	static public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMaximumWidth(self, int)
	**/
	static public function setMaximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMinimumHeight(self, int)
	**/
	static public function setMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMinimumSize(self, int, int)
		setMinimumSize(self, QSize)
	**/
	static public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMinimumWidth(self, int)
	**/
	static public function setMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMouseTracking(self, bool)
	**/
	static public function setMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setObjectName(self, object)
	**/
	static public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setPalette(self, QPalette)
	**/
	static public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setParent(self, QWidget)
		setParent(self, QWidget, Qt.WindowFlags)
	**/
	static public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setProperty(self, str, object) -> bool
	**/
	static public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setShortcutAutoRepeat(self, int, enabled: bool = True)
	**/
	static public function setShortcutAutoRepeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setShortcutEnabled(self, int, enabled: bool = True)
	**/
	static public function setShortcutEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setShown(self, bool)
	**/
	static public function setShown(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setSizeIncrement(self, int, int)
		setSizeIncrement(self, QSize)
	**/
	static public function setSizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setSizePolicy(self, QSizePolicy)
		setSizePolicy(self, QSizePolicy.Policy, QSizePolicy.Policy)
	**/
	static public function setSizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStatusTip(self, object)
	**/
	static public function setStatusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStyle(self, QStyle)
	**/
	static public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStyleSheet(self, object)
	**/
	static public function setStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setTabOrder(QWidget, QWidget)
	**/
	static public function setTabOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setToolTip(self, object)
	**/
	static public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setUpdatesEnabled(self, bool)
	**/
	static public function setUpdatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setVisible(self, bool)
	**/
	static public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWhatsThis(self, object)
	**/
	static public function setWhatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowFilePath(self, object)
	**/
	static public function setWindowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowFlags(self, Qt.WindowFlags)
	**/
	static public function setWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowIcon(self, QIcon)
	**/
	static public function setWindowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowIconText(self, object)
	**/
	static public function setWindowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowModality(self, Qt.WindowModality)
	**/
	static public function setWindowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowModified(self, bool)
	**/
	static public function setWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowOpacity(self, float)
	**/
	static public function setWindowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowRole(self, object)
	**/
	static public function setWindowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowState(self, Qt.WindowStates)
	**/
	static public function setWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowTitle(self, object)
	**/
	static public function setWindowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setup():Dynamic;
	/**
		show(self)
	**/
	static public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showEvent(self, QShowEvent)
	**/
	static public function showEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showFullScreen(self)
	**/
	static public function showFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showMaximized(self)
	**/
	static public function showMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showMinimized(self)
	**/
	static public function showMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showNormal(self)
	**/
	static public function showNormal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		signalsBlocked(self) -> bool
	**/
	static public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		size(self) -> QSize
	**/
	static public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizeHint(self) -> QSize
	**/
	static public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizeIncrement(self) -> QSize
	**/
	static public function sizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizePolicy(self) -> QSizePolicy
	**/
	static public function sizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stackUnder(self, QWidget)
	**/
	static public function stackUnder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		startTimer(self, int) -> int
	**/
	static public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		statusTip(self) -> object
	**/
	static public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		style(self) -> QStyle
	**/
	static public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		styleSheet(self) -> object
	**/
	static public function styleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tabletEvent(self, QTabletEvent)
	**/
	static public function tabletEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		testAttribute(self, Qt.WidgetAttribute) -> bool
	**/
	static public function testAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		thread(self) -> QThread
	**/
	static public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	static public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		toolTip(self) -> object
	**/
	static public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		topLevelWidget(self) -> QWidget
	**/
	static public function topLevelWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tr(self, object, disambiguation: str = None, n: int = -1) -> object
	**/
	static public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trUtf8(self, object, disambiguation: str = None, n: int = -1) -> object
	**/
	static public function trUtf8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		underMouse(self) -> bool
	**/
	static public function underMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ungrabGesture(self, Qt.GestureType)
	**/
	static public function ungrabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsetCursor(self)
	**/
	static public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsetLayoutDirection(self)
	**/
	static public function unsetLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsetLocale(self)
	**/
	static public function unsetLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		update(self)
		update(self, QRect)
		update(self, QRegion)
		update(self, int, int, int, int)
	**/
	static public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		updateGeometry(self)
	**/
	static public function updateGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		updateMicroFocus(self)
	**/
	static public function updateMicroFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update_buttons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		updatesEnabled(self) -> bool
	**/
	static public function updatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		visibleRegion(self) -> QRegion
	**/
	static public function visibleRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		whatsThis(self) -> object
	**/
	static public function whatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		wheelEvent(self, QWheelEvent)
	**/
	static public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		width(self) -> int
	**/
	static public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		widthMM(self) -> int
	**/
	static public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		winId(self) -> int
	**/
	static public function winId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		window(self) -> QWidget
	**/
	static public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowActivationChange(self, bool)
	**/
	static public function windowActivationChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowFilePath(self) -> object
	**/
	static public function windowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowFlags(self) -> Qt.WindowFlags
	**/
	static public function windowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIcon(self) -> QIcon
	**/
	static public function windowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIconText(self) -> object
	**/
	static public function windowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowModality(self) -> Qt.WindowModality
	**/
	static public function windowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowOpacity(self) -> float
	**/
	static public function windowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowRole(self) -> object
	**/
	static public function windowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowState(self) -> Qt.WindowStates
	**/
	static public function windowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowTitle(self) -> object
	**/
	static public function windowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowType(self) -> Qt.WindowType
	**/
	static public function windowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x(self) -> int
	**/
	static public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x11Info(self) -> QX11Info
	**/
	static public function x11Info(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x11PictureHandle(self) -> int
	**/
	static public function x11PictureHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y(self) -> int
	**/
	static public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
}