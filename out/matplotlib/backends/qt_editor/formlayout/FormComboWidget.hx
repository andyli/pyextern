/* This file is generated, do not edit! */
package matplotlib.backends.qt_editor.formlayout;
@:pythonImport("matplotlib.backends.qt_editor.formlayout", "FormComboWidget") extern class FormComboWidget {
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
		QObject.__getattr__(str) -> object
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
		QWidget.acceptDrops() -> bool
	**/
	static public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.accessibleDescription() -> str
	**/
	static public function accessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.accessibleName() -> str
	**/
	static public function accessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.actionEvent(QActionEvent)
	**/
	static public function actionEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.actions() -> list-of-QAction
	**/
	static public function actions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.activateWindow()
	**/
	static public function activateWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.addAction(QAction)
	**/
	static public function addAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.addActions(list-of-QAction)
	**/
	static public function addActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.adjustSize()
	**/
	static public function adjustSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.autoFillBackground() -> bool
	**/
	static public function autoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.backgroundRole() -> QPalette.ColorRole
	**/
	static public function backgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.baseSize() -> QSize
	**/
	static public function baseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.blockSignals(bool) -> bool
	**/
	static public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.changeEvent(QEvent)
	**/
	static public function changeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.childAt(QPoint) -> QWidget
		QWidget.childAt(int, int) -> QWidget
	**/
	static public function childAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.childEvent(QChildEvent)
	**/
	static public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.children() -> list-of-QObject
	**/
	static public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.childrenRect() -> QRect
	**/
	static public function childrenRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.childrenRegion() -> QRegion
	**/
	static public function childrenRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.clearFocus()
	**/
	static public function clearFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.clearMask()
	**/
	static public function clearMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.close() -> bool
	**/
	static public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.closeEvent(QCloseEvent)
	**/
	static public function closeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.colorCount() -> int
	**/
	static public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.connect(QObject, SIGNAL(), QObject, SLOT(), Qt.ConnectionType=Qt.AutoConnection) -> bool
		QObject.connect(QObject, SIGNAL(), callable, Qt.ConnectionType=Qt.AutoConnection) -> bool
		QObject.connect(QObject, SIGNAL(), SLOT(), Qt.ConnectionType=Qt.AutoConnection) -> bool
	**/
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.connectNotify(SIGNAL())
	**/
	static public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.contentsMargins() -> QMargins
	**/
	static public function contentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.contentsRect() -> QRect
	**/
	static public function contentsRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.contextMenuEvent(QContextMenuEvent)
	**/
	static public function contextMenuEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.contextMenuPolicy() -> Qt.ContextMenuPolicy
	**/
	static public function contextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.create(int window=0, bool initializeWindow=True, bool destroyOldWindow=True)
	**/
	static public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.cursor() -> QCursor
	**/
	static public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.customContextMenuRequested[QPoint] [signal]
	**/
	public function customContextMenuRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.customEvent(QEvent)
	**/
	static public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.deleteLater()
	**/
	static public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.depth() -> int
	**/
	static public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.destroy(bool destroyWindow=True, bool destroySubWindows=True)
	**/
	static public function destroy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.destroyed[QObject] [signal]
		QObject.destroyed [signal]
	**/
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.devType() -> int
	**/
	static public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.disconnect(QObject, SIGNAL(), QObject, SLOT()) -> bool
		QObject.disconnect(QObject, SIGNAL(), callable) -> bool
	**/
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.disconnectNotify(SIGNAL())
	**/
	static public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.dragEnterEvent(QDragEnterEvent)
	**/
	static public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.dragLeaveEvent(QDragLeaveEvent)
	**/
	static public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.dragMoveEvent(QDragMoveEvent)
	**/
	static public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.dropEvent(QDropEvent)
	**/
	static public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.dumpObjectInfo()
	**/
	static public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.dumpObjectTree()
	**/
	static public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.dynamicPropertyNames() -> list-of-QByteArray
	**/
	static public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.effectiveWinId() -> int
	**/
	static public function effectiveWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.emit(SIGNAL(), ...)
	**/
	static public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.enabledChange(bool)
	**/
	static public function enabledChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.ensurePolished()
	**/
	static public function ensurePolished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.enterEvent(QEvent)
	**/
	static public function enterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.event(QEvent) -> bool
	**/
	static public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.eventFilter(QObject, QEvent) -> bool
	**/
	static public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.find(int) -> QWidget
	**/
	static public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.findChild(type, str name='') -> QObject
		QObject.findChild(tuple, str name='') -> QObject
	**/
	static public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.findChildren(type, str name='') -> list-of-QObject
		QObject.findChildren(tuple, str name='') -> list-of-QObject
		QObject.findChildren(type, QRegExp) -> list-of-QObject
		QObject.findChildren(tuple, QRegExp) -> list-of-QObject
	**/
	static public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusInEvent(QFocusEvent)
	**/
	static public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusNextChild() -> bool
	**/
	static public function focusNextChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusNextPrevChild(bool) -> bool
	**/
	static public function focusNextPrevChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusOutEvent(QFocusEvent)
	**/
	static public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusPolicy() -> Qt.FocusPolicy
	**/
	static public function focusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusPreviousChild() -> bool
	**/
	static public function focusPreviousChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusProxy() -> QWidget
	**/
	static public function focusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.focusWidget() -> QWidget
	**/
	static public function focusWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.font() -> QFont
	**/
	static public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.fontChange(QFont)
	**/
	static public function fontChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.fontInfo() -> QFontInfo
	**/
	static public function fontInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.fontMetrics() -> QFontMetrics
	**/
	static public function fontMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.foregroundRole() -> QPalette.ColorRole
	**/
	static public function foregroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.frameGeometry() -> QRect
	**/
	static public function frameGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.frameSize() -> QSize
	**/
	static public function frameSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.geometry() -> QRect
	**/
	static public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get():Dynamic;
	/**
		QWidget.getContentsMargins() -> (int, int, int, int)
	**/
	static public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.grabGesture(Qt.GestureType, Qt.GestureFlags flags=Qt.GestureFlags(0))
	**/
	static public function grabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.grabKeyboard()
	**/
	static public function grabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.grabMouse()
		QWidget.grabMouse(QCursor)
	**/
	static public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.grabShortcut(QKeySequence, Qt.ShortcutContext context=Qt.WindowShortcut) -> int
	**/
	static public function grabShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.graphicsEffect() -> QGraphicsEffect
	**/
	static public function graphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.graphicsProxyWidget() -> QGraphicsProxyWidget
	**/
	static public function graphicsProxyWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.handle() -> sip.voidptr
	**/
	static public function handle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.hasFocus() -> bool
	**/
	static public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.hasMouseTracking() -> bool
	**/
	static public function hasMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.height() -> int
	**/
	static public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.heightForWidth(int) -> int
	**/
	static public function heightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.heightMM() -> int
	**/
	static public function heightMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.hide()
	**/
	static public function hide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.hideEvent(QHideEvent)
	**/
	static public function hideEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.inherits(str) -> bool
	**/
	static public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.inputContext() -> QInputContext
	**/
	static public function inputContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.inputMethodEvent(QInputMethodEvent)
	**/
	static public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.inputMethodHints() -> Qt.InputMethodHints
	**/
	static public function inputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.inputMethodQuery(Qt.InputMethodQuery) -> object
	**/
	static public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.insertAction(QAction, QAction)
	**/
	static public function insertAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.insertActions(QAction, list-of-QAction)
	**/
	static public function insertActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.installEventFilter(QObject)
	**/
	static public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isActiveWindow() -> bool
	**/
	static public function isActiveWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isAncestorOf(QWidget) -> bool
	**/
	static public function isAncestorOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isEnabled() -> bool
	**/
	static public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isEnabledTo(QWidget) -> bool
	**/
	static public function isEnabledTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isEnabledToTLW() -> bool
	**/
	static public function isEnabledToTLW(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isFullScreen() -> bool
	**/
	static public function isFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isHidden() -> bool
	**/
	static public function isHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isLeftToRight() -> bool
	**/
	static public function isLeftToRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isMaximized() -> bool
	**/
	static public function isMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isMinimized() -> bool
	**/
	static public function isMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isModal() -> bool
	**/
	static public function isModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isRightToLeft() -> bool
	**/
	static public function isRightToLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isTopLevel() -> bool
	**/
	static public function isTopLevel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isVisible() -> bool
	**/
	static public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isVisibleTo(QWidget) -> bool
	**/
	static public function isVisibleTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.isWidgetType() -> bool
	**/
	static public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isWindow() -> bool
	**/
	static public function isWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.isWindowModified() -> bool
	**/
	static public function isWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.keyPressEvent(QKeyEvent)
	**/
	static public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.keyReleaseEvent(QKeyEvent)
	**/
	static public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.keyboardGrabber() -> QWidget
	**/
	static public function keyboardGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.killTimer(int)
	**/
	static public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.languageChange()
	**/
	static public function languageChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.layout() -> QLayout
	**/
	static public function layout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.layoutDirection() -> Qt.LayoutDirection
	**/
	static public function layoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.leaveEvent(QEvent)
	**/
	static public function leaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.locale() -> QLocale
	**/
	static public function locale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.logicalDpiX() -> int
	**/
	static public function logicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.logicalDpiY() -> int
	**/
	static public function logicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.lower()
	**/
	static public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mapFrom(QWidget, QPoint) -> QPoint
	**/
	static public function mapFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mapFromGlobal(QPoint) -> QPoint
	**/
	static public function mapFromGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mapFromParent(QPoint) -> QPoint
	**/
	static public function mapFromParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mapTo(QWidget, QPoint) -> QPoint
	**/
	static public function mapTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mapToGlobal(QPoint) -> QPoint
	**/
	static public function mapToGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mapToParent(QPoint) -> QPoint
	**/
	static public function mapToParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mask() -> QRegion
	**/
	static public function mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.maximumHeight() -> int
	**/
	static public function maximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.maximumSize() -> QSize
	**/
	static public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.maximumWidth() -> int
	**/
	static public function maximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.metaObject() -> QMetaObject
	**/
	static public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.metric(QPaintDevice.PaintDeviceMetric) -> int
	**/
	static public function metric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.minimumHeight() -> int
	**/
	static public function minimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.minimumSize() -> QSize
	**/
	static public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.minimumSizeHint() -> QSize
	**/
	static public function minimumSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.minimumWidth() -> int
	**/
	static public function minimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mouseDoubleClickEvent(QMouseEvent)
	**/
	static public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mouseGrabber() -> QWidget
	**/
	static public function mouseGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mouseMoveEvent(QMouseEvent)
	**/
	static public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mousePressEvent(QMouseEvent)
	**/
	static public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.mouseReleaseEvent(QMouseEvent)
	**/
	static public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.move(QPoint)
		QWidget.move(int, int)
	**/
	static public function move(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.moveEvent(QMoveEvent)
	**/
	static public function moveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.moveToThread(QThread)
	**/
	static public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.nativeParentWidget() -> QWidget
	**/
	static public function nativeParentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.nextInFocusChain() -> QWidget
	**/
	static public function nextInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.normalGeometry() -> QRect
	**/
	static public function normalGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.numColors() -> int
	**/
	static public function numColors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.objectName() -> str
	**/
	static public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.overrideWindowFlags(Qt.WindowFlags)
	**/
	static public function overrideWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.overrideWindowState(Qt.WindowStates)
	**/
	static public function overrideWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.paintEngine() -> QPaintEngine
	**/
	static public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.paintEvent(QPaintEvent)
	**/
	static public function paintEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.paintingActive() -> bool
	**/
	static public function paintingActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.palette() -> QPalette
	**/
	static public function palette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.paletteChange(QPalette)
	**/
	static public function paletteChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.parent() -> QObject
	**/
	static public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.parentWidget() -> QWidget
	**/
	static public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.physicalDpiX() -> int
	**/
	static public function physicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.physicalDpiY() -> int
	**/
	static public function physicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.pos() -> QPoint
	**/
	static public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.previousInFocusChain() -> QWidget
	**/
	static public function previousInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.property(str) -> object
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
		QWidget.raise_()
	**/
	static public function raise_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.receivers(SIGNAL()) -> int
	**/
	static public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.rect() -> QRect
	**/
	static public function rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.releaseKeyboard()
	**/
	static public function releaseKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.releaseMouse()
	**/
	static public function releaseMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.releaseShortcut(int)
	**/
	static public function releaseShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.removeAction(QAction)
	**/
	static public function removeAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.removeEventFilter(QObject)
	**/
	static public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.render(QPaintDevice, QPoint targetOffset=QPoint(), QRegion sourceRegion=QRegion(), QWidget.RenderFlags flags=QWidget.DrawWindowBackground|QWidget.DrawChildren)
		QWidget.render(QPainter, QPoint targetOffset=QPoint(), QRegion sourceRegion=QRegion(), QWidget.RenderFlags flags=QWidget.DrawWindowBackground|QWidget.DrawChildren)
	**/
	static public function render(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.repaint()
		QWidget.repaint(int, int, int, int)
		QWidget.repaint(QRect)
		QWidget.repaint(QRegion)
	**/
	static public function repaint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.resetInputContext()
	**/
	static public function resetInputContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.resize(QSize)
		QWidget.resize(int, int)
	**/
	static public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.resizeEvent(QResizeEvent)
	**/
	static public function resizeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.restoreGeometry(QByteArray) -> bool
	**/
	static public function restoreGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.saveGeometry() -> QByteArray
	**/
	static public function saveGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.scroll(int, int)
		QWidget.scroll(int, int, QRect)
	**/
	static public function scroll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.sender() -> QObject
	**/
	static public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.senderSignalIndex() -> int
	**/
	static public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setAcceptDrops(bool)
	**/
	static public function setAcceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setAccessibleDescription(str)
	**/
	static public function setAccessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setAccessibleName(str)
	**/
	static public function setAccessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setAttribute(Qt.WidgetAttribute, bool on=True)
	**/
	static public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setAutoFillBackground(bool)
	**/
	static public function setAutoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setBackgroundRole(QPalette.ColorRole)
	**/
	static public function setBackgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setBaseSize(int, int)
		QWidget.setBaseSize(QSize)
	**/
	static public function setBaseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setContentsMargins(int, int, int, int)
		QWidget.setContentsMargins(QMargins)
	**/
	static public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setContextMenuPolicy(Qt.ContextMenuPolicy)
	**/
	static public function setContextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setCursor(QCursor)
	**/
	static public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setDisabled(bool)
	**/
	static public function setDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setEnabled(bool)
	**/
	static public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setFixedHeight(int)
	**/
	static public function setFixedHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setFixedSize(QSize)
		QWidget.setFixedSize(int, int)
	**/
	static public function setFixedSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setFixedWidth(int)
	**/
	static public function setFixedWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setFocus()
		QWidget.setFocus(Qt.FocusReason)
	**/
	static public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setFocusPolicy(Qt.FocusPolicy)
	**/
	static public function setFocusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setFocusProxy(QWidget)
	**/
	static public function setFocusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setFont(QFont)
	**/
	static public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setForegroundRole(QPalette.ColorRole)
	**/
	static public function setForegroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setGeometry(QRect)
		QWidget.setGeometry(int, int, int, int)
	**/
	static public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setGraphicsEffect(QGraphicsEffect)
	**/
	static public function setGraphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setHidden(bool)
	**/
	static public function setHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setInputContext(QInputContext)
	**/
	static public function setInputContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setInputMethodHints(Qt.InputMethodHints)
	**/
	static public function setInputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setLayout(QLayout)
	**/
	static public function setLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setLayoutDirection(Qt.LayoutDirection)
	**/
	static public function setLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setLocale(QLocale)
	**/
	static public function setLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMask(QBitmap)
		QWidget.setMask(QRegion)
	**/
	static public function setMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMaximumHeight(int)
	**/
	static public function setMaximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMaximumSize(int, int)
		QWidget.setMaximumSize(QSize)
	**/
	static public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMaximumWidth(int)
	**/
	static public function setMaximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMinimumHeight(int)
	**/
	static public function setMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMinimumSize(int, int)
		QWidget.setMinimumSize(QSize)
	**/
	static public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMinimumWidth(int)
	**/
	static public function setMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setMouseTracking(bool)
	**/
	static public function setMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setObjectName(str)
	**/
	static public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setPalette(QPalette)
	**/
	static public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setParent(QWidget)
		QWidget.setParent(QWidget, Qt.WindowFlags)
	**/
	static public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setProperty(str, object) -> bool
	**/
	static public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setShortcutAutoRepeat(int, bool enabled=True)
	**/
	static public function setShortcutAutoRepeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setShortcutEnabled(int, bool enabled=True)
	**/
	static public function setShortcutEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setShown(bool)
	**/
	static public function setShown(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setSizeIncrement(int, int)
		QWidget.setSizeIncrement(QSize)
	**/
	static public function setSizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setSizePolicy(QSizePolicy)
		QWidget.setSizePolicy(QSizePolicy.Policy, QSizePolicy.Policy)
	**/
	static public function setSizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setStatusTip(str)
	**/
	static public function setStatusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setStyle(QStyle)
	**/
	static public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setStyleSheet(str)
	**/
	static public function setStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setTabOrder(QWidget, QWidget)
	**/
	static public function setTabOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setToolTip(str)
	**/
	static public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setUpdatesEnabled(bool)
	**/
	static public function setUpdatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setVisible(bool)
	**/
	static public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWhatsThis(str)
	**/
	static public function setWhatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowFilePath(str)
	**/
	static public function setWindowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowFlags(Qt.WindowFlags)
	**/
	static public function setWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowIcon(QIcon)
	**/
	static public function setWindowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowIconText(str)
	**/
	static public function setWindowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowModality(Qt.WindowModality)
	**/
	static public function setWindowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowModified(bool)
	**/
	static public function setWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowOpacity(float)
	**/
	static public function setWindowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowRole(str)
	**/
	static public function setWindowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowState(Qt.WindowStates)
	**/
	static public function setWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.setWindowTitle(str)
	**/
	static public function setWindowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setup():Dynamic;
	/**
		QWidget.show()
	**/
	static public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.showEvent(QShowEvent)
	**/
	static public function showEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.showFullScreen()
	**/
	static public function showFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.showMaximized()
	**/
	static public function showMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.showMinimized()
	**/
	static public function showMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.showNormal()
	**/
	static public function showNormal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.signalsBlocked() -> bool
	**/
	static public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.size() -> QSize
	**/
	static public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.sizeHint() -> QSize
	**/
	static public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.sizeIncrement() -> QSize
	**/
	static public function sizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.sizePolicy() -> QSizePolicy
	**/
	static public function sizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.stackUnder(QWidget)
	**/
	static public function stackUnder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.startTimer(int) -> int
	**/
	static public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		QWidget.statusTip() -> str
	**/
	static public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.style() -> QStyle
	**/
	static public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.styleSheet() -> str
	**/
	static public function styleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.tabletEvent(QTabletEvent)
	**/
	static public function tabletEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.testAttribute(Qt.WidgetAttribute) -> bool
	**/
	static public function testAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.thread() -> QThread
	**/
	static public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.timerEvent(QTimerEvent)
	**/
	static public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.toolTip() -> str
	**/
	static public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.topLevelWidget() -> QWidget
	**/
	static public function topLevelWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.tr(str, str disambiguation=None, int n=-1) -> str
	**/
	static public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.trUtf8(str, str disambiguation=None, int n=-1) -> str
	**/
	static public function trUtf8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.underMouse() -> bool
	**/
	static public function underMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.ungrabGesture(Qt.GestureType)
	**/
	static public function ungrabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.unsetCursor()
	**/
	static public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.unsetLayoutDirection()
	**/
	static public function unsetLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.unsetLocale()
	**/
	static public function unsetLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.update()
		QWidget.update(QRect)
		QWidget.update(QRegion)
		QWidget.update(int, int, int, int)
	**/
	static public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.updateGeometry()
	**/
	static public function updateGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.updateMicroFocus()
	**/
	static public function updateMicroFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update_buttons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.updatesEnabled() -> bool
	**/
	static public function updatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.visibleRegion() -> QRegion
	**/
	static public function visibleRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.whatsThis() -> str
	**/
	static public function whatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.wheelEvent(QWheelEvent)
	**/
	static public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.width() -> int
	**/
	static public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QPaintDevice.widthMM() -> int
	**/
	static public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.winId() -> int
	**/
	static public function winId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.window() -> QWidget
	**/
	static public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowActivationChange(bool)
	**/
	static public function windowActivationChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowFilePath() -> str
	**/
	static public function windowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowFlags() -> Qt.WindowFlags
	**/
	static public function windowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowIcon() -> QIcon
	**/
	static public function windowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowIconText() -> str
	**/
	static public function windowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowModality() -> Qt.WindowModality
	**/
	static public function windowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowOpacity() -> float
	**/
	static public function windowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowRole() -> str
	**/
	static public function windowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowState() -> Qt.WindowStates
	**/
	static public function windowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowTitle() -> str
	**/
	static public function windowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.windowType() -> Qt.WindowType
	**/
	static public function windowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.x() -> int
	**/
	static public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.y() -> int
	**/
	static public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
}