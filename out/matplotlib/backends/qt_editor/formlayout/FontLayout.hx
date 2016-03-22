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
		QLayout.activate() -> bool
	**/
	static public function activate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.addChildLayout(QLayout)
	**/
	static public function addChildLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.addChildWidget(QWidget)
	**/
	static public function addChildWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.addItem(QLayoutItem, int, int, int rowSpan=1, int columnSpan=1, Qt.Alignment alignment=0)
		QGridLayout.addItem(QLayoutItem)
	**/
	static public function addItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.addLayout(QLayout, int, int, Qt.Alignment alignment=0)
		QGridLayout.addLayout(QLayout, int, int, int, int, Qt.Alignment alignment=0)
	**/
	static public function addLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.addWidget(QWidget)
		QGridLayout.addWidget(QWidget, int, int, Qt.Alignment alignment=0)
		QGridLayout.addWidget(QWidget, int, int, int, int, Qt.Alignment alignment=0)
	**/
	static public function addWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayoutItem.alignment() -> Qt.Alignment
	**/
	static public function alignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.alignmentRect(QRect) -> QRect
	**/
	static public function alignmentRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.blockSignals(bool) -> bool
	**/
	static public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.cellRect(int, int) -> QRect
	**/
	static public function cellRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.childEvent(QChildEvent)
	**/
	static public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.children() -> list-of-QObject
	**/
	static public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.closestAcceptableSize(QWidget, QSize) -> QSize
	**/
	static public function closestAcceptableSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.columnCount() -> int
	**/
	static public function columnCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.columnMinimumWidth(int) -> int
	**/
	static public function columnMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.columnStretch(int) -> int
	**/
	static public function columnStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		QLayout.contentsMargins() -> QMargins
	**/
	static public function contentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.contentsRect() -> QRect
	**/
	static public function contentsRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayoutItem.controlTypes() -> QSizePolicy.ControlTypes
	**/
	static public function controlTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.count() -> int
	**/
	static public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.customEvent(QEvent)
	**/
	static public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.deleteLater()
	**/
	static public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.destroyed[QObject] [signal]
		QObject.destroyed [signal]
	**/
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		QObject.emit(SIGNAL(), ...)
	**/
	static public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.event(QEvent) -> bool
	**/
	static public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.eventFilter(QObject, QEvent) -> bool
	**/
	static public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.expandingDirections() -> Qt.Orientations
	**/
	static public function expandingDirections(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		QLayout.geometry() -> QRect
	**/
	static public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.getContentsMargins() -> (int, int, int, int)
	**/
	static public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.getItemPosition(int) -> (int, int, int, int)
	**/
	static public function getItemPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_font():Dynamic;
	/**
		QGridLayout.hasHeightForWidth() -> bool
	**/
	static public function hasHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.heightForWidth(int) -> int
	**/
	static public function heightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.horizontalSpacing() -> int
	**/
	static public function horizontalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.indexOf(QWidget) -> int
	**/
	static public function indexOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.inherits(str) -> bool
	**/
	static public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.installEventFilter(QObject)
	**/
	static public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.invalidate()
	**/
	static public function invalidate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.isEmpty() -> bool
	**/
	static public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.isEnabled() -> bool
	**/
	static public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.isWidgetType() -> bool
	**/
	static public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.itemAt(int) -> QLayoutItem
	**/
	static public function itemAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.itemAtPosition(int, int) -> QLayoutItem
	**/
	static public function itemAtPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.killTimer(int)
	**/
	static public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.layout() -> QLayout
	**/
	static public function layout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.margin() -> int
	**/
	static public function margin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.maximumSize() -> QSize
	**/
	static public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.menuBar() -> QWidget
	**/
	static public function menuBar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.metaObject() -> QMetaObject
	**/
	static public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.minimumHeightForWidth(int) -> int
	**/
	static public function minimumHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.minimumSize() -> QSize
	**/
	static public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.moveToThread(QThread)
	**/
	static public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.objectName() -> str
	**/
	static public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.originCorner() -> Qt.Corner
	**/
	static public function originCorner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.parent() -> QObject
	**/
	static public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.parentWidget() -> QWidget
	**/
	static public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		QObject.receivers(SIGNAL()) -> int
	**/
	static public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.removeEventFilter(QObject)
	**/
	static public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.removeItem(QLayoutItem)
	**/
	static public function removeItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.removeWidget(QWidget)
	**/
	static public function removeWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.rowCount() -> int
	**/
	static public function rowCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.rowMinimumHeight(int) -> int
	**/
	static public function rowMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.rowStretch(int) -> int
	**/
	static public function rowStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.sender() -> QObject
	**/
	static public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.senderSignalIndex() -> int
	**/
	static public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.setAlignment(QWidget, Qt.Alignment) -> bool
		QLayout.setAlignment(QLayout, Qt.Alignment) -> bool
		QLayout.setAlignment(Qt.Alignment)
	**/
	static public function setAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setColumnMinimumWidth(int, int)
	**/
	static public function setColumnMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setColumnStretch(int, int)
	**/
	static public function setColumnStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.setContentsMargins(int, int, int, int)
		QLayout.setContentsMargins(QMargins)
	**/
	static public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setDefaultPositioning(int, Qt.Orientation)
	**/
	static public function setDefaultPositioning(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.setEnabled(bool)
	**/
	static public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setGeometry(QRect)
	**/
	static public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setHorizontalSpacing(int)
	**/
	static public function setHorizontalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.setMargin(int)
	**/
	static public function setMargin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.setMenuBar(QWidget)
	**/
	static public function setMenuBar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setObjectName(str)
	**/
	static public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setOriginCorner(Qt.Corner)
	**/
	static public function setOriginCorner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setParent(QObject)
	**/
	static public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.setProperty(str, object) -> bool
	**/
	static public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setRowMinimumHeight(int, int)
	**/
	static public function setRowMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setRowStretch(int, int)
	**/
	static public function setRowStretch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.setSizeConstraint(QLayout.SizeConstraint)
	**/
	static public function setSizeConstraint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setSpacing(int)
	**/
	static public function setSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.setVerticalSpacing(int)
	**/
	static public function setVerticalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.signalsBlocked() -> bool
	**/
	static public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.sizeConstraint() -> QLayout.SizeConstraint
	**/
	static public function sizeConstraint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.sizeHint() -> QSize
	**/
	static public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayoutItem.spacerItem() -> QSpacerItem
	**/
	static public function spacerItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.spacing() -> int
	**/
	static public function spacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.startTimer(int) -> int
	**/
	static public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		QGridLayout.takeAt(int) -> QLayoutItem
	**/
	static public function takeAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.thread() -> QThread
	**/
	static public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.timerEvent(QTimerEvent)
	**/
	static public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.totalHeightForWidth(int) -> int
	**/
	static public function totalHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.totalMaximumSize() -> QSize
	**/
	static public function totalMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.totalMinimumSize() -> QSize
	**/
	static public function totalMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.totalSizeHint() -> QSize
	**/
	static public function totalSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.tr(str, str disambiguation=None, int n=-1) -> str
	**/
	static public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QObject.trUtf8(str, str disambiguation=None, int n=-1) -> str
	**/
	static public function trUtf8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.update()
	**/
	static public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QGridLayout.verticalSpacing() -> int
	**/
	static public function verticalSpacing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayoutItem.widget() -> QWidget
	**/
	static public function widget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QLayout.widgetEvent(QEvent)
	**/
	static public function widgetEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
}