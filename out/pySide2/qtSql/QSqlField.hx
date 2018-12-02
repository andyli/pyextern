/* This file is generated, do not edit! */
package pySide2.qtSql;
@:pythonImport("PySide2.QtSql", "QSqlField") extern class QSqlField {
	static public var Optional : Dynamic;
	static public var Required : Dynamic;
	public function RequiredStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Unknown : Dynamic;
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
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function defaultValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAutoValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isGenerated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isReadOnly(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function length(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function precision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function requiredStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDefaultValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGenerated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLength(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPrecision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setReadOnly(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRequired(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRequiredStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSqlType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function typeID(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function value(args:haxe.extern.Rest<Dynamic>):Dynamic;
}