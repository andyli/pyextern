/* This file is generated, do not edit! */
package pyQt5.qtNetwork;
@:pythonImport("PyQt5.QtNetwork", "QNetworkReply") extern class QNetworkReply {
	static public var Append : Dynamic;
	static public var AuthenticationRequiredError : Dynamic;
	static public var BackgroundRequestNotAllowedError : Dynamic;
	static public var ConnectionRefusedError : Dynamic;
	static public var ContentAccessDenied : Dynamic;
	static public var ContentConflictError : Dynamic;
	static public var ContentGoneError : Dynamic;
	static public var ContentNotFoundError : Dynamic;
	static public var ContentOperationNotPermittedError : Dynamic;
	static public var ContentReSendError : Dynamic;
	static public var HostNotFoundError : Dynamic;
	static public var InsecureRedirectError : Dynamic;
	static public var InternalServerError : Dynamic;
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
	public function NetworkError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NetworkSessionFailedError : Dynamic;
	static public var NoError : Dynamic;
	static public var NotOpen : Dynamic;
	/**
		QIODevice.OpenMode()
		QIODevice.OpenMode(Union[QIODevice.OpenMode, QIODevice.OpenModeFlag])
		QIODevice.OpenMode(QIODevice.OpenMode)
	**/
	static public function OpenMode(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function OpenModeFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OperationCanceledError : Dynamic;
	static public var OperationNotImplementedError : Dynamic;
	static public var ProtocolFailure : Dynamic;
	static public var ProtocolInvalidOperationError : Dynamic;
	static public var ProtocolUnknownError : Dynamic;
	static public var ProxyAuthenticationRequiredError : Dynamic;
	static public var ProxyConnectionClosedError : Dynamic;
	static public var ProxyConnectionRefusedError : Dynamic;
	static public var ProxyNotFoundError : Dynamic;
	static public var ProxyTimeoutError : Dynamic;
	static public var ReadOnly : Dynamic;
	static public var ReadWrite : Dynamic;
	static public var RemoteHostClosedError : Dynamic;
	static public var ServiceUnavailableError : Dynamic;
	static public var SslHandshakeFailedError : Dynamic;
	static public var TemporaryNetworkFailureError : Dynamic;
	static public var Text : Dynamic;
	static public var TimeoutError : Dynamic;
	static public var TooManyRedirectsError : Dynamic;
	static public var Truncate : Dynamic;
	static public var Unbuffered : Dynamic;
	static public var UnknownContentError : Dynamic;
	static public var UnknownNetworkError : Dynamic;
	static public var UnknownProxyError : Dynamic;
	static public var UnknownServerError : Dynamic;
	static public var WriteOnly : Dynamic;
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
		atEnd(self) -> bool
	**/
	public function atEnd():Bool;
	/**
		attribute(self, QNetworkRequest.Attribute) -> Any
	**/
	public function attribute(QNetworkRequest:Dynamic):Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		bytesAvailable(self) -> int
	**/
	public function bytesAvailable():Int;
	/**
		bytesToWrite(self) -> int
	**/
	public function bytesToWrite():Int;
	/**
		bytesWritten(self, int) [signal]
	**/
	public var bytesWritten : Dynamic;
	/**
		canReadLine(self) -> bool
	**/
	public function canReadLine():Bool;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> object
	**/
	public function children():Dynamic;
	/**
		close(self)
	**/
	public function close():Void;
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
		downloadProgress(self, int, int) [signal]
	**/
	public var downloadProgress : Dynamic;
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
		encrypted(self) [signal]
	**/
	public var encrypted : Dynamic;
	/**
		error(self) -> QNetworkReply.NetworkError
		error(self, QNetworkReply.NetworkError) [signal]
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
		finished(self) [signal]
	**/
	public var finished : Dynamic;
	/**
		getChar(self) -> Tuple[bool, str]
	**/
	public function getChar():Dynamic;
	/**
		hasRawHeader(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function hasRawHeader(Union:Dynamic):Bool;
	/**
		header(self, QNetworkRequest.KnownHeaders) -> Any
	**/
	public function header(QNetworkRequest:Dynamic):Dynamic;
	/**
		ignoreSslErrors(self)
		ignoreSslErrors(self, Iterable[QSslError])
	**/
	public function ignoreSslErrors(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		ignoreSslErrorsImplementation(self, Iterable[QSslError])
	**/
	public function ignoreSslErrorsImplementation(Iterable:Dynamic):Void;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isFinished(self) -> bool
	**/
	public function isFinished():Bool;
	/**
		isOpen(self) -> bool
	**/
	public function isOpen():Bool;
	/**
		isReadable(self) -> bool
	**/
	public function isReadable():Bool;
	/**
		isRunning(self) -> bool
	**/
	public function isRunning():Bool;
	/**
		isSequential(self) -> bool
	**/
	public function isSequential():Bool;
	/**
		isSignalConnected(self, QMetaMethod) -> bool
	**/
	public function isSignalConnected(QMetaMethod:Dynamic):Bool;
	/**
		isTextModeEnabled(self) -> bool
	**/
	public function isTextModeEnabled():Bool;
	/**
		isWidgetType(self) -> bool
	**/
	public function isWidgetType():Bool;
	/**
		isWindowType(self) -> bool
	**/
	public function isWindowType():Bool;
	/**
		isWritable(self) -> bool
	**/
	public function isWritable():Bool;
	/**
		killTimer(self, int)
	**/
	public function killTimer(int:Int):Void;
	/**
		manager(self) -> QNetworkAccessManager
	**/
	public function manager():Dynamic;
	/**
		metaDataChanged(self) [signal]
	**/
	public var metaDataChanged : Dynamic;
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
		open(self, Union[QIODevice.OpenMode, QIODevice.OpenModeFlag]) -> bool
	**/
	public function open(Union:Dynamic):Bool;
	/**
		openMode(self) -> QIODevice.OpenMode
	**/
	public function openMode():Dynamic;
	/**
		operation(self) -> QNetworkAccessManager.Operation
	**/
	public function operation():Dynamic;
	/**
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		peek(self, int) -> QByteArray
	**/
	public function peek(int:Int):Dynamic;
	/**
		pos(self) -> int
	**/
	public function pos():Int;
	/**
		preSharedKeyAuthenticationRequired(self, QSslPreSharedKeyAuthenticator) [signal]
	**/
	public var preSharedKeyAuthenticationRequired : Dynamic;
	/**
		property(self, str) -> Any
	**/
	public function property(str:String):Dynamic;
	/**
		putChar(self, str) -> bool
	**/
	public function putChar(str:String):Bool;
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
		rawHeader(self, Union[QByteArray, bytes, bytearray]) -> QByteArray
	**/
	public function rawHeader(Union:Dynamic):Dynamic;
	/**
		rawHeaderList(self) -> List[QByteArray]
	**/
	public function rawHeaderList():Dynamic;
	/**
		rawHeaderPairs(self) -> List[Tuple[QByteArray, QByteArray]]
	**/
	public function rawHeaderPairs():Dynamic;
	/**
		read(self, int) -> bytes
	**/
	public function read(int:Int):Dynamic;
	/**
		readAll(self) -> QByteArray
	**/
	public function readAll():Dynamic;
	/**
		readBufferSize(self) -> int
	**/
	public function readBufferSize():Int;
	/**
		readChannelFinished(self) [signal]
	**/
	public var readChannelFinished : Dynamic;
	/**
		readData(self, int) -> bytes
	**/
	public function readData(int:Int):Dynamic;
	/**
		readLine(self, maxlen: int = 0) -> bytes
	**/
	public function readLine(?maxlen:Dynamic):Dynamic;
	/**
		readLineData(self, int) -> bytes
	**/
	public function readLineData(int:Int):Dynamic;
	/**
		readyRead(self) [signal]
	**/
	public var readyRead : Dynamic;
	/**
		receivers(self, PYQT_SIGNAL) -> int
	**/
	public function receivers(PYQT:Dynamic):Int;
	/**
		redirected(self, QUrl) [signal]
	**/
	public var redirected : Dynamic;
	/**
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		request(self) -> QNetworkRequest
	**/
	public function request():Dynamic;
	/**
		reset(self) -> bool
	**/
	public function reset():Bool;
	/**
		seek(self, int) -> bool
	**/
	public function seek(int:Int):Bool;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setAttribute(self, QNetworkRequest.Attribute, Any)
	**/
	public function setAttribute(QNetworkRequest:Dynamic, Any:Dynamic):Void;
	/**
		setError(self, QNetworkReply.NetworkError, str)
	**/
	public function setError(QNetworkReply:Dynamic, str:String):Void;
	/**
		setErrorString(self, str)
	**/
	public function setErrorString(str:String):Void;
	/**
		setFinished(self, bool)
	**/
	public function setFinished(bool:Bool):Void;
	/**
		setHeader(self, QNetworkRequest.KnownHeaders, Any)
	**/
	public function setHeader(QNetworkRequest:Dynamic, Any:Dynamic):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOpenMode(self, Union[QIODevice.OpenMode, QIODevice.OpenModeFlag])
	**/
	public function setOpenMode(Union:Dynamic):Void;
	/**
		setOperation(self, QNetworkAccessManager.Operation)
	**/
	public function setOperation(QNetworkAccessManager:Dynamic):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setRawHeader(self, Union[QByteArray, bytes, bytearray], Union[QByteArray, bytes, bytearray])
	**/
	public function setRawHeader(Union:Dynamic, Union:Dynamic):Void;
	/**
		setReadBufferSize(self, int)
	**/
	public function setReadBufferSize(int:Int):Void;
	/**
		setRequest(self, QNetworkRequest)
	**/
	public function setRequest(QNetworkRequest:Dynamic):Void;
	/**
		setSslConfiguration(self, QSslConfiguration)
	**/
	public function setSslConfiguration(QSslConfiguration:Dynamic):Void;
	/**
		setSslConfigurationImplementation(self, QSslConfiguration)
	**/
	public function setSslConfigurationImplementation(QSslConfiguration:Dynamic):Void;
	/**
		setTextModeEnabled(self, bool)
	**/
	public function setTextModeEnabled(bool:Bool):Void;
	/**
		setUrl(self, QUrl)
	**/
	public function setUrl(QUrl:Dynamic):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		sslConfiguration(self) -> QSslConfiguration
	**/
	public function sslConfiguration():Dynamic;
	/**
		sslConfigurationImplementation(self, QSslConfiguration)
	**/
	public function sslConfigurationImplementation(QSslConfiguration:Dynamic):Void;
	/**
		sslErrors(self, Iterable[QSslError]) [signal]
	**/
	public var sslErrors : Dynamic;
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
		ungetChar(self, str)
	**/
	public function ungetChar(str:String):Void;
	/**
		uploadProgress(self, int, int) [signal]
	**/
	public var uploadProgress : Dynamic;
	/**
		url(self) -> QUrl
	**/
	public function url():Dynamic;
	/**
		waitForBytesWritten(self, int) -> bool
	**/
	public function waitForBytesWritten(int:Int):Bool;
	/**
		waitForReadyRead(self, int) -> bool
	**/
	public function waitForReadyRead(int:Int):Bool;
	/**
		write(self, Union[QByteArray, bytes, bytearray]) -> int
	**/
	public function write(Union:Dynamic):Int;
	/**
		writeData(self, bytes) -> int
	**/
	public function writeData(bytes:Dynamic):Int;
}