/* This file is generated, do not edit! */
package pyQt5.qtQml;
@:pythonImport("PyQt5.QtQml", "QJSValue") extern class QJSValue {
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
	public function ErrorType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var EvalError : Dynamic;
	static public var GenericError : Dynamic;
	static public var NullValue : Dynamic;
	static public var RangeError : Dynamic;
	static public var ReferenceError : Dynamic;
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
	public function SpecialValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SyntaxError : Dynamic;
	static public var TypeError : Dynamic;
	static public var URIError : Dynamic;
	static public var UndefinedValue : Dynamic;
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
		call(self, args: Iterable[Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str]] = []) -> QJSValue
	**/
	public function call(?args:Dynamic):Dynamic;
	/**
		callAsConstructor(self, args: Iterable[Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str]] = []) -> QJSValue
	**/
	public function callAsConstructor(?args:Dynamic):Dynamic;
	/**
		callWithInstance(self, Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str], args: Iterable[Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str]] = []) -> QJSValue
	**/
	public function callWithInstance(Union:Dynamic, ?args:Dynamic):Dynamic;
	/**
		deleteProperty(self, str) -> bool
	**/
	public function deleteProperty(str:String):Bool;
	/**
		equals(self, Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str]) -> bool
	**/
	public function equals(Union:Dynamic):Bool;
	/**
		errorType(self) -> QJSValue.ErrorType
	**/
	public function errorType():Dynamic;
	/**
		hasOwnProperty(self, str) -> bool
	**/
	public function hasOwnProperty(str:String):Bool;
	/**
		hasProperty(self, str) -> bool
	**/
	public function hasProperty(str:String):Bool;
	/**
		isArray(self) -> bool
	**/
	public function isArray():Bool;
	/**
		isBool(self) -> bool
	**/
	public function isBool():Bool;
	/**
		isCallable(self) -> bool
	**/
	public function isCallable():Bool;
	/**
		isDate(self) -> bool
	**/
	public function isDate():Bool;
	/**
		isError(self) -> bool
	**/
	public function isError():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isNumber(self) -> bool
	**/
	public function isNumber():Bool;
	/**
		isObject(self) -> bool
	**/
	public function isObject():Bool;
	/**
		isQObject(self) -> bool
	**/
	public function isQObject():Bool;
	/**
		isRegExp(self) -> bool
	**/
	public function isRegExp():Bool;
	/**
		isString(self) -> bool
	**/
	public function isString():Bool;
	/**
		isUndefined(self) -> bool
	**/
	public function isUndefined():Bool;
	/**
		isVariant(self) -> bool
	**/
	public function isVariant():Bool;
	/**
		property(self, str) -> QJSValue
		property(self, int) -> QJSValue
	**/
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prototype(self) -> QJSValue
	**/
	public function prototype():Dynamic;
	/**
		setProperty(self, str, Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str])
		setProperty(self, int, Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str])
	**/
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setPrototype(self, Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str])
	**/
	public function setPrototype(Union:Dynamic):Void;
	/**
		strictlyEquals(self, Union[QJSValue, QJSValue.SpecialValue, bool, int, float, str]) -> bool
	**/
	public function strictlyEquals(Union:Dynamic):Bool;
	/**
		toBool(self) -> bool
	**/
	public function toBool():Bool;
	/**
		toDateTime(self) -> QDateTime
	**/
	public function toDateTime():Dynamic;
	/**
		toInt(self) -> int
	**/
	public function toInt():Int;
	/**
		toNumber(self) -> float
	**/
	public function toNumber():Float;
	/**
		toQObject(self) -> QObject
	**/
	public function toQObject():Dynamic;
	/**
		toString(self) -> str
	**/
	public function toString():String;
	/**
		toUInt(self) -> int
	**/
	public function toUInt():Int;
	/**
		toVariant(self) -> Any
	**/
	public function toVariant():Dynamic;
}