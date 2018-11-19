/* This file is generated, do not edit! */
package pyQt5.qtDBus;
@:pythonImport("PyQt5.QtDBus", "QDBusError") extern class QDBusError {
	static public var AccessDenied : Dynamic;
	static public var AddressInUse : Dynamic;
	static public var BadAddress : Dynamic;
	static public var Disconnected : Dynamic;
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
	public function ErrorType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Failed : Dynamic;
	static public var InternalError : Dynamic;
	static public var InvalidArgs : Dynamic;
	static public var InvalidInterface : Dynamic;
	static public var InvalidMember : Dynamic;
	static public var InvalidObjectPath : Dynamic;
	static public var InvalidService : Dynamic;
	static public var InvalidSignature : Dynamic;
	static public var LimitsExceeded : Dynamic;
	static public var NoError : Dynamic;
	static public var NoMemory : Dynamic;
	static public var NoNetwork : Dynamic;
	static public var NoReply : Dynamic;
	static public var NoServer : Dynamic;
	static public var NotSupported : Dynamic;
	static public var Other : Dynamic;
	static public var PropertyReadOnly : Dynamic;
	static public var ServiceUnknown : Dynamic;
	static public var TimedOut : Dynamic;
	static public var Timeout : Dynamic;
	static public var UnknownInterface : Dynamic;
	static public var UnknownMethod : Dynamic;
	static public var UnknownObject : Dynamic;
	static public var UnknownProperty : Dynamic;
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
		errorString(QDBusError.ErrorType) -> str
	**/
	static public function errorString(QDBusError:Dynamic):String;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		message(self) -> str
	**/
	public function message():String;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		swap(self, QDBusError)
	**/
	public function swap(QDBusError:Dynamic):Void;
	/**
		type(self) -> QDBusError.ErrorType
	**/
	public function type():Dynamic;
}