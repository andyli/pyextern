/* This file is generated, do not edit! */
package pyQt5.qtWidgets;
@:pythonImport("PyQt5.QtWidgets", "QAction") extern class QAction {
	static public var AboutQtRole : Dynamic;
	static public var AboutRole : Dynamic;
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
	public function ActionEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ApplicationSpecificRole : Dynamic;
	static public var HighPriority : Dynamic;
	static public var Hover : Dynamic;
	static public var LowPriority : Dynamic;
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
	public function MenuRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NoRole : Dynamic;
	static public var NormalPriority : Dynamic;
	static public var PreferencesRole : Dynamic;
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
	public function Priority(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var QuitRole : Dynamic;
	static public var TextHeuristicRole : Dynamic;
	static public var Trigger : Dynamic;
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
		actionGroup(self) -> QActionGroup
	**/
	public function actionGroup():Dynamic;
	/**
		activate(self, QAction.ActionEvent)
	**/
	public function activate(QAction:Dynamic):Void;
	/**
		associatedGraphicsWidgets(self) -> List[QGraphicsWidget]
	**/
	public function associatedGraphicsWidgets():Dynamic;
	/**
		associatedWidgets(self) -> List[QWidget]
	**/
	public function associatedWidgets():Dynamic;
	/**
		autoRepeat(self) -> bool
	**/
	public function autoRepeat():Bool;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		changed(self) [signal]
	**/
	public var changed : Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		data(self) -> Any
	**/
	public function data():Dynamic;
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
		font(self) -> QFont
	**/
	public function font():Dynamic;
	/**
		hover(self)
	**/
	public function hover():Void;
	/**
		hovered(self) [signal]
	**/
	public var hovered : Dynamic;
	/**
		icon(self) -> QIcon
	**/
	public function icon():Dynamic;
	/**
		iconText(self) -> str
	**/
	public function iconText():String;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isCheckable(self) -> bool
	**/
	public function isCheckable():Bool;
	/**
		isChecked(self) -> bool
	**/
	public function isChecked():Bool;
	/**
		isEnabled(self) -> bool
	**/
	public function isEnabled():Bool;
	/**
		isIconVisibleInMenu(self) -> bool
	**/
	public function isIconVisibleInMenu():Bool;
	/**
		isSeparator(self) -> bool
	**/
	public function isSeparator():Bool;
	/**
		isShortcutVisibleInContextMenu(self) -> bool
	**/
	public function isShortcutVisibleInContextMenu():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
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
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		menu(self) -> QMenu
	**/
	public function menu():Dynamic;
	/**
		menuRole(self) -> QAction.MenuRole
	**/
	public function menuRole():Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
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
		priority(self) -> QAction.Priority
	**/
	public function priority():Dynamic;
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
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setActionGroup(self, QActionGroup)
	**/
	public function setActionGroup(QActionGroup:Dynamic):Void;
	/**
		setAutoRepeat(self, bool)
	**/
	public function setAutoRepeat(bool:Bool):Void;
	/**
		setCheckable(self, bool)
	**/
	public function setCheckable(bool:Bool):Void;
	/**
		setChecked(self, bool)
	**/
	public function setChecked(bool:Bool):Void;
	/**
		setData(self, Any)
	**/
	public function setData(Any:Dynamic):Void;
	/**
		setDisabled(self, bool)
	**/
	public function setDisabled(bool:Bool):Void;
	/**
		setEnabled(self, bool)
	**/
	public function setEnabled(bool:Bool):Void;
	/**
		setFont(self, QFont)
	**/
	public function setFont(QFont:Dynamic):Void;
	/**
		setIcon(self, QIcon)
	**/
	public function setIcon(QIcon:Dynamic):Void;
	/**
		setIconText(self, str)
	**/
	public function setIconText(str:String):Void;
	/**
		setIconVisibleInMenu(self, bool)
	**/
	public function setIconVisibleInMenu(bool:Bool):Void;
	/**
		setMenu(self, QMenu)
	**/
	public function setMenu(QMenu:Dynamic):Void;
	/**
		setMenuRole(self, QAction.MenuRole)
	**/
	public function setMenuRole(QAction:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPriority(self, QAction.Priority)
	**/
	public function setPriority(QAction:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setSeparator(self, bool)
	**/
	public function setSeparator(bool:Bool):Void;
	/**
		setShortcut(self, Union[QKeySequence, QKeySequence.StandardKey, str, int])
	**/
	public function setShortcut(Union:Dynamic):Void;
	/**
		setShortcutContext(self, Qt.ShortcutContext)
	**/
	public function setShortcutContext(Qt:Dynamic):Void;
	/**
		setShortcutVisibleInContextMenu(self, bool)
	**/
	public function setShortcutVisibleInContextMenu(bool:Bool):Void;
	/**
		setShortcuts(self, Iterable[Union[QKeySequence, QKeySequence.StandardKey, str, int]])
		setShortcuts(self, QKeySequence.StandardKey)
	**/
	public function setShortcuts(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setStatusTip(self, str)
	**/
	public function setStatusTip(str:String):Void;
	/**
		setText(self, str)
	**/
	public function setText(str:String):Void;
	/**
		setToolTip(self, str)
	**/
	public function setToolTip(str:String):Void;
	/**
		setVisible(self, bool)
	**/
	public function setVisible(bool:Bool):Void;
	/**
		setWhatsThis(self, str)
	**/
	public function setWhatsThis(str:String):Void;
	/**
		shortcut(self) -> QKeySequence
	**/
	public function shortcut():Dynamic;
	/**
		shortcutContext(self) -> Qt.ShortcutContext
	**/
	public function shortcutContext():Dynamic;
	/**
		shortcuts(self) -> List[QKeySequence]
	**/
	public function shortcuts():Dynamic;
	/**
		showStatusText(self, widget: QWidget = None) -> bool
	**/
	public function showStatusText(?widget:Dynamic):Bool;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		statusTip(self) -> str
	**/
	public function statusTip():String;
	/**
		text(self) -> str
	**/
	public function text():String;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		toggle(self)
	**/
	public function toggle():Void;
	/**
		toggled(self, bool) [signal]
	**/
	public var toggled : Dynamic;
	/**
		toolTip(self) -> str
	**/
	public function toolTip():String;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		trigger(self)
	**/
	public function trigger():Void;
	/**
		triggered(self, checked: bool = False) [signal]
	**/
	public var triggered : Dynamic;
	/**
		whatsThis(self) -> str
	**/
	public function whatsThis():String;
}