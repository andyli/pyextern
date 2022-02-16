/* This file is generated, do not edit! */
package pyQt5.qtBluetooth;
@:pythonImport("PyQt5.QtBluetooth", "QBluetoothServiceInfo") extern class QBluetoothServiceInfo {
	static public var AdditionalProtocolDescriptorList : Dynamic;
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
	public function AttributeId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BluetoothProfileDescriptorList : Dynamic;
	static public var BrowseGroupList : Dynamic;
	static public var ClientExecutableUrl : Dynamic;
	static public var DocumentationUrl : Dynamic;
	static public var IconUrl : Dynamic;
	static public var L2capProtocol : Dynamic;
	static public var LanguageBaseAttributeIdList : Dynamic;
	static public var PrimaryLanguageBase : Dynamic;
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
	public function Protocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ProtocolDescriptorList : Dynamic;
	static public var RfcommProtocol : Dynamic;
	static public var ServiceAvailability : Dynamic;
	static public var ServiceClassIds : Dynamic;
	static public var ServiceDescription : Dynamic;
	static public var ServiceId : Dynamic;
	static public var ServiceInfoTimeToLive : Dynamic;
	static public var ServiceName : Dynamic;
	static public var ServiceProvider : Dynamic;
	static public var ServiceRecordHandle : Dynamic;
	static public var ServiceRecordState : Dynamic;
	static public var UnknownProtocol : Dynamic;
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
		attribute(self, int) -> Any
	**/
	public function attribute(int:Int):Dynamic;
	/**
		attributes(self) -> List[int]
	**/
	public function attributes():Dynamic;
	/**
		contains(self, int) -> bool
	**/
	public function contains(int:Int):Bool;
	/**
		device(self) -> QBluetoothDeviceInfo
	**/
	public function device():Dynamic;
	/**
		isComplete(self) -> bool
	**/
	public function isComplete():Bool;
	/**
		isRegistered(self) -> bool
	**/
	public function isRegistered():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		protocolDescriptor(self, QBluetoothUuid.ProtocolUuid) -> List[Any]
	**/
	public function protocolDescriptor(QBluetoothUuid:Dynamic):Dynamic;
	/**
		protocolServiceMultiplexer(self) -> int
	**/
	public function protocolServiceMultiplexer():Int;
	/**
		registerService(self, localAdapter: QBluetoothAddress = QBluetoothAddress()) -> bool
	**/
	public function registerService(?localAdapter:Dynamic):Bool;
	/**
		removeAttribute(self, int)
	**/
	public function removeAttribute(int:Int):Void;
	/**
		serverChannel(self) -> int
	**/
	public function serverChannel():Int;
	/**
		serviceAvailability(self) -> int
	**/
	public function serviceAvailability():Int;
	/**
		serviceClassUuids(self) -> List[QBluetoothUuid]
	**/
	public function serviceClassUuids():Dynamic;
	/**
		serviceDescription(self) -> str
	**/
	public function serviceDescription():String;
	/**
		serviceName(self) -> str
	**/
	public function serviceName():String;
	/**
		serviceProvider(self) -> str
	**/
	public function serviceProvider():String;
	/**
		serviceUuid(self) -> QBluetoothUuid
	**/
	public function serviceUuid():Dynamic;
	/**
		setAttribute(self, int, QBluetoothUuid)
		setAttribute(self, int, Iterable[Any])
		setAttribute(self, int, Any)
	**/
	public function setAttribute(int:Int, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setDevice(self, QBluetoothDeviceInfo)
	**/
	public function setDevice(QBluetoothDeviceInfo:Dynamic):Void;
	/**
		setServiceAvailability(self, int)
	**/
	public function setServiceAvailability(int:Int):Void;
	/**
		setServiceDescription(self, str)
	**/
	public function setServiceDescription(str:String):Void;
	/**
		setServiceName(self, str)
	**/
	public function setServiceName(str:String):Void;
	/**
		setServiceProvider(self, str)
	**/
	public function setServiceProvider(str:String):Void;
	/**
		setServiceUuid(self, QBluetoothUuid)
	**/
	public function setServiceUuid(QBluetoothUuid:Dynamic):Void;
	/**
		socketProtocol(self) -> QBluetoothServiceInfo.Protocol
	**/
	public function socketProtocol():Dynamic;
	/**
		unregisterService(self) -> bool
	**/
	public function unregisterService():Bool;
}