/* This file is generated, do not edit! */
package pandas.io.json;
@:pythonImport("pandas.io.json") extern class Json_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Normalize semi-structured JSON data into a flat table.
		
		Parameters
		----------
		data : dict or list of dicts
		    Unserialized JSON objects.
		record_path : str or list of str, default None
		    Path in each object to list of records. If not passed, data will be
		    assumed to be an array of records.
		meta : list of paths (str or list of str), default None
		    Fields to use as metadata for each record in resulting table.
		meta_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    meta is ['foo', 'bar'].
		record_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    path to records is ['foo', 'bar'].
		errors : {'raise', 'ignore'}, default 'raise'
		    Configures error handling.
		
		    * 'ignore' : will ignore KeyError if keys listed in meta are not
		      always present.
		    * 'raise' : will raise KeyError if keys listed in meta are not
		      always present.
		sep : str, default '.'
		    Nested records will generate names separated by sep.
		    e.g., for sep='.', {'foo': {'bar': 0}} -> foo.bar.
		max_level : int, default None
		    Max number of levels(depth of dict) to normalize.
		    if None, normalizes all levels.
		
		    .. versionadded:: 0.25.0
		
		Returns
		-------
		frame : DataFrame
		Normalize semi-structured JSON data into a flat table.
		
		Examples
		--------
		>>> data = [
		...     {"id": 1, "name": {"first": "Coleen", "last": "Volk"}},
		...     {"name": {"given": "Mark", "family": "Regner"}},
		...     {"id": 2, "name": "Faye Raker"},
		... ]
		>>> pd.json_normalize(data)
		    id name.first name.last name.given name.family        name
		0  1.0     Coleen      Volk        NaN         NaN         NaN
		1  NaN        NaN       NaN       Mark      Regner         NaN
		2  2.0        NaN       NaN        NaN         NaN  Faye Raker
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=0)
		    id        name                        fitness
		0  1.0   Cole Volk  {'height': 130, 'weight': 60}
		1  NaN    Mark Reg  {'height': 130, 'weight': 60}
		2  2.0  Faye Raker  {'height': 130, 'weight': 60}
		
		Normalizes nested data up to level 1.
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=1)
		    id        name  fitness.height  fitness.weight
		0  1.0   Cole Volk             130              60
		1  NaN    Mark Reg             130              60
		2  2.0  Faye Raker             130              60
		
		>>> data = [
		...     {
		...         "state": "Florida",
		...         "shortname": "FL",
		...         "info": {"governor": "Rick Scott"},
		...         "counties": [
		...             {"name": "Dade", "population": 12345},
		...             {"name": "Broward", "population": 40000},
		...             {"name": "Palm Beach", "population": 60000},
		...         ],
		...     },
		...     {
		...         "state": "Ohio",
		...         "shortname": "OH",
		...         "info": {"governor": "John Kasich"},
		...         "counties": [
		...             {"name": "Summit", "population": 1234},
		...             {"name": "Cuyahoga", "population": 1337},
		...         ],
		...     },
		... ]
		>>> result = pd.json_normalize(
		...     data, "counties", ["state", "shortname", ["info", "governor"]]
		... )
		>>> result
		         name  population    state shortname info.governor
		0        Dade       12345   Florida    FL    Rick Scott
		1     Broward       40000   Florida    FL    Rick Scott
		2  Palm Beach       60000   Florida    FL    Rick Scott
		3      Summit        1234   Ohio       OH    John Kasich
		4    Cuyahoga        1337   Ohio       OH    John Kasich
		
		>>> data = {"A": [1, 2]}
		>>> pd.json_normalize(data, "A", record_prefix="Prefix.")
		    Prefix.0
		0          1
		1          2
		
		Returns normalized data with columns prefixed with the given string.
	**/
	static public function _json_normalize(data:Dynamic, ?record_path:Dynamic, ?meta:Dynamic, ?meta_prefix:Dynamic, ?record_prefix:Dynamic, ?errors:Dynamic, ?sep:Dynamic, ?max_level:Dynamic):Dynamic;
	/**
		Create a Table schema from ``data``.
		
		Parameters
		----------
		data : Series, DataFrame
		index : bool, default True
		    Whether to include ``data.index`` in the schema.
		primary_key : bool or None, default True
		    Column names to designate as the primary key.
		    The default `None` will set `'primaryKey'` to the index
		    level or levels if the index is unique.
		version : bool, default True
		    Whether to include a field `pandas_version` with the version
		    of pandas that last revised the table schema. This version
		    can be different from the installed pandas version.
		
		Returns
		-------
		schema : dict
		
		Notes
		-----
		See `Table Schema
		<https://pandas.pydata.org/docs/user_guide/io.html#table-schema>`__ for
		conversion types.
		Timedeltas as converted to ISO8601 duration format with
		9 decimal places after the seconds field for nanosecond precision.
		
		Categoricals are converted to the `any` dtype, and use the `enum` field
		constraint to list the allowed values. The `ordered` attribute is included
		in an `ordered` field.
		
		Examples
		--------
		>>> df = pd.DataFrame(
		...     {'A': [1, 2, 3],
		...      'B': ['a', 'b', 'c'],
		...      'C': pd.date_range('2016-01-01', freq='d', periods=3),
		...     }, index=pd.Index(range(3), name='idx'))
		>>> build_table_schema(df)
		{'fields': [{'name': 'idx', 'type': 'integer'}, {'name': 'A', 'type': 'integer'}, {'name': 'B', 'type': 'string'}, {'name': 'C', 'type': 'datetime'}], 'primaryKey': ['idx'], 'pandas_version': '1.4.0'}
	**/
	static public function build_table_schema(data:Dynamic, ?index:Dynamic, ?primary_key:Dynamic, ?version:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Converts arbitrary object recursively into JSON. Use ensure_ascii=false to output UTF-8. Pass in double_precision to alter the maximum digit precision of doubles. Set encode_html_chars=True to encode < > & as unicode escape sequences.
	**/
	static public function dumps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		        Normalize semi-structured JSON data into a flat table.
		
		        .. deprecated:: 1.0.0
		            Use `pandas.json_normalize` instead.
		
		        Parameters
		----------
		data : dict or list of dicts
		    Unserialized JSON objects.
		record_path : str or list of str, default None
		    Path in each object to list of records. If not passed, data will be
		    assumed to be an array of records.
		meta : list of paths (str or list of str), default None
		    Fields to use as metadata for each record in resulting table.
		meta_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    meta is ['foo', 'bar'].
		record_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    path to records is ['foo', 'bar'].
		errors : {'raise', 'ignore'}, default 'raise'
		    Configures error handling.
		
		    * 'ignore' : will ignore KeyError if keys listed in meta are not
		      always present.
		    * 'raise' : will raise KeyError if keys listed in meta are not
		      always present.
		sep : str, default '.'
		    Nested records will generate names separated by sep.
		    e.g., for sep='.', {'foo': {'bar': 0}} -> foo.bar.
		max_level : int, default None
		    Max number of levels(depth of dict) to normalize.
		    if None, normalizes all levels.
		
		    .. versionadded:: 0.25.0
		
		Returns
		-------
		frame : DataFrame
		Normalize semi-structured JSON data into a flat table.
		
		Examples
		--------
		>>> data = [
		...     {"id": 1, "name": {"first": "Coleen", "last": "Volk"}},
		...     {"name": {"given": "Mark", "family": "Regner"}},
		...     {"id": 2, "name": "Faye Raker"},
		... ]
		>>> pd.json_normalize(data)
		    id name.first name.last name.given name.family        name
		0  1.0     Coleen      Volk        NaN         NaN         NaN
		1  NaN        NaN       NaN       Mark      Regner         NaN
		2  2.0        NaN       NaN        NaN         NaN  Faye Raker
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=0)
		    id        name                        fitness
		0  1.0   Cole Volk  {'height': 130, 'weight': 60}
		1  NaN    Mark Reg  {'height': 130, 'weight': 60}
		2  2.0  Faye Raker  {'height': 130, 'weight': 60}
		
		Normalizes nested data up to level 1.
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=1)
		    id        name  fitness.height  fitness.weight
		0  1.0   Cole Volk             130              60
		1  NaN    Mark Reg             130              60
		2  2.0  Faye Raker             130              60
		
		>>> data = [
		...     {
		...         "state": "Florida",
		...         "shortname": "FL",
		...         "info": {"governor": "Rick Scott"},
		...         "counties": [
		...             {"name": "Dade", "population": 12345},
		...             {"name": "Broward", "population": 40000},
		...             {"name": "Palm Beach", "population": 60000},
		...         ],
		...     },
		...     {
		...         "state": "Ohio",
		...         "shortname": "OH",
		...         "info": {"governor": "John Kasich"},
		...         "counties": [
		...             {"name": "Summit", "population": 1234},
		...             {"name": "Cuyahoga", "population": 1337},
		...         ],
		...     },
		... ]
		>>> result = pd.json_normalize(
		...     data, "counties", ["state", "shortname", ["info", "governor"]]
		... )
		>>> result
		         name  population    state shortname info.governor
		0        Dade       12345   Florida    FL    Rick Scott
		1     Broward       40000   Florida    FL    Rick Scott
		2  Palm Beach       60000   Florida    FL    Rick Scott
		3      Summit        1234   Ohio       OH    John Kasich
		4    Cuyahoga        1337   Ohio       OH    John Kasich
		
		>>> data = {"A": [1, 2]}
		>>> pd.json_normalize(data, "A", record_prefix="Prefix.")
		    Prefix.0
		0          1
		1          2
		
		Returns normalized data with columns prefixed with the given string.
	**/
	static public function json_normalize(data:Dynamic, ?record_path:Dynamic, ?meta:Dynamic, ?meta_prefix:Dynamic, ?record_prefix:Dynamic, ?errors:Dynamic, ?sep:Dynamic, ?max_level:Dynamic):Dynamic;
	/**
		Converts JSON as string to dict object structure. Use precise_float=True to use high precision float decoder.
	**/
	static public function loads(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert a JSON string to pandas object.
		
		Parameters
		----------
		path_or_buf : a valid JSON str, path object or file-like object
		    Any valid string path is acceptable. The string could be a URL. Valid
		    URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be:
		    ``file://localhost/path/to/table.json``.
		
		    If you want to pass in a path object, pandas accepts any
		    ``os.PathLike``.
		
		    By file-like object, we refer to objects with a ``read()`` method,
		    such as a file handle (e.g. via builtin ``open`` function)
		    or ``StringIO``.
		orient : str
		    Indication of expected JSON string format.
		    Compatible JSON strings can be produced by ``to_json()`` with a
		    corresponding orient value.
		    The set of possible orients is:
		
		    - ``'split'`` : dict like
		      ``{index -> [index], columns -> [columns], data -> [values]}``
		    - ``'records'`` : list like
		      ``[{column -> value}, ... , {column -> value}]``
		    - ``'index'`` : dict like ``{index -> {column -> value}}``
		    - ``'columns'`` : dict like ``{column -> {index -> value}}``
		    - ``'values'`` : just the values array
		
		    The allowed and default values depend on the value
		    of the `typ` parameter.
		
		    * when ``typ == 'series'``,
		
		      - allowed orients are ``{'split','records','index'}``
		      - default is ``'index'``
		      - The Series index must be unique for orient ``'index'``.
		
		    * when ``typ == 'frame'``,
		
		      - allowed orients are ``{'split','records','index',
		        'columns','values', 'table'}``
		      - default is ``'columns'``
		      - The DataFrame index must be unique for orients ``'index'`` and
		        ``'columns'``.
		      - The DataFrame columns must be unique for orients ``'index'``,
		        ``'columns'``, and ``'records'``.
		
		typ : {'frame', 'series'}, default 'frame'
		    The type of object to recover.
		
		dtype : bool or dict, default None
		    If True, infer dtypes; if a dict of column to dtype, then use those;
		    if False, then don't infer dtypes at all, applies only to the data.
		
		    For all ``orient`` values except ``'table'``, default is True.
		
		    .. versionchanged:: 0.25.0
		
		       Not applicable for ``orient='table'``.
		
		convert_axes : bool, default None
		    Try to convert the axes to the proper dtypes.
		
		    For all ``orient`` values except ``'table'``, default is True.
		
		    .. versionchanged:: 0.25.0
		
		       Not applicable for ``orient='table'``.
		
		convert_dates : bool or list of str, default True
		    If True then default datelike columns may be converted (depending on
		    keep_default_dates).
		    If False, no dates will be converted.
		    If a list of column names, then those columns will be converted and
		    default datelike columns may also be converted (depending on
		    keep_default_dates).
		
		keep_default_dates : bool, default True
		    If parsing dates (convert_dates is not False), then try to parse the
		    default datelike columns.
		    A column label is datelike if
		
		    * it ends with ``'_at'``,
		
		    * it ends with ``'_time'``,
		
		    * it begins with ``'timestamp'``,
		
		    * it is ``'modified'``, or
		
		    * it is ``'date'``.
		
		numpy : bool, default False
		    Direct decoding to numpy arrays. Supports numeric data only, but
		    non-numeric column and index labels are supported. Note also that the
		    JSON ordering MUST be the same for each term if numpy=True.
		
		    .. deprecated:: 1.0.0
		
		precise_float : bool, default False
		    Set to enable usage of higher precision (strtod) function when
		    decoding string to double values. Default (False) is to use fast but
		    less precise builtin functionality.
		
		date_unit : str, default None
		    The timestamp unit to detect if converting dates. The default behaviour
		    is to try and detect the correct precision, but if this is not desired
		    then pass one of 's', 'ms', 'us' or 'ns' to force parsing only seconds,
		    milliseconds, microseconds or nanoseconds respectively.
		
		encoding : str, default is 'utf-8'
		    The encoding to use to decode py3 bytes.
		
		encoding_errors : str, optional, default "strict"
		    How encoding errors are treated. `List of possible values
		    <https://docs.python.org/3/library/codecs.html#error-handlers>`_ .
		
		    .. versionadded:: 1.3.0
		
		lines : bool, default False
		    Read the file as a json object per line.
		
		chunksize : int, optional
		    Return JsonReader object for iteration.
		    See the `line-delimited json docs
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html#line-delimited-json>`_
		    for more information on ``chunksize``.
		    This can only be passed if `lines=True`.
		    If this is None, the file will be read into memory all at once.
		
		    .. versionchanged:: 1.2
		
		       ``JsonReader`` is a context manager.
		
		compression : str or dict, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer' and 'path_or_buf' is
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). If using
		    'zip', the ZIP file must contain only one data file to be read in. Set to
		    ``None`` for no decompression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for Zstandard decompression using a
		    custom compression dictionary:
		    ``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		nrows : int, optional
		    The number of lines from the line-delimited jsonfile that has to be read.
		    This can only be passed if `lines=True`.
		    If this is None, all the rows will be returned.
		
		    .. versionadded:: 1.1
		
		storage_options : dict, optional
		    Extra options that make sense for a particular storage connection, e.g.
		    host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
		    are forwarded to ``urllib`` as header options. For other URLs (e.g.
		    starting with "s3://", and "gcs://") the key-value pairs are forwarded to
		    ``fsspec``. Please see ``fsspec`` and ``urllib`` for more details.
		
		    .. versionadded:: 1.2.0
		
		Returns
		-------
		Series or DataFrame
		    The type returned depends on the value of `typ`.
		
		See Also
		--------
		DataFrame.to_json : Convert a DataFrame to a JSON string.
		Series.to_json : Convert a Series to a JSON string.
		json_normalize : Normalize semi-structured JSON data into a flat table.
		
		Notes
		-----
		Specific to ``orient='table'``, if a :class:`DataFrame` with a literal
		:class:`Index` name of `index` gets written with :func:`to_json`, the
		subsequent read operation will incorrectly set the :class:`Index` name to
		``None``. This is because `index` is also used by :func:`DataFrame.to_json`
		to denote a missing :class:`Index` name, and the subsequent
		:func:`read_json` operation cannot distinguish between the two. The same
		limitation is encountered with a :class:`MultiIndex` and any names
		beginning with ``'level_'``.
		
		Examples
		--------
		>>> df = pd.DataFrame([['a', 'b'], ['c', 'd']],
		...                   index=['row 1', 'row 2'],
		...                   columns=['col 1', 'col 2'])
		
		Encoding/decoding a Dataframe using ``'split'`` formatted JSON:
		
		>>> df.to_json(orient='split')
		    '{"columns":["col 1","col 2"],"index":["row 1","row 2"],"data":[["a","b"],["c","d"]]}'
		>>> pd.read_json(_, orient='split')
		      col 1 col 2
		row 1     a     b
		row 2     c     d
		
		Encoding/decoding a Dataframe using ``'index'`` formatted JSON:
		
		>>> df.to_json(orient='index')
		'{"row 1":{"col 1":"a","col 2":"b"},"row 2":{"col 1":"c","col 2":"d"}}'
		
		>>> pd.read_json(_, orient='index')
		      col 1 col 2
		row 1     a     b
		row 2     c     d
		
		Encoding/decoding a Dataframe using ``'records'`` formatted JSON.
		Note that index labels are not preserved with this encoding.
		
		>>> df.to_json(orient='records')
		'[{"col 1":"a","col 2":"b"},{"col 1":"c","col 2":"d"}]'
		>>> pd.read_json(_, orient='records')
		  col 1 col 2
		0     a     b
		1     c     d
		
		Encoding with Table Schema
		
		>>> df.to_json(orient='table')
		    '{"schema":{"fields":[{"name":"index","type":"string"},{"name":"col 1","type":"string"},{"name":"col 2","type":"string"}],"primaryKey":["index"],"pandas_version":"1.4.0"},"data":[{"index":"row 1","col 1":"a","col 2":"b"},{"index":"row 2","col 1":"c","col 2":"d"}]}'
	**/
	static public function read_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?typ:Dynamic, ?dtype:Dynamic, ?convert_axes:Dynamic, ?convert_dates:Dynamic, ?keep_default_dates:Dynamic, ?numpy:Dynamic, ?precise_float:Dynamic, ?date_unit:Dynamic, ?encoding:Dynamic, ?encoding_errors:Dynamic, ?lines:Dynamic, ?chunksize:Dynamic, ?compression:Dynamic, ?nrows:Dynamic, ?storage_options:Dynamic):Dynamic;
	static public function to_json(path_or_buf:Dynamic, obj:Dynamic, ?orient:Dynamic, ?date_format:Dynamic, ?double_precision:Dynamic, ?force_ascii:Dynamic, ?date_unit:Dynamic, ?default_handler:Dynamic, ?lines:Dynamic, ?compression:Dynamic, ?index:Dynamic, ?indent:Dynamic, ?storage_options:Dynamic):Dynamic;
}