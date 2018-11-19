/* This file is generated, do not edit! */
package pyQt5.qtSql;
@:pythonImport("PyQt5.QtSql", "QSqlField") extern class QSqlField {
	static public var Optional : Dynamic;
	static public var Required : Dynamic;
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
	public function RequiredStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Unknown : Dynamic;
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
		clear(self)
	**/
	public function clear():Void;
	/**
		defaultValue(self) -> Any
	**/
	public function defaultValue():Dynamic;
	/**
		isAutoValue(self) -> bool
	**/
	public function isAutoValue():Bool;
	/**
		isGenerated(self) -> bool
	**/
	public function isGenerated():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isReadOnly(self) -> bool
	**/
	public function isReadOnly():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		length(self) -> int
	**/
	public function length():Int;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		precision(self) -> int
	**/
	public function precision():Int;
	/**
		requiredStatus(self) -> QSqlField.RequiredStatus
	**/
	public function requiredStatus():Dynamic;
	/**
		setAutoValue(self, bool)
	**/
	public function setAutoValue(bool:Bool):Void;
	/**
		setDefaultValue(self, Any)
	**/
	public function setDefaultValue(Any:Dynamic):Void;
	/**
		setGenerated(self, bool)
	**/
	public function setGenerated(bool:Bool):Void;
	/**
		setLength(self, int)
	**/
	public function setLength(int:Int):Void;
	/**
		setName(self, str)
	**/
	public function setName(str:String):Void;
	/**
		setPrecision(self, int)
	**/
	public function setPrecision(int:Int):Void;
	/**
		setReadOnly(self, bool)
	**/
	public function setReadOnly(bool:Bool):Void;
	/**
		setRequired(self, bool)
	**/
	public function setRequired(bool:Bool):Void;
	/**
		setRequiredStatus(self, QSqlField.RequiredStatus)
	**/
	public function setRequiredStatus(QSqlField:Dynamic):Void;
	/**
		setSqlType(self, int)
	**/
	public function setSqlType(int:Int):Void;
	/**
		setType(self, QVariant.Type)
	**/
	public function setType(QVariant:Dynamic):Void;
	/**
		setValue(self, Any)
	**/
	public function setValue(Any:Dynamic):Void;
	/**
		type(self) -> QVariant.Type
	**/
	public function type():Dynamic;
	/**
		typeID(self) -> int
	**/
	public function typeID():Int;
	/**
		value(self) -> Any
	**/
	public function value():Dynamic;
}