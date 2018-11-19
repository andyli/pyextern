/* This file is generated, do not edit! */
package pyQt5.qtDBus;
@:pythonImport("PyQt5.QtDBus", "QDBusConnection") extern class QDBusConnection {
	static public var ActivationBus : Dynamic;
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
	public function BusType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QDBusConnection.ConnectionCapabilities()
		QDBusConnection.ConnectionCapabilities(Union[QDBusConnection.ConnectionCapabilities, QDBusConnection.ConnectionCapability])
		QDBusConnection.ConnectionCapabilities(QDBusConnection.ConnectionCapabilities)
	**/
	static public function ConnectionCapabilities(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function ConnectionCapability(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ExportAdaptors : Dynamic;
	static public var ExportAllContents : Dynamic;
	static public var ExportAllInvokables : Dynamic;
	static public var ExportAllProperties : Dynamic;
	static public var ExportAllSignal : Dynamic;
	static public var ExportAllSignals : Dynamic;
	static public var ExportAllSlots : Dynamic;
	static public var ExportChildObjects : Dynamic;
	static public var ExportNonScriptableContents : Dynamic;
	static public var ExportNonScriptableInvokables : Dynamic;
	static public var ExportNonScriptableProperties : Dynamic;
	static public var ExportNonScriptableSignals : Dynamic;
	static public var ExportNonScriptableSlots : Dynamic;
	static public var ExportScriptableContents : Dynamic;
	static public var ExportScriptableInvokables : Dynamic;
	static public var ExportScriptableProperties : Dynamic;
	static public var ExportScriptableSignals : Dynamic;
	static public var ExportScriptableSlots : Dynamic;
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
	public function RegisterOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QDBusConnection.RegisterOptions()
		QDBusConnection.RegisterOptions(Union[QDBusConnection.RegisterOptions, QDBusConnection.RegisterOption])
		QDBusConnection.RegisterOptions(QDBusConnection.RegisterOptions)
	**/
	static public function RegisterOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var SessionBus : Dynamic;
	static public var SystemBus : Dynamic;
	static public var UnixFileDescriptorPassing : Dynamic;
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
	public function UnregisterMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UnregisterNode : Dynamic;
	static public var UnregisterTree : Dynamic;
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
		asyncCall(self, QDBusMessage, timeout: int = -1) -> QDBusPendingCall
	**/
	public function asyncCall(QDBusMessage:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		baseService(self) -> str
	**/
	public function baseService():String;
	/**
		call(self, QDBusMessage, mode: QDBus.CallMode = QDBus.Block, timeout: int = -1) -> QDBusMessage
	**/
	public function call(QDBusMessage:Dynamic, ?mode:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		callWithCallback(self, QDBusMessage, PYQT_SLOT, PYQT_SLOT, timeout: int = -1) -> bool
	**/
	public function callWithCallback(QDBusMessage:Dynamic, PYQT:Dynamic, PYQT:Dynamic, ?timeout:Dynamic):Bool;
	/**
		connect(self, str, str, str, str, PYQT_SLOT) -> bool
		connect(self, str, str, str, str, str, PYQT_SLOT) -> bool
		connect(self, str, str, str, str, Iterable[str], str, PYQT_SLOT) -> bool
	**/
	public function connect(str:String, str:String, str:String, str:String, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		connectToBus(QDBusConnection.BusType, str) -> QDBusConnection
		connectToBus(str, str) -> QDBusConnection
	**/
	static public function connectToBus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		connectToPeer(str, str) -> QDBusConnection
	**/
	static public function connectToPeer(str:String, str:String):Dynamic;
	/**
		connectionCapabilities(self) -> QDBusConnection.ConnectionCapabilities
	**/
	public function connectionCapabilities():Dynamic;
	/**
		disconnect(self, str, str, str, str, PYQT_SLOT) -> bool
		disconnect(self, str, str, str, str, str, PYQT_SLOT) -> bool
		disconnect(self, str, str, str, str, Iterable[str], str, PYQT_SLOT) -> bool
	**/
	public function disconnect(str:String, str:String, str:String, str:String, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		disconnectFromBus(str)
	**/
	static public function disconnectFromBus(str:String):Void;
	/**
		disconnectFromPeer(str)
	**/
	static public function disconnectFromPeer(str:String):Void;
	/**
		interface(self) -> QDBusConnectionInterface
	**/
	@:native("interface")
	public function _interface():Dynamic;
	/**
		isConnected(self) -> bool
	**/
	public function isConnected():Bool;
	/**
		lastError(self) -> QDBusError
	**/
	public function lastError():Dynamic;
	/**
		localMachineId() -> QByteArray
	**/
	static public function localMachineId():Dynamic;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		objectRegisteredAt(self, str) -> QObject
	**/
	public function objectRegisteredAt(str:String):Dynamic;
	/**
		registerObject(self, str, QObject, options: Union[QDBusConnection.RegisterOptions, QDBusConnection.RegisterOption] = QDBusConnection.ExportAdaptors) -> bool
		registerObject(self, str, str, QObject, options: Union[QDBusConnection.RegisterOptions, QDBusConnection.RegisterOption] = QDBusConnection.ExportAdaptors) -> bool
	**/
	public function registerObject(str:String, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		registerService(self, str) -> bool
	**/
	public function registerService(str:String):Bool;
	/**
		send(self, QDBusMessage) -> bool
	**/
	public function send(QDBusMessage:Dynamic):Bool;
	/**
		sender() -> QDBusConnection
	**/
	static public function sender():Dynamic;
	/**
		sessionBus() -> QDBusConnection
	**/
	static public function sessionBus():Dynamic;
	/**
		swap(self, QDBusConnection)
	**/
	public function swap(QDBusConnection:Dynamic):Void;
	/**
		systemBus() -> QDBusConnection
	**/
	static public function systemBus():Dynamic;
	/**
		unregisterObject(self, str, mode: QDBusConnection.UnregisterMode = QDBusConnection.UnregisterNode)
	**/
	public function unregisterObject(str:String, ?mode:Dynamic):Void;
	/**
		unregisterService(self, str) -> bool
	**/
	public function unregisterService(str:String):Bool;
}