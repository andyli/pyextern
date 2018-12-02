/* This file is generated, do not edit! */
package pySide2.qtNetwork;
@:pythonImport("PySide2.QtNetwork", "QNetworkConfiguration") extern class QNetworkConfiguration {
	static public var Active : Dynamic;
	static public var Bearer2G : Dynamic;
	static public var Bearer3G : Dynamic;
	static public var Bearer4G : Dynamic;
	static public var BearerBluetooth : Dynamic;
	static public var BearerCDMA2000 : Dynamic;
	static public var BearerEVDO : Dynamic;
	static public var BearerEthernet : Dynamic;
	static public var BearerHSPA : Dynamic;
	static public var BearerLTE : Dynamic;
	public function BearerType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var BearerUnknown : Dynamic;
	static public var BearerWCDMA : Dynamic;
	static public var BearerWLAN : Dynamic;
	static public var BearerWiMAX : Dynamic;
	static public var Defined : Dynamic;
	static public var Discovered : Dynamic;
	static public var InternetAccessPoint : Dynamic;
	static public var Invalid : Dynamic;
	static public var PrivatePurpose : Dynamic;
	static public var PublicPurpose : Dynamic;
	public function Purpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ServiceNetwork : Dynamic;
	static public var ServiceSpecificPurpose : Dynamic;
	public function StateFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function StateFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Undefined : Dynamic;
	static public var UnknownPurpose : Dynamic;
	static public var UserChoice : Dynamic;
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
	public function bearerType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bearerTypeFamily(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bearerTypeName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function identifier(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRoamingAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function purpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
}