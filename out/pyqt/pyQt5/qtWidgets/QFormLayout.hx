/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QFormLayout") extern class QFormLayout {
	static public var AllNonFixedFieldsGrow : Dynamic;
	static public var DontWrapRows : Dynamic;
	static public var ExpandingFieldsGrow : Dynamic;
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
	public function FieldGrowthPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FieldRole : Dynamic;
	static public var FieldsStayAtSizeHint : Dynamic;
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
	public function ItemRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LabelRole : Dynamic;
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
	public function RowWrapPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SetDefaultConstraint : Dynamic;
	static public var SetFixedSize : Dynamic;
	static public var SetMaximumSize : Dynamic;
	static public var SetMinAndMaxSize : Dynamic;
	static public var SetMinimumSize : Dynamic;
	static public var SetNoConstraint : Dynamic;
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
	public function SizeConstraint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SpanningRole : Dynamic;
	/**
		QFormLayout.TakeRowResult()
		QFormLayout.TakeRowResult(QFormLayout.TakeRowResult)
	**/
	static public function TakeRowResult(args:haxe.extern.Rest<Dynamic>):Void;
	static public var WrapAllRows : Dynamic;
	static public var WrapLongRows : Dynamic;
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
		activate(self) -> bool
	**/
	public function activate():Bool;
	/**
		addChildLayout(self, QLayout)
	**/
	public function addChildLayout(QLayout:Dynamic):Void;
	/**
		addChildWidget(self, QWidget)
	**/
	public function addChildWidget(QWidget:Dynamic):Void;
	/**
		addItem(self, QLayoutItem)
	**/
	public function addItem(QLayoutItem:Dynamic):Void;
	/**
		addRow(self, QWidget, QWidget)
		addRow(self, QWidget, QLayout)
		addRow(self, str, QWidget)
		addRow(self, str, QLayout)
		addRow(self, QWidget)
		addRow(self, QLayout)
	**/
	public function addRow(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		addWidget(self, QWidget)
	**/
	public function addWidget(QWidget:Dynamic):Void;
	/**
		alignment(self) -> Qt.Alignment
	**/
	public function alignment():Dynamic;
	/**
		alignmentRect(self, QRect) -> QRect
	**/
	public function alignmentRect(QRect:Dynamic):Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		closestAcceptableSize(QWidget, QSize) -> QSize
	**/
	static public function closestAcceptableSize(QWidget:Dynamic, QSize:Dynamic):Dynamic;
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
		controlTypes(self) -> QSizePolicy.ControlTypes
	**/
	public function controlTypes():Dynamic;
	/**
		count(self) -> int
	**/
	public function count():Int;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		destroyed(self, object: QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
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
		dynamicPropertyNames(self) -> List[QByteArray]
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
		expandingDirections(self) -> Qt.Orientations
	**/
	public function expandingDirections():Dynamic;
	/**
		fieldGrowthPolicy(self) -> QFormLayout.FieldGrowthPolicy
	**/
	public function fieldGrowthPolicy():Dynamic;
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
		formAlignment(self) -> Qt.Alignment
	**/
	public function formAlignment():Dynamic;
	/**
		geometry(self) -> QRect
	**/
	public function geometry():Dynamic;
	/**
		getContentsMargins(self) -> Tuple[int, int, int, int]
	**/
	public function getContentsMargins():Dynamic;
	/**
		getItemPosition(self, int) -> Tuple[int, QFormLayout.ItemRole]
	**/
	public function getItemPosition(int:Int):Dynamic;
	/**
		getLayoutPosition(self, QLayout) -> Tuple[int, QFormLayout.ItemRole]
	**/
	public function getLayoutPosition(QLayout:Dynamic):Dynamic;
	/**
		getWidgetPosition(self, QWidget) -> Tuple[int, QFormLayout.ItemRole]
	**/
	public function getWidgetPosition(QWidget:Dynamic):Dynamic;
	/**
		hasHeightForWidth(self) -> bool
	**/
	public function hasHeightForWidth():Bool;
	/**
		heightForWidth(self, int) -> int
	**/
	public function heightForWidth(int:Int):Int;
	/**
		horizontalSpacing(self) -> int
	**/
	public function horizontalSpacing():Int;
	/**
		indexOf(self, QWidget) -> int
		indexOf(self, QLayoutItem) -> int
	**/
	public function indexOf(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		insertRow(self, int, QWidget, QWidget)
		insertRow(self, int, QWidget, QLayout)
		insertRow(self, int, str, QWidget)
		insertRow(self, int, str, QLayout)
		insertRow(self, int, QWidget)
		insertRow(self, int, QLayout)
	**/
	public function insertRow(int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		invalidate(self)
	**/
	public function invalidate():Void;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isEnabled(self) -> bool
	**/
	public function isEnabled():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType():Bool;
	/**
		isWindowType(self) -> bool
	**/
	public function isWindowType():Bool;
	/**
		itemAt(self, int, QFormLayout.ItemRole) -> QLayoutItem
		itemAt(self, int) -> QLayoutItem
	**/
	public function itemAt(int:Int, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		labelAlignment(self) -> Qt.Alignment
	**/
	public function labelAlignment():Dynamic;
	/**
		labelForField(self, QWidget) -> QWidget
		labelForField(self, QLayout) -> QWidget
	**/
	public function labelForField(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		layout(self) -> QLayout
	**/
	public function layout():Dynamic;
	/**
		maximumSize(self) -> QSize
	**/
	public function maximumSize():Dynamic;
	/**
		menuBar(self) -> QWidget
	**/
	public function menuBar():Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		minimumHeightForWidth(self, int) -> int
	**/
	public function minimumHeightForWidth(int:Int):Int;
	/**
		minimumSize(self) -> QSize
	**/
	public function minimumSize():Dynamic;
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
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		parentWidget(self) -> QWidget
	**/
	public function parentWidget():Dynamic;
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
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeItem(self, QLayoutItem)
	**/
	public function removeItem(QLayoutItem:Dynamic):Void;
	/**
		removeRow(self, int)
		removeRow(self, QWidget)
		removeRow(self, QLayout)
	**/
	public function removeRow(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		removeWidget(self, QWidget)
	**/
	public function removeWidget(QWidget:Dynamic):Void;
	/**
		replaceWidget(self, QWidget, QWidget, options: Union[Qt.FindChildOptions, Qt.FindChildOption] = Qt.FindChildrenRecursively) -> QLayoutItem
	**/
	public function replaceWidget(QWidget:Dynamic, QWidget:Dynamic, ?options:Dynamic):Dynamic;
	/**
		rowCount(self) -> int
	**/
	public function rowCount():Int;
	/**
		rowWrapPolicy(self) -> QFormLayout.RowWrapPolicy
	**/
	public function rowWrapPolicy():Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setAlignment(self, QWidget, Union[Qt.Alignment, Qt.AlignmentFlag]) -> bool
		setAlignment(self, QLayout, Union[Qt.Alignment, Qt.AlignmentFlag]) -> bool
		setAlignment(self, Union[Qt.Alignment, Qt.AlignmentFlag])
	**/
	public function setAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setContentsMargins(self, int, int, int, int)
		setContentsMargins(self, QMargins)
	**/
	public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setEnabled(self, bool)
	**/
	public function setEnabled(bool:Bool):Void;
	/**
		setFieldGrowthPolicy(self, QFormLayout.FieldGrowthPolicy)
	**/
	public function setFieldGrowthPolicy(QFormLayout:Dynamic):Void;
	/**
		setFormAlignment(self, Union[Qt.Alignment, Qt.AlignmentFlag])
	**/
	public function setFormAlignment(Union:Dynamic):Void;
	/**
		setGeometry(self, QRect)
	**/
	public function setGeometry(QRect:Dynamic):Void;
	/**
		setHorizontalSpacing(self, int)
	**/
	public function setHorizontalSpacing(int:Int):Void;
	/**
		setItem(self, int, QFormLayout.ItemRole, QLayoutItem)
	**/
	public function setItem(int:Int, QFormLayout:Dynamic, QLayoutItem:Dynamic):Void;
	/**
		setLabelAlignment(self, Union[Qt.Alignment, Qt.AlignmentFlag])
	**/
	public function setLabelAlignment(Union:Dynamic):Void;
	/**
		setLayout(self, int, QFormLayout.ItemRole, QLayout)
	**/
	public function setLayout(int:Int, QFormLayout:Dynamic, QLayout:Dynamic):Void;
	/**
		setMenuBar(self, QWidget)
	**/
	public function setMenuBar(QWidget:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setRowWrapPolicy(self, QFormLayout.RowWrapPolicy)
	**/
	public function setRowWrapPolicy(QFormLayout:Dynamic):Void;
	/**
		setSizeConstraint(self, QLayout.SizeConstraint)
	**/
	public function setSizeConstraint(QLayout:Dynamic):Void;
	/**
		setSpacing(self, int)
	**/
	public function setSpacing(int:Int):Void;
	/**
		setVerticalSpacing(self, int)
	**/
	public function setVerticalSpacing(int:Int):Void;
	/**
		setWidget(self, int, QFormLayout.ItemRole, QWidget)
	**/
	public function setWidget(int:Int, QFormLayout:Dynamic, QWidget:Dynamic):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		sizeConstraint(self) -> QLayout.SizeConstraint
	**/
	public function sizeConstraint():Dynamic;
	/**
		sizeHint(self) -> QSize
	**/
	public function sizeHint():Dynamic;
	/**
		spacerItem(self) -> QSpacerItem
	**/
	public function spacerItem():Dynamic;
	/**
		spacing(self) -> int
	**/
	public function spacing():Int;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		takeAt(self, int) -> QLayoutItem
	**/
	public function takeAt(int:Int):Dynamic;
	/**
		takeRow(self, int) -> QFormLayout.TakeRowResult
		takeRow(self, QWidget) -> QFormLayout.TakeRowResult
		takeRow(self, QLayout) -> QFormLayout.TakeRowResult
	**/
	public function takeRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		totalHeightForWidth(self, int) -> int
	**/
	public function totalHeightForWidth(int:Int):Int;
	/**
		totalMaximumSize(self) -> QSize
	**/
	public function totalMaximumSize():Dynamic;
	/**
		totalMinimumSize(self) -> QSize
	**/
	public function totalMinimumSize():Dynamic;
	/**
		totalSizeHint(self) -> QSize
	**/
	public function totalSizeHint():Dynamic;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		update(self)
	**/
	public function update():Void;
	/**
		verticalSpacing(self) -> int
	**/
	public function verticalSpacing():Int;
	/**
		widget(self) -> QWidget
	**/
	public function widget():Dynamic;
	/**
		widgetEvent(self, QEvent)
	**/
	public function widgetEvent(QEvent:Dynamic):Void;
}