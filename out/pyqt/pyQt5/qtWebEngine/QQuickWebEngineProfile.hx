/* This file is generated, do not edit! */
package pyQt5.qtWebEngine;
@:pythonImport("PyQt5.QtWebEngine", "QQuickWebEngineProfile") extern class QQuickWebEngineProfile {
	static public var AllowPersistentCookies : Dynamic;
	static public var DiskHttpCache : Dynamic;
	static public var ForcePersistentCookies : Dynamic;
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
	public function HttpCacheType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MemoryHttpCache : Dynamic;
	static public var NoCache : Dynamic;
	static public var NoPersistentCookies : Dynamic;
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
	public function PersistentCookiesPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		cachePath(self) -> str
	**/
	public function cachePath():String;
	/**
		cachePathChanged(self) [signal]
	**/
	public var cachePathChanged : Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		clearHttpCache(self)
	**/
	public function clearHttpCache():Void;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		cookieStore(self) -> QWebEngineCookieStore
	**/
	public function cookieStore():Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		defaultProfile() -> QQuickWebEngineProfile
	**/
	static public function defaultProfile():Dynamic;
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
		httpAcceptLanguage(self) -> str
	**/
	public function httpAcceptLanguage():String;
	/**
		httpAcceptLanguageChanged(self) [signal]
	**/
	public var httpAcceptLanguageChanged : Dynamic;
	/**
		httpCacheMaximumSize(self) -> int
	**/
	public function httpCacheMaximumSize():Int;
	/**
		httpCacheMaximumSizeChanged(self) [signal]
	**/
	public var httpCacheMaximumSizeChanged : Dynamic;
	/**
		httpCacheType(self) -> QQuickWebEngineProfile.HttpCacheType
	**/
	public function httpCacheType():Dynamic;
	/**
		httpCacheTypeChanged(self) [signal]
	**/
	public var httpCacheTypeChanged : Dynamic;
	/**
		httpUserAgent(self) -> str
	**/
	public function httpUserAgent():String;
	/**
		httpUserAgentChanged(self) [signal]
	**/
	public var httpUserAgentChanged : Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		installUrlSchemeHandler(self, Union[QByteArray, bytes, bytearray], QWebEngineUrlSchemeHandler)
	**/
	public function installUrlSchemeHandler(Union:Dynamic, QWebEngineUrlSchemeHandler:Dynamic):Void;
	/**
		isOffTheRecord(self) -> bool
	**/
	public function isOffTheRecord():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isSpellCheckEnabled(self) -> bool
	**/
	public function isSpellCheckEnabled():Bool;
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
		objectName(self) -> str
	**/
	public function objectName():String;
	/**
		objectNameChanged(self, str) [signal]
	**/
	public var objectNameChanged : Dynamic;
	/**
		offTheRecordChanged(self) [signal]
	**/
	public var offTheRecordChanged : Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		persistentCookiesPolicy(self) -> QQuickWebEngineProfile.PersistentCookiesPolicy
	**/
	public function persistentCookiesPolicy():Dynamic;
	/**
		persistentCookiesPolicyChanged(self) [signal]
	**/
	public var persistentCookiesPolicyChanged : Dynamic;
	/**
		persistentStoragePath(self) -> str
	**/
	public function persistentStoragePath():String;
	/**
		persistentStoragePathChanged(self) [signal]
	**/
	public var persistentStoragePathChanged : Dynamic;
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
		removeAllUrlSchemeHandlers(self)
	**/
	public function removeAllUrlSchemeHandlers():Void;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		removeUrlScheme(self, Union[QByteArray, bytes, bytearray])
	**/
	public function removeUrlScheme(Union:Dynamic):Void;
	/**
		removeUrlSchemeHandler(self, QWebEngineUrlSchemeHandler)
	**/
	public function removeUrlSchemeHandler(QWebEngineUrlSchemeHandler:Dynamic):Void;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setCachePath(self, str)
	**/
	public function setCachePath(str:String):Void;
	/**
		setHttpAcceptLanguage(self, str)
	**/
	public function setHttpAcceptLanguage(str:String):Void;
	/**
		setHttpCacheMaximumSize(self, int)
	**/
	public function setHttpCacheMaximumSize(int:Int):Void;
	/**
		setHttpCacheType(self, QQuickWebEngineProfile.HttpCacheType)
	**/
	public function setHttpCacheType(QQuickWebEngineProfile:Dynamic):Void;
	/**
		setHttpUserAgent(self, str)
	**/
	public function setHttpUserAgent(str:String):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOffTheRecord(self, bool)
	**/
	public function setOffTheRecord(bool:Bool):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPersistentCookiesPolicy(self, QQuickWebEngineProfile.PersistentCookiesPolicy)
	**/
	public function setPersistentCookiesPolicy(QQuickWebEngineProfile:Dynamic):Void;
	/**
		setPersistentStoragePath(self, str)
	**/
	public function setPersistentStoragePath(str:String):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setRequestInterceptor(self, QWebEngineUrlRequestInterceptor)
	**/
	public function setRequestInterceptor(QWebEngineUrlRequestInterceptor:Dynamic):Void;
	/**
		setSpellCheckEnabled(self, bool)
	**/
	public function setSpellCheckEnabled(bool:Bool):Void;
	/**
		setSpellCheckLanguages(self, Iterable[str])
	**/
	public function setSpellCheckLanguages(Iterable:Dynamic):Void;
	/**
		setStorageName(self, str)
	**/
	public function setStorageName(str:String):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		spellCheckEnabledChanged(self) [signal]
	**/
	public var spellCheckEnabledChanged : Dynamic;
	/**
		spellCheckLanguages(self) -> List[str]
	**/
	public function spellCheckLanguages():Dynamic;
	/**
		spellCheckLanguagesChanged(self) [signal]
	**/
	public var spellCheckLanguagesChanged : Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		storageName(self) -> str
	**/
	public function storageName():String;
	/**
		storageNameChanged(self) [signal]
	**/
	public var storageNameChanged : Dynamic;
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
		urlSchemeHandler(self, Union[QByteArray, bytes, bytearray]) -> QWebEngineUrlSchemeHandler
	**/
	public function urlSchemeHandler(Union:Dynamic):Dynamic;
}