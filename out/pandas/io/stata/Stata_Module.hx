/* This file is generated, do not edit! */
package pandas.io.stata;
@:pythonImport("pandas.io.stata") extern class Stata_Module {
	static public var NaT : Dynamic;
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
		are checked for violations of the value restrictions and
		upcast if needed.  int64 data is not usable in Stata, and so it is
		downcast to int32 whenever the value are in the int32 range, and
		sidecast to float64 when larger than this range.  If the int64 values
		are outside of the range of those perfectly representable as float64 values,
		a warning is raised.
		
		bool columns are cast to int8.  uint colums are converted to int of the same
		size if there is no loss in precision, other wise are upcast to a larger
		type.  uint64 is currently not supported since it is concerted to object in
		a DataFrame.
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
	static public var _iterator_params : Dynamic;
	static public function _maybe_convert_to_int_keys(convert_dates:Dynamic, varlist:Dynamic):Dynamic;
	static public function _open_file_binary_write(fname:Dynamic, encoding:Dynamic):Dynamic;
	/**
		Takes a char string and pads it wih null bytes until it's length chars
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
	static public function _stata_elapsed_date_to_datetime_vec(dates:Dynamic, fmt:Dynamic):Dynamic;
	static public var _stata_reader_doc : Dynamic;
	static public var _statafile_processing_params1 : Dynamic;
	static public var _statafile_processing_params2 : Dynamic;
	static public var _version_error : Dynamic;
	static public var excessive_string_length_error : Dynamic;
	/**
		If the filepath_or_buffer is a url, translate and return the buffer
		passthru otherwise.
		
		Parameters
		----------
		filepath_or_buffer : a url, filepath, or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		
		Returns
		-------
		a filepath_or_buffer, the encoding, the compression
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
	/**
		we are coercing to an ndarray here
	**/
	static public function infer_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var invalid_name_doc : Dynamic;
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
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lzip(args:Dynamic, kwargs:Dynamic):Dynamic;
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
		    Encoding used to parse the files. Note that Stata doesn't
		    support unicode. None defaults to iso-8859-1.
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
		>> df = pandas.read_stata('filename.dta')
		
		Read a Stata dta file in 10,000 line chunks:
		>> itr = pandas.read_stata('filename.dta', chunksize=10000)
		>> for chunk in itr:
		>>     do_something(chunk)
	**/
	static public function read_stata(filepath_or_buffer:Dynamic, ?convert_dates:Dynamic, ?convert_categoricals:Dynamic, ?encoding:Dynamic, ?index:Dynamic, ?convert_missing:Dynamic, ?preserve_dtypes:Dynamic, ?columns:Dynamic, ?order_categoricals:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
	static public var stata_epoch : Dynamic;
	static public var string_types : Dynamic;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : string, datetime, array of strings (with possible NAs)
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		dayfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    If True, parses dates with the day first, eg 10/11/12 is parsed as 2012-11-10.
		    Warning: dayfirst=True is not strict, but will prefer to parse
		    with day first (this is a known bug, based on dateutil behavior).
		yearfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    - If True parses dates with the year first, eg 10/11/12 is parsed as 2010-11-12.
		    - If both dayfirst and yearfirst are True, yearfirst is preceded (same as dateutil).
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
	/**
		Convert argument to timedelta
		
		Parameters
		----------
		arg : string, timedelta, array of strings (with possible NAs)
		unit : unit of the arg (D,h,m,s,ms,us,ns) denote the unit, which is an integer/float number
		box : boolean, default True
		    - If True returns a Timedelta/TimedeltaIndex of the results
		    - if False returns a np.timedelta64 or ndarray of values of dtype timedelta64[ns]
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		
		Returns
		-------
		ret : timedelta64/arrays of timedelta64 if parsing succeeded
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic, ?coerce:Dynamic):Dynamic;
	static public var value_label_mismatch_doc : Dynamic;
}