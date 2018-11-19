/* This file is generated, do not edit! */
package pyQt5.qtWebSockets;
@:pythonImport("PyQt5.QtWebSockets", "QWebSocket") extern class QWebSocket {
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
		abort(self)
	**/
	public function abort():Void;
	/**
		aboutToClose(self) [signal]
	**/
	public var aboutToClose : Dynamic;
	/**
		binaryFrameReceived(self, Union[QByteArray, bytes, bytearray], bool) [signal]
	**/
	public var binaryFrameReceived : Dynamic;
	/**
		binaryMessageReceived(self, Union[QByteArray, bytes, bytearray]) [signal]
	**/
	public var binaryMessageReceived : Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		bytesWritten(self, int) [signal]
	**/
	public var bytesWritten : Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		close(self, closeCode: QWebSocketProtocol.CloseCode = QWebSocketProtocol.CloseCodeNormal, reason: str = '')
	**/
	public function close(?closeCode:Dynamic, ?reason:Dynamic):Void;
	/**
		closeCode(self) -> QWebSocketProtocol.CloseCode
	**/
	public function closeCode():Dynamic;
	/**
		closeReason(self) -> str
	**/
	public function closeReason():String;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		connected(self) [signal]
	**/
	public var connected : Dynamic;
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
		disconnected(self) [signal]
	**/
	public var disconnected : Dynamic;
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
		error(self) -> QAbstractSocket.SocketError
		error(self, QAbstractSocket.SocketError) [signal]
	**/
	public var error : Dynamic;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
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
		flush(self) -> bool
	**/
	public function flush():Bool;
	/**
		ignoreSslErrors(self, Iterable[QSslError])
		ignoreSslErrors(self)
	**/
	public function ignoreSslErrors(args:haxe.extern.Rest<Dynamic>):Void;
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
		isValid(self) -> bool
	**/
	public function isValid():Bool;
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
		localAddress(self) -> QHostAddress
	**/
	public function localAddress():Dynamic;
	/**
		localPort(self) -> int
	**/
	public function localPort():Int;
	/**
		maskGenerator(self) -> QMaskGenerator
	**/
	public function maskGenerator():Dynamic;
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
		open(self, QUrl)
		open(self, QNetworkRequest)
	**/
	public function open(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		origin(self) -> str
	**/
	public function origin():String;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		pauseMode(self) -> QAbstractSocket.PauseModes
	**/
	public function pauseMode():Dynamic;
	/**
		peerAddress(self) -> QHostAddress
	**/
	public function peerAddress():Dynamic;
	/**
		peerName(self) -> str
	**/
	public function peerName():String;
	/**
		peerPort(self) -> int
	**/
	public function peerPort():Int;
	/**
		ping(self, payload: Union[QByteArray, bytes, bytearray] = QByteArray())
	**/
	public function ping(?payload:Dynamic):Void;
	/**
		pong(self, int, Union[QByteArray, bytes, bytearray]) [signal]
	**/
	public var pong : Dynamic;
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
		QObject.pyqtConfigure(...)
		
		Each keyword argument is either the name of a Qt property or a Qt signal.
		For properties the property is set to the given value which should be of an
		appropriate type.
		For signals the signal is connected to the given value which should be a
		callable.
	**/
	public function pyqtConfigure(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		readBufferSize(self) -> int
	**/
	public function readBufferSize():Int;
	/**
		readChannelFinished(self) [signal]
	**/
	public var readChannelFinished : Dynamic;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		request(self) -> QNetworkRequest
	**/
	public function request():Dynamic;
	/**
		requestUrl(self) -> QUrl
	**/
	public function requestUrl():Dynamic;
	/**
		resourceName(self) -> str
	**/
	public function resourceName():String;
	/**
		resume(self)
	**/
	public function resume():Void;
	/**
		sendBinaryMessage(self, Union[QByteArray, bytes, bytearray]) -> int
	**/
	public function sendBinaryMessage(Union:Dynamic):Int;
	/**
		sendTextMessage(self, str) -> int
	**/
	public function sendTextMessage(str:String):Int;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setMaskGenerator(self, QMaskGenerator)
	**/
	public function setMaskGenerator(QMaskGenerator:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPauseMode(self, Union[QAbstractSocket.PauseModes, QAbstractSocket.PauseMode])
	**/
	public function setPauseMode(Union:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setProxy(self, QNetworkProxy)
	**/
	public function setProxy(QNetworkProxy:Dynamic):Void;
	/**
		setReadBufferSize(self, int)
	**/
	public function setReadBufferSize(int:Int):Void;
	/**
		setSslConfiguration(self, QSslConfiguration)
	**/
	public function setSslConfiguration(QSslConfiguration:Dynamic):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		sslConfiguration(self) -> QSslConfiguration
	**/
	public function sslConfiguration():Dynamic;
	/**
		sslErrors(self, Iterable[QSslError]) [signal]
	**/
	public var sslErrors : Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		state(self) -> QAbstractSocket.SocketState
	**/
	public function state():Dynamic;
	/**
		stateChanged(self, QAbstractSocket.SocketState) [signal]
	**/
	public var stateChanged : Dynamic;
	static public var staticMetaObject : Dynamic;
	/**
		textFrameReceived(self, str, bool) [signal]
	**/
	public var textFrameReceived : Dynamic;
	/**
		textMessageReceived(self, str) [signal]
	**/
	public var textMessageReceived : Dynamic;
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
		version(self) -> QWebSocketProtocol.Version
	**/
	public function version():Dynamic;
}