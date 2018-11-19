/* This file is generated, do not edit! */
package pyQt5.qtSql;
@:pythonImport("PyQt5.QtSql", "QSqlDatabase") extern class QSqlDatabase {
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
		addDatabase(str, connectionName: str = '') -> QSqlDatabase
		addDatabase(QSqlDriver, connectionName: str = '') -> QSqlDatabase
	**/
	static public function addDatabase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cloneDatabase(QSqlDatabase, str) -> QSqlDatabase
	**/
	static public function cloneDatabase(QSqlDatabase:Dynamic, str:String):Dynamic;
	/**
		close(self)
	**/
	public function close():Void;
	/**
		commit(self) -> bool
	**/
	public function commit():Bool;
	/**
		connectOptions(self) -> str
	**/
	public function connectOptions():String;
	/**
		connectionName(self) -> str
	**/
	public function connectionName():String;
	/**
		connectionNames() -> List[str]
	**/
	static public function connectionNames():Dynamic;
	/**
		contains(connectionName: str = '') -> bool
	**/
	static public function contains(?connectionName:Dynamic):Bool;
	/**
		database(connectionName: str = '', open: bool = True) -> QSqlDatabase
	**/
	static public function database(?connectionName:Dynamic, ?open:Dynamic):Dynamic;
	/**
		databaseName(self) -> str
	**/
	public function databaseName():String;
	/**
		driver(self) -> QSqlDriver
	**/
	public function driver():Dynamic;
	/**
		driverName(self) -> str
	**/
	public function driverName():String;
	/**
		drivers() -> List[str]
	**/
	static public function drivers():Dynamic;
	/**
		exec(self, query: str = '') -> QSqlQuery
	**/
	public function exec(?query:Dynamic):Dynamic;
	/**
		exec_(self, query: str = '') -> QSqlQuery
	**/
	public function exec_(?query:Dynamic):Dynamic;
	/**
		hostName(self) -> str
	**/
	public function hostName():String;
	/**
		isDriverAvailable(str) -> bool
	**/
	static public function isDriverAvailable(str:String):Bool;
	/**
		isOpen(self) -> bool
	**/
	public function isOpen():Bool;
	/**
		isOpenError(self) -> bool
	**/
	public function isOpenError():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		lastError(self) -> QSqlError
	**/
	public function lastError():Dynamic;
	/**
		numericalPrecisionPolicy(self) -> QSql.NumericalPrecisionPolicy
	**/
	public function numericalPrecisionPolicy():Dynamic;
	/**
		open(self) -> bool
		open(self, str, str) -> bool
	**/
	public function open(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		password(self) -> str
	**/
	public function password():String;
	/**
		port(self) -> int
	**/
	public function port():Int;
	/**
		primaryIndex(self, str) -> QSqlIndex
	**/
	public function primaryIndex(str:String):Dynamic;
	/**
		record(self, str) -> QSqlRecord
	**/
	public function record(str:String):Dynamic;
	/**
		registerSqlDriver(str, QSqlDriverCreatorBase)
	**/
	static public function registerSqlDriver(str:String, QSqlDriverCreatorBase:Dynamic):Void;
	/**
		removeDatabase(str)
	**/
	static public function removeDatabase(str:String):Void;
	/**
		rollback(self) -> bool
	**/
	public function rollback():Bool;
	/**
		setConnectOptions(self, options: str = '')
	**/
	public function setConnectOptions(?options:Dynamic):Void;
	/**
		setDatabaseName(self, str)
	**/
	public function setDatabaseName(str:String):Void;
	/**
		setHostName(self, str)
	**/
	public function setHostName(str:String):Void;
	/**
		setNumericalPrecisionPolicy(self, QSql.NumericalPrecisionPolicy)
	**/
	public function setNumericalPrecisionPolicy(QSql:Dynamic):Void;
	/**
		setPassword(self, str)
	**/
	public function setPassword(str:String):Void;
	/**
		setPort(self, int)
	**/
	public function setPort(int:Int):Void;
	/**
		setUserName(self, str)
	**/
	public function setUserName(str:String):Void;
	/**
		tables(self, type: QSql.TableType = QSql.Tables) -> List[str]
	**/
	public function tables(?type:Dynamic):Dynamic;
	/**
		transaction(self) -> bool
	**/
	public function transaction():Bool;
	/**
		userName(self) -> str
	**/
	public function userName():String;
}