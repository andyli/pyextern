/* This file is generated, do not edit! */
package pandas.io.sql;
@:pythonImport("pandas.io.sql", "SQLDatabase") extern class SQLDatabase {
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
	public function ___init__(engine:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(engine:Dynamic, ?schema:Dynamic):Void;
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
	public function _create_sql_schema(frame:Dynamic, table_name:Dynamic, ?keys:Dynamic, ?dtype:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	static public var _hidden_attrs : Dynamic;
	/**
		Return generator through chunked result set
	**/
	static public function _query_iterator(result:Dynamic, chunksize:Dynamic, columns:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Checks table name for issues with case-sensitivity.
		Method is called after data is inserted.
	**/
	public function check_case_sensitive(name:Dynamic, schema:Dynamic):Dynamic;
	public function drop_table(table_name:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Simple passthrough to SQLAlchemy connectable
	**/
	public function execute(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_table(table_name:Dynamic, ?schema:Dynamic):Dynamic;
	public function has_table(name:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Prepares table in the database for data insertion. Creates it if needed, etc.
	**/
	public function prep_table(frame:Dynamic, name:Dynamic, ?if_exists:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?schema:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Read SQL query into a DataFrame.
		
		Parameters
		----------
		sql : str
		    SQL query to be executed.
		index_col : string, optional, default: None
		    Column name to use as index for the returned DataFrame object.
		coerce_float : bool, default True
		    Attempt to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets.
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times, or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg dict}``, where the arg dict
		      corresponds to the keyword arguments of
		      :func:`pandas.to_datetime` Especially useful with databases
		      without native Datetime support, such as SQLite.
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number
		    of rows to include in each chunk.
		dtype : Type name or dict of columns
		    Data type for data or columns. E.g. np.float64 or
		    {‘a’: np.float64, ‘b’: np.int32, ‘c’: ‘Int64’}
		
		    .. versionadded:: 1.3.0
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql
	**/
	public function read_query(sql:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?params:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Read SQL query into a DataFrame.
		
		Parameters
		----------
		sql : str
		    SQL query to be executed.
		index_col : string, optional, default: None
		    Column name to use as index for the returned DataFrame object.
		coerce_float : bool, default True
		    Attempt to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets.
		params : list, tuple or dict, optional, default: None
		    List of parameters to pass to execute method.  The syntax used
		    to pass parameters is database driver dependent. Check your
		    database driver documentation for which of the five syntax styles,
		    described in PEP 249's paramstyle, is supported.
		    Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times, or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg dict}``, where the arg dict
		      corresponds to the keyword arguments of
		      :func:`pandas.to_datetime` Especially useful with databases
		      without native Datetime support, such as SQLite.
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number
		    of rows to include in each chunk.
		dtype : Type name or dict of columns
		    Data type for data or columns. E.g. np.float64 or
		    {‘a’: np.float64, ‘b’: np.int32, ‘c’: ‘Int64’}
		
		    .. versionadded:: 1.3.0
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql
	**/
	public function read_sql(sql:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?params:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Read SQL database table into a DataFrame.
		
		Parameters
		----------
		table_name : str
		    Name of SQL table in database.
		index_col : string, optional, default: None
		    Column to set as index.
		coerce_float : bool, default True
		    Attempts to convert values of non-string, non-numeric objects
		    (like decimal.Decimal) to floating point. This can result in
		    loss of precision.
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times, or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg}``, where the arg corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`.
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		columns : list, default: None
		    List of column names to select from SQL table.
		schema : string, default None
		    Name of SQL schema in database to query (if database flavor
		    supports this).  If specified, this overwrites the default
		    schema of the SQL database object.
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number
		    of rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		See Also
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
		    Name of SQL table.
		if_exists : {'fail', 'replace', 'append'}, default 'fail'
		    - fail: If table exists, do nothing.
		    - replace: If table exists, drop it, recreate it, and insert data.
		    - append: If table exists, insert data. Create if does not exist.
		index : boolean, default True
		    Write DataFrame index as a column.
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
		dtype : single type or dict of column name to SQL type, default None
		    Optional specifying the datatype for columns. The SQL type should
		    be a SQLAlchemy type. If all columns are of the same type, one
		    single value can be used.
		method : {None', 'multi', callable}, default None
		    Controls the SQL insertion clause used:
		
		    * None : Uses standard SQL ``INSERT`` clause (one per row).
		    * 'multi': Pass multiple values in a single ``INSERT`` clause.
		    * callable with signature ``(pd_table, conn, keys, data_iter)``.
		
		    Details and a sample callable implementation can be found in the
		    section :ref:`insert method <io.sql.method>`.
		engine : {'auto', 'sqlalchemy'}, default 'auto'
		    SQL engine library to use. If 'auto', then the option
		    ``io.sql.engine`` is used. The default ``io.sql.engine``
		    behavior is 'sqlalchemy'
		
		    .. versionadded:: 1.3.0
		
		**engine_kwargs
		    Any additional kwargs are passed to the engine.
	**/
	public function to_sql(frame:Dynamic, name:Dynamic, ?if_exists:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?schema:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic, ?method:Dynamic, ?engine:Dynamic, ?engine_kwargs:python.KwArgs<Dynamic>):Dynamic;
}