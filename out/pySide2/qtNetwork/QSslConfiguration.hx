/* This file is generated, do not edit! */
package pySide2.qtNetwork;
@:pythonImport("PySide2.QtNetwork", "QSslConfiguration") extern class QSslConfiguration {
	static public var NextProtocolHttp1_1 : Dynamic;
	static public var NextProtocolNegotiationNegotiated : Dynamic;
	static public var NextProtocolNegotiationNone : Dynamic;
	public function NextProtocolNegotiationStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NextProtocolNegotiationUnsupported : Dynamic;
	static public var NextProtocolSpdy3_0 : Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function allowedNextProtocols(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function caCertificates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ciphers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function defaultConfiguration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function localCertificate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function localCertificateChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextNegotiatedProtocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextProtocolNegotiationStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peerCertificate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peerCertificateChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peerVerifyDepth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peerVerifyMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function privateKey(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function protocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sessionCipher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sessionProtocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sessionTicket(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sessionTicketLifeTimeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAllowedNextProtocols(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCaCertificates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCiphers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setDefaultConfiguration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLocalCertificate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLocalCertificateChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPeerVerifyDepth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPeerVerifyMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPrivateKey(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProtocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSessionTicket(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSslOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function supportedCiphers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function systemCaCertificates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testSslOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
}