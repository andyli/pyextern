/* This file is generated, do not edit! */
package pandas.io.sql;
@:pythonImport("pandas.io.sql", "SQLiteTable") extern class SQLiteTable {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
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
		Return a string representation for a particular object.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
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
	static public var _accessors : Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	/**
		Return a list of SQL statements that creates a table reflecting the
		structure of a DataFrame.  The first entry will be a CREATE TABLE
		statement while the rest will be CREATE INDEX statements.
	**/
	public function _create_table_setup():Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	public function _execute_create():Dynamic;
	/**
		Execute SQL statement inserting data
		
		Parameters
		----------
		conn : sqlalchemy.engine.Engine or sqlalchemy.engine.Connection
		keys : list of str
		   Column names
		data_iter : generator of list
		   Each item contains a list of values to be inserted
	**/
	public function _execute_insert(conn:Dynamic, keys:Dynamic, data_iter:Dynamic):Dynamic;
	/**
		Alternative to _execute_insert for DBs support multivalue INSERT.
		
		Note: multi-value insert is usually faster for analytics DBs
		and tables containing a few columns
		but performance degrades quickly with increase of columns.
	**/
	public function _execute_insert_multi(conn:Dynamic, keys:Dynamic, data_iter:Dynamic):Dynamic;
	public function _get_column_names_and_types(dtype_mapper:Dynamic):Dynamic;
	public function _get_dtype(sqltype:Dynamic):Dynamic;
	/**
		Make the DataFrame's column types align with the SQL table
		column types.
		Need to work around limited NA value support. Floats are always
		fine, ints must always be floats if there are Null values.
		Booleans are hard because converting bool column with None replaces
		all Nones with false. Therefore only convert bool if there are no
		NA values.
		Datetimes should already be converted to np.datetime64 if supported,
		but here we also force conversion if required.
	**/
	public function _harmonize_columns(?parse_dates:Dynamic):Dynamic;
	static public var _hidden_attrs : Dynamic;
	public function _index_name(index:Dynamic, index_label:Dynamic):Dynamic;
	/**
		Return generator through chunked result set.
	**/
	public function _query_iterator(result:Dynamic, chunksize:Dynamic, columns:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public function _sql_type_name(col:Dynamic):Dynamic;
	public function _sqlalchemy_type(col:Dynamic):Dynamic;
	public function create():Dynamic;
	public function exists():Dynamic;
	public function insert(?chunksize:Dynamic, ?method:Dynamic):Dynamic;
	public function insert_data():Dynamic;
	public function insert_statement(num_rows:Dynamic):Dynamic;
	public function read(?coerce_float:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	public function sql_schema():Dynamic;
}