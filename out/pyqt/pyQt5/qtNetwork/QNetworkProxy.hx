/* This file is generated, do not edit! */
package pyQt5.qtNetwork;
@:pythonImport("PyQt5.QtNetwork", "QNetworkProxy") extern class QNetworkProxy {
	static public var CachingCapability : Dynamic;
	/**
		QNetworkProxy.Capabilities()
		QNetworkProxy.Capabilities(Union[QNetworkProxy.Capabilities, QNetworkProxy.Capability])
		QNetworkProxy.Capabilities(QNetworkProxy.Capabilities)
	**/
	static public function Capabilities(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function Capability(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DefaultProxy : Dynamic;
	static public var FtpCachingProxy : Dynamic;
	static public var HostNameLookupCapability : Dynamic;
	static public var HttpCachingProxy : Dynamic;
	static public var HttpProxy : Dynamic;
	static public var ListeningCapability : Dynamic;
	static public var NoProxy : Dynamic;
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
	public function ProxyType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SctpListeningCapability : Dynamic;
	static public var SctpTunnelingCapability : Dynamic;
	static public var Socks5Proxy : Dynamic;
	static public var TunnelingCapability : Dynamic;
	static public var UdpTunnelingCapability : Dynamic;
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
	static public var __hash__ : Dynamic;
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
		applicationProxy() -> QNetworkProxy
	**/
	static public function applicationProxy():Dynamic;
	/**
		capabilities(self) -> QNetworkProxy.Capabilities
	**/
	public function capabilities():Dynamic;
	/**
		hasRawHeader(self, Union[QByteArray, bytes, bytearray]) -> bool
	**/
	public function hasRawHeader(Union:Dynamic):Bool;
	/**
		header(self, QNetworkRequest.KnownHeaders) -> Any
	**/
	public function header(QNetworkRequest:Dynamic):Dynamic;
	/**
		hostName(self) -> str
	**/
	public function hostName():String;
	/**
		isCachingProxy(self) -> bool
	**/
	public function isCachingProxy():Bool;
	/**
		isTransparentProxy(self) -> bool
	**/
	public function isTransparentProxy():Bool;
	/**
		password(self) -> str
	**/
	public function password():String;
	/**
		port(self) -> int
	**/
	public function port():Int;
	/**
		rawHeader(self, Union[QByteArray, bytes, bytearray]) -> QByteArray
	**/
	public function rawHeader(Union:Dynamic):Dynamic;
	/**
		rawHeaderList(self) -> List[QByteArray]
	**/
	public function rawHeaderList():Dynamic;
	/**
		setApplicationProxy(QNetworkProxy)
	**/
	static public function setApplicationProxy(QNetworkProxy:Dynamic):Void;
	/**
		setCapabilities(self, Union[QNetworkProxy.Capabilities, QNetworkProxy.Capability])
	**/
	public function setCapabilities(Union:Dynamic):Void;
	/**
		setHeader(self, QNetworkRequest.KnownHeaders, Any)
	**/
	public function setHeader(QNetworkRequest:Dynamic, Any:Dynamic):Void;
	/**
		setHostName(self, str)
	**/
	public function setHostName(str:String):Void;
	/**
		setPassword(self, str)
	**/
	public function setPassword(str:String):Void;
	/**
		setPort(self, int)
	**/
	public function setPort(int:Int):Void;
	/**
		setRawHeader(self, Union[QByteArray, bytes, bytearray], Union[QByteArray, bytes, bytearray])
	**/
	public function setRawHeader(Union:Dynamic, Union:Dynamic):Void;
	/**
		setType(self, QNetworkProxy.ProxyType)
	**/
	public function setType(QNetworkProxy:Dynamic):Void;
	/**
		setUser(self, str)
	**/
	public function setUser(str:String):Void;
	/**
		swap(self, QNetworkProxy)
	**/
	public function swap(QNetworkProxy:Dynamic):Void;
	/**
		type(self) -> QNetworkProxy.ProxyType
	**/
	public function type():Dynamic;
	/**
		user(self) -> str
	**/
	public function user():String;
}