/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QCoreApplication") extern class QCoreApplication {
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
		__enter__(self) -> object
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		__exit__(self, object, object, object)
	**/
	public function __exit__(object:Dynamic, object:Dynamic, object:Dynamic):Void;
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
		aboutToQuit(self) [signal]
	**/
	public var aboutToQuit : Dynamic;
	/**
		addLibraryPath(str)
	**/
	static public function addLibraryPath(str:String):Void;
	/**
		applicationDirPath() -> str
	**/
	static public function applicationDirPath():String;
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
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		closingDown() -> bool
	**/
	static public function closingDown():Bool;
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
		isQuitLockEnabled() -> bool
	**/
	static public function isQuitLockEnabled():Bool;
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
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		libraryPaths() -> List[str]
	**/
	static public function libraryPaths():Dynamic;
	/**
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
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
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		postEvent(QObject, QEvent, priority: int = Qt.NormalEventPriority)
	**/
	static public function postEvent(QObject:Dynamic, QEvent:Dynamic, ?priority:Dynamic):Void;
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
		quit()
	**/
	static public function quit():Void;
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
		setEventDispatcher(QAbstractEventDispatcher)
	**/
	static public function setEventDispatcher(QAbstractEventDispatcher:Dynamic):Void;
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
		setSetuidAllowed(bool)
	**/
	static public function setSetuidAllowed(bool:Bool):Void;
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
		tr(self, str, disambiguation: str = None, n: int = -1) -> str
	**/
	public function tr(str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
	/**
		translate(str, str, disambiguation: str = None, n: int = -1) -> str
	**/
	static public function translate(str:String, str:String, ?disambiguation:Dynamic, ?n:Dynamic):String;
}