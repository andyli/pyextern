/* This file is generated, do not edit! */
package pyQt5.qtBluetooth;
@:pythonImport("PyQt5.QtBluetooth", "QBluetoothSocket") extern class QBluetoothSocket {
	static public var Append : Dynamic;
	static public var BoundState : Dynamic;
	static public var ClosingState : Dynamic;
	static public var ConnectedState : Dynamic;
	static public var ConnectingState : Dynamic;
	static public var ExistingOnly : Dynamic;
	static public var HostNotFoundError : Dynamic;
	static public var ListeningState : Dynamic;
	static public var NetworkError : Dynamic;
	static public var NewOnly : Dynamic;
	static public var NoSocketError : Dynamic;
	static public var NotOpen : Dynamic;
	/**
		QIODevice.OpenMode()
		QIODevice.OpenMode(Union[QIODevice.OpenMode, QIODevice.OpenModeFlag])
		QIODevice.OpenMode(QIODevice.OpenMode)
	**/
	static public function OpenMode(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function OpenModeFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var OperationError : Dynamic;
	static public var ReadOnly : Dynamic;
	static public var ReadWrite : Dynamic;
	static public var RemoteHostClosedError : Dynamic;
	static public var ServiceLookupState : Dynamic;
	static public var ServiceNotFoundError : Dynamic;
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
	public function SocketError(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function SocketState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Text : Dynamic;
	static public var Truncate : Dynamic;
	static public var Unbuffered : Dynamic;
	static public var UnconnectedState : Dynamic;
	static public var UnknownSocketError : Dynamic;
	static public var UnsupportedProtocolError : Dynamic;
	static public var WriteOnly : Dynamic;
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
		channelBytesWritten(self, int, int) [signal]
	**/
	public var channelBytesWritten : Dynamic;
	/**
		channelReadyRead(self, int) [signal]
	**/
	public var channelReadyRead : Dynamic;
	/**
		childEvent(self, QChildEvent)
	**/
	public function childEvent(QChildEvent:Dynamic):Void;
	/**
		children(self) -> List[QObject]
	**/
	public function children():Dynamic;
	/**
		close(self)
	**/
	public function close():Void;
	/**
		commitTransaction(self)
	**/
	public function commitTransaction():Void;
	/**
		connectNotify(self, QMetaMethod)
	**/
	public function connectNotify(QMetaMethod:Dynamic):Void;
	/**
		connectToService(self, QBluetoothServiceInfo, mode: Union[QIODevice.OpenMode, QIODevice.OpenModeFlag] = QIODevice.ReadWrite)
		connectToService(self, QBluetoothAddress, QBluetoothUuid, mode: Union[QIODevice.OpenMode, QIODevice.OpenModeFlag] = QIODevice.ReadWrite)
		connectToService(self, QBluetoothAddress, int, mode: Union[QIODevice.OpenMode, QIODevice.OpenModeFlag] = QIODevice.ReadWrite)
	**/
	public function connectToService(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		connected(self) [signal]
	**/
	public var connected : Dynamic;
	/**
		currentReadChannel(self) -> int
	**/
	public function currentReadChannel():Int;
	/**
		currentWriteChannel(self) -> int
	**/
	public function currentWriteChannel():Int;
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
		disconnectFromService(self)
	**/
	public function disconnectFromService():Void;
	/**
		disconnectNotify(self, QMetaMethod)
	**/
	public function disconnectNotify(QMetaMethod:Dynamic):Void;
	/**
		disconnected(self) [signal]
	**/
	public var disconnected : Dynamic;
	/**
		doDeviceDiscovery(self, QBluetoothServiceInfo, Union[QIODevice.OpenMode, QIODevice.OpenModeFlag])
	**/
	public function doDeviceDiscovery(QBluetoothServiceInfo:Dynamic, Union:Dynamic):Void;
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
		error(self) -> QBluetoothSocket.SocketError
		error(self, QBluetoothSocket.SocketError) [signal]
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
		getChar(self) -> Tuple[bool, str]
	**/
	public function getChar():Dynamic;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isOpen(self) -> bool
	**/
	public function isOpen():Bool;
	/**
		isReadable(self) -> bool
	**/
	public function isReadable():Bool;
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
		isTransactionStarted(self) -> bool
	**/
	public function isTransactionStarted():Bool;
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
		localAddress(self) -> QBluetoothAddress
	**/
	public function localAddress():Dynamic;
	/**
		localName(self) -> str
	**/
	public function localName():String;
	/**
		localPort(self) -> int
	**/
	public function localPort():Int;
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
		parent(self) -> QObject
	**/
	public function parent():Dynamic;
	/**
		peek(self, int) -> QByteArray
	**/
	public function peek(int:Int):Dynamic;
	/**
		peerAddress(self) -> QBluetoothAddress
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
		pos(self) -> int
	**/
	public function pos():Int;
	/**
		preferredSecurityFlags(self) -> QBluetooth.SecurityFlags
	**/
	public function preferredSecurityFlags():Dynamic;
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
		read(self, int) -> bytes
	**/
	public function read(int:Int):Dynamic;
	/**
		readAll(self) -> QByteArray
	**/
	public function readAll():Dynamic;
	/**
		readChannelCount(self) -> int
	**/
	public function readChannelCount():Int;
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
		removeEventFilter(self, QObject)
	**/
	public function removeEventFilter(QObject:Dynamic):Void;
	/**
		reset(self) -> bool
	**/
	public function reset():Bool;
	/**
		rollbackTransaction(self)
	**/
	public function rollbackTransaction():Void;
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
		setCurrentReadChannel(self, int)
	**/
	public function setCurrentReadChannel(int:Int):Void;
	/**
		setCurrentWriteChannel(self, int)
	**/
	public function setCurrentWriteChannel(int:Int):Void;
	/**
		setErrorString(self, str)
	**/
	public function setErrorString(str:String):Void;
	/**
		setObjectName(self, str)
	**/
	public function setObjectName(str:String):Void;
	/**
		setOpenMode(self, Union[QIODevice.OpenMode, QIODevice.OpenModeFlag])
	**/
	public function setOpenMode(Union:Dynamic):Void;
	/**
		setParent(self, QObject)
	**/
	public function setParent(QObject:Dynamic):Void;
	/**
		setPreferredSecurityFlags(self, Union[QBluetooth.SecurityFlags, QBluetooth.Security])
	**/
	public function setPreferredSecurityFlags(Union:Dynamic):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setSocketDescriptor(self, int, QBluetoothServiceInfo.Protocol, state: QBluetoothSocket.SocketState = QBluetoothSocket.ConnectedState, mode: Union[QIODevice.OpenMode, QIODevice.OpenModeFlag] = QIODevice.ReadWrite) -> bool
	**/
	public function setSocketDescriptor(int:Int, QBluetoothServiceInfo:Dynamic, ?state:Dynamic, ?mode:Dynamic):Bool;
	/**
		setSocketError(self, QBluetoothSocket.SocketError)
	**/
	public function setSocketError(QBluetoothSocket:Dynamic):Void;
	/**
		setSocketState(self, QBluetoothSocket.SocketState)
	**/
	public function setSocketState(QBluetoothSocket:Dynamic):Void;
	/**
		setTextModeEnabled(self, bool)
	**/
	public function setTextModeEnabled(bool:Bool):Void;
	/**
		signalsBlocked(self) -> bool
	**/
	public function signalsBlocked():Bool;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		skip(self, int) -> int
	**/
	public function skip(int:Int):Int;
	/**
		socketDescriptor(self) -> int
	**/
	public function socketDescriptor():Int;
	/**
		socketType(self) -> QBluetoothServiceInfo.Protocol
	**/
	public function socketType():Dynamic;
	/**
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		startTransaction(self)
	**/
	public function startTransaction():Void;
	/**
		state(self) -> QBluetoothSocket.SocketState
	**/
	public function state():Dynamic;
	/**
		stateChanged(self, QBluetoothSocket.SocketState) [signal]
	**/
	public var stateChanged : Dynamic;
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
		writeChannelCount(self) -> int
	**/
	public function writeChannelCount():Int;
	/**
		writeData(self, bytes) -> int
	**/
	public function writeData(bytes:Dynamic):Int;
}