/* This file is generated, do not edit! */
package pySide2.qtSql;
@:pythonImport("PySide2.QtSql", "QSqlDatabase") extern class QSqlDatabase {
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
	static public function addDatabase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function cloneDatabase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function commit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectionName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connectionNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function database(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function databaseName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var defaultConnection : Dynamic;
	public function driver(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function driverName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function drivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function exec_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hostName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isDriverAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isOpen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isOpenError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function numericalPrecisionPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function password(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function port(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function primaryIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function record(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerSqlDriver(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function removeDatabase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rollback(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setConnectOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDatabaseName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHostName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNumericalPrecisionPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPassword(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUserName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tables(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transaction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function userName(args:haxe.extern.Rest<Dynamic>):Dynamic;
}