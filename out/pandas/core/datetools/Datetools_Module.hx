/* This file is generated, do not edit! */
package pandas.core.datetools;
@:pythonImport("pandas.core.datetools") extern class Datetools_Module {
	static public var DAYS : Dynamic;
	static public var MONTHS : Dynamic;
	static public var OLE_TIME_ZERO : Dynamic;
	static public var RESO_DAY : Dynamic;
	static public var RESO_HR : Dynamic;
	static public var RESO_MIN : Dynamic;
	static public var RESO_MS : Dynamic;
	static public var RESO_NS : Dynamic;
	static public var RESO_SEC : Dynamic;
	static public var RESO_US : Dynamic;
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
		    Name of preferred argument in function
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
		Check whether the provided array or dtype is of the datetime64[ns] dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the datetime64[ns] dtype.
		
		Examples
		--------
		>>> is_datetime64_ns_dtype(str)
		False
		>>> is_datetime64_ns_dtype(int)
		False
		>>> is_datetime64_ns_dtype(np.datetime64)  # no unit
		False
		>>> is_datetime64_ns_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_ns_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_ns_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_ns_dtype(np.array([], dtype=np.datetime64))  # no unit
		False
		>>> is_datetime64_ns_dtype(np.array([],
		                           dtype="datetime64[ps]"))  # wrong unit
		False
		>>> is_datetime64_ns_dtype(pd.DatetimeIndex([1, 2, 3],
		                           dtype=np.datetime64))  # has 'ns' unit
		True
	**/
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check.
		
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
	**/
	static public function is_list_like(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a periodical array-like or PeriodIndex.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a periodical
		          array-like or PeriodIndex instance.
		
		Examples
		--------
		>>> is_period_arraylike([1, 2, 3])
		False
		>>> is_period_arraylike(pd.Index([1, 2, 3]))
		False
		>>> is_period_arraylike(pd.PeriodIndex(["2017-01-01"], freq="D"))
		True
	**/
	static public function is_period_arraylike(arr:Dynamic):Dynamic;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
		- instances of decimal.Decimal
		- Interval
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
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
	static public var prefix_mapping : Dynamic;
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
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object
		
		Parameters
		----------
		freq : str, tuple, datetime.timedelta, DateOffset or None
		
		Returns
		-------
		delta : DateOffset
		    None if freq is None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		pandas.DateOffset
		
		Examples
		--------
		>>> to_offset('5min')
		<5 * Minutes>
		
		>>> to_offset('1D1H')
		<25 * Hours>
		
		>>> to_offset(('W', 2))
		<2 * Weeks: weekday=6>
		
		>>> to_offset((2, 'B'))
		<2 * BusinessDays>
		
		>>> to_offset(datetime.timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(freq:Dynamic):pandas.DateOffset;
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
	/**
		Hash table-based unique. Uniques are returned in order
		of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique. Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(Series([pd.Timestamp('20160101'),
		...                   pd.Timestamp('20160101')]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101', tz='US/Eastern'),
		...                      pd.Timestamp('20160101', tz='US/Eastern')]))
		array([Timestamp('2016-01-01 00:00:00-0500', tz='US/Eastern')],
		      dtype=object)
		
		>>> pd.unique(pd.Index([pd.Timestamp('20160101', tz='US/Eastern'),
		...                     pd.Timestamp('20160101', tz='US/Eastern')]))
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		...           dtype='datetime64[ns, US/Eastern]', freq=None)
		
		>>> pd.unique(list('baabc'))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'),
		...                                 ordered=True)))
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		An array of tuples
		
		>>> pd.unique([('a', 'b'), ('b', 'a'), ('a', 'c'), ('b', 'a')])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
		
		See Also
		--------
		pandas.Index.unique
		pandas.Series.unique
	**/
	static public function unique(values:Dynamic):Dynamic;
	static public function week(other:Dynamic):Dynamic;
	static public function yearBegin(other:Dynamic):Dynamic;
	static public function yearEnd(other:Dynamic):Dynamic;
}