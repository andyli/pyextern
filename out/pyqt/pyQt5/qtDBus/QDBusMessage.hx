/* This file is generated, do not edit! */
package pyQt5.qtDBus;
@:pythonImport("PyQt5.QtDBus", "QDBusMessage") extern class QDBusMessage {
	static public var ErrorMessage : Dynamic;
	static public var InvalidMessage : Dynamic;
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
	public function MessageType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MethodCallMessage : Dynamic;
	static public var ReplyMessage : Dynamic;
	static public var SignalMessage : Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
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
		arguments(self) -> List[Any]
	**/
	public function arguments():Dynamic;
	/**
		autoStartService(self) -> bool
	**/
	public function autoStartService():Bool;
	/**
		createError(str, str) -> QDBusMessage
		createError(QDBusError) -> QDBusMessage
		createError(QDBusError.ErrorType, str) -> QDBusMessage
	**/
	static public function createError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createErrorReply(self, str, str) -> QDBusMessage
		createErrorReply(self, QDBusError) -> QDBusMessage
		createErrorReply(self, QDBusError.ErrorType, str) -> QDBusMessage
	**/
	public function createErrorReply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createMethodCall(str, str, str, str) -> QDBusMessage
	**/
	static public function createMethodCall(str:String, str:String, str:String, str:String):Dynamic;
	/**
		createReply(self, arguments: Iterable[Any] = []) -> QDBusMessage
		createReply(self, Any) -> QDBusMessage
	**/
	public function createReply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createSignal(str, str, str) -> QDBusMessage
	**/
	static public function createSignal(str:String, str:String, str:String):Dynamic;
	/**
		createTargetedSignal(str, str, str, str) -> QDBusMessage
	**/
	static public function createTargetedSignal(str:String, str:String, str:String, str:String):Dynamic;
	/**
		errorMessage(self) -> str
	**/
	public function errorMessage():String;
	/**
		errorName(self) -> str
	**/
	public function errorName():String;
	/**
		interface(self) -> str
	**/
	@:native("interface")
	public function _interface():String;
	/**
		isDelayedReply(self) -> bool
	**/
	public function isDelayedReply():Bool;
	/**
		isInteractiveAuthorizationAllowed(self) -> bool
	**/
	public function isInteractiveAuthorizationAllowed():Bool;
	/**
		isReplyRequired(self) -> bool
	**/
	public function isReplyRequired():Bool;
	/**
		member(self) -> str
	**/
	public function member():String;
	/**
		path(self) -> str
	**/
	public function path():String;
	/**
		service(self) -> str
	**/
	public function service():String;
	/**
		setArguments(self, Iterable[Any])
	**/
	public function setArguments(Iterable:Dynamic):Void;
	/**
		setAutoStartService(self, bool)
	**/
	public function setAutoStartService(bool:Bool):Void;
	/**
		setDelayedReply(self, bool)
	**/
	public function setDelayedReply(bool:Bool):Void;
	/**
		setInteractiveAuthorizationAllowed(self, bool)
	**/
	public function setInteractiveAuthorizationAllowed(bool:Bool):Void;
	/**
		signature(self) -> str
	**/
	public function signature():String;
	/**
		swap(self, QDBusMessage)
	**/
	public function swap(QDBusMessage:Dynamic):Void;
	/**
		type(self) -> QDBusMessage.MessageType
	**/
	public function type():Dynamic;
}