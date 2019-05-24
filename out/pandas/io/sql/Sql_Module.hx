/* This file is generated, do not edit! */
package pandas.io.sql;
@:pythonImport("pandas.io.sql") extern class Sql_Module {
	static public var _SAFE_NAMES_WARNING : Dynamic;
	static public var _SQLALCHEMY_INSTALLED : Dynamic;
	static public var _SQL_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert SQL and params args to DBAPI2.0 compliant format.
	**/
	static public function _convert_params(sql:Dynamic, params:Dynamic):Dynamic;
	/**
		Returns a SQLAlchemy engine from a URI (if con is a string)
		else it just return con without modifying it.
	**/
	static public function _engine_builder(con:Dynamic):Dynamic;
	static public function _get_unicode_name(name:Dynamic):Dynamic;
	static public function _get_valid_sqlite_name(name:Dynamic):Dynamic;
	static public function _handle_date_column(col:Dynamic, ?utc:Dynamic, ?format:Dynamic):Dynamic;
	static public function _is_sqlalchemy_connectable(con:Dynamic):Dynamic;
	/**
		Force non-datetime columns to be read as such.
		Supports both string formatted and integer timestamp columns.
	**/
	static public function _parse_date_columns(data_frame:Dynamic, parse_dates:Dynamic):Dynamic;
	/**
		Process parse_dates argument for read_sql functions
	**/
	static public function _process_parse_dates_argument(parse_dates:Dynamic):Dynamic;
	/**
		Wrap result set of query in a DataFrame.
	**/
	static public function _wrap_result(data:Dynamic, columns:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Execute the given SQL query using the provided connection object.
		
		Parameters
		----------
		sql : string
		    SQL query to be executed.
		con : SQLAlchemy connectable(engine/connection) or sqlite3 connection
		    Using SQLAlchemy makes it possible to use any DB supported by the
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		cur : deprecated, cursor is obtained from connection, default: None
		params : list or tuple, optional, default: None
		    List of parameters to pass to execute method.
		
		Returns
		-------
		Results Iterable
	**/
	static public function execute(sql:Dynamic, con:Dynamic, ?cur:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Get the SQL db table schema for the given frame.
		
		Parameters
		----------
		frame : DataFrame
		name : string
		    name of SQL table
		keys : string or sequence, default: None
		    columns to use a primary key
		con: an open SQL database connection object or a SQLAlchemy connectable
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library, default: None
		    If a DBAPI2 object, only sqlite3 is supported.
		dtype : dict of column name to SQL type, default None
		    Optional specifying the datatype for columns. The SQL type should
		    be a SQLAlchemy type, or a string for sqlite3 fallback connection.
	**/
	static public function get_schema(frame:Dynamic, name:Dynamic, ?keys:Dynamic, ?con:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Check if DataBase has named table.
		
		Parameters
		----------
		table_name: string
		    Name of SQL table.
		con: SQLAlchemy connectable(engine/connection) or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		schema : string, default None
		    Name of SQL schema in database to write to (if database flavor supports
		    this). If None, use default schema (default).
		
		Returns
		-------
		boolean
	**/
	static public function has_table(table_name:Dynamic, con:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          a DatetimeTZDtype dtype.
		
		Examples
		--------
		>>> is_datetime64tz_dtype(object)
		False
		>>> is_datetime64tz_dtype([1, 2, 3])
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3]))  # tz-naive
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetime64tz_dtype(dtype)
		True
		>>> is_datetime64tz_dtype(s)
		True
	**/
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_dict_like : bool
		    Whether `obj` has dict-like properties.
		
		Examples
		--------
		>>> is_dict_like({1: 2})
		True
		>>> is_dict_like([1, 2, 3])
		False
		>>> is_dict_like(dict)
		False
		>>> is_dict_like(dict())
		True
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Convenience function to return the correct PandasSQL subclass based on the
		provided parameters.
	**/
	static public function pandasSQL_builder(con:Dynamic, ?schema:Dynamic, ?meta:Dynamic, ?is_cursor:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Raise exception with existing traceback.
		If traceback is not passed, uses sys.exc_info() to get traceback.
	**/
	static public function raise_with_traceback(exc:Dynamic, ?traceback:Dynamic):Dynamic;
	/**
		Read SQL query or database table into a DataFrame.
		
		This function is a convenience wrapper around ``read_sql_table`` and
		``read_sql_query`` (for backward compatibility). It will delegate
		to the specific function depending on the provided input. A SQL query
		will be routed to ``read_sql_query``, while a database table name will
		be routed to ``read_sql_table``. Note that the delegated function might
		have more specific notes about their functionality not listed here.
		
		Parameters
		----------
		sql : string or SQLAlchemy Selectable (select or text object)
		    SQL query to be executed or a table name.
		con : SQLAlchemy connectable (engine/connection) or database string URI
		    or DBAPI2 connection (fallback mode)
		
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library. If a DBAPI2 object, only sqlite3 is supported.
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : boolean, default True
		    Attempts to convert values of non-string, non-numeric objects (like
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
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		columns : list, default: None
		    List of column names to select from SQL table (only used when reading
		    a table).
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the
		    number of rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql_query : Read SQL query into a DataFrame.
	**/
	static public function read_sql(sql:Dynamic, con:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?params:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL query into a DataFrame.
		
		Returns a DataFrame corresponding to the result set of the query
		string. Optionally provide an `index_col` parameter to use one of the
		columns as the index, otherwise default integer index will be used.
		
		Parameters
		----------
		sql : string SQL query or SQLAlchemy Selectable (select or text object)
		    SQL query to be executed.
		con : SQLAlchemy connectable(engine/connection), database string URI,
		    or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : boolean, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point. Useful for SQL result sets.
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
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		chunksize : int, default None
		    If specified, return an iterator where `chunksize` is the number of
		    rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		read_sql_table : Read SQL database table into a DataFrame.
		read_sql
		
		Notes
		-----
		Any datetime values with time zone information parsed via the `parse_dates`
		parameter will be converted to UTC.
	**/
	static public function read_sql_query(sql:Dynamic, con:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?params:Dynamic, ?parse_dates:Dynamic, ?chunksize:Dynamic):Dynamic;
	/**
		Read SQL database table into a DataFrame.
		
		Given a table name and a SQLAlchemy connectable, returns a DataFrame.
		This function does not support DBAPI connections.
		
		Parameters
		----------
		table_name : string
		    Name of SQL table in database.
		con : SQLAlchemy connectable (or database string URI)
		    SQLite DBAPI connection mode not supported.
		schema : string, default None
		    Name of SQL schema in database to query (if database flavor
		    supports this). Uses default schema if None (default).
		index_col : string or list of strings, optional, default: None
		    Column(s) to set as index(MultiIndex).
		coerce_float : boolean, default True
		    Attempts to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point. Can result in loss of Precision.
		parse_dates : list or dict, default: None
		    - List of column names to parse as dates.
		    - Dict of ``{column_name: format string}`` where format string is
		      strftime compatible in case of parsing string times or is one of
		      (D, s, ns, ms, us) in case of parsing integer timestamps.
		    - Dict of ``{column_name: arg dict}``, where the arg dict corresponds
		      to the keyword arguments of :func:`pandas.to_datetime`
		      Especially useful with databases without native Datetime support,
		      such as SQLite.
		columns : list, default: None
		    List of column names to select from SQL table
		chunksize : int, default None
		    If specified, returns an iterator where `chunksize` is the number of
		    rows to include in each chunk.
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		read_sql_query : Read SQL query into a DataFrame.
		read_sql
		
		Notes
		-----
		Any datetime values with time zone information will be converted to UTC.
	**/
	static public function read_sql_table(table_name:Dynamic, con:Dynamic, ?schema:Dynamic, ?index_col:Dynamic, ?coerce_float:Dynamic, ?parse_dates:Dynamic, ?columns:Dynamic, ?chunksize:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Check if DataBase has named table.
		
		Parameters
		----------
		table_name: string
		    Name of SQL table.
		con: SQLAlchemy connectable(engine/connection) or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		schema : string, default None
		    Name of SQL schema in database to write to (if database flavor supports
		    this). If None, use default schema (default).
		
		Returns
		-------
		boolean
	**/
	static public function table_exists(table_name:Dynamic, con:Dynamic, ?schema:Dynamic):Dynamic;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : integer, float, string, datetime, list, tuple, 1-d array, Series
		
		    .. versionadded:: 0.18.1
		
		       or DataFrame/dict-like
		
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		dayfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    If True, parses dates with the day first, eg 10/11/12 is parsed as
		    2012-11-10.
		    Warning: dayfirst=True is not strict, but will prefer to parse
		    with day first (this is a known bug, based on dateutil behavior).
		yearfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		
		    - If True parses dates with the year first, eg 10/11/12 is parsed as
		      2010-11-12.
		    - If both dayfirst and yearfirst are True, yearfirst is preceded (same
		      as dateutil).
		
		    Warning: yearfirst=True is not strict, but will prefer to parse
		    with year first (this is a known bug, based on dateutil behavior).
		
		    .. versionadded:: 0.16.1
		
		utc : boolean, default None
		    Return UTC DatetimeIndex if True (converting any tz-aware
		    datetime.datetime objects as well).
		box : boolean, default True
		
		    - If True returns a DatetimeIndex or Index-like object
		    - If False returns ndarray of values.
		format : string, default None
		    strftime to parse time, eg "%d/%m/%Y", note that "%f" will parse
		    all the way up to nanoseconds.
		exact : boolean, True by default
		
		    - If True, require an exact format match.
		    - If False, allow the format to match anywhere in the target string.
		
		unit : string, default 'ns'
		    unit of the arg (D,s,ms,us,ns) denote the unit, which is an
		    integer or float number. This will be based off the origin.
		    Example, with unit='ms' and origin='unix' (the default), this
		    would calculate the number of milliseconds to the unix epoch start.
		infer_datetime_format : boolean, default False
		    If True and no `format` is given, attempt to infer the format of the
		    datetime strings, and if it can be inferred, switch to a faster
		    method of parsing them. In some cases this can increase the parsing
		    speed by ~5-10x.
		origin : scalar, default is 'unix'
		    Define the reference date. The numeric values would be parsed as number
		    of units (defined by `unit`) since this reference date.
		
		    - If 'unix' (or POSIX) time; origin is set to 1970-01-01.
		    - If 'julian', unit must be 'D', and origin is set to beginning of
		      Julian Calendar. Julian day number 0 is assigned to the day starting
		      at noon on January 1, 4713 BC.
		    - If Timestamp convertible, origin is set to Timestamp identified by
		      origin.
		
		    .. versionadded:: 0.20.0
		cache : boolean, default False
		    If True, use a cache of unique, converted dates to apply the datetime
		    conversion. May produce significant speed-up when parsing duplicate
		    date strings, especially ones with timezone offsets.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		ret : datetime if parsing succeeded.
		    Return type depends on input:
		
		    - list-like: DatetimeIndex
		    - Series: Series of datetime64 dtype
		    - scalar: Timestamp
		
		    In case when it is not possible to return designated types (e.g. when
		    any element of input is before Timestamp.min or after Timestamp.max)
		    return will have datetime.datetime type (or corresponding
		    array/Series).
		
		See Also
		--------
		pandas.DataFrame.astype : Cast argument to a specified dtype.
		pandas.to_timedelta : Convert argument to timedelta.
		
		Examples
		--------
		Assembling a datetime from multiple columns of a DataFrame. The keys can be
		common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		                       'month': [2, 3],
		                       'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		If a date does not meet the `timestamp limitations
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html
		#timeseries-timestamp-limits>`_, passing errors='ignore'
		will return the original input instead of raising any exception.
		
		Passing errors='coerce' will force an out-of-bounds date to NaT,
		in addition to forcing non-dates (or non-parseable dates) to NaT.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='ignore')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		Passing infer_datetime_format=True can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000']*1000)
		
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=True)
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=False)
		1 loop, best of 3: 471 ms per loop
		
		Using a unix epoch time
		
		>>> pd.to_datetime(1490195805, unit='s')
		Timestamp('2017-03-22 15:16:45')
		>>> pd.to_datetime(1490195805433502912, unit='ns')
		Timestamp('2017-03-22 15:16:45.433502912')
		
		.. warning:: For float arg, precision rounding might happen. To prevent
		    unexpected behavior use a fixed-width exact type.
		
		Using a non-unix epoch origin
		
		>>> pd.to_datetime([1, 2, 3], unit='D',
		                   origin=pd.Timestamp('1960-01-01'))
		0    1960-01-02
		1    1960-01-03
		2    1960-01-04
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic, ?cache:Dynamic):Dynamic;
	/**
		Write records stored in a DataFrame to a SQL database.
		
		Parameters
		----------
		frame : DataFrame, Series
		name : string
		    Name of SQL table.
		con : SQLAlchemy connectable(engine/connection) or database string URI
		    or sqlite3 DBAPI2 connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		schema : string, default None
		    Name of SQL schema in database to write to (if database flavor
		    supports this). If None, use default schema (default).
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
		chunksize : int, default None
		    If not None, then rows will be written in batches of this size at a
		    time.  If None, all rows will be written at once.
		dtype : single SQLtype or dict of column name to SQL type, default None
		    Optional specifying the datatype for columns. The SQL type should
		    be a SQLAlchemy type, or a string for sqlite3 fallback connection.
		    If all columns are of the same type, one single value can be used.
		method : {None, 'multi', callable}, default None
		    Controls the SQL insertion clause used:
		
		    - None : Uses standard SQL ``INSERT`` clause (one per row).
		    - 'multi': Pass multiple values in a single ``INSERT`` clause.
		    - callable with signature ``(pd_table, conn, keys, data_iter)``.
		
		    Details and a sample callable implementation can be found in the
		    section :ref:`insert method <io.sql.method>`.
		
		    .. versionadded:: 0.24.0
	**/
	static public function to_sql(frame:Dynamic, name:Dynamic, con:Dynamic, ?schema:Dynamic, ?if_exists:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic, ?method:Dynamic):Dynamic;
}