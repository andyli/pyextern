/* This file is generated, do not edit! */
package pySide2.qtNetwork;
@:pythonImport("PySide2.QtNetwork", "QAbstractSocket") extern class QAbstractSocket {
	static public var AddressInUseError : Dynamic;
	static public var AnyIPProtocol : Dynamic;
	static public var Append : Dynamic;
	public function BindFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function BindMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BoundState : Dynamic;
	static public var ClosingState : Dynamic;
	static public var ConnectedState : Dynamic;
	static public var ConnectingState : Dynamic;
	static public var ConnectionRefusedError : Dynamic;
	static public var DatagramTooLargeError : Dynamic;
	static public var DefaultForPlatform : Dynamic;
	static public var DontShareAddress : Dynamic;
	static public var HostLookupState : Dynamic;
	static public var HostNotFoundError : Dynamic;
	static public var IPv4Protocol : Dynamic;
	static public var IPv6Protocol : Dynamic;
	static public var KeepAliveOption : Dynamic;
	static public var ListeningState : Dynamic;
	static public var LowDelayOption : Dynamic;
	static public var MulticastLoopbackOption : Dynamic;
	static public var MulticastTtlOption : Dynamic;
	static public var NetworkError : Dynamic;
	public function NetworkLayerProtocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NotOpen : Dynamic;
	public function OpenMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function OpenModeFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OperationError : Dynamic;
	public function PauseMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function PauseModes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PauseNever : Dynamic;
	static public var PauseOnSslErrors : Dynamic;
	static public var ProxyAuthenticationRequiredError : Dynamic;
	static public var ProxyConnectionClosedError : Dynamic;
	static public var ProxyConnectionRefusedError : Dynamic;
	static public var ProxyConnectionTimeoutError : Dynamic;
	static public var ProxyNotFoundError : Dynamic;
	static public var ProxyProtocolError : Dynamic;
	static public var ReadOnly : Dynamic;
	static public var ReadWrite : Dynamic;
	static public var ReceiveBufferSizeSocketOption : Dynamic;
	static public var RemoteHostClosedError : Dynamic;
	static public var ReuseAddressHint : Dynamic;
	static public var SendBufferSizeSocketOption : Dynamic;
	static public var ShareAddress : Dynamic;
	static public var SocketAccessError : Dynamic;
	static public var SocketAddressNotAvailableError : Dynamic;
	public function SocketError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SocketOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SocketResourceError : Dynamic;
	public function SocketState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SocketTimeoutError : Dynamic;
	public function SocketType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SslHandshakeFailedError : Dynamic;
	static public var SslInternalError : Dynamic;
	static public var SslInvalidUserDataError : Dynamic;
	static public var TcpSocket : Dynamic;
	static public var TemporaryError : Dynamic;
	static public var Text : Dynamic;
	static public var Truncate : Dynamic;
	static public var TypeOfServiceOption : Dynamic;
	static public var UdpSocket : Dynamic;
	static public var Unbuffered : Dynamic;
	static public var UnconnectedState : Dynamic;
	static public var UnfinishedSocketOperationError : Dynamic;
	static public var UnknownNetworkLayerProtocol : Dynamic;
	static public var UnknownSocketError : Dynamic;
	static public var UnknownSocketType : Dynamic;
	static public var UnsupportedSocketOperationError : Dynamic;
	static public var WriteOnly : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function abort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function aboutToClose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function atEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesToWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesWritten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canReadLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectToHost(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectFromHost(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hostFound(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isOpen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isReadable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSequential(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isTextModeEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWritable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function localAddress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function localPort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function openMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pauseMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peerAddress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peerName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peerPort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function proxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function proxyAuthenticationRequired(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function putChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readAll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readChannelFinished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readLineData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readyRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resume(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function seek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setErrorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLocalAddress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLocalPort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOpenMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPauseMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPeerAddress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPeerName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPeerPort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setReadBufferSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSocketDescriptor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSocketError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSocketOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSocketState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTextModeEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function socketDescriptor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function socketOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function socketType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stateChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungetChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function waitForBytesWritten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function waitForConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function waitForDisconnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function waitForReadyRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
}