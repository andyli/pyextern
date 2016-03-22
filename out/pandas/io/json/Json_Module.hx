/* This file is generated, do not edit! */
package pandas.io.json;
@:pythonImport("pandas.io.json") extern class Json_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts arbitrary object recursivly into JSON. Use ensure_ascii=false to output UTF-8. Pass in double_precision to alter the maximum digit precision of doubles. Set encode_html_chars=True to encode < > & as unicode escape sequences.
	**/
	static public function dumps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If the filepath_or_buffer is a url, translate and return the buffer
		passthru otherwise.
		
		Parameters
		----------
		filepath_or_buffer : a url, filepath (str, py.path.local or pathlib.Path),
		                     or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		
		Returns
		-------
		a filepath_or_buffer, the encoding, the compression
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
	static public var iNaT : Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	/**
		"Normalize" semi-structured JSON data into a flat table
		
		Parameters
		----------
		data : dict or list of dicts
		    Unserialized JSON objects
		record_path : string or list of strings, default None
		    Path in each object to list of records. If not passed, data will be
		    assumed to be an array of records
		meta : list of paths (string or list of strings), default None
		    Fields to use as metadata for each record in resulting table
		record_prefix : string, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    path to records is ['foo', 'bar']
		meta_prefix : string, default None
		
		Returns
		-------
		frame : DataFrame
		
		Examples
		--------
		
		>>> data = [{'state': 'Florida',
		...          'shortname': 'FL',
		...          'info': {
		...               'governor': 'Rick Scott'
		...          },
		...          'counties': [{'name': 'Dade', 'population': 12345},
		...                      {'name': 'Broward', 'population': 40000},
		...                      {'name': 'Palm Beach', 'population': 60000}]},
		...         {'state': 'Ohio',
		...          'shortname': 'OH',
		...          'info': {
		...               'governor': 'John Kasich'
		...          },
		...          'counties': [{'name': 'Summit', 'population': 1234},
		...                       {'name': 'Cuyahoga', 'population': 1337}]}]
		>>> from pandas.io.json import json_normalize
		>>> result = json_normalize(data, 'counties', ['state', 'shortname',
		...                                           ['info', 'governor']])
		>>> result
		         name  population info.governor    state shortname
		0        Dade       12345    Rick Scott  Florida        FL
		1     Broward       40000    Rick Scott  Florida        FL
		2  Palm Beach       60000    Rick Scott  Florida        FL
		3      Summit        1234   John Kasich     Ohio        OH
		4    Cuyahoga        1337   John Kasich     Ohio        OH
	**/
	static public function json_normalize(data:Dynamic, ?record_path:Dynamic, ?meta:Dynamic, ?meta_prefix:Dynamic, ?record_prefix:Dynamic):pandas.DataFrame;
	/**
		Converts JSON as string to dict object structure. Use precise_float=True to use high precision float decoder.
	**/
	static public function loads(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a simplified json_normalize
		
		converts a nested dict into a flat dict ("record"), unlike json_normalize,
		it does not attempt to extract a subset of the data.
		
		Parameters
		----------
		ds : dict or list of dicts
		prefix: the prefix, optional, default: ""
		level: the number of levels in the jason string, optional, default: 0
		
		Returns
		-------
		d - dict or list of dicts, matching `ds`
		
		Examples
		--------
		
		IN[52]: nested_to_record(dict(flat1=1,dict1=dict(c=1,d=2),
		                              nested=dict(e=dict(c=1,d=2),d=2)))
		Out[52]:
		{'dict1.c': 1,
		 'dict1.d': 2,
		 'flat1': 1,
		 'nested.d': 2,
		 'nested.e.c': 1,
		 'nested.e.d': 2}
	**/
	static public function nested_to_record(ds:Dynamic, ?prefix:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Convert a JSON string to pandas object
		
		Parameters
		----------
		path_or_buf : a valid JSON string or file-like, default: None
		    The string could be a URL. Valid URL schemes include http, ftp, s3, and
		    file. For file URLs, a host is expected. For instance, a local file
		    could be ``file://localhost/path/to/table.json``
		
		orient
		
		    * `Series`
		
		      - default is ``'index'``
		      - allowed values are: ``{'split','records','index'}``
		      - The Series index must be unique for orient ``'index'``.
		
		    * `DataFrame`
		
		      - default is ``'columns'``
		      - allowed values are: {'split','records','index','columns','values'}
		      - The DataFrame index must be unique for orients 'index' and
		        'columns'.
		      - The DataFrame columns must be unique for orients 'index',
		        'columns', and 'records'.
		
		    * The format of the JSON string
		
		      - split : dict like
		        ``{index -> [index], columns -> [columns], data -> [values]}``
		      - records : list like
		        ``[{column -> value}, ... , {column -> value}]``
		      - index : dict like ``{index -> {column -> value}}``
		      - columns : dict like ``{column -> {index -> value}}``
		      - values : just the values array
		
		typ : type of object to recover (series or frame), default 'frame'
		dtype : boolean or dict, default True
		    If True, infer dtypes, if a dict of column to dtype, then use those,
		    if False, then don't infer dtypes at all, applies only to the data.
		convert_axes : boolean, default True
		    Try to convert the axes to the proper dtypes.
		convert_dates : boolean, default True
		    List of columns to parse for dates; If True, then try to parse
		    datelike columns default is True; a column label is datelike if
		
		    * it ends with ``'_at'``,
		
		    * it ends with ``'_time'``,
		
		    * it begins with ``'timestamp'``,
		
		    * it is ``'modified'``, or
		
		    * it is ``'date'``
		
		keep_default_dates : boolean, default True
		    If parsing dates, then parse the default datelike columns
		numpy : boolean, default False
		    Direct decoding to numpy arrays. Supports numeric data only, but
		    non-numeric column and index labels are supported. Note also that the
		    JSON ordering MUST be the same for each term if numpy=True.
		precise_float : boolean, default False
		    Set to enable usage of higher precision (strtod) function when
		    decoding string to double values. Default (False) is to use fast but
		    less precise builtin functionality
		date_unit : string, default None
		    The timestamp unit to detect if converting dates. The default behaviour
		    is to try and detect the correct precision, but if this is not desired
		    then pass one of 's', 'ms', 'us' or 'ns' to force parsing only seconds,
		    milliseconds, microseconds or nanoseconds respectively.
		
		Returns
		-------
		result : Series or DataFrame
	**/
	static public function read_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?typ:Dynamic, ?dtype:Dynamic, ?convert_axes:Dynamic, ?convert_dates:Dynamic, ?keep_default_dates:Dynamic, ?numpy:Dynamic, ?precise_float:Dynamic, ?date_unit:Dynamic):Dynamic;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : string, datetime, list, tuple, 1-d array, or Series
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
		    with year first (this is a known bug, based on dateutil beahavior).
		
		    .. versionadded: 0.16.1
		
		utc : boolean, default None
		    Return UTC DatetimeIndex if True (converting any tz-aware
		    datetime.datetime objects as well).
		box : boolean, default True
		
		    - If True returns a DatetimeIndex
		    - If False returns ndarray of values.
		format : string, default None
		    strftime to parse time, eg "%d/%m/%Y", note that "%f" will parse
		    all the way up to nanoseconds.
		exact : boolean, True by default
		
		    - If True, require an exact format match.
		    - If False, allow the format to match anywhere in the target string.
		
		unit : unit of the arg (D,s,ms,us,ns) denote the unit in epoch
		    (e.g. a unix timestamp), which is an integer/float number.
		infer_datetime_format : boolean, default False
		    If no `format` is given, try to infer the format based on the first
		    datetime string. Provides a large speed-up in many cases.
		
		Returns
		-------
		ret : datetime if parsing succeeded.
		    Return type depends on input:
		
		    - list-like: DatetimeIndex
		    - Series: Series of datetime64 dtype
		    - scalar: Timestamp
		
		    In case when it is not possible to return designated types (e.g. when
		    any element of input is before Timestamp.min or after Timestamp.max)
		    return will have datetime.datetime type (or correspoding array/Series).
		
		Examples
		--------
		Take separate series and convert to datetime
		
		>>> import pandas as pd
		>>> i = pd.date_range('20000101',periods=100)
		>>> df = pd.DataFrame(dict(year = i.year, month = i.month, day = i.day))
		>>> pd.to_datetime(df.year*10000 + df.month*100 + df.day, format='%Y%m%d')
		0    2000-01-01
		1    2000-01-02
		...
		98   2000-04-08
		99   2000-04-09
		Length: 100, dtype: datetime64[ns]
		
		Or from strings
		
		>>> df = df.astype(str)
		>>> pd.to_datetime(df.day + df.month + df.year, format="%d%m%Y")
		0    2000-01-01
		1    2000-01-02
		...
		98   2000-04-08
		99   2000-04-09
		Length: 100, dtype: datetime64[ns]
		
		Date that does not meet timestamp limitations:
		
		>>> pd.to_datetime('13000101', format='%Y%m%d')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?coerce:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
	static public function to_json(path_or_buf:Dynamic, obj:Dynamic, ?orient:Dynamic, ?date_format:Dynamic, ?double_precision:Dynamic, ?force_ascii:Dynamic, ?date_unit:Dynamic, ?default_handler:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}