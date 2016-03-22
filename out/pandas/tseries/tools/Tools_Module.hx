/* This file is generated, do not edit! */
package pandas.tseries.tools;
@:pythonImport("pandas.tseries.tools") extern class Tools_Module {
	static public var OLE_TIME_ZERO : Dynamic;
	static public function _DATEUTIL_LEXER_SPLIT(dt_str:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		try to parse the YYYYMMDD/%Y%m%d format, try to deal with NaT-like,
		    arg is a passed in as an object dtype, but could really be ints/strings
		    with nan-like/or floats (e.g. with nan)
		
		Parameters
		----------
		arg : passed value
		errors : 'raise','ignore','coerce'
	**/
	static public function _attempt_YYYYMMDD(arg:Dynamic, errors:Dynamic):Dynamic;
	/**
		Does format match the iso8601 set that can be handled by the C parser?
		Generally of form YYYY-MM-DDTHH:MM:SS - date separator can be different
		but must be consistent.  Leading 0s in dates and times are optional.
	**/
	static public function _format_is_iso(f:Dynamic):Dynamic;
	/**
		Guess the datetime format of a given datetime string.
		
		Parameters
		----------
		dt_str : string, datetime string to guess the format of
		dayfirst : boolean, default False
		    If True parses dates with the day first, eg 20/01/2005
		    Warning: dayfirst=True is not strict, but will prefer to parse
		    with day first (this is a known bug).
		dt_str_parse : function, defaults to `compat.parse_date` (dateutil)
		    This function should take in a datetime string and return
		    a `datetime.datetime` guess that the datetime string represents
		dt_str_split : function, defaults to `_DATEUTIL_LEXER_SPLIT` (dateutil)
		    This function should take in a datetime string and return
		    a list of strings, the guess of the various specific parts
		    e.g. '2011/12/30' -> ['2011', '/', '12', '/', '30']
		
		Returns
		-------
		ret : datetime format string (for `strftime` or `strptime`)
	**/
	static public function _guess_datetime_format(dt_str:Dynamic, ?dayfirst:Dynamic, ?dt_str_parse:Dynamic, ?dt_str_split:Dynamic):Dynamic;
	static public function _guess_datetime_format_for_array(arr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _guess_time_format_for_array(arr:Dynamic):Dynamic;
	static public function _infer_tzinfo(start:Dynamic, end:Dynamic):Dynamic;
	static public function _lexer_split_from_str(dt_str:Dynamic):Dynamic;
	static public var _time_formats : Dynamic;
	/**
		Same as to_datetime, but accept freq for
		DatetimeIndex internal construction
	**/
	static public function _to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?freq:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of prefered argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		Returns date in YYYYMMDD format.
	**/
	static public function format(dt:Dynamic):Dynamic;
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		function for converting excel date to normal date format
	**/
	static public function ole2datetime(oledt:Dynamic):Dynamic;
	/**
		Try hard to parse datetime string, leveraging dateutil plus some extra
		goodies like quarter recognition.
		
		Parameters
		----------
		arg : compat.string_types
		freq : str or DateOffset, default None
		    Helps with interpreting time string if supplied
		dayfirst : bool, default None
		    If None uses default from print_config
		yearfirst : bool, default None
		    If None uses default from print_config
		
		Returns
		-------
		datetime, datetime/dateutil.parser._result, str
	**/
	static public function parse_time_string(arg:Dynamic, ?freq:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic):Dynamic;
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
	/**
		Parse time strings to time objects using fixed strptime formats ("%H:%M",
		"%H%M", "%I:%M%p", "%I%M%p", "%H:%M:%S", "%H%M%S", "%I:%M:%S%p",
		"%I%M%S%p")
		
		Use infer_time_format if all the strings are in the same format to speed
		up conversion.
		
		Parameters
		----------
		arg : string in time format, datetime.time, list, tuple, 1-d array,  Series
		format : str, default None
		    Format used to convert arg into a time object.  If None, fixed formats
		    are used.
		infer_time_format: bool, default False
		    Infer the time format based on the first non-NaN element.  If all
		    strings are in the same format, this will speed up conversion.
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as None
		    - If 'ignore', then invalid parsing will return the input
		
		Returns
		-------
		datetime.time
	**/
	static public function to_time(arg:Dynamic, ?format:Dynamic, ?infer_time_format:Dynamic, ?errors:Dynamic):Dynamic;
}