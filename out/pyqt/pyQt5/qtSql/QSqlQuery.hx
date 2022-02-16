/* This file is generated, do not edit! */
package pyQt5.qtSql;
@:pythonImport("PyQt5.QtSql", "QSqlQuery") extern class QSqlQuery {
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
	public function BatchExecutionMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ValuesAsColumns : Dynamic;
	static public var ValuesAsRows : Dynamic;
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
		addBindValue(self, Any, type: Union[QSql.ParamType, QSql.ParamTypeFlag] = QSql.In)
	**/
	public function addBindValue(Any:Dynamic, ?type:Dynamic):Void;
	/**
		at(self) -> int
	**/
	public function at():Int;
	/**
		bindValue(self, str, Any, type: Union[QSql.ParamType, QSql.ParamTypeFlag] = QSql.In)
		bindValue(self, int, Any, type: Union[QSql.ParamType, QSql.ParamTypeFlag] = QSql.In)
	**/
	public function bindValue(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		boundValue(self, str) -> Any
		boundValue(self, int) -> Any
	**/
	public function boundValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		boundValues(self) -> Dict[str, Any]
	**/
	public function boundValues():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		driver(self) -> QSqlDriver
	**/
	public function driver():Dynamic;
	/**
		exec(self, str) -> bool
		exec(self) -> bool
	**/
	public function exec(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		execBatch(self, mode: QSqlQuery.BatchExecutionMode = QSqlQuery.ValuesAsRows) -> bool
	**/
	public function execBatch(?mode:Dynamic):Bool;
	/**
		exec_(self, str) -> bool
		exec_(self) -> bool
	**/
	public function exec_(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		executedQuery(self) -> str
	**/
	public function executedQuery():String;
	/**
		finish(self)
	**/
	public function finish():Void;
	/**
		first(self) -> bool
	**/
	public function first():Bool;
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
		isNull(self, str) -> bool
	**/
	public function isNull(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		isSelect(self) -> bool
	**/
	public function isSelect():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		last(self) -> bool
	**/
	public function last():Bool;
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
		next(self) -> bool
	**/
	public function next():Bool;
	/**
		nextResult(self) -> bool
	**/
	public function nextResult():Bool;
	/**
		numRowsAffected(self) -> int
	**/
	public function numRowsAffected():Int;
	/**
		numericalPrecisionPolicy(self) -> QSql.NumericalPrecisionPolicy
	**/
	public function numericalPrecisionPolicy():Dynamic;
	/**
		prepare(self, str) -> bool
	**/
	public function prepare(str:String):Bool;
	/**
		previous(self) -> bool
	**/
	public function previous():Bool;
	/**
		record(self) -> QSqlRecord
	**/
	public function record():Dynamic;
	/**
		result(self) -> QSqlResult
	**/
	public function result():Dynamic;
	/**
		seek(self, int, relative: bool = False) -> bool
	**/
	public function seek(int:Int, ?relative:Dynamic):Bool;
	/**
		setForwardOnly(self, bool)
	**/
	public function setForwardOnly(bool:Bool):Void;
	/**
		setNumericalPrecisionPolicy(self, QSql.NumericalPrecisionPolicy)
	**/
	public function setNumericalPrecisionPolicy(QSql:Dynamic):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		value(self, int) -> Any
		value(self, str) -> Any
	**/
	public function value(args:haxe.extern.Rest<Dynamic>):Dynamic;
}