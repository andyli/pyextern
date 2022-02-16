/* This file is generated, do not edit! */
package pyQt5.qtNetwork;
@:pythonImport("PyQt5.QtNetwork", "QNetworkAccessManager") extern class QNetworkAccessManager {
	static public var Accessible : Dynamic;
	static public var CustomOperation : Dynamic;
	static public var DeleteOperation : Dynamic;
	static public var GetOperation : Dynamic;
	static public var HeadOperation : Dynamic;
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
	public function NetworkAccessibility(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NotAccessible : Dynamic;
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
	public function Operation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PostOperation : Dynamic;
	static public var PutOperation : Dynamic;
	static public var UnknownAccessibility : Dynamic;
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
		activeConfiguration(self) -> QNetworkConfiguration
	**/
	public function activeConfiguration():Dynamic;
	/**
		addStrictTransportSecurityHosts(self, Iterable[QHstsPolicy])
	**/
	public function addStrictTransportSecurityHosts(Iterable:Dynamic):Void;
	/**
		authenticationRequired(self, QNetworkReply, QAuthenticator) [signal]
	**/
	public var authenticationRequired : Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		cache(self) -> QAbstractNetworkCache
	**/
	public function cache():Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		clearAccessCache(self)
	**/
	public function clearAccessCache():Void;
	/**
		clearConnectionCache(self)
	**/
	public function clearConnectionCache():Void;
	/**
		configuration(self) -> QNetworkConfiguration
	**/
	public function configuration():Dynamic;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		connectToHost(self, str, port: int = 80)
	**/
	public function connectToHost(str:String, ?port:Dynamic):Void;
	/**
		connectToHostEncrypted(self, str, port: int = 443, sslConfiguration: QSslConfiguration = QSslConfiguration.defaultConfiguration())
	**/
	public function connectToHostEncrypted(str:String, ?port:Dynamic, ?sslConfiguration:Dynamic):Void;
	/**
		cookieJar(self) -> QNetworkCookieJar
	**/
	public function cookieJar():Dynamic;
	/**
		createRequest(self, QNetworkAccessManager.Operation, QNetworkRequest, device: QIODevice = None) -> QNetworkReply
	**/
	public function createRequest(QNetworkAccessManager:Dynamic, QNetworkRequest:Dynamic, ?device:Dynamic):Dynamic;
	/**
		customEvent(self, QEvent)
	**/
	public function customEvent(QEvent:Dynamic):Void;
	/**
		deleteLater(self)
	**/
	public function deleteLater():Void;
	/**
		deleteResource(self, QNetworkRequest) -> QNetworkReply
	**/
	public function deleteResource(QNetworkRequest:Dynamic):Dynamic;
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
		enableStrictTransportSecurityStore(self, bool, storeDir: str = '')
	**/
	public function enableStrictTransportSecurityStore(bool:Bool, ?storeDir:Dynamic):Void;
	/**
		encrypted(self, QNetworkReply) [signal]
	**/
	public var encrypted : Dynamic;
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
		finished(self, QNetworkReply) [signal]
	**/
	public var finished : Dynamic;
	/**
		get(self, QNetworkRequest) -> QNetworkReply
	**/
	public function get(QNetworkRequest:Dynamic):Dynamic;
	/**
		head(self, QNetworkRequest) -> QNetworkReply
	**/
	public function head(QNetworkRequest:Dynamic):Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isStrictTransportSecurityEnabled(self) -> bool
	**/
	public function isStrictTransportSecurityEnabled():Bool;
	/**
		isStrictTransportSecurityStoreEnabled(self) -> bool
	**/
	public function isStrictTransportSecurityStoreEnabled():Bool;
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
		networkAccessible(self) -> QNetworkAccessManager.NetworkAccessibility
	**/
	public function networkAccessible():Dynamic;
	/**
		networkAccessibleChanged(self, QNetworkAccessManager.NetworkAccessibility) [signal]
	**/
	public var networkAccessibleChanged : Dynamic;
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
		post(self, QNetworkRequest, QIODevice) -> QNetworkReply
		post(self, QNetworkRequest, Union[QByteArray, bytes, bytearray]) -> QNetworkReply
		post(self, QNetworkRequest, QHttpMultiPart) -> QNetworkReply
	**/
	public function post(QNetworkRequest:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		preSharedKeyAuthenticationRequired(self, QNetworkReply, QSslPreSharedKeyAuthenticator) [signal]
	**/
	public var preSharedKeyAuthenticationRequired : Dynamic;
	/**
		property(self, str) -> Any
	**/
	public function property(str:String):Dynamic;
	/**
		proxy(self) -> QNetworkProxy
	**/
	public function proxy():Dynamic;
	/**
		proxyAuthenticationRequired(self, QNetworkProxy, QAuthenticator) [signal]
	**/
	public var proxyAuthenticationRequired : Dynamic;
	/**
		proxyFactory(self) -> QNetworkProxyFactory
	**/
	public function proxyFactory():Dynamic;
	/**
		put(self, QNetworkRequest, QIODevice) -> QNetworkReply
		put(self, QNetworkRequest, Union[QByteArray, bytes, bytearray]) -> QNetworkReply
		put(self, QNetworkRequest, QHttpMultiPart) -> QNetworkReply
	**/
	public function put(QNetworkRequest:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		redirectPolicy(self) -> QNetworkRequest.RedirectPolicy
	**/
	public function redirectPolicy():Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		sendCustomRequest(self, QNetworkRequest, Union[QByteArray, bytes, bytearray], data: QIODevice = None) -> QNetworkReply
		sendCustomRequest(self, QNetworkRequest, Union[QByteArray, bytes, bytearray], Union[QByteArray, bytes, bytearray]) -> QNetworkReply
		sendCustomRequest(self, QNetworkRequest, Union[QByteArray, bytes, bytearray], QHttpMultiPart) -> QNetworkReply
	**/
	public function sendCustomRequest(QNetworkRequest:Dynamic, Union:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setCache(self, QAbstractNetworkCache)
	**/
	public function setCache(QAbstractNetworkCache:Dynamic):Void;
	/**
		setConfiguration(self, QNetworkConfiguration)
	**/
	public function setConfiguration(QNetworkConfiguration:Dynamic):Void;
	/**
		setCookieJar(self, QNetworkCookieJar)
	**/
	public function setCookieJar(QNetworkCookieJar:Dynamic):Void;
	/**
		setNetworkAccessible(self, QNetworkAccessManager.NetworkAccessibility)
	**/
	public function setNetworkAccessible(QNetworkAccessManager:Dynamic):Void;
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
		setProxy(self, QNetworkProxy)
	**/
	public function setProxy(QNetworkProxy:Dynamic):Void;
	/**
		setProxyFactory(self, QNetworkProxyFactory)
	**/
	public function setProxyFactory(QNetworkProxyFactory:Dynamic):Void;
	/**
		setRedirectPolicy(self, QNetworkRequest.RedirectPolicy)
	**/
	public function setRedirectPolicy(QNetworkRequest:Dynamic):Void;
	/**
		setStrictTransportSecurityEnabled(self, bool)
	**/
	public function setStrictTransportSecurityEnabled(bool:Bool):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		sslErrors(self, QNetworkReply, Iterable[QSslError]) [signal]
	**/
	public var sslErrors : Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	static public var staticMetaObject : Dynamic;
	/**
		strictTransportSecurityHosts(self) -> List[QHstsPolicy]
	**/
	public function strictTransportSecurityHosts():Dynamic;
	/**
		supportedSchemes(self) -> List[str]
	**/
	public function supportedSchemes():Dynamic;
	/**
		supportedSchemesImplementation(self) -> List[str]
	**/
	public function supportedSchemesImplementation():Dynamic;
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
}