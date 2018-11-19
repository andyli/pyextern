/* This file is generated, do not edit! */
package pyQt5.qtSql;
@:pythonImport("PyQt5.QtSql", "QSqlResult") extern class QSqlResult {
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
	public function BindingSyntax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NamedBinding : Dynamic;
	static public var PositionalBinding : Dynamic;
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
		addBindValue(self, Any, Union[QSql.ParamType, QSql.ParamTypeFlag])
	**/
	public function addBindValue(Any:Dynamic, Union:Dynamic):Void;
	/**
		at(self) -> int
	**/
	public function at():Int;
	/**
		bindValue(self, int, Any, Union[QSql.ParamType, QSql.ParamTypeFlag])
		bindValue(self, str, Any, Union[QSql.ParamType, QSql.ParamTypeFlag])
	**/
	public function bindValue(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		bindValueType(self, str) -> QSql.ParamType
		bindValueType(self, int) -> QSql.ParamType
	**/
	public function bindValueType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bindingSyntax(self) -> QSqlResult.BindingSyntax
	**/
	public function bindingSyntax():Dynamic;
	/**
		boundValue(self, str) -> Any
		boundValue(self, int) -> Any
	**/
	public function boundValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		boundValueCount(self) -> int
	**/
	public function boundValueCount():Int;
	/**
		boundValueName(self, int) -> str
	**/
	public function boundValueName(int:Int):String;
	/**
		boundValues(self) -> object
	**/
	public function boundValues():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		data(self, int) -> Any
	**/
	public function data(int:Int):Dynamic;
	/**
		driver(self) -> QSqlDriver
	**/
	public function driver():Dynamic;
	/**
		exec(self) -> bool
	**/
	public function exec():Bool;
	/**
		exec_(self) -> bool
	**/
	public function exec_():Bool;
	/**
		executedQuery(self) -> str
	**/
	public function executedQuery():String;
	/**
		fetch(self, int) -> bool
	**/
	public function fetch(int:Int):Bool;
	/**
		fetchFirst(self) -> bool
	**/
	public function fetchFirst():Bool;
	/**
		fetchLast(self) -> bool
	**/
	public function fetchLast():Bool;
	/**
		fetchNext(self) -> bool
	**/
	public function fetchNext():Bool;
	/**
		fetchPrevious(self) -> bool
	**/
	public function fetchPrevious():Bool;
	/**
		handle(self) -> Any
	**/
	public function handle():Dynamic;
	/**
		hasOutValues(self) -> bool
	**/
	public function hasOutValues():Bool;
	/**
		isActive(self) -> bool
	**/
	public function isActive():Bool;
	/**
		isForwardOnly(self) -> bool
	**/
	public function isForwardOnly():Bool;
	/**
		isNull(self, int) -> bool
	**/
	public function isNull(int:Int):Bool;
	/**
		isSelect(self) -> bool
	**/
	public function isSelect():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		lastError(self) -> QSqlError
	**/
	public function lastError():Dynamic;
	/**
		lastInsertId(self) -> Any
	**/
	public function lastInsertId():Dynamic;
	/**
		lastQuery(self) -> str
	**/
	public function lastQuery():String;
	/**
		numRowsAffected(self) -> int
	**/
	public function numRowsAffected():Int;
	/**
		prepare(self, str) -> bool
	**/
	public function prepare(str:String):Bool;
	/**
		record(self) -> QSqlRecord
	**/
	public function record():Dynamic;
	/**
		reset(self, str) -> bool
	**/
	public function reset(str:String):Bool;
	/**
		savePrepare(self, str) -> bool
	**/
	public function savePrepare(str:String):Bool;
	/**
		setActive(self, bool)
	**/
	public function setActive(bool:Bool):Void;
	/**
		setAt(self, int)
	**/
	public function setAt(int:Int):Void;
	/**
		setForwardOnly(self, bool)
	**/
	public function setForwardOnly(bool:Bool):Void;
	/**
		setLastError(self, QSqlError)
	**/
	public function setLastError(QSqlError:Dynamic):Void;
	/**
		setQuery(self, str)
	**/
	public function setQuery(str:String):Void;
	/**
		setSelect(self, bool)
	**/
	public function setSelect(bool:Bool):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
}