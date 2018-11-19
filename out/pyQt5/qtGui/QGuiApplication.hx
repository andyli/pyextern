/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QGuiApplication") extern class QGuiApplication {
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
		aboutToQuit(self) [signal]
	**/
	public var aboutToQuit : Dynamic;
	/**
		addLibraryPath(str)
	**/
	static public function addLibraryPath(str:String):Void;
	/**
		allWindows() -> object
	**/
	static public function allWindows():Dynamic;
	/**
		applicationDirPath() -> str
	**/
	static public function applicationDirPath():String;
	/**
		applicationDisplayName() -> str
	**/
	static public function applicationDisplayName():String;
	/**
		applicationFilePath() -> str
	**/
	static public function applicationFilePath():String;
	/**
		applicationName() -> str
	**/
	static public function applicationName():String;
	/**
		applicationPid() -> int
	**/
	static public function applicationPid():Int;
	/**
		applicationState() -> Qt.ApplicationState
	**/
	static public function applicationState():Dynamic;
	/**
		applicationStateChanged(self, Qt.ApplicationState) [signal]
	**/
	public var applicationStateChanged : Dynamic;
	/**
		applicationVersion() -> str
	**/
	static public function applicationVersion():String;
	/**
		arguments() -> List[str]
	**/
	static public function arguments():Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		changeOverrideCursor(Union[QCursor, Qt.CursorShape])
	**/
	static public function changeOverrideCursor(Union:Dynamic):Void;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		clipboard() -> QClipboard
	**/
	static public function clipboard():Dynamic;
	/**
		closingDown() -> bool
	**/
	static public function closingDown():Bool;
	/**
		commitDataRequest(self, QSessionManager) [signal]
	**/
	public var commitDataRequest : Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		desktopSettingsAware() -> bool
	**/
	static public function desktopSettingsAware():Bool;
	/**
		destroyed(self, QObject = None) [signal]
	**/
	public var destroyed : Dynamic;
	/**
		devicePixelRatio(self) -> float
	**/
	public function devicePixelRatio():Float;
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
		dynamicPropertyNames(self) -> object
	**/
	public function dynamicPropertyNames():Dynamic;
	/**
		event(self, QEvent) -> bool
	**/
	public function event(QEvent:Dynamic):Bool;
	/**
		eventDispatcher() -> QAbstractEventDispatcher
	**/
	static public function eventDispatcher():Dynamic;
	/**
		eventFilter(self, QObject, QEvent) -> bool
	**/
	public function eventFilter(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		exec() -> int
	**/
	static public function exec():Int;
	/**
		exec_() -> int
	**/
	static public function exec_():Int;
	/**
		exit(returnCode: int = 0)
	**/
	static public function exit(?returnCode:Dynamic):Void;
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
		flush()
	**/
	static public function flush():Void;
	/**
		focusObject() -> QObject
	**/
	static public function focusObject():Dynamic;
	/**
		focusObjectChanged(self, QObject) [signal]
	**/
	public var focusObjectChanged : Dynamic;
	/**
		focusWindow() -> QWindow
	**/
	static public function focusWindow():Dynamic;
	/**
		focusWindowChanged(self, QWindow) [signal]
	**/
	public var focusWindowChanged : Dynamic;
	/**
		font() -> QFont
	**/
	static public function font():Dynamic;
	/**
		fontDatabaseChanged(self) [signal]
	**/
	public var fontDatabaseChanged : Dynamic;
	/**
		hasPendingEvents() -> bool
	**/
	static public function hasPendingEvents():Bool;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		installNativeEventFilter(self, QAbstractNativeEventFilter)
	**/
	public function installNativeEventFilter(QAbstractNativeEventFilter:Dynamic):Void;
	/**
		installTranslator(QTranslator) -> bool
	**/
	static public function installTranslator(QTranslator:Dynamic):Bool;
	/**
		instance() -> QCoreApplication
	**/
	static public function instance():Dynamic;
	/**
		isFallbackSessionManagementEnabled() -> bool
	**/
	static public function isFallbackSessionManagementEnabled():Bool;
	/**
		isLeftToRight() -> bool
	**/
	static public function isLeftToRight():Bool;
	/**
		isQuitLockEnabled() -> bool
	**/
	static public function isQuitLockEnabled():Bool;
	/**
		isRightToLeft() -> bool
	**/
	static public function isRightToLeft():Bool;
	/**
		isSavingSession(self) -> bool
	**/
	public function isSavingSession():Bool;
	/**
		isSessionRestored(self) -> bool
	**/
	public function isSessionRestored():Bool;
	/**
		isSetuidAllowed() -> bool
	**/
	static public function isSetuidAllowed():Bool;
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
		keyboardModifiers() -> Qt.KeyboardModifiers
	**/
	static public function keyboardModifiers():Dynamic;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		lastWindowClosed(self) [signal]
	**/
	public var lastWindowClosed : Dynamic;
	/**
		layoutDirection() -> Qt.LayoutDirection
	**/
	static public function layoutDirection():Dynamic;
	/**
		layoutDirectionChanged(self, Qt.LayoutDirection) [signal]
	**/
	public var layoutDirectionChanged : Dynamic;
	/**
		libraryPaths() -> List[str]
	**/
	static public function libraryPaths():Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		modalWindow() -> QWindow
	**/
	static public function modalWindow():Dynamic;
	/**
		mouseButtons() -> Qt.MouseButtons
	**/
	static public function mouseButtons():Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		notify(self, QObject, QEvent) -> bool
	**/
	public function notify(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		organizationDomain() -> str
	**/
	static public function organizationDomain():String;
	/**
		organizationName() -> str
	**/
	static public function organizationName():String;
	/**
		overrideCursor() -> QCursor
	**/
	static public function overrideCursor():Dynamic;
	/**
		palette() -> QPalette
	**/
	static public function palette():Dynamic;
	/**
		paletteChanged(self, QPalette) [signal]
	**/
	public var paletteChanged : Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		platformName() -> str
	**/
	static public function platformName():String;
	/**
		postEvent(QObject, QEvent, priority: int = Qt.NormalEventPriority)
	**/
	static public function postEvent(QObject:Dynamic, QEvent:Dynamic, ?priority:Dynamic):Void;
	/**
		primaryScreen() -> QScreen
	**/
	static public function primaryScreen():Dynamic;
	/**
		primaryScreenChanged(self, QScreen) [signal]
	**/
	public var primaryScreenChanged : Dynamic;
	/**
		processEvents(flags: Union[QEventLoop.ProcessEventsFlags, QEventLoop.ProcessEventsFlag] = QEventLoop.AllEvents)
		processEvents(Union[QEventLoop.ProcessEventsFlags, QEventLoop.ProcessEventsFlag], int)
	**/
	static public function processEvents(args:haxe.extern.Rest<Dynamic>):Void;
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
		queryKeyboardModifiers() -> Qt.KeyboardModifiers
	**/
	static public function queryKeyboardModifiers():Dynamic;
	/**
		quit()
	**/
	static public function quit():Void;
	/**
		quitOnLastWindowClosed() -> bool
	**/
	static public function quitOnLastWindowClosed():Bool;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeLibraryPath(str)
	**/
	static public function removeLibraryPath(str:String):Void;
	/**
		removeNativeEventFilter(self, QAbstractNativeEventFilter)
	**/
	public function removeNativeEventFilter(QAbstractNativeEventFilter:Dynamic):Void;
	/**
		removePostedEvents(QObject, eventType: int = 0)
	**/
	static public function removePostedEvents(QObject:Dynamic, ?eventType:Dynamic):Void;
	/**
		removeTranslator(QTranslator) -> bool
	**/
	static public function removeTranslator(QTranslator:Dynamic):Bool;
	/**
		restoreOverrideCursor()
	**/
	static public function restoreOverrideCursor():Void;
	/**
		saveStateRequest(self, QSessionManager) [signal]
	**/
	public var saveStateRequest : Dynamic;
	/**
		screenAdded(self, QScreen) [signal]
	**/
	public var screenAdded : Dynamic;
	/**
		screenRemoved(self, QScreen) [signal]
	**/
	public var screenRemoved : Dynamic;
	/**
		screens() -> object
	**/
	static public function screens():Dynamic;
	/**
		sendEvent(QObject, QEvent) -> bool
	**/
	static public function sendEvent(QObject:Dynamic, QEvent:Dynamic):Bool;
	/**
		sendPostedEvents(receiver: QObject = None, eventType: int = 0)
	**/
	static public function sendPostedEvents(?receiver:Dynamic, ?eventType:Dynamic):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		sessionId(self) -> str
	**/
	public function sessionId():String;
	/**
		sessionKey(self) -> str
	**/
	public function sessionKey():String;
	/**
		setApplicationDisplayName(str)
	**/
	static public function setApplicationDisplayName(str:String):Void;
	/**
		setApplicationName(str)
	**/
	static public function setApplicationName(str:String):Void;
	/**
		setApplicationVersion(str)
	**/
	static public function setApplicationVersion(str:String):Void;
	/**
		setAttribute(Qt.ApplicationAttribute, on: bool = True)
	**/
	static public function setAttribute(Qt:Dynamic, ?on:Dynamic):Void;
	/**
		setDesktopSettingsAware(bool)
	**/
	static public function setDesktopSettingsAware(bool:Bool):Void;
	/**
		setEventDispatcher(QAbstractEventDispatcher)
	**/
	static public function setEventDispatcher(QAbstractEventDispatcher:Dynamic):Void;
	/**
		setFallbackSessionManagementEnabled(bool)
	**/
	static public function setFallbackSessionManagementEnabled(bool:Bool):Void;
	/**
		setFont(QFont)
	**/
	static public function setFont(QFont:Dynamic):Void;
	/**
		setLayoutDirection(Qt.LayoutDirection)
	**/
	static public function setLayoutDirection(Qt:Dynamic):Void;
	/**
		setLibraryPaths(Iterable[str])
	**/
	static public function setLibraryPaths(Iterable:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOrganizationDomain(str)
	**/
	static public function setOrganizationDomain(str:String):Void;
	/**
		setOrganizationName(str)
	**/
	static public function setOrganizationName(str:String):Void;
	/**
		setOverrideCursor(Union[QCursor, Qt.CursorShape])
	**/
	static public function setOverrideCursor(Union:Dynamic):Void;
	/**
		setPalette(QPalette)
	**/
	static public function setPalette(QPalette:Dynamic):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setQuitLockEnabled(bool)
	**/
	static public function setQuitLockEnabled(bool:Bool):Void;
	/**
		setQuitOnLastWindowClosed(bool)
	**/
	static public function setQuitOnLastWindowClosed(bool:Bool):Void;
	/**
		setSetuidAllowed(bool)
	**/
	static public function setSetuidAllowed(bool:Bool):Void;
	/**
		setWindowIcon(QIcon)
	**/
	static public function setWindowIcon(QIcon:Dynamic):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		startingUp() -> bool
	**/
	static public function startingUp():Bool;
	static public var staticMetaObject : Dynamic;
	/**
		sync()
	**/
	static public function sync():Void;
	/**
		testAttribute(Qt.ApplicationAttribute) -> bool
	**/
	static public function testAttribute(Qt:Dynamic):Bool;
	/**
		thread(self) -> QThread
	**/
	public function thread():Dynamic;
	/**
		timerEvent(self, QTimerEvent)
	**/
	public function timerEvent(QTimerEvent:Dynamic):Void;
	/**
		topLevelAt(QPoint) -> QWindow
	**/
	static public function topLevelAt(QPoint:Dynamic):Dynamic;
	/**
		topLevelWindows() -> object
	**/
	static public function topLevelWindows():Dynamic;
	/**
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		translate(str, str, disambiguation: str = None, n: int = -1) -> str
	**/
	static public function translate(str:String, str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		windowIcon() -> QIcon
	**/
	static public function windowIcon():Dynamic;
}