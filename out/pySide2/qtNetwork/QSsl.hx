/* This file is generated, do not edit! */
package pySide2.qtNetwork;
@:pythonImport("PySide2.QtNetwork", "QSsl") extern class QSsl {
	public function AlternativeNameEntryType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AnyProtocol : Dynamic;
	static public var Der : Dynamic;
	static public var DnsEntry : Dynamic;
	static public var Dsa : Dynamic;
	static public var Ec : Dynamic;
	static public var EmailEntry : Dynamic;
	public function EncodingFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function KeyAlgorithm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function KeyType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Opaque : Dynamic;
	static public var Pem : Dynamic;
	static public var PrivateKey : Dynamic;
	static public var PublicKey : Dynamic;
	static public var Rsa : Dynamic;
	static public var SecureProtocols : Dynamic;
	public function SslOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SslOptionDisableCompression : Dynamic;
	static public var SslOptionDisableEmptyFragments : Dynamic;
	static public var SslOptionDisableLegacyRenegotiation : Dynamic;
	static public var SslOptionDisableServerCipherPreference : Dynamic;
	static public var SslOptionDisableServerNameIndication : Dynamic;
	static public var SslOptionDisableSessionPersistence : Dynamic;
	static public var SslOptionDisableSessionSharing : Dynamic;
	static public var SslOptionDisableSessionTickets : Dynamic;
	public function SslOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SslProtocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SslV2 : Dynamic;
	static public var SslV3 : Dynamic;
	static public var TlsV1SslV3 : Dynamic;
	static public var TlsV1_0 : Dynamic;
	static public var TlsV1_0OrLater : Dynamic;
	static public var TlsV1_1 : Dynamic;
	static public var TlsV1_1OrLater : Dynamic;
	static public var TlsV1_2 : Dynamic;
	static public var TlsV1_2OrLater : Dynamic;
	static public var UnknownProtocol : Dynamic;
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
}