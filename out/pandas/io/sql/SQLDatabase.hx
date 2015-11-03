/* This file is generated, do not edit! */
package pandas.io.sql;
@:pythonImport("pandas.io.sql", "SQLDatabase") extern class SQLDatabase {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
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
	public function ___init__(engine:Dynamic, ?schema:Dynamic, ?meta:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(engine:Dynamic, ?schema:Dynamic, ?meta:Dynamic):Void;
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
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	public function _create_sql_schema(frame:Dynamic, table_name:Dynamic, ?keys:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Return generator through chunked result set
	**/
	static public function _query_iterator(result:Dynamic, chunksize:Dynamic, columns:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public function drop_table(table_name:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Simple passthrough to SQLAlchemy connectable
	**/
	public function execute(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_table(table_name:Dynamic, ?schema:Dynamic):Dynamic;
	public function has_table(name:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Read SQL query into a DataFrame.
		
		Parameters
		----------
		sql : string
		    SQL query to be executed
		index_col : string, optional, default: None
		    Column name to use as index for the returned DataFrame object.
		coerce_float : boolean, default True
		    Attempt to convert values to non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number
		    of rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		See also
		--------
		read_sql_table : Read SQL database table into a DataFrame
		read_sql
	**/
	public function read_query(sql:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?params:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL query into a DataFrame.
		
		Parameters
		----------
		sql : string
		    SQL query to be executed
		index_col : string, optional, default: None
		    Column name to use as index for the returned DataFrame object.
		coerce_float : boolean, default True
		    Attempt to convert values to non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number
		    of rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		See also
		--------
		read_sql_table : Read SQL database table into a DataFrame
		read_sql
	**/
	public function read_sql(sql:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?params:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL database table into a DataFrame.
		
		Parameters
		----------
		table_name : string
		    Name of SQL table in database
		index_col : string, optional, default: None
		    Column to set as index
		coerce_float : boolean, default True
		    Attempt to convert values to non-string, non-numeric objects
		    (like decimal.Decimal) to floating point. This can result in
		    loss of precision.
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps
		    - Dict of ``{column_name: arg}``, where the arg corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`.
		      Especially useful with databases without native Datetime support,
		      such as SQLite
		columns : list, default: None
		    List of column names to select from sql table
		schema : string, default None
		    Name of SQL schema in database to query (if database flavor
		    supports this).  If specified, this overwrites the default
		    schema of the SQLDatabase object.
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number
		    of rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		See also
		--------
		pandas.read_sql_table
		SQLDatabase.read_query
	**/
	public function read_table(table_name:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?schema:Dynamic, ?chunksize:Dynamic):Dynamic;
	public function run_transaction():Dynamic;
	public var tables : Dynamic;
	/**
		Write records stored in a DataFrame to a SQL database.
		
		Parameters
		----------
		frame : DataFrame
		name : string
		    Name of SQL table
		if_exists : {'fail', 'replace', 'append'}, default 'fail'
		    - fail: If table exists, do nothing.
		    - replace: If table exists, drop it, recreate it, and insert data.
		    - append: If table exists, insert data. Create if does not exist.
		index : boolean, default True
		    Write DataFrame index as a column
		index_label : string or sequence, default None
		    Column label for index column(s). If None is given (default) and
		    `index` is True, then the index names are used.
		    A sequence should be given if the DataFrame uses MultiIndex.
		schema : string, default None
		    Name of SQL schema in database to write to (if database flavor
		    supports this). If specified, this overwrites the default
		    schema of the SQLDatabase object.
		chunksize : int, default None
		    If not None, then rows will be written in batches of this size at a
		    time.  If None, all rows will be written at once.
		dtype : dict of column name to SQL type, default None
		    Optional specifying the datatype for columns. The SQL type should
		    be a SQLAlchemy type.
	**/
	public function to_sql(frame:Dynamic, name:Dynamic, ?if_exists:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?schema:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic):Dynamic;
}