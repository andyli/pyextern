/* This file is generated, do not edit! */
package pandas.core;
@:pythonImport("pandas.core.datetools") extern class Datetools {
	static public var DAYS : Dynamic;
	static public var MONTHS : Dynamic;
	static public var OLE_TIME_ZERO : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function bday(other:Dynamic):Dynamic;
	static public function bmonthBegin(other:Dynamic):Dynamic;
	static public function bmonthEnd(other:Dynamic):Dynamic;
	static public function bquarterEnd(other:Dynamic):Dynamic;
	static public function businessDay(other:Dynamic):Dynamic;
	static public function byearEnd(other:Dynamic):Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	static public function cbmonthBegin(other:Dynamic):Dynamic;
	static public function cbmonthEnd(other:Dynamic):Dynamic;
	static public function cday(other:Dynamic):Dynamic;
	static public function customBusinessDay(other:Dynamic):Dynamic;
	static public function customBusinessMonthBegin(other:Dynamic):Dynamic;
	static public function customBusinessMonthEnd(other:Dynamic):Dynamic;
	static public function day(other:Dynamic):Dynamic;
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
		Return DateOffset object associated with rule name
		
		Examples
		--------
		get_offset('EOM') --> BMonthEnd(1)
	**/
	static public function getOffset(name:Dynamic):Dynamic;
	/**
		Returns the base frequency alias, e.g., '5D' -> 'D'
	**/
	static public function get_base_alias(freqstr:Dynamic):Dynamic;
	/**
		Return frequency code of given frequency str.
		If input is not string, return input as it is.
		
		Example
		-------
		>>> get_freq('A')
		1000
		
		>>> get_freq('3A')
		1000
	**/
	static public function get_freq(freq:Dynamic):Dynamic;
	/**
		Return freq str or tuple to freq code and stride (mult)
		
		Parameters
		----------
		freqstr : str or tuple
		
		Returns
		-------
		return : tuple of base frequency code and stride (mult)
		
		Example
		-------
		>>> get_freq_code('3D')
		(6000, 3)
		
		>>> get_freq_code('D')
		(6000, 1)
		
		>>> get_freq_code(('D', 3))
		(6000, 3)
	**/
	static public function get_freq_code(freqstr:Dynamic):Dynamic;
	/**
		Return frequency code group of given frequency str or offset.
		
		Example
		-------
		>>> get_freq_group('W-MON')
		4000
		
		>>> get_freq_group('W-FRI')
		4000
	**/
	static public function get_freq_group(freq:Dynamic):Dynamic;
	/**
		Return the pre pandas 0.8.0 name for the date offset
	**/
	static public function get_legacy_offset_name(offset:Dynamic):Dynamic;
	/**
		Return DateOffset object associated with rule name
		
		Examples
		--------
		get_offset('EOM') --> BMonthEnd(1)
	**/
	static public function get_offset(name:Dynamic):Dynamic;
	/**
		Return rule name associated with a DateOffset object
		
		Examples
		--------
		get_offset_name(BMonthEnd(1)) --> 'EOM'
	**/
	static public function get_offset_name(offset:Dynamic):Dynamic;
	/**
		alias to closest period strings BQ->Q etc
	**/
	static public function get_period_alias(offset_str:Dynamic):Dynamic;
	/**
		Return the standardized frequency string
	**/
	static public function get_standard_freq(freq:Dynamic):Dynamic;
	/**
		Return frequency code group used for base of to_timestamp against
		frequency code.
		
		Example
		-------
		# Return day freq code against longer freq than day
		>>> get_to_timestamp_base(get_freq_code('D')[0])
		6000
		>>> get_to_timestamp_base(get_freq_code('W')[0])
		6000
		>>> get_to_timestamp_base(get_freq_code('M')[0])
		6000
		
		# Return second freq code against hour between second
		>>> get_to_timestamp_base(get_freq_code('H')[0])
		9000
		>>> get_to_timestamp_base(get_freq_code('S')[0])
		9000
	**/
	static public function get_to_timestamp_base(base:Dynamic):Dynamic;
	/**
		Infer the most likely frequency given the input index. If the frequency is
		uncertain, a warning will be printed.
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		        if passed a Series will use the values of the series (NOT THE INDEX)
		warn : boolean, default True
		
		Returns
		-------
		freq : string or None
		    None if no discernible frequency
		    TypeError if the index is not datetime-like
		    ValueError if there are less than three values.
	**/
	static public function infer_freq(index:Dynamic, ?warn:Dynamic):Dynamic;
	static public function isBMonthEnd(dt:Dynamic):Dynamic;
	static public function isBusinessDay(dt:Dynamic):Dynamic;
	static public function isMonthEnd(dt:Dynamic):Dynamic;
	/**
		Returns True if downsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string
		    Frequency converting from
		target : string
		    Frequency converting to
		
		Returns
		-------
		is_subperiod : boolean
	**/
	static public function is_subperiod(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Returns True if upsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string
		    Frequency converting from
		target : string
		    Frequency converting to
		
		Returns
		-------
		is_superperiod : boolean
	**/
	static public function is_superperiod(source:Dynamic, target:Dynamic):Dynamic;
	static public function monthEnd(other:Dynamic):Dynamic;
	static public var need_suffix : Dynamic;
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
	static public var opattern : Dynamic;
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
	static public function quarterEnd(other:Dynamic):Dynamic;
	static public function thisBMonthEnd(other:Dynamic):Dynamic;
	static public function thisBQuarterEnd(other:Dynamic):Dynamic;
	static public function thisMonthEnd(other:Dynamic):Dynamic;
	static public function thisQuarterEnd(other:Dynamic):Dynamic;
	static public function thisYearBegin(other:Dynamic):Dynamic;
	static public function thisYearEnd(other:Dynamic):Dynamic;
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
		Return DateOffset object from string representation or
		Timedelta object
		
		Examples
		--------
		>>> to_offset('5Min')
		Minute(5)
	**/
	static public function to_offset(freqstr:Dynamic):Dynamic;
	/**
		Compute unique values (not necessarily sorted) efficiently from input array
		of values
		
		Parameters
		----------
		values : array-like
		
		Returns
		-------
		uniques
	**/
	static public function unique(values:Dynamic):Dynamic;
	static public function week(other:Dynamic):Dynamic;
	static public function yearBegin(other:Dynamic):Dynamic;
	static public function yearEnd(other:Dynamic):Dynamic;
}