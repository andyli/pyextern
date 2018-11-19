/* This file is generated, do not edit! */
package pyQt5.qtSql;
@:pythonImport("PyQt5.QtSql", "QSqlIndex") extern class QSqlIndex {
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		append(self, QSqlField)
		append(self, QSqlField, bool)
	**/
	public function append(QSqlField:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		clearValues(self)
	**/
	public function clearValues():Void;
	/**
		contains(self, str) -> bool
	**/
	public function contains(str:String):Bool;
	/**
		count(self) -> int
	**/
	public function count():Int;
	/**
		cursorName(self) -> str
	**/
	public function cursorName():String;
	/**
		field(self, int) -> QSqlField
		field(self, str) -> QSqlField
	**/
	public function field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fieldName(self, int) -> str
	**/
	public function fieldName(int:Int):String;
	/**
		indexOf(self, str) -> int
	**/
	public function indexOf(str:String):Int;
	/**
		insert(self, int, QSqlField)
	**/
	public function insert(int:Int, QSqlField:Dynamic):Void;
	/**
		isDescending(self, int) -> bool
	**/
	public function isDescending(int:Int):Bool;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		isGenerated(self, int) -> bool
		isGenerated(self, str) -> bool
	**/
	public function isGenerated(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		isNull(self, int) -> bool
		isNull(self, str) -> bool
	**/
	public function isNull(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		keyValues(self, QSqlRecord) -> QSqlRecord
	**/
	public function keyValues(QSqlRecord:Dynamic):Dynamic;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		remove(self, int)
	**/
	public function remove(int:Int):Void;
	/**
		replace(self, int, QSqlField)
	**/
	public function replace(int:Int, QSqlField:Dynamic):Void;
	/**
		setCursorName(self, str)
	**/
	public function setCursorName(str:String):Void;
	/**
		setDescending(self, int, bool)
	**/
	public function setDescending(int:Int, bool:Bool):Void;
	/**
		setGenerated(self, str, bool)
		setGenerated(self, int, bool)
	**/
	public function setGenerated(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setName(self, str)
	**/
	public function setName(str:String):Void;
	/**
		setNull(self, int)
		setNull(self, str)
	**/
	public function setNull(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setValue(self, int, Any)
		setValue(self, str, Any)
	**/
	public function setValue(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		value(self, int) -> Any
		value(self, str) -> Any
	**/
	public function value(args:haxe.extern.Rest<Dynamic>):Dynamic;
}