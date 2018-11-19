/* This file is generated, do not edit! */
package pyQt5.qtNetwork;
@:pythonImport("PyQt5.QtNetwork", "QSslConfiguration") extern class QSslConfiguration {
	static public var NextProtocolHttp1_1 : Dynamic;
	static public var NextProtocolNegotiationNegotiated : Dynamic;
	static public var NextProtocolNegotiationNone : Dynamic;
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
	public function NextProtocolNegotiationStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NextProtocolNegotiationUnsupported : Dynamic;
	static public var NextProtocolSpdy3_0 : Dynamic;
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
		allowedNextProtocols(self) -> List[QByteArray]
	**/
	public function allowedNextProtocols():Dynamic;
	/**
		caCertificates(self) -> List[QSslCertificate]
	**/
	public function caCertificates():Dynamic;
	/**
		ciphers(self) -> object
	**/
	public function ciphers():Dynamic;
	/**
		defaultConfiguration() -> QSslConfiguration
	**/
	static public function defaultConfiguration():Dynamic;
	/**
		ellipticCurves(self) -> object
	**/
	public function ellipticCurves():Dynamic;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		localCertificate(self) -> QSslCertificate
	**/
	public function localCertificate():Dynamic;
	/**
		localCertificateChain(self) -> List[QSslCertificate]
	**/
	public function localCertificateChain():Dynamic;
	/**
		nextNegotiatedProtocol(self) -> QByteArray
	**/
	public function nextNegotiatedProtocol():Dynamic;
	/**
		nextProtocolNegotiationStatus(self) -> QSslConfiguration.NextProtocolNegotiationStatus
	**/
	public function nextProtocolNegotiationStatus():Dynamic;
	/**
		peerCertificate(self) -> QSslCertificate
	**/
	public function peerCertificate():Dynamic;
	/**
		peerCertificateChain(self) -> List[QSslCertificate]
	**/
	public function peerCertificateChain():Dynamic;
	/**
		peerVerifyDepth(self) -> int
	**/
	public function peerVerifyDepth():Int;
	/**
		peerVerifyMode(self) -> QSslSocket.PeerVerifyMode
	**/
	public function peerVerifyMode():Dynamic;
	/**
		privateKey(self) -> QSslKey
	**/
	public function privateKey():Dynamic;
	/**
		protocol(self) -> QSsl.SslProtocol
	**/
	public function protocol():Dynamic;
	/**
		sessionCipher(self) -> QSslCipher
	**/
	public function sessionCipher():Dynamic;
	/**
		sessionProtocol(self) -> QSsl.SslProtocol
	**/
	public function sessionProtocol():Dynamic;
	/**
		sessionTicket(self) -> QByteArray
	**/
	public function sessionTicket():Dynamic;
	/**
		sessionTicketLifeTimeHint(self) -> int
	**/
	public function sessionTicketLifeTimeHint():Int;
	/**
		setAllowedNextProtocols(self, Iterable[Union[QByteArray, bytes, bytearray]])
	**/
	public function setAllowedNextProtocols(Iterable:Dynamic):Void;
	/**
		setCaCertificates(self, Iterable[QSslCertificate])
	**/
	public function setCaCertificates(Iterable:Dynamic):Void;
	/**
		setCiphers(self, Iterable[QSslCipher])
	**/
	public function setCiphers(Iterable:Dynamic):Void;
	/**
		setDefaultConfiguration(QSslConfiguration)
	**/
	static public function setDefaultConfiguration(QSslConfiguration:Dynamic):Void;
	/**
		setEllipticCurves(self, Iterable[QSslEllipticCurve])
	**/
	public function setEllipticCurves(Iterable:Dynamic):Void;
	/**
		setLocalCertificate(self, QSslCertificate)
	**/
	public function setLocalCertificate(QSslCertificate:Dynamic):Void;
	/**
		setLocalCertificateChain(self, Iterable[QSslCertificate])
	**/
	public function setLocalCertificateChain(Iterable:Dynamic):Void;
	/**
		setPeerVerifyDepth(self, int)
	**/
	public function setPeerVerifyDepth(int:Int):Void;
	/**
		setPeerVerifyMode(self, QSslSocket.PeerVerifyMode)
	**/
	public function setPeerVerifyMode(QSslSocket:Dynamic):Void;
	/**
		setPrivateKey(self, QSslKey)
	**/
	public function setPrivateKey(QSslKey:Dynamic):Void;
	/**
		setProtocol(self, QSsl.SslProtocol)
	**/
	public function setProtocol(QSsl:Dynamic):Void;
	/**
		setSessionTicket(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setSessionTicket(Union:Dynamic):Void;
	/**
		setSslOption(self, QSsl.SslOption, bool)
	**/
	public function setSslOption(QSsl:Dynamic, bool:Bool):Void;
	/**
		supportedCiphers() -> List[QSslCipher]
	**/
	static public function supportedCiphers():Dynamic;
	/**
		supportedEllipticCurves() -> List[QSslEllipticCurve]
	**/
	static public function supportedEllipticCurves():Dynamic;
	/**
		swap(self, QSslConfiguration)
	**/
	public function swap(QSslConfiguration:Dynamic):Void;
	/**
		systemCaCertificates() -> List[QSslCertificate]
	**/
	static public function systemCaCertificates():Dynamic;
	/**
		testSslOption(self, QSsl.SslOption) -> bool
	**/
	public function testSslOption(QSsl:Dynamic):Bool;
}