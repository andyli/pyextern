/* This file is generated, do not edit! */
package pyQt5.qtQml;
@:pythonImport("PyQt5.QtQml", "QQmlEngine") extern class QQmlEngine {
	static public var AllExtensions : Dynamic;
	static public var ConsoleExtension : Dynamic;
	static public var CppOwnership : Dynamic;
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
	public function Extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QJSEngine.Extensions()
		QJSEngine.Extensions(Union[QJSEngine.Extensions, QJSEngine.Extension])
		QJSEngine.Extensions(QJSEngine.Extensions)
	**/
	static public function Extensions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var GarbageCollectionExtension : Dynamic;
	static public var JavaScriptOwnership : Dynamic;
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
	public function ObjectOwnership(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TranslationExtension : Dynamic;
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
		addImageProvider(self, str, QQmlImageProviderBase)
	**/
	public function addImageProvider(str:String, QQmlImageProviderBase:Dynamic):Void;
	/**
		addImportPath(self, str)
	**/
	public function addImportPath(str:String):Void;
	/**
		addNamedBundle(self, str, str) -> bool
	**/
	public function addNamedBundle(str:String, str:String):Bool;
	/**
		addPluginPath(self, str)
	**/
	public function addPluginPath(str:String):Void;
	/**
		baseUrl(self) -> QUrl
	**/
	public function baseUrl():Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		clearComponentCache(self)
	**/
	public function clearComponentCache():Void;
	/**
		collectGarbage(self)
	**/
	public function collectGarbage():Void;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		contextForObject(QObject) -> QQmlContext
	**/
	static public function contextForObject(QObject:Dynamic):Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		destroyed(self, QObject = None) [signal]
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
		dynamicPropertyNames(self) -> object
	**/
	public function dynamicPropertyNames():Dynamic;
	/**
		evaluate(self, str, fileName: str = '', lineNumber: int = 1) -> QJSValue
	**/
	public function evaluate(str:String, ?fileName:Dynamic, ?lineNumber:Dynamic):Dynamic;
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
		globalObject(self) -> QJSValue
	**/
	public function globalObject():Dynamic;
	/**
		imageProvider(self, str) -> QQmlImageProviderBase
	**/
	public function imageProvider(str:String):Dynamic;
	/**
		importPathList(self) -> List[str]
	**/
	public function importPathList():Dynamic;
	/**
		importPlugin(self, str, str, object) -> bool
	**/
	public function importPlugin(str:String, str:String, object:Dynamic):Bool;
	/**
		incubationController(self) -> QQmlIncubationController
	**/
	public function incubationController():Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		installExtensions(self, Union[QJSEngine.Extensions, QJSEngine.Extension], object: Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str] = QJSValue())
	**/
	public function installExtensions(Union:Dynamic, ?object:Dynamic):Void;
	/**
		installTranslatorFunctions(self, object: Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str] = QJSValue())
	**/
	public function installTranslatorFunctions(?object:Dynamic):Void;
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
		metaObject(self) -> QMetaObject
	**/
	public function metaObject():Dynamic;
	/**
		moveToThread(self, QThread)
	**/
	public function moveToThread(QThread:Dynamic):Void;
	/**
		networkAccessManager(self) -> QNetworkAccessManager
	**/
	public function networkAccessManager():Dynamic;
	/**
		networkAccessManagerFactory(self) -> QQmlNetworkAccessManagerFactory
	**/
	public function networkAccessManagerFactory():Dynamic;
	/**
		newArray(self, length: int = 0) -> QJSValue
	**/
	public function newArray(?length:Dynamic):Dynamic;
	/**
		newObject(self) -> QJSValue
	**/
	public function newObject():Dynamic;
	/**
		newQObject(self, QObject) -> QJSValue
	**/
	public function newQObject(QObject:Dynamic):Dynamic;
	/**
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		objectOwnership(QObject) -> QQmlEngine.ObjectOwnership
	**/
	static public function objectOwnership(QObject:Dynamic):Dynamic;
	/**
		offlineStoragePath(self) -> str
	**/
	public function offlineStoragePath():String;
	/**
		outputWarningsToStandardError(self) -> bool
	**/
	public function outputWarningsToStandardError():Bool;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		pluginPathList(self) -> List[str]
	**/
	public function pluginPathList():Dynamic;
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
		quit(self) [signal]
	**/
	public var quit : Dynamic;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeImageProvider(self, str)
	**/
	public function removeImageProvider(str:String):Void;
	/**
		rootContext(self) -> QQmlContext
	**/
	public function rootContext():Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setBaseUrl(self, QUrl)
	**/
	public function setBaseUrl(QUrl:Dynamic):Void;
	/**
		setContextForObject(QObject, QQmlContext)
	**/
	static public function setContextForObject(QObject:Dynamic, QQmlContext:Dynamic):Void;
	/**
		setImportPathList(self, Iterable[str])
	**/
	public function setImportPathList(Iterable:Dynamic):Void;
	/**
		setIncubationController(self, QQmlIncubationController)
	**/
	public function setIncubationController(QQmlIncubationController:Dynamic):Void;
	/**
		setNetworkAccessManagerFactory(self, QQmlNetworkAccessManagerFactory)
	**/
	public function setNetworkAccessManagerFactory(QQmlNetworkAccessManagerFactory:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setObjectOwnership(QObject, QQmlEngine.ObjectOwnership)
	**/
	static public function setObjectOwnership(QObject:Dynamic, QQmlEngine:Dynamic):Void;
	/**
		setOfflineStoragePath(self, str)
	**/
	public function setOfflineStoragePath(str:String):Void;
	/**
		setOutputWarningsToStandardError(self, bool)
	**/
	public function setOutputWarningsToStandardError(bool:Bool):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPluginPathList(self, Iterable[str])
	**/
	public function setPluginPathList(Iterable:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
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
		trimComponentCache(self)
	**/
	public function trimComponentCache():Void;
	/**
		warnings(self, Iterable[QQmlError]) [signal]
	**/
	public var warnings : Dynamic;
}