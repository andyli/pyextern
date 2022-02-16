/* This file is generated, do not edit! */
package pyQt5.qtNetwork;
@:pythonImport("PyQt5.QtNetwork", "QHostAddress") extern class QHostAddress {
	static public var Any : Dynamic;
	static public var AnyIPv4 : Dynamic;
	static public var AnyIPv6 : Dynamic;
	static public var Broadcast : Dynamic;
	/**
		QHostAddress.ConversionMode()
		QHostAddress.ConversionMode(Union[QHostAddress.ConversionMode, QHostAddress.ConversionModeFlag])
		QHostAddress.ConversionMode(QHostAddress.ConversionMode)
	**/
	static public function ConversionMode(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function ConversionModeFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ConvertLocalHost : Dynamic;
	static public var ConvertUnspecifiedAddress : Dynamic;
	static public var ConvertV4CompatToIPv4 : Dynamic;
	static public var ConvertV4MappedToIPv4 : Dynamic;
	static public var LocalHost : Dynamic;
	static public var LocalHostIPv6 : Dynamic;
	static public var Null : Dynamic;
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
	public function SpecialAddress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var StrictConversion : Dynamic;
	static public var TolerantConversion : Dynamic;
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
		clear(self)
	**/
	public function clear():Void;
	/**
		isBroadcast(self) -> bool
	**/
	public function isBroadcast():Bool;
	/**
		isEqual(self, Union[QHostAddress, QHostAddress.SpecialAddress], mode: Union[QHostAddress.ConversionMode, QHostAddress.ConversionModeFlag] = QHostAddress.TolerantConversion) -> bool
	**/
	public function isEqual(Union:Dynamic, ?mode:Dynamic):Bool;
	/**
		isGlobal(self) -> bool
	**/
	public function isGlobal():Bool;
	/**
		isInSubnet(self, Union[QHostAddress, QHostAddress.SpecialAddress], int) -> bool
		isInSubnet(self, Tuple[Union[QHostAddress, QHostAddress.SpecialAddress], int]) -> bool
	**/
	public function isInSubnet(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		isLinkLocal(self) -> bool
	**/
	public function isLinkLocal():Bool;
	/**
		isLoopback(self) -> bool
	**/
	public function isLoopback():Bool;
	/**
		isMulticast(self) -> bool
	**/
	public function isMulticast():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isSiteLocal(self) -> bool
	**/
	public function isSiteLocal():Bool;
	/**
		isUniqueLocalUnicast(self) -> bool
	**/
	public function isUniqueLocalUnicast():Bool;
	/**
		parseSubnet(str) -> Tuple[QHostAddress, int]
	**/
	static public function parseSubnet(str:String):Dynamic;
	/**
		protocol(self) -> QAbstractSocket.NetworkLayerProtocol
	**/
	public function protocol():Dynamic;
	/**
		scopeId(self) -> str
	**/
	public function scopeId():String;
	/**
		setAddress(self, QHostAddress.SpecialAddress)
		setAddress(self, int)
		setAddress(self, str) -> bool
		setAddress(self, Tuple[int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int])
	**/
	public function setAddress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		setScopeId(self, str)
	**/
	public function setScopeId(str:String):Void;
	/**
		swap(self, QHostAddress)
	**/
	public function swap(QHostAddress:Dynamic):Void;
	/**
		toIPv4Address(self) -> int
	**/
	public function toIPv4Address():Int;
	/**
		toIPv6Address(self) -> Tuple[int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int]
	**/
	public function toIPv6Address():Dynamic;
	/**
		toString(self) -> str
	**/
	public function toString():String;
}