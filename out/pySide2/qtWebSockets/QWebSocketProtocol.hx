/* This file is generated, do not edit! */
package pySide2.qtWebSockets;
@:pythonImport("PySide2.QtWebSockets", "QWebSocketProtocol") extern class QWebSocketProtocol {
	public function CloseCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CloseCodeAbnormalDisconnection : Dynamic;
	static public var CloseCodeBadOperation : Dynamic;
	static public var CloseCodeDatatypeNotSupported : Dynamic;
	static public var CloseCodeGoingAway : Dynamic;
	static public var CloseCodeMissingExtension : Dynamic;
	static public var CloseCodeMissingStatusCode : Dynamic;
	static public var CloseCodeNormal : Dynamic;
	static public var CloseCodePolicyViolated : Dynamic;
	static public var CloseCodeProtocolError : Dynamic;
	static public var CloseCodeReserved1004 : Dynamic;
	static public var CloseCodeTlsHandshakeFailed : Dynamic;
	static public var CloseCodeTooMuchData : Dynamic;
	static public var CloseCodeWrongDatatype : Dynamic;
	public function Version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Version0 : Dynamic;
	static public var Version13 : Dynamic;
	static public var Version4 : Dynamic;
	static public var Version5 : Dynamic;
	static public var Version6 : Dynamic;
	static public var Version7 : Dynamic;
	static public var Version8 : Dynamic;
	static public var VersionLatest : Dynamic;
	static public var VersionUnknown : Dynamic;
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