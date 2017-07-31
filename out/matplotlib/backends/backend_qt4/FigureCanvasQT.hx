/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt4;
@:pythonImport("matplotlib.backends.backend_qt4", "FigureCanvasQT") extern class FigureCanvasQT {
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
	static public function RenderFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWidget.RenderFlags()
		QWidget.RenderFlags(Union[QWidget.RenderFlags, QWidget.RenderFlag])
		QWidget.RenderFlags(QWidget.RenderFlags)
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
	public function ___init__(figure:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(figure:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var _dpi_ratio : Dynamic;
	public function _get_key(event:Dynamic):Dynamic;
	/**
		Return a canvas that is suitable for saving figures to a specified
		file format. If necessary, this function will switch to a registered
		backend that supports the format.
	**/
	public function _get_output_canvas(format:Dynamic):Dynamic;
	public function _idle_draw_cntx():Dynamic;
	/**
		acceptDrops(self) -> bool
	**/
	static public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accessibleDescription(self) -> str
	**/
	static public function accessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accessibleName(self) -> str
	**/
	static public function accessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		actionEvent(self, QActionEvent)
	**/
	static public function actionEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		actions(self) -> List[QAction]
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
		blit the canvas in bbox (default entire canvas)
	**/
	public function blit(?bbox:Dynamic):Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	static public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Backend derived classes should call this function on any mouse
		button press.  x,y are the canvas coords: 0,0 is lower, left.
		button and key are as defined in :class:`MouseEvent`.
		
		This method will be call all functions connected to the
		'button_press_event' with a :class:`MouseEvent` instance.
	**/
	public function button_press_event(x:Dynamic, y:Dynamic, button:Dynamic, ?dblclick:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function on any mouse
		button release.
		
		*x*
		    the canvas coordinates where 0=left
		
		*y*
		    the canvas coordinates where 0=bottom
		
		*guiEvent*
		    the native UI event that generated the mpl event
		
		
		This method will be call all functions connected to the
		'button_release_event' with a :class:`MouseEvent` instance.
	**/
	public function button_release_event(x:Dynamic, y:Dynamic, button:Dynamic, ?guiEvent:Dynamic):Dynamic;
	static public var buttond : Dynamic;
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
		This method will be called by all functions connected to the
		'close_event' with a :class:`CloseEvent`
	**/
	public function close_event(?guiEvent:Dynamic):Dynamic;
	/**
		colorCount(self) -> int
	**/
	static public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		connectNotify(self, QMetaMethod)
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
		create(self, window: sip.voidptr = 0, initializeWindow: bool = True, destroyOldWindow: bool = True)
	**/
	static public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createWindowContainer(QWindow, parent: QWidget = None, flags: Union[Qt.WindowFlags, Qt.WindowType] = 0) -> QWidget
	**/
	static public function createWindowContainer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	**/
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devType(self) -> int
	**/
	static public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devicePixelRatio(self) -> int
	**/
	static public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devicePixelRatioF(self) -> float
	**/
	static public function devicePixelRatioF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		devicePixelRatioFScale() -> float
	**/
	static public function devicePixelRatioFScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		disconnect(self)
	**/
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		disconnectNotify(self, QMetaMethod)
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
		Render the :class:`~matplotlib.figure.Figure`
	**/
	public function draw(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a cursor in the event.axes if inaxes is not None.  Use
		native GUI drawing for efficiency if possible
	**/
	public function draw_cursor(event:Dynamic):Dynamic;
	/**
		This method will be call all functions connected to the
		'draw_event' with a :class:`DrawEvent`
	**/
	public function draw_event(renderer:Dynamic):Dynamic;
	/**
		:meth:`draw` only if idle; defaults to draw but backends can overrride
	**/
	public function draw_idle(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		effectiveWinId(self) -> sip.voidptr
	**/
	static public function effectiveWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ensurePolished(self)
	**/
	static public function ensurePolished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		enterEvent(self, QEvent)
	**/
	public function enterEvent(event:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function when entering
		canvas
		
		*guiEvent*
		    the native UI event that generated the mpl event
		*xy*
		    the coordinate location of the pointer when the canvas is
		    entered
	**/
	public function enter_notify_event(?guiEvent:Dynamic, ?xy:Dynamic):Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	static public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	static public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var events : Dynamic;
	static public var filetypes : Dynamic;
	/**
		find(sip.voidptr) -> QWidget
	**/
	static public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		findChild(self, type, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> QObject
		findChild(self, Tuple, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> QObject
	**/
	static public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		findChildren(self, type, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, name: str = '', options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, type, QRegExp, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, QRegExp, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, type, QRegularExpression, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
		findChildren(self, Tuple, QRegularExpression, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> List[QObject]
	**/
	static public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var fixed_dpi : Dynamic;
	/**
		Flush the GUI events for the figure. Implemented only for
		backends with GUIs.
	**/
	public function flush_events():Dynamic;
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
	/**
		getContentsMargins(self) -> Tuple[int, int, int, int]
	**/
	static public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string, which includes extension, suitable for use as
		a default filename.
	**/
	public function get_default_filename():Dynamic;
	/**
		Get the default savefig file format as specified in rcParam
		``savefig.format``. Returned string excludes period. Overridden
		in backends that only support a single file type.
	**/
	static public function get_default_filetype():Dynamic;
	/**
		Return dict of savefig file formats supported by this backend
	**/
	static public function get_supported_filetypes():Dynamic;
	/**
		Return a dict of savefig file formats supported by this backend,
		where the keys are a file type name, such as 'Joint Photographic
		Experts Group', and the values are a list of filename extensions used
		for that filetype, such as ['jpg', 'jpeg'].
	**/
	static public function get_supported_filetypes_grouped():Dynamic;
	/**
		Return the figure width and height in points or pixels
		(depending on the backend), truncated to integers
	**/
	public function get_width_height():Dynamic;
	/**
		Get the title text of the window containing the figure.
		Return None if there is no window (e.g., a PS backend).
	**/
	public function get_window_title():Dynamic;
	/**
		grab(self, rectangle: QRect = QRect(QPoint(0,0),QSize(-1,-1))) -> QPixmap
	**/
	static public function grab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabGesture(self, Qt.GestureType, flags: Union[Qt.GestureFlags, Qt.GestureFlag] = Qt.GestureFlags())
	**/
	static public function grabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabKeyboard(self)
	**/
	static public function grabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabMouse(self)
		grabMouse(self, Union[QCursor, Qt.CursorShape])
	**/
	static public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		grabShortcut(self, Union[QKeySequence, QKeySequence.StandardKey, str, int], context: Qt.ShortcutContext = Qt.WindowShortcut) -> int
	**/
	static public function grabShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set the child axes which are currently grabbing the mouse events.
		Usually called by the widgets themselves.
		It is an error to call this if the mouse is already grabbed by
		another axes.
	**/
	public function grab_mouse(ax:Dynamic):Dynamic;
	/**
		graphicsEffect(self) -> QGraphicsEffect
	**/
	static public function graphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		graphicsProxyWidget(self) -> QGraphicsProxyWidget
	**/
	static public function graphicsProxyWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasFocus(self) -> bool
	**/
	static public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasHeightForWidth(self) -> bool
	**/
	static public function hasHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Called when GUI is idle.
	**/
	public function idle_event(?guiEvent:Dynamic):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	static public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		initPainter(self, QPainter)
	**/
	static public function initPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodEvent(self, QInputMethodEvent)
	**/
	static public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodHints(self) -> Qt.InputMethodHints
	**/
	static public function inputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputMethodQuery(self, Qt.InputMethodQuery) -> Any
	**/
	static public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertAction(self, QAction, QAction)
	**/
	static public function insertAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertActions(self, QAction, Iterable[QAction])
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
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	static public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		isWindowType(self) -> bool
	**/
	static public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns `True` when the renderer is in the process of saving
		to a file, rather than rendering for an on-screen buffer.
	**/
	public function is_saving():Dynamic;
	/**
		keyPressEvent(self, QKeyEvent)
	**/
	public function keyPressEvent(event:Dynamic):Dynamic;
	/**
		keyReleaseEvent(self, QKeyEvent)
	**/
	public function keyReleaseEvent(event:Dynamic):Dynamic;
	/**
		This method will be call all functions connected to the
		'key_press_event' with a :class:`KeyEvent`
	**/
	public function key_press_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		This method will be call all functions connected to the
		'key_release_event' with a :class:`KeyEvent`
	**/
	public function key_release_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		keyboardGrabber() -> QWidget
	**/
	static public function keyboardGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		killTimer(self, int)
	**/
	static public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function leaveEvent(event:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function when leaving
		canvas
		
		*guiEvent*
		    the native UI event that generated the mpl event
	**/
	public function leave_notify_event(?guiEvent:Dynamic):Dynamic;
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
	public function minumumSizeHint():Dynamic;
	/**
		Backend derived classes should call this function on any
		motion-notify-event.
		
		*x*
		    the canvas coordinates where 0=left
		
		*y*
		    the canvas coordinates where 0=bottom
		
		*guiEvent*
		    the native UI event that generated the mpl event
		
		
		This method will be call all functions connected to the
		'motion_notify_event' with a :class:`MouseEvent` instance.
	**/
	public function motion_notify_event(x:Dynamic, y:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		mouseDoubleClickEvent(self, QMouseEvent)
	**/
	public function mouseDoubleClickEvent(event:Dynamic):Dynamic;
	/**
		Calculate mouse coordinates in physical pixels
		
		Qt5 use logical pixels, but the figure is scaled to physical
		pixels for rendering.   Transform to physical pixels so that
		all of the down-stream transforms work as expected.
		
		Also, the origin is different and needs to be corrected.
	**/
	public function mouseEventCoords(pos:Dynamic):Dynamic;
	/**
		mouseGrabber() -> QWidget
	**/
	static public function mouseGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mouseMoveEvent(self, QMouseEvent)
	**/
	public function mouseMoveEvent(event:Dynamic):Dynamic;
	/**
		mousePressEvent(self, QMouseEvent)
	**/
	public function mousePressEvent(event:Dynamic):Dynamic;
	/**
		mouseReleaseEvent(self, QMouseEvent)
	**/
	public function mouseReleaseEvent(event:Dynamic):Dynamic;
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
		Connect event with string *s* to *func*.  The signature of *func* is::
		
		  def func(event)
		
		where event is a :class:`matplotlib.backend_bases.Event`.  The
		following events are recognized
		
		- 'button_press_event'
		- 'button_release_event'
		- 'draw_event'
		- 'key_press_event'
		- 'key_release_event'
		- 'motion_notify_event'
		- 'pick_event'
		- 'resize_event'
		- 'scroll_event'
		- 'figure_enter_event',
		- 'figure_leave_event',
		- 'axes_enter_event',
		- 'axes_leave_event'
		- 'close_event'
		
		For the location events (button and key press/release), if the
		mouse is over the axes, the variable ``event.inaxes`` will be
		set to the :class:`~matplotlib.axes.Axes` the event occurs is
		over, and additionally, the variables ``event.xdata`` and
		``event.ydata`` will be defined.  This is the mouse location
		in data coords.  See
		:class:`~matplotlib.backend_bases.KeyEvent` and
		:class:`~matplotlib.backend_bases.MouseEvent` for more info.
		
		Return value is a connection id that can be used with
		:meth:`~matplotlib.backend_bases.Event.mpl_disconnect`.
		
		Example usage::
		
		    def on_press(event):
		        print('you pressed', event.button, event.xdata, event.ydata)
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
	**/
	public function mpl_connect(s:Dynamic, func:Dynamic):Dynamic;
	/**
		Disconnect callback id cid
		
		Example usage::
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
		    #...later
		    canvas.mpl_disconnect(cid)
	**/
	public function mpl_disconnect(cid:Dynamic):Dynamic;
	/**
		nativeEvent(self, Union[QByteArray, bytes, bytearray], sip.voidptr) -> Tuple[bool, int]
	**/
	static public function nativeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nativeParentWidget(self) -> QWidget
	**/
	static public function nativeParentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates a new backend-specific subclass of
		:class:`backend_bases.Timer`.  This is useful for getting
		periodic events through the backend's native event
		loop. Implemented only for backends with GUIs.
		
		optional arguments:
		
		*interval*
		    Timer interval in milliseconds
		
		*callbacks*
		    Sequence of (func, args, kwargs) where func(*args, **kwargs)
		    will be executed by the timer every *interval*.
	**/
	public function new_timer(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		nextInFocusChain(self) -> QWidget
	**/
	static public function nextInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		normalGeometry(self) -> QRect
	**/
	static public function normalGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		objectName(self) -> str
	**/
	static public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Mouse event processor which highlights the artists
		under the cursor.  Connect this to the 'motion_notify_event'
		using::
		
		    canvas.mpl_connect('motion_notify_event',canvas.onHilite)
	**/
	public function onHilite(ev:Dynamic):Dynamic;
	/**
		Mouse event processor which removes the top artist
		under the cursor.  Connect this to the 'mouse_press_event'
		using::
		
		    canvas.mpl_connect('mouse_press_event',canvas.onRemove)
	**/
	public function onRemove(ev:Dynamic):Dynamic;
	/**
		overrideWindowFlags(self, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	static public function overrideWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		overrideWindowState(self, Union[Qt.WindowStates, Qt.WindowState])
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
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		This method will be called by artists who are picked and will
		fire off :class:`PickEvent` callbacks registered listeners
	**/
	public function pick_event(mouseevent:Dynamic, artist:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		pos(self) -> QPoint
	**/
	static public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		previousInFocusChain(self) -> QWidget
	**/
	static public function previousInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Render the figure to hardcopy. Set the figure patch face and edge
		colors.  This is useful because some of the GUIs have a gray figure
		face color background and you'll probably want to override this on
		hardcopy.
		
		Arguments are:
		
		*filename*
		    can also be a file object on image backends
		
		*orientation*
		    only currently applies to PostScript printing.
		
		*dpi*
		    the dots per inch to save the figure in; if None, use savefig.dpi
		
		*facecolor*
		    the facecolor of the figure; if None, defaults to savefig.facecolor
		
		*edgecolor*
		    the edgecolor of the figure; if None, defaults to savefig.edgecolor
		
		*orientation*
		    landscape' | 'portrait' (not supported on all backends)
		
		*format*
		    when set, forcibly set the file format to save to
		
		*bbox_inches*
		    Bbox in inches. Only the given portion of the figure is
		    saved. If 'tight', try to figure out the tight bbox of
		    the figure. If None, use savefig.bbox
		
		*pad_inches*
		    Amount of padding around the figure when bbox_inches is
		    'tight'. If None, use savefig.pad_inches
		
		*bbox_extra_artists*
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
	**/
	public function print_figure(filename:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?orientation:Dynamic, ?format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		property(self, str) -> Any
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
		receivers(self, PYQT_SIGNAL) -> int
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
		Release the mouse grab held by the axes, ax.
		Usually called by the widgets.
		It is ok to call this even if you ax doesn't have the mouse
		grab currently.
	**/
	public function release_mouse(ax:Dynamic):Dynamic;
	/**
		removeAction(self, QAction)
	**/
	static public function removeAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	static public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		render(self, QPaintDevice, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: Union[QWidget.RenderFlags, QWidget.RenderFlag] = QWidget.RenderFlags(QWidget.DrawWindowBackground|QWidget.DrawChildren))
		render(self, QPainter, targetOffset: QPoint = QPoint(), sourceRegion: QRegion = QRegion(), flags: Union[QWidget.RenderFlags, QWidget.RenderFlag] = QWidget.RenderFlags(QWidget.DrawWindowBackground|QWidget.DrawChildren))
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
		resize(self, QSize)
		resize(self, int, int)
	**/
	static public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resizeEvent(self, QResizeEvent)
	**/
	public function resizeEvent(event:Dynamic):Dynamic;
	/**
		This method will be call all functions connected to the
		'resize_event' with a :class:`ResizeEvent`
	**/
	public function resize_event():Dynamic;
	/**
		restoreGeometry(self, Union[QByteArray, bytes, bytearray]) -> bool
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
		Backend derived classes should call this function on any
		scroll wheel event.  x,y are the canvas coords: 0,0 is lower,
		left.  button and key are as defined in MouseEvent.
		
		This method will be call all functions connected to the
		'scroll_event' with a :class:`MouseEvent` instance.
	**/
	public function scroll_event(x:Dynamic, y:Dynamic, step:Dynamic, ?guiEvent:Dynamic):Dynamic;
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
		setAccessibleDescription(self, str)
	**/
	static public function setAccessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAccessibleName(self, str)
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
		setCursor(self, Union[QCursor, Qt.CursorShape])
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
		setInputMethodHints(self, Union[Qt.InputMethodHints, Qt.InputMethodHint])
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
		setObjectName(self, str)
	**/
	static public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setPalette(self, QPalette)
	**/
	static public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setParent(self, QWidget)
		setParent(self, QWidget, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	static public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setProperty(self, str, Any) -> bool
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
		setStatusTip(self, str)
	**/
	static public function setStatusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStyle(self, QStyle)
	**/
	static public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setStyleSheet(self, str)
	**/
	static public function setStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setTabOrder(QWidget, QWidget)
	**/
	static public function setTabOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setToolTip(self, str)
	**/
	static public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setToolTipDuration(self, int)
	**/
	static public function setToolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setUpdatesEnabled(self, bool)
	**/
	static public function setUpdatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setVisible(self, bool)
	**/
	static public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWhatsThis(self, str)
	**/
	static public function setWhatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowFilePath(self, str)
	**/
	static public function setWindowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowFlags(self, Union[Qt.WindowFlags, Qt.WindowType])
	**/
	static public function setWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowIcon(self, QIcon)
	**/
	static public function setWindowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowIconText(self, str)
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
		setWindowRole(self, str)
	**/
	static public function setWindowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowState(self, Union[Qt.WindowStates, Qt.WindowState])
	**/
	static public function setWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setWindowTitle(self, str)
	**/
	static public function setWindowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set the title text of the window containing the figure.  Note that
		this has no effect if there is no window (e.g., a PS backend).
	**/
	public function set_window_title(title:Dynamic):Dynamic;
	/**
		sharedPainter(self) -> QPainter
	**/
	static public function sharedPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function sizeHint():Dynamic;
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
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	static public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Start an event loop.  This is used to start a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.  This should not be
		confused with the main GUI event loop, which is always running
		and has nothing to do with this.
		
		This function provides default event loop functionality based
		on time.sleep that is meant to be used until event loop
		functions for each of the GUI backends can be written.  As
		such, it throws a deprecated warning.
		
		This call blocks until a callback function triggers
		stop_event_loop() or *timeout* is reached.  If *timeout* is
		<=0, never timeout.
	**/
	public function start_event_loop(timeout:Dynamic):Dynamic;
	/**
		Start an event loop.  This is used to start a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.  This should not be
		confused with the main GUI event loop, which is always running
		and has nothing to do with this.
		
		This function provides default event loop functionality based
		on time.sleep that is meant to be used until event loop
		functions for each of the GUI backends can be written.  As
		such, it throws a deprecated warning.
		
		This call blocks until a callback function triggers
		stop_event_loop() or *timeout* is reached.  If *timeout* is
		<=0, never timeout.
	**/
	public function start_event_loop_default(?timeout:Dynamic):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		statusTip(self) -> str
	**/
	static public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Stop an event loop.  This is used to stop a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.
	**/
	public function stop_event_loop():Dynamic;
	/**
		Stop an event loop.  This is used to stop a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.
	**/
	public function stop_event_loop_default():Dynamic;
	/**
		style(self) -> QStyle
	**/
	static public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		styleSheet(self) -> str
	**/
	static public function styleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var supports_blit : Dynamic;
	/**
		Instantiate an instance of FigureCanvasClass
		
		This is used for backend switching, e.g., to instantiate a
		FigureCanvasPS from a FigureCanvasGTK.  Note, deep copying is
		not done, so any changes to one of the instances (e.g., setting
		figure size or line props), will be reflected in the other
	**/
	public function switch_backends(FigureCanvasClass:Dynamic):Dynamic;
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
		toolTip(self) -> str
	**/
	static public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		toolTipDuration(self) -> int
	**/
	static public function toolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	static public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		updatesEnabled(self) -> bool
	**/
	static public function updatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		visibleRegion(self) -> QRegion
	**/
	static public function visibleRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		whatsThis(self) -> str
	**/
	static public function whatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		wheelEvent(self, QWheelEvent)
	**/
	public function wheelEvent(event:Dynamic):Dynamic;
	/**
		width(self) -> int
	**/
	static public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		widthMM(self) -> int
	**/
	static public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		winId(self) -> sip.voidptr
	**/
	static public function winId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		window(self) -> QWidget
	**/
	static public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowFilePath(self) -> str
	**/
	static public function windowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowFlags(self) -> Qt.WindowFlags
	**/
	static public function windowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowHandle(self) -> QWindow
	**/
	static public function windowHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIcon(self) -> QIcon
	**/
	static public function windowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIconChanged(self, QIcon) [signal]
	**/
	public function windowIconChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIconText(self) -> str
	**/
	static public function windowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowIconTextChanged(self, str) [signal]
	**/
	public function windowIconTextChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowModality(self) -> Qt.WindowModality
	**/
	static public function windowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowOpacity(self) -> float
	**/
	static public function windowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowRole(self) -> str
	**/
	static public function windowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowState(self) -> Qt.WindowStates
	**/
	static public function windowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowTitle(self) -> str
	**/
	static public function windowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowTitleChanged(self, str) [signal]
	**/
	public function windowTitleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		windowType(self) -> Qt.WindowType
	**/
	static public function windowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x(self) -> int
	**/
	static public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y(self) -> int
	**/
	static public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
}