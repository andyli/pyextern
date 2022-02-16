/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt;
@:pythonImport("matplotlib.backends.backend_qt", "FigureCanvasQT") extern class FigureCanvasQT {
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
	public function ___init__(?figure:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?figure:Dynamic):Void;
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
	public function _draw_idle():Dynamic;
	static public function _fix_ipython_backend2gui():Dynamic;
	public function _get_key(event:Dynamic):Dynamic;
	/**
		Set the canvas in preparation for saving the figure.
		
		Parameters
		----------
		backend : str or None
		    If not None, switch the figure canvas to the ``FigureCanvas`` class
		    of the given backend.
		fmt : str
		    If *backend* is None, then determine a suitable canvas class for
		    saving to format *fmt* -- either the current canvas class, if it
		    supports *fmt*, or whatever `get_registered_canvas_class` returns;
		    switch the figure canvas to that canvas class.
	**/
	public function _get_output_canvas(backend:Dynamic, fmt:Dynamic):Dynamic;
	public function _get_position(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _idle_draw_cntx():Dynamic;
	/**
		Set the ratio of physical to logical pixels used for the canvas.
		
		Subclasses that support High DPI screens can set this property to
		indicate that said ratio is different. The canvas itself will be
		created at the physical size, while the client side will use the
		logical size. Thus the DPI of the Figure will change to be scaled by
		this ratio. Implementations that support High DPI screens should use
		physical pixels for events so that transforms back to Axes space are
		correct.
		
		By default, this is 1, meaning physical and logical pixels are the same
		size.
		
		Parameters
		----------
		ratio : float
		    The ratio of logical to physical pixels used for the canvas.
		
		Returns
		-------
		bool
		    Whether the ratio has changed. Backends may interpret this as a
		    signal to resize the window, repaint the canvas, or change any
		    other relevant properties.
	**/
	public function _set_device_pixel_ratio(ratio:Dynamic):Dynamic;
	/**
		Subclass of `.TimerBase` using QTimer events.
	**/
	static public function _timer_cls(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _update_pixel_ratio():Dynamic;
	public function _update_screen(screen:Dynamic):Dynamic;
	/**
		acceptDrops(self) -> bool
	**/
	public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Blit the canvas in bbox (default entire canvas).
	**/
	public function blit(?bbox:Dynamic):Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var button_pick_id : Dynamic;
	/**
		Callback processing for mouse button press events.
		
		Backend derived classes should call this function on any mouse
		button press.  (*x*, *y*) are the canvas coords ((0, 0) is lower left).
		button and key are as defined in `MouseEvent`.
		
		This method will call all functions connected to the
		'button_press_event' with a `MouseEvent` instance.
	**/
	public function button_press_event(x:Dynamic, y:Dynamic, button:Dynamic, ?dblclick:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Callback processing for mouse button release events.
		
		Backend derived classes should call this function on any mouse
		button release.
		
		This method will call all functions connected to the
		'button_release_event' with a `MouseEvent` instance.
		
		Parameters
		----------
		x : float
		    The canvas coordinates where 0=left.
		y : float
		    The canvas coordinates where 0=bottom.
		guiEvent
		    The native UI event that generated the Matplotlib event.
	**/
	public function button_release_event(x:Dynamic, y:Dynamic, button:Dynamic, ?guiEvent:Dynamic):Dynamic;
	static public var buttond : Dynamic;
	public var callbacks : Dynamic;
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
		Pass a `CloseEvent` to all functions connected to ``close_event``.
	**/
	public function close_event(?guiEvent:Dynamic):Dynamic;
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
		The ratio of physical to logical pixels used for the canvas on screen.
		
		By default, this is 1, meaning physical and logical pixels are the same
		size. Subclasses that support High DPI screens may set this property to
		indicate that said ratio is different. All Matplotlib interaction,
		unless working directly with the canvas, remains in logical pixels.
	**/
	public var device_pixel_ratio : Dynamic;
	/**
		disconnect(self)
	**/
	public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		disconnectNotify(self, QMetaMethod)
	**/
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Render the figure, and queue a request for a Qt draw.
	**/
	public function draw():Dynamic;
	public function drawRectangle(rect:Dynamic):Dynamic;
	/**
		Pass a `DrawEvent` to all functions connected to ``draw_event``.
	**/
	public function draw_event(renderer:Dynamic):Dynamic;
	/**
		Queue redraw of the Agg buffer and request Qt paintEvent.
	**/
	public function draw_idle():Dynamic;
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
	public function enterEvent(event:Dynamic):Dynamic;
	/**
		Callback processing for the mouse cursor entering the canvas.
		
		Backend derived classes should call this function when entering
		canvas.
		
		Parameters
		----------
		guiEvent
		    The native UI event that generated the Matplotlib event.
		xy : (float, float)
		    The coordinate location of the pointer when the canvas is entered.
	**/
	public function enter_notify_event(?guiEvent:Dynamic, ?xy:Dynamic):Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var events : Dynamic;
	static public var filetypes : Dynamic;
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
	static public var fixed_dpi : Dynamic;
	/**
		Flush the GUI events for the figure.
		
		Interactive backends need to reimplement this method.
	**/
	public function flush_events():Dynamic;
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
		Return a string, which includes extension, suitable for use as
		a default filename.
	**/
	public function get_default_filename():Dynamic;
	/**
		Return the default savefig file format as specified in
		:rc:`savefig.format`.
		
		The returned string does not include a period. This method is
		overridden in backends that only support a single file type.
	**/
	static public function get_default_filetype():Dynamic;
	/**
		Return dict of savefig file formats supported by this backend.
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
		Return the figure width and height in integral points or pixels.
		
		When the figure is used on High DPI screens (and the backend supports
		it), the truncation to integers occurs after scaling by the device
		pixel ratio.
		
		Parameters
		----------
		physical : bool, default: False
		    Whether to return true physical pixels or logical pixels. Physical
		    pixels may be used by backends that support HiDPI, but still
		    configure the canvas using its actual size.
		
		Returns
		-------
		width, height : int
		    The size of the figure, in points or pixels, depending on the
		    backend.
	**/
	public function get_width_height(?physical:Dynamic):Int;
	/**
		[*Deprecated*] Return the title text of the window containing the figure, or None
		if there is no window (e.g., a PS backend).
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function get_window_title():Dynamic;
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
		Set the child `~.axes.Axes` which is grabbing the mouse events.
		
		Usually called by the widgets themselves. It is an error to call this
		if the mouse is already grabbed by another axes.
	**/
	public function grab_mouse(ax:Dynamic):Dynamic;
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
		Return the topmost visible `~.axes.Axes` containing the point *xy*.
		
		Parameters
		----------
		xy : (float, float)
		    (x, y) pixel positions from left/bottom of the canvas.
		
		Returns
		-------
		`~matplotlib.axes.Axes` or None
		    The topmost visible axes containing the point, or None if no axes.
	**/
	public function inaxes(xy:Dynamic):Dynamic;
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
		Return whether the renderer is in the process of saving
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
		Pass a `KeyEvent` to all functions connected to ``key_press_event``.
	**/
	public function key_press_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Pass a `KeyEvent` to all functions connected to ``key_release_event``.
	**/
	public function key_release_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
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
	public function leaveEvent(event:Dynamic):Dynamic;
	/**
		Callback processing for the mouse cursor leaving the canvas.
		
		Backend derived classes should call this function when leaving
		canvas.
		
		Parameters
		----------
		guiEvent
		    The native UI event that generated the Matplotlib event.
	**/
	public function leave_notify_event(?guiEvent:Dynamic):Dynamic;
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
	public function minumumSizeHint():Dynamic;
	/**
		Callback processing for mouse movement events.
		
		Backend derived classes should call this function on any
		motion-notify-event.
		
		This method will call all functions connected to the
		'motion_notify_event' with a `MouseEvent` instance.
		
		Parameters
		----------
		x : float
		    The canvas coordinates where 0=left.
		y : float
		    The canvas coordinates where 0=bottom.
		guiEvent
		    The native UI event that generated the Matplotlib event.
	**/
	public function motion_notify_event(x:Dynamic, y:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		mouseDoubleClickEvent(self, QMouseEvent)
	**/
	public function mouseDoubleClickEvent(event:Dynamic):Dynamic;
	/**
		Calculate mouse coordinates in physical pixels.
		
		Qt uses logical pixels, but the figure is scaled to physical
		pixels for rendering.  Transform to physical pixels so that
		all of the down-stream transforms work as expected.
		
		Also, the origin is different and needs to be corrected.
	**/
	public function mouseEventCoords(pos:Dynamic):Dynamic;
	/**
		mouseGrabber() -> QWidget
	**/
	public function mouseGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Bind function *func* to event *s*.
		
		Parameters
		----------
		s : str
		    One of the following events ids:
		
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
		    - 'close_event'.
		
		func : callable
		    The callback function to be executed, which must have the
		    signature::
		
		        def func(event: Event) -> Any
		
		    For the location events (button and key press/release), if the
		    mouse is over the axes, the ``inaxes`` attribute of the event will
		    be set to the `~matplotlib.axes.Axes` the event occurs is over, and
		    additionally, the variables ``xdata`` and ``ydata`` attributes will
		    be set to the mouse location in data coordinates.  See `.KeyEvent`
		    and `.MouseEvent` for more info.
		
		Returns
		-------
		cid
		    A connection id that can be used with
		    `.FigureCanvasBase.mpl_disconnect`.
		
		Examples
		--------
		::
		
		    def on_press(event):
		        print('you pressed', event.button, event.xdata, event.ydata)
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
	**/
	public function mpl_connect(s:Dynamic, func:Dynamic):Dynamic;
	/**
		Disconnect the callback with id *cid*.
		
		Examples
		--------
		::
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
		    # ... later
		    canvas.mpl_disconnect(cid)
	**/
	public function mpl_disconnect(cid:Dynamic):Dynamic;
	/**
		nativeEvent(self, Union[QByteArray, bytes, bytearray], sip.voidptr) -> Tuple[bool, int]
	**/
	public function nativeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nativeParentWidget(self) -> QWidget
	**/
	public function nativeParentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a new backend-specific subclass of `.Timer`.
		
		This is useful for getting periodic events through the backend's native
		event loop.  Implemented only for backends with GUIs.
		
		Parameters
		----------
		interval : int
		    Timer interval in milliseconds.
		
		callbacks : list[tuple[callable, tuple, dict]]
		    Sequence of (func, args, kwargs) where ``func(*args, **kwargs)``
		    will be executed by the timer every *interval*.
		
		    Callbacks which return ``False`` or ``0`` will be removed from the
		    timer.
		
		Examples
		--------
		>>> timer = fig.canvas.new_timer(callbacks=[(f1, (1,), {'a': 3})])
	**/
	public function new_timer(?interval:Dynamic, ?callbacks:Dynamic):Dynamic;
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
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Callback processing for pick events.
		
		This method will be called by artists who are picked and will
		fire off `PickEvent` callbacks registered listeners.
		
		Note that artists are not pickable by default (see
		`.Artist.set_picker`).
	**/
	public function pick_event(mouseevent:Dynamic, artist:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		pos(self) -> QPoint
	**/
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		previousInFocusChain(self) -> QWidget
	**/
	public function previousInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Render the figure to hardcopy. Set the figure patch face and edge
		colors.  This is useful because some of the GUIs have a gray figure
		face color background and you'll probably want to override this on
		hardcopy.
		
		Parameters
		----------
		filename : str or path-like or file-like
		    The file where the figure is saved.
		
		dpi : float, default: :rc:`savefig.dpi`
		    The dots per inch to save the figure in.
		
		facecolor : color or 'auto', default: :rc:`savefig.facecolor`
		    The facecolor of the figure.  If 'auto', use the current figure
		    facecolor.
		
		edgecolor : color or 'auto', default: :rc:`savefig.edgecolor`
		    The edgecolor of the figure.  If 'auto', use the current figure
		    edgecolor.
		
		orientation : {'landscape', 'portrait'}, default: 'portrait'
		    Only currently applies to PostScript printing.
		
		format : str, optional
		    Force a specific file format. If not given, the format is inferred
		    from the *filename* extension, and if that fails from
		    :rc:`savefig.format`.
		
		bbox_inches : 'tight' or `.Bbox`, default: :rc:`savefig.bbox`
		    Bounding box in inches: only the given portion of the figure is
		    saved.  If 'tight', try to figure out the tight bbox of the figure.
		
		pad_inches : float, default: :rc:`savefig.pad_inches`
		    Amount of padding around the figure when *bbox_inches* is 'tight'.
		
		bbox_extra_artists : list of `~matplotlib.artist.Artist`, optional
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
		
		backend : str, optional
		    Use a non-default backend to render the file, e.g. to render a
		    png file with the "cairo" backend rather than the default "agg",
		    or a pdf file with the "pgf" backend rather than the default
		    "pdf".  Note that the default backend is normally sufficient.  See
		    :ref:`the-builtin-backends` for a list of valid backends for each
		    file format.  Custom backends can be referenced as "module://...".
	**/
	public function print_figure(filename:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?orientation:Dynamic, ?format:Dynamic, ?bbox_inches:Dynamic, ?pad_inches:Dynamic, ?bbox_extra_artists:Dynamic, ?backend:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Release the mouse grab held by the `~.axes.Axes` *ax*.
		
		Usually called by the widgets. It is ok to call this even if *ax*
		doesn't have the mouse grab currently.
	**/
	public function release_mouse(ax:Dynamic):Dynamic;
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
	static public var required_interactive_framework : Dynamic;
	/**
		resize(self, QSize)
		resize(self, int, int)
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resizeEvent(self, QResizeEvent)
	**/
	public function resizeEvent(event:Dynamic):Dynamic;
	/**
		Pass a `ResizeEvent` to all functions connected to ``resize_event``.
	**/
	public function resize_event():Dynamic;
	/**
		restoreGeometry(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function restoreGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Callback processing for scroll events.
		
		Backend derived classes should call this function on any
		scroll wheel event.  (*x*, *y*) are the canvas coords ((0, 0) is lower
		left).  button and key are as defined in `MouseEvent`.
		
		This method will call all functions connected to the 'scroll_event'
		with a `MouseEvent` instance.
	**/
	public function scroll_event(x:Dynamic, y:Dynamic, step:Dynamic, ?guiEvent:Dynamic):Dynamic;
	public var scroll_pick_id : Dynamic;
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
		setShortcutAutoRepeat(self, int, enabled: bool = True)
	**/
	public function setShortcutAutoRepeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setShortcutEnabled(self, int, enabled: bool = True)
	**/
	public function setShortcutEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Set the current cursor.
		
		This may have no effect if the backend does not display anything.
		
		If required by the backend, this method should trigger an update in
		the backend event loop after the cursor is set, as this method may be
		called e.g. before a long-running task during which the GUI is not
		updated.
		
		Parameters
		----------
		cursor : `.Cursors`
		    The cursor to display over the canvas. Note: some backends may
		    change the cursor for the entire window.
	**/
	public function set_cursor(cursor:Dynamic):Dynamic;
	/**
		[*Deprecated*] Set the title text of the window containing the figure.  Note that
		this has no effect if there is no window (e.g., a PS backend).
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function set_window_title(title:Dynamic):Dynamic;
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
	public function showEvent(event:Dynamic):Dynamic;
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
	public function sizeHint():Dynamic;
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
	/**
		Start a blocking event loop.
		
		Such an event loop is used by interactive functions, such as
		`~.Figure.ginput` and `~.Figure.waitforbuttonpress`, to wait for
		events.
		
		The event loop blocks until a callback function triggers
		`stop_event_loop`, or *timeout* is reached.
		
		If *timeout* is 0 or negative, never timeout.
		
		Only interactive backends need to reimplement this method and it relies
		on `flush_events` being properly implemented.
		
		Interactive backends should implement this in a more native way.
	**/
	public function start_event_loop(?timeout:Dynamic):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		statusTip(self) -> str
	**/
	public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Stop the current blocking event loop.
		
		Interactive backends need to reimplement this to match
		`start_event_loop`
	**/
	public function stop_event_loop(?event:Dynamic):Dynamic;
	/**
		style(self) -> QStyle
	**/
	public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		styleSheet(self) -> str
	**/
	public function styleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function wheelEvent(event:Dynamic):Dynamic;
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