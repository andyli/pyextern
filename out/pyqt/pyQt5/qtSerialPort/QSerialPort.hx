/* This file is generated, do not edit! */
package pyQt5.qtSerialPort;
@:pythonImport("PyQt5.QtSerialPort", "QSerialPort") extern class QSerialPort {
	static public var AllDirections : Dynamic;
	static public var Append : Dynamic;
	static public var Baud115200 : Dynamic;
	static public var Baud1200 : Dynamic;
	static public var Baud19200 : Dynamic;
	static public var Baud2400 : Dynamic;
	static public var Baud38400 : Dynamic;
	static public var Baud4800 : Dynamic;
	static public var Baud57600 : Dynamic;
	static public var Baud9600 : Dynamic;
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
	public function BaudRate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BreakConditionError : Dynamic;
	static public var ClearToSendSignal : Dynamic;
	static public var Data5 : Dynamic;
	static public var Data6 : Dynamic;
	static public var Data7 : Dynamic;
	static public var Data8 : Dynamic;
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
	public function DataBits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DataCarrierDetectSignal : Dynamic;
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
	public function DataErrorPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DataSetReadySignal : Dynamic;
	static public var DataTerminalReadySignal : Dynamic;
	static public var DeviceNotFoundError : Dynamic;
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
	public function Direction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QSerialPort.Directions()
		QSerialPort.Directions(Union[QSerialPort.Directions, QSerialPort.Direction])
		QSerialPort.Directions(QSerialPort.Directions)
	**/
	static public function Directions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var EvenParity : Dynamic;
	static public var ExistingOnly : Dynamic;
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
	public function FlowControl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FramingError : Dynamic;
	static public var HardwareControl : Dynamic;
	static public var IgnorePolicy : Dynamic;
	static public var Input : Dynamic;
	static public var MarkParity : Dynamic;
	static public var NewOnly : Dynamic;
	static public var NoError : Dynamic;
	static public var NoFlowControl : Dynamic;
	static public var NoParity : Dynamic;
	static public var NoSignal : Dynamic;
	static public var NotOpen : Dynamic;
	static public var NotOpenError : Dynamic;
	static public var OddParity : Dynamic;
	static public var OneAndHalfStop : Dynamic;
	static public var OneStop : Dynamic;
	static public var OpenError : Dynamic;
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
	static public var Output : Dynamic;
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
	public function Parity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ParityError : Dynamic;
	static public var PassZeroPolicy : Dynamic;
	static public var PermissionError : Dynamic;
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
	public function PinoutSignal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QSerialPort.PinoutSignals()
		QSerialPort.PinoutSignals(Union[QSerialPort.PinoutSignals, QSerialPort.PinoutSignal])
		QSerialPort.PinoutSignals(QSerialPort.PinoutSignals)
	**/
	static public function PinoutSignals(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ReadError : Dynamic;
	static public var ReadOnly : Dynamic;
	static public var ReadWrite : Dynamic;
	static public var ReceivedDataSignal : Dynamic;
	static public var RequestToSendSignal : Dynamic;
	static public var ResourceError : Dynamic;
	static public var RingIndicatorSignal : Dynamic;
	static public var SecondaryReceivedDataSignal : Dynamic;
	static public var SecondaryTransmittedDataSignal : Dynamic;
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
	public function SerialPortError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SkipPolicy : Dynamic;
	static public var SoftwareControl : Dynamic;
	static public var SpaceParity : Dynamic;
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
	public function StopBits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StopReceivingPolicy : Dynamic;
	static public var Text : Dynamic;
	static public var TimeoutError : Dynamic;
	static public var TransmittedDataSignal : Dynamic;
	static public var Truncate : Dynamic;
	static public var TwoStop : Dynamic;
	static public var Unbuffered : Dynamic;
	static public var UnknownBaud : Dynamic;
	static public var UnknownDataBits : Dynamic;
	static public var UnknownError : Dynamic;
	static public var UnknownFlowControl : Dynamic;
	static public var UnknownParity : Dynamic;
	static public var UnknownPolicy : Dynamic;
	static public var UnknownStopBits : Dynamic;
	static public var UnsupportedOperationError : Dynamic;
	static public var WriteError : Dynamic;
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
		aboutToClose(self) [signal]
	**/
	public var aboutToClose : Dynamic;
	/**
		atEnd(self) -> bool
	**/
	public function atEnd():Bool;
	/**
		baudRate(self, dir: Union[QSerialPort.Directions, QSerialPort.Direction] = QSerialPort.AllDirections) -> int
	**/
	public function baudRate(?dir:Dynamic):Int;
	/**
		baudRateChanged(self, int, Union[QSerialPort.Directions, QSerialPort.Direction]) [signal]
	**/
	public var baudRateChanged : Dynamic;
	/**
		blockSignals(self, bool) -> bool
	**/
	public function blockSignals(bool:Bool):Bool;
	/**
		breakEnabledChanged(self, bool) [signal]
	**/
	public var breakEnabledChanged : Dynamic;
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
		clear(self, dir: Union[QSerialPort.Directions, QSerialPort.Direction] = QSerialPort.AllDirections) -> bool
	**/
	public function clear(?dir:Dynamic):Bool;
	/**
		clearError(self)
	**/
	public function clearError():Void;
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
		dataBits(self) -> QSerialPort.DataBits
	**/
	public function dataBits():Dynamic;
	/**
		dataBitsChanged(self, QSerialPort.DataBits) [signal]
	**/
	public var dataBitsChanged : Dynamic;
	/**
		dataErrorPolicy(self) -> QSerialPort.DataErrorPolicy
	**/
	public function dataErrorPolicy():Dynamic;
	/**
		dataErrorPolicyChanged(self, QSerialPort.DataErrorPolicy) [signal]
	**/
	public var dataErrorPolicyChanged : Dynamic;
	/**
		dataTerminalReadyChanged(self, bool) [signal]
	**/
	public var dataTerminalReadyChanged : Dynamic;
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
		error(self) -> QSerialPort.SerialPortError
		error(self, QSerialPort.SerialPortError) [signal]
	**/
	public var error : Dynamic;
	/**
		errorOccurred(self, QSerialPort.SerialPortError) [signal]
	**/
	public var errorOccurred : Dynamic;
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
		flowControl(self) -> QSerialPort.FlowControl
	**/
	public function flowControl():Dynamic;
	/**
		flowControlChanged(self, QSerialPort.FlowControl) [signal]
	**/
	public var flowControlChanged : Dynamic;
	/**
		flush(self) -> bool
	**/
	public function flush():Bool;
	/**
		getChar(self) -> Tuple[bool, str]
	**/
	public function getChar():Dynamic;
	/**
		handle(self) -> int
	**/
	public function handle():Int;
	/**
		inherits(self, str) -> bool
	**/
	public function inherits(str:String):Bool;
	/**
		installEventFilter(self, QObject)
	**/
	public function installEventFilter(QObject:Dynamic):Void;
	/**
		isBreakEnabled(self) -> bool
	**/
	public function isBreakEnabled():Bool;
	/**
		isDataTerminalReady(self) -> bool
	**/
	public function isDataTerminalReady():Bool;
	/**
		isOpen(self) -> bool
	**/
	public function isOpen():Bool;
	/**
		isReadable(self) -> bool
	**/
	public function isReadable():Bool;
	/**
		isRequestToSend(self) -> bool
	**/
	public function isRequestToSend():Bool;
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
		parity(self) -> QSerialPort.Parity
	**/
	public function parity():Dynamic;
	/**
		parityChanged(self, QSerialPort.Parity) [signal]
	**/
	public var parityChanged : Dynamic;
	/**
		peek(self, int) -> QByteArray
	**/
	public function peek(int:Int):Dynamic;
	/**
		pinoutSignals(self) -> QSerialPort.PinoutSignals
	**/
	public function pinoutSignals():Dynamic;
	/**
		portName(self) -> str
	**/
	public function portName():String;
	/**
		pos(self) -> int
	**/
	public function pos():Int;
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
		readBufferSize(self) -> int
	**/
	public function readBufferSize():Int;
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
		requestToSendChanged(self, bool) [signal]
	**/
	public var requestToSendChanged : Dynamic;
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
		sendBreak(self, duration: int = 0) -> bool
	**/
	public function sendBreak(?duration:Dynamic):Bool;
	/**
		sender(self) -> QObject
	**/
	public function sender():Dynamic;
	/**
		senderSignalIndex(self) -> int
	**/
	public function senderSignalIndex():Int;
	/**
		setBaudRate(self, int, dir: Union[QSerialPort.Directions, QSerialPort.Direction] = QSerialPort.AllDirections) -> bool
	**/
	public function setBaudRate(int:Int, ?dir:Dynamic):Bool;
	/**
		setBreakEnabled(self, enabled: bool = True) -> bool
	**/
	public function setBreakEnabled(?enabled:Dynamic):Bool;
	/**
		setCurrentReadChannel(self, int)
	**/
	public function setCurrentReadChannel(int:Int):Void;
	/**
		setCurrentWriteChannel(self, int)
	**/
	public function setCurrentWriteChannel(int:Int):Void;
	/**
		setDataBits(self, QSerialPort.DataBits) -> bool
	**/
	public function setDataBits(QSerialPort:Dynamic):Bool;
	/**
		setDataErrorPolicy(self, policy: QSerialPort.DataErrorPolicy = QSerialPort.IgnorePolicy) -> bool
	**/
	public function setDataErrorPolicy(?policy:Dynamic):Bool;
	/**
		setDataTerminalReady(self, bool) -> bool
	**/
	public function setDataTerminalReady(bool:Bool):Bool;
	/**
		setErrorString(self, str)
	**/
	public function setErrorString(str:String):Void;
	/**
		setFlowControl(self, QSerialPort.FlowControl) -> bool
	**/
	public function setFlowControl(QSerialPort:Dynamic):Bool;
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
		setParity(self, QSerialPort.Parity) -> bool
	**/
	public function setParity(QSerialPort:Dynamic):Bool;
	/**
		setPort(self, QSerialPortInfo)
	**/
	public function setPort(QSerialPortInfo:Dynamic):Void;
	/**
		setPortName(self, str)
	**/
	public function setPortName(str:String):Void;
	/**
		setProperty(self, str, Any) -> bool
	**/
	public function setProperty(str:String, Any:Dynamic):Bool;
	/**
		setReadBufferSize(self, int)
	**/
	public function setReadBufferSize(int:Int):Void;
	/**
		setRequestToSend(self, bool) -> bool
	**/
	public function setRequestToSend(bool:Bool):Bool;
	/**
		setSettingsRestoredOnClose(self, bool)
	**/
	public function setSettingsRestoredOnClose(bool:Bool):Void;
	/**
		setStopBits(self, QSerialPort.StopBits) -> bool
	**/
	public function setStopBits(QSerialPort:Dynamic):Bool;
	/**
		setTextModeEnabled(self, bool)
	**/
	public function setTextModeEnabled(bool:Bool):Void;
	/**
		settingsRestoredOnClose(self) -> bool
	**/
	public function settingsRestoredOnClose():Bool;
	/**
		settingsRestoredOnCloseChanged(self, bool) [signal]
	**/
	public var settingsRestoredOnCloseChanged : Dynamic;
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
		startTimer(self, int, timerType: Qt.TimerType = Qt.CoarseTimer) -> int
	**/
	public function startTimer(int:Int, ?timerType:Dynamic):Int;
	/**
		startTransaction(self)
	**/
	public function startTransaction():Void;
	static public var staticMetaObject : Dynamic;
	/**
		stopBits(self) -> QSerialPort.StopBits
	**/
	public function stopBits():Dynamic;
	/**
		stopBitsChanged(self, QSerialPort.StopBits) [signal]
	**/
	public var stopBitsChanged : Dynamic;
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
		waitForBytesWritten(self, msecs: int = 30000) -> bool
	**/
	public function waitForBytesWritten(?msecs:Dynamic):Bool;
	/**
		waitForReadyRead(self, msecs: int = 30000) -> bool
	**/
	public function waitForReadyRead(?msecs:Dynamic):Bool;
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