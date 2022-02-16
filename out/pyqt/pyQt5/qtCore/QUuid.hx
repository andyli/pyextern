/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QUuid") extern class QUuid {
	static public var DCE : Dynamic;
	static public var EmbeddedPOSIX : Dynamic;
	static public var Id128 : Dynamic;
	static public var Md5 : Dynamic;
	static public var Microsoft : Dynamic;
	static public var NCS : Dynamic;
	static public var Name : Dynamic;
	static public var Random : Dynamic;
	static public var Reserved : Dynamic;
	static public var Sha1 : Dynamic;
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
	public function StringFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Time : Dynamic;
	static public var VarUnknown : Dynamic;
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
	public function Variant(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var VerUnknown : Dynamic;
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
	public function Version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WithBraces : Dynamic;
	static public var WithoutBraces : Dynamic;
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
		createUuid() -> QUuid
	**/
	static public function createUuid():Dynamic;
	/**
		createUuidV3(QUuid, Union[QByteArray, bytes, bytearray]) -> QUuid
		createUuidV3(QUuid, str) -> QUuid
	**/
	static public function createUuidV3(QUuid:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createUuidV5(QUuid, Union[QByteArray, bytes, bytearray]) -> QUuid
		createUuidV5(QUuid, str) -> QUuid
	**/
	static public function createUuidV5(QUuid:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromRfc4122(Union[QByteArray, bytes, bytearray]) -> QUuid
	**/
	static public function fromRfc4122(Union:Dynamic):Dynamic;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		toByteArray(self) -> QByteArray
		toByteArray(self, QUuid.StringFormat) -> QByteArray
	**/
	public function toByteArray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		toRfc4122(self) -> QByteArray
	**/
	public function toRfc4122():Dynamic;
	/**
		toString(self) -> str
		toString(self, QUuid.StringFormat) -> str
	**/
	public function toString(args:haxe.extern.Rest<Dynamic>):String;
	/**
		variant(self) -> QUuid.Variant
	**/
	public function variant():Dynamic;
	/**
		version(self) -> QUuid.Version
	**/
	public function version():Dynamic;
}