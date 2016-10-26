/* This file is generated, do not edit! */
package matplotlib.backends.qt_editor.formlayout;
@:pythonImport("matplotlib.backends.qt_editor.formlayout", "FontLayout") extern class FontLayout {
	static public var SetDefaultConstraint : Dynamic;
	static public var SetFixedSize : Dynamic;
	static public var SetMaximumSize : Dynamic;
	static public var SetMinAndMaxSize : Dynamic;
	static public var SetMinimumSize : Dynamic;
	static public var SetNoConstraint : Dynamic;
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
	static public function SizeConstraint(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(value:Dynamic, ?parent:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(value:Dynamic, ?parent:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		activate(self) -> bool
	**/
	static public function activate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addChildLayout(self, QLayout)
	**/
	static public function addChildLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addChildWidget(self, QWidget)
	**/
	static public function addChildWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addItem(self, QLayoutItem, int, int, rowSpan: int = 1, columnSpan: int = 1, alignment: Qt.Alignment = 0)
		addItem(self, QLayoutItem)
	**/
	static public function addItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addLayout(self, QLayout, int, int, alignment: Qt.Alignment = 0)
		addLayout(self, QLayout, int, int, int, int, alignment: Qt.Alignment = 0)
	**/
	static public function addLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addWidget(self, QWidget)
		addWidget(self, QWidget, int, int, alignment: Qt.Alignment = 0)
		addWidget(self, QWidget, int, int, int, int, alignment: Qt.Alignment = 0)
	**/
	static public function addWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alignment(self) -> Qt.Alignment
	**/
	static public function alignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alignmentRect(self, QRect) -> QRect
	**/
	static public function alignmentRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	static public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cellRect(self, int, int) -> QRect
	**/
	static public function cellRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	static public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		children(self) -> object
	**/
	static public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		closestAcceptableSize(QWidget, QSize) -> QSize
	**/
	static public function closestAcceptableSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		columnCount(self) -> int
	**/
	static public function columnCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		columnMinimumWidth(self, int) -> int
	**/
	static public function columnMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		columnStretch(self, int) -> int
	**/
	static public function columnStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		controlTypes(self) -> QSizePolicy.ControlTypes
	**/
	static public function controlTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		count(self) -> int
	**/
	static public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	static public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deleteLater(self)
	**/
	static public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroyed(self, QObject = None) [signal]
		destroyed(self) [signal]
	**/
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		emit(self, QT_SIGNAL, *)
	**/
	static public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	static public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	static public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expandingDirections(self) -> Qt.Orientations
	**/
	static public function expandingDirections(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		geometry(self) -> QRect
	**/
	static public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getContentsMargins(self) -> Tuple[int, int, int, int]
	**/
	static public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getItemPosition(self, int) -> Tuple[int, int, int, int]
	**/
	static public function getItemPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_font():Dynamic;
	/**
		hasHeightForWidth(self) -> bool
	**/
	static public function hasHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heightForWidth(self, int) -> int
	**/
	static public function heightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		horizontalSpacing(self) -> int
	**/
	static public function horizontalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		indexOf(self, QWidget) -> int
	**/
	static public function indexOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	static public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		installEventFilter(self, QObject)
	**/
	static public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		invalidate(self)
	**/
	static public function invalidate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEmpty(self) -> bool
	**/
	static public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isEnabled(self) -> bool
	**/
	static public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isWidgetType(self) -> bool
	**/
	static public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itemAt(self, int) -> QLayoutItem
	**/
	static public function itemAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		itemAtPosition(self, int, int) -> QLayoutItem
	**/
	static public function itemAtPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		killTimer(self, int)
	**/
	static public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		layout(self) -> QLayout
	**/
	static public function layout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		margin(self) -> int
	**/
	static public function margin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximumSize(self) -> QSize
	**/
	static public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		menuBar(self) -> QWidget
	**/
	static public function menuBar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	static public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumHeightForWidth(self, int) -> int
	**/
	static public function minimumHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minimumSize(self) -> QSize
	**/
	static public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	static public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		objectName(self) -> object
	**/
	static public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		originCorner(self) -> Qt.Corner
	**/
	static public function originCorner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parent(self) -> QObject
	**/
	static public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parentWidget(self) -> QWidget
	**/
	static public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		receivers(self, QT_SIGNAL) -> int
	**/
	static public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	static public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeItem(self, QLayoutItem)
	**/
	static public function removeItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeWidget(self, QWidget)
	**/
	static public function removeWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rowCount(self) -> int
	**/
	static public function rowCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rowMinimumHeight(self, int) -> int
	**/
	static public function rowMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rowStretch(self, int) -> int
	**/
	static public function rowStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sender(self) -> QObject
	**/
	static public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	static public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setAlignment(self, QWidget, Qt.Alignment) -> bool
		setAlignment(self, QLayout, Qt.Alignment) -> bool
		setAlignment(self, Qt.Alignment)
	**/
	static public function setAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setColumnMinimumWidth(self, int, int)
	**/
	static public function setColumnMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setColumnStretch(self, int, int)
	**/
	static public function setColumnStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setContentsMargins(self, int, int, int, int)
		setContentsMargins(self, QMargins)
	**/
	static public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setDefaultPositioning(self, int, Qt.Orientation)
	**/
	static public function setDefaultPositioning(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setEnabled(self, bool)
	**/
	static public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setGeometry(self, QRect)
	**/
	static public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setHorizontalSpacing(self, int)
	**/
	static public function setHorizontalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMargin(self, int)
	**/
	static public function setMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setMenuBar(self, QWidget)
	**/
	static public function setMenuBar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setObjectName(self, object)
	**/
	static public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setOriginCorner(self, Qt.Corner)
	**/
	static public function setOriginCorner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setParent(self, QObject)
	**/
	static public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setProperty(self, str, object) -> bool
	**/
	static public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setRowMinimumHeight(self, int, int)
	**/
	static public function setRowMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setRowStretch(self, int, int)
	**/
	static public function setRowStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setSizeConstraint(self, QLayout.SizeConstraint)
	**/
	static public function setSizeConstraint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setSpacing(self, int)
	**/
	static public function setSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setVerticalSpacing(self, int)
	**/
	static public function setVerticalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		signalsBlocked(self) -> bool
	**/
	static public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizeConstraint(self) -> QLayout.SizeConstraint
	**/
	static public function sizeConstraint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sizeHint(self) -> QSize
	**/
	static public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spacerItem(self) -> QSpacerItem
	**/
	static public function spacerItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spacing(self) -> int
	**/
	static public function spacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		startTimer(self, int) -> int
	**/
	static public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		takeAt(self, int) -> QLayoutItem
	**/
	static public function takeAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		thread(self) -> QThread
	**/
	static public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	static public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		totalHeightForWidth(self, int) -> int
	**/
	static public function totalHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		totalMaximumSize(self) -> QSize
	**/
	static public function totalMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		totalMinimumSize(self) -> QSize
	**/
	static public function totalMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		totalSizeHint(self) -> QSize
	**/
	static public function totalSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tr(self, object, disambiguation: str = None, n: int = -1) -> object
	**/
	static public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trUtf8(self, object, disambiguation: str = None, n: int = -1) -> object
	**/
	static public function trUtf8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		update(self)
	**/
	static public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		verticalSpacing(self) -> int
	**/
	static public function verticalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		widget(self) -> QWidget
	**/
	static public function widget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		widgetEvent(self, QEvent)
	**/
	static public function widgetEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
}