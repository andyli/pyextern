/* This file is generated, do not edit! */
package pySide2.qtScript;
@:pythonImport("PySide2.QtScript", "QScriptValue") extern class QScriptValue {
	static public var KeepExistingFlags : Dynamic;
	static public var NullValue : Dynamic;
	public function PropertyFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function PropertyFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PropertyGetter : Dynamic;
	static public var PropertySetter : Dynamic;
	static public var QObjectMember : Dynamic;
	static public var ReadOnly : Dynamic;
	public function ResolveFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ResolveFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ResolveFull : Dynamic;
	static public var ResolveLocal : Dynamic;
	static public var ResolvePrototype : Dynamic;
	static public var ResolveScope : Dynamic;
	static public var SkipInEnumeration : Dynamic;
	public function SpecialValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UndefinedValue : Dynamic;
	static public var Undeletable : Dynamic;
	static public var UserRange : Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
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
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
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
	public function call(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function construct(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function engine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function instanceOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isArray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isBool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isBoolean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isQMetaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isQObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRegExp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isUndefined(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVariant(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lessThan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function propertyFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prototype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scope(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scriptClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPrototype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScope(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScriptClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function strictlyEquals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toBool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toBoolean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toDateTime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toInt32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toInteger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toNumber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toQMetaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toQObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toRegExp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toUInt16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toUInt32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toVariant(args:haxe.extern.Rest<Dynamic>):Dynamic;
}