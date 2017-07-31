/* This file is generated, do not edit! */
package pandas.io.stata;
@:pythonImport("pandas.io.stata") extern class Stata_Module {
	static public var NaT : Dynamic;
	static public var VALID_ENCODINGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks the dtypes of the columns of a pandas DataFrame for
		compatibility with the data types and ranges supported by Stata, and
		converts if necessary.
		
		Parameters
		----------
		data : DataFrame
		    The DataFrame to check and convert
		
		Notes
		-----
		Numeric columns in Stata must be one of int8, int16, int32, float32 or
		float64, with some additional value restrictions.  int8 and int16 columns
		are checked for violations of the value restrictions and upcast if needed.
		int64 data is not usable in Stata, and so it is downcast to int32 whenever
		the value are in the int32 range, and sidecast to float64 when larger than
		this range.  If the int64 values are outside of the range of those
		perfectly representable as float64 values, a warning is raised.
		
		bool columns are cast to int8.  uint colums are converted to int of the
		same size if there is no loss in precision, other wise are upcast to a
		larger type.  uint64 is currently not supported since it is concerted to
		object in a DataFrame.
	**/
	static public function _cast_to_stata_types(data:Dynamic):Dynamic;
	static public var _chunksize_params : Dynamic;
	/**
		Converts from one of the stata date formats to a type in TYPE_MAP
	**/
	static public function _convert_datetime_to_stata_type(fmt:Dynamic):Dynamic;
	static public var _data_method_doc : Dynamic;
	static public var _date_formats : Dynamic;
	/**
		Convert from datetime to SIF. http://www.stata.com/help.cgi?datetime
		
		Parameters
		----------
		dates : Series
		    Series or array containing datetime.datetime or datetime64[ns] to
		    convert to the Stata Internal Format given by fmt
		fmt : str
		    The format to convert to. Can be, tc, td, tw, tm, tq, th, ty
	**/
	static public function _datetime_to_stata_elapsed_vec(dates:Dynamic, fmt:Dynamic):Dynamic;
	/**
		Maps numpy dtype to stata's default format for this type. Not terribly
		important since users can change this in Stata. Semantics are
		
		object  -> "%DDs" where DD is the length of the string.  If not a string,
		            raise ValueError
		float64 -> "%10.0g"
		float32 -> "%9.0g"
		int64   -> "%9.0g"
		int32   -> "%12.0g"
		int16   -> "%8.0g"
		int8    -> "%8.0g"
	**/
	static public function _dtype_to_default_stata_fmt(dtype:Dynamic, column:Dynamic):Dynamic;
	/**
		Converts dtype types to stata types. Returns the byte of the given ordinal.
		See TYPE_MAP and comments for an explanation. This is also explained in
		the dta spec.
		1 - 244 are strings of this length
		                     Pandas    Stata
		251 - chr(251) - for int8      byte
		252 - chr(252) - for int16     int
		253 - chr(253) - for int32     long
		254 - chr(254) - for float32   float
		255 - chr(255) - for double    double
		
		If there are dates to convert, then dtype will already have the correct
		type inserted.
	**/
	static public function _dtype_to_stata_type(dtype:Dynamic, column:Dynamic):Dynamic;
	static public var _encoding_params : Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _iterator_params : Dynamic;
	static public function _maybe_convert_to_int_keys(convert_dates:Dynamic, varlist:Dynamic):Dynamic;
	static public function _open_file_binary_write(fname:Dynamic, encoding:Dynamic):Dynamic;
	/**
		Takes a char string and pads it with null bytes until it's length chars
	**/
	static public function _pad_bytes(name:Dynamic, length:Dynamic):Dynamic;
	static public var _read_method_doc : Dynamic;
	static public var _read_stata_doc : Dynamic;
	static public function _set_endianness(endianness:Dynamic):Dynamic;
	/**
		Convert from SIF to datetime. http://www.stata.com/help.cgi?datetime
		
		Parameters
		----------
		dates : Series
		    The Stata Internal Format date to convert to datetime according to fmt
		fmt : str
		    The format to convert to. Can be, tc, td, tw, tm, tq, th, ty
		    Returns
		
		Returns
		-------
		converted : Series
		    The converted dates
		
		Examples
		--------
		>>> import pandas as pd
		>>> dates = pd.Series([52])
		>>> _stata_elapsed_date_to_datetime_vec(dates , "%tw")
		0   1961-01-01
		dtype: datetime64[ns]
		
		Notes
		-----
		datetime/c - tc
		    milliseconds since 01jan1960 00:00:00.000, assuming 86,400 s/day
		datetime/C - tC - NOT IMPLEMENTED
		    milliseconds since 01jan1960 00:00:00.000, adjusted for leap seconds
		date - td
		    days since 01jan1960 (01jan1960 = 0)
		weekly date - tw
		    weeks since 1960w1
		    This assumes 52 weeks in a year, then adds 7 * remainder of the weeks.
		    The datetime value is the start of the week in terms of days in the
		    year, not ISO calendar weeks.
		monthly date - tm
		    months since 1960m1
		quarterly date - tq
		    quarters since 1960q1
		half-yearly date - th
		    half-years since 1960h1 yearly
		date - ty
		    years since 0000
		
		If you don't have pandas with datetime support, then you can't do
		milliseconds accurately.
	**/
	static public function _stata_elapsed_date_to_datetime_vec(dates:Dynamic, fmt:Dynamic):pandas.Series;
	static public var _stata_reader_doc : Dynamic;
	static public var _statafile_processing_params1 : Dynamic;
	static public var _statafile_processing_params2 : Dynamic;
	static public var _version_error : Dynamic;
	static public var excessive_string_length_error : Dynamic;
	/**
		If the filepath_or_buffer is a url, translate and return the buffer.
		Otherwise passthrough.
		
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
	/**
		Effeciently infer the type of a passed val, or list-like
		array of values. Return a string describing the type.
		
		Parameters
		----------
		value : scalar, list, ndarray, or pandas type
		
		Returns
		-------
		string describing the common type of the input data.
		Results can include:
		
		- string
		- unicode
		- bytes
		- floating
		- integer
		- mixed-integer
		- mixed-integer-float
		- complex
		- categorical
		- boolean
		- datetime64
		- datetime
		- date
		- timedelta64
		- timedelta
		- time
		- period
		- mixed
		
		Raises
		------
		TypeError if ndarray-like but cannot infer the dtype
		
		Notes
		-----
		- 'mixed' is the catchall for anything that is not otherwise
		  specialized
		- 'mixed-integer-float' are floats and integers
		- 'mixed-integer' are integers mixed with non-integers
		
		Examples
		--------
		>>> infer_dtype(['foo', 'bar'])
		'string'
		
		>>> infer_dtype([b'foo', b'bar'])
		'bytes'
		
		>>> infer_dtype([1, 2, 3])
		'integer'
		
		>>> infer_dtype([1, 2, 3.5])
		'mixed-integer-float'
		
		>>> infer_dtype([1.0, 2.0, 3.5])
		'floating'
		
		>>> infer_dtype(['a', 1])
		'mixed-integer'
		
		>>> infer_dtype([True, False])
		'boolean'
		
		>>> infer_dtype([True, False, np.nan])
		'mixed'
		
		>>> infer_dtype([pd.Timestamp('20130101')])
		'datetime'
		
		>>> infer_dtype([datetime.date(2013, 1, 1)])
		'date'
		
		>>> infer_dtype([np.datetime64('2013-01-01')])
		'datetime64'
		
		>>> infer_dtype([datetime.timedelta(0, 1, 1)])
		'timedelta'
		
		>>> infer_dtype(pd.Series(list('aabc')).astype('category'))
		'categorical'
	**/
	static public function infer_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var invalid_name_doc : Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function lmap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return the maximum size of elements in a 1-dim string array 
	**/
	static public function max_len_string_array(arr:Dynamic):Dynamic;
	static public var precision_loss_doc : Dynamic;
	/**
		Read Stata file into DataFrame
		
		Parameters
		----------
		filepath_or_buffer : string or file-like object
		    Path to .dta file or object implementing a binary read() functions
		convert_dates : boolean, defaults to True
		    Convert date variables to DataFrame time values
		convert_categoricals : boolean, defaults to True
		    Read value labels and convert columns to Categorical/Factor variables
		encoding : string, None or encoding
		    Encoding used to parse the files. None defaults to latin-1.
		index : identifier of index column
		    identifier of column that should be used as index of the DataFrame
		convert_missing : boolean, defaults to False
		    Flag indicating whether to convert missing values to their Stata
		    representations.  If False, missing values are replaced with nans.
		    If True, columns containing missing values are returned with
		    object data types and missing values are represented by
		    StataMissingValue objects.
		preserve_dtypes : boolean, defaults to True
		    Preserve Stata datatypes. If False, numeric data are upcast to pandas
		    default types for foreign data (float64 or int64)
		columns : list or None
		    Columns to retain.  Columns will be returned in the given order.  None
		    returns all columns
		order_categoricals : boolean, defaults to True
		    Flag indicating whether converted categorical data are ordered.
		chunksize : int, default None
		    Return StataReader object for iterations, returns chunks with
		    given number of lines
		iterator : boolean, default False
		    Return StataReader object
		
		Returns
		-------
		DataFrame or StataReader
		
		Examples
		--------
		Read a Stata dta file:
		
		>>> df = pandas.read_stata('filename.dta')
		
		Read a Stata dta file in 10,000 line chunks:
		
		>>> itr = pandas.read_stata('filename.dta', chunksize=10000)
		>>> for chunk in itr:
		>>>     do_something(chunk)
	**/
	static public function read_stata(filepath_or_buffer:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?encoding:Dynamic, ?index:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
	static public var stata_epoch : Dynamic;
	static public var string_types : Dynamic;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : integer, float, string, datetime, list, tuple, 1-d array, Series
		
		    .. versionadded: 0.18.1
		
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
		
		    .. versionadded: 0.20.0
		
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
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Convert argument to timedelta
		
		Parameters
		----------
		arg : string, timedelta, list, tuple, 1-d array, or Series
		unit : unit of the arg (D,h,m,s,ms,us,ns) denote the unit, which is an
		    integer/float number
		box : boolean, default True
		    - If True returns a Timedelta/TimedeltaIndex of the results
		    - if False returns a np.timedelta64 or ndarray of values of dtype
		      timedelta64[ns]
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		
		Returns
		-------
		ret : timedelta64/arrays of timedelta64 if parsing succeeded
		
		Examples
		--------
		
		Parsing a single string to a Timedelta:
		
		>>> pd.to_timedelta('1 days 06:05:01.00003')
		Timedelta('1 days 06:05:01.000030')
		>>> pd.to_timedelta('15.5us')
		Timedelta('0 days 00:00:00.000015')
		
		Parsing a list or array of strings:
		
		>>> pd.to_timedelta(['1 days 06:05:01.00003', '15.5us', 'nan'])
		TimedeltaIndex(['1 days 06:05:01.000030', '0 days 00:00:00.000015', NaT],
		               dtype='timedelta64[ns]', freq=None)
		
		Converting numbers by specifying the `unit` keyword argument:
		
		>>> pd.to_timedelta(np.arange(5), unit='s')
		TimedeltaIndex(['00:00:00', '00:00:01', '00:00:02',
		                '00:00:03', '00:00:04'],
		               dtype='timedelta64[ns]', freq=None)
		>>> pd.to_timedelta(np.arange(5), unit='d')
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
	static public var value_label_mismatch_doc : Dynamic;
}