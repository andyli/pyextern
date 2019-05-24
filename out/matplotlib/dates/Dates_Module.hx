/* This file is generated, do not edit! */
package matplotlib.dates;
@:pythonImport("matplotlib.dates") extern class Dates_Module {
	static public var DAILY : Dynamic;
	static public var DAYS_PER_MONTH : Dynamic;
	static public var DAYS_PER_WEEK : Dynamic;
	static public var DAYS_PER_YEAR : Dynamic;
	static public var EPOCH_OFFSET : Dynamic;
	static public function FR(n:Dynamic):Dynamic;
	static public function FRIDAY(n:Dynamic):Dynamic;
	static public var HOURLY : Dynamic;
	static public var HOURS_PER_DAY : Dynamic;
	static public var JULIAN_OFFSET : Dynamic;
	static public var MICROSECONDLY : Dynamic;
	static public var MINUTELY : Dynamic;
	static public var MINUTES_PER_DAY : Dynamic;
	static public var MIN_PER_HOUR : Dynamic;
	static public function MO(n:Dynamic):Dynamic;
	static public function MONDAY(n:Dynamic):Dynamic;
	static public var MONTHLY : Dynamic;
	static public var MONTHS_PER_YEAR : Dynamic;
	static public var MUSECONDS_PER_DAY : Dynamic;
	static public function SA(n:Dynamic):Dynamic;
	static public function SATURDAY(n:Dynamic):Dynamic;
	static public var SECONDLY : Dynamic;
	static public var SEC_PER_DAY : Dynamic;
	static public var SEC_PER_HOUR : Dynamic;
	static public var SEC_PER_MIN : Dynamic;
	static public var SEC_PER_WEEK : Dynamic;
	static public function SU(n:Dynamic):Dynamic;
	static public function SUNDAY(n:Dynamic):Dynamic;
	static public function TH(n:Dynamic):Dynamic;
	static public function THURSDAY(n:Dynamic):Dynamic;
	static public function TU(n:Dynamic):Dynamic;
	static public function TUESDAY(n:Dynamic):Dynamic;
	static public var UTC : Dynamic;
	static public function WE(n:Dynamic):Dynamic;
	static public function WEDNESDAY(n:Dynamic):Dynamic;
	static public var WEEKDAYS : Dynamic;
	static public var WEEKLY : Dynamic;
	static public var YEARLY : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Parse a string in one of the supported formats, using the
		``parserinfo`` parameters.
		
		:param timestr:
		    A string containing a date/time stamp.
		
		:param parserinfo:
		    A :class:`parserinfo` object containing parameters for the parser.
		    If ``None``, the default arguments to the :class:`parserinfo`
		    constructor are used.
		
		The ``**kwargs`` parameter takes the following keyword arguments:
		
		:param default:
		    The default datetime object, if this is a datetime object and not
		    ``None``, elements specified in ``timestr`` replace elements in the
		    default object.
		
		:param ignoretz:
		    If set ``True``, time zones in parsed strings are ignored and a naive
		    :class:`datetime` object is returned.
		
		:param tzinfos:
		    Additional time zone names / aliases which may be present in the
		    string. This argument maps time zone names (and optionally offsets
		    from those time zones) to time zones. This parameter can be a
		    dictionary with timezone aliases mapping time zone names to time
		    zones or a function taking two parameters (``tzname`` and
		    ``tzoffset``) and returning a time zone.
		
		    The timezones to which the names are mapped can be an integer
		    offset from UTC in seconds or a :class:`tzinfo` object.
		
		    .. doctest::
		       :options: +NORMALIZE_WHITESPACE
		
		        >>> from dateutil.parser import parse
		        >>> from dateutil.tz import gettz
		        >>> tzinfos = {"BRST": -7200, "CST": gettz("America/Chicago")}
		        >>> parse("2012-01-19 17:21:00 BRST", tzinfos=tzinfos)
		        datetime.datetime(2012, 1, 19, 17, 21, tzinfo=tzoffset(u'BRST', -7200))
		        >>> parse("2012-01-19 17:21:00 CST", tzinfos=tzinfos)
		        datetime.datetime(2012, 1, 19, 17, 21,
		                          tzinfo=tzfile('/usr/share/zoneinfo/America/Chicago'))
		
		    This parameter is ignored if ``ignoretz`` is set.
		
		:param dayfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the day (``True``) or month (``False``). If
		    ``yearfirst`` is set to ``True``, this distinguishes between YDM and
		    YMD. If set to ``None``, this value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to ``False``).
		
		:param yearfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the year. If ``True``, the first number is taken to
		    be the year, otherwise the last number is taken to be the year. If
		    this is set to ``None``, the value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to ``False``).
		
		:param fuzzy:
		    Whether to allow fuzzy parsing, allowing for string like "Today is
		    January 1, 2047 at 8:21:00AM".
		
		:param fuzzy_with_tokens:
		    If ``True``, ``fuzzy`` is automatically set to True, and the parser
		    will return a tuple where the first element is the parsed
		    :class:`datetime.datetime` datetimestamp and the second element is
		    a tuple containing the portions of the string which were ignored:
		
		    .. doctest::
		
		        >>> from dateutil.parser import parse
		        >>> parse("Today is January 1, 2047 at 8:21:00AM", fuzzy_with_tokens=True)
		        (datetime.datetime(2047, 1, 1, 8, 21), (u'Today is ', u' ', u'at '))
		
		:return:
		    Returns a :class:`datetime.datetime` object or, if the
		    ``fuzzy_with_tokens`` option is ``True``, returns a tuple, the
		    first element being a :class:`datetime.datetime` object, the second
		    a tuple containing the fuzzy tokens.
		
		:raises ValueError:
		    Raised for invalid or unknown string format, if the provided
		    :class:`tzinfo` is not in a valid format, or if an invalid date
		    would be created.
		
		:raises OverflowError:
		    Raised if the parsed date exceeds the largest valid C integer on
		    your system.
	**/
	static public function _dateutil_parser_parse_np_vectorized(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert `numpy.datetime64` or an ndarray of those types to Gregorian
		date as UTC float.  Roundoff is via float64 precision.  Practically:
		microseconds for dates between 290301 BC, 294241 AD, milliseconds for
		larger dates (see `numpy.datetime64`).  Nanoseconds aren't possible
		because we do times compared to ``0001-01-01T00:00:00`` (plus one day).
	**/
	static public function _dt64_to_ordinalf(d:Dynamic):Dynamic;
	/**
		Convert Gregorian float of the date, preserving hours, minutes,
		seconds and microseconds.  Return value is a `.datetime`.
		
		The input date *x* is a float in ordinal days at UTC, and the output will
		be the specified `.datetime` object corresponding to that time in
		timezone *tz*, or if *tz* is ``None``, in the timezone specified in
		:rc:`timezone`.
	**/
	static public function _from_ordinalf(x:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Convert Gregorian float of the date, preserving hours, minutes,
		seconds and microseconds.  Return value is a `.datetime`.
		
		The input date *x* is a float in ordinal days at UTC, and the output will
		be the specified `.datetime` object corresponding to that time in
		timezone *tz*, or if *tz* is ``None``, in the timezone specified in
		:rc:`timezone`.
	**/
	static public function _from_ordinalf_np_vectorized(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrieve the preferred timezone from the rcParams dictionary.
	**/
	static public function _get_rc_timezone():Dynamic;
	static public var _log : Dynamic;
	static public function _ordinalf_to_timedelta(x:Dynamic):Dynamic;
	static public function _ordinalf_to_timedelta_np_vectorized(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert :mod:`datetime` or :mod:`date` to the Gregorian date as UTC float
		days, preserving hours, minutes, seconds and microseconds.  Return value
		is a :func:`float`.
	**/
	static public function _to_ordinalf(dt:Dynamic):Dynamic;
	/**
		Convert :mod:`datetime` or :mod:`date` to the Gregorian date as UTC float
		days, preserving hours, minutes, seconds and microseconds.  Return value
		is a :func:`float`.
	**/
	static public function _to_ordinalf_np_vectorized(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert datetime objects to Matplotlib dates.
		
		Parameters
		----------
		d : `datetime.datetime` or `numpy.datetime64` or sequences of these
		
		Returns
		-------
		float or sequence of floats
		    Number of days (fraction part represents hours, minutes, seconds, ms)
		    since 0001-01-01 00:00:00 UTC, plus one.
		
		Notes
		-----
		The addition of one here is a historical artifact. Also, note that the
		Gregorian calendar is assumed; this is not universal practice.
		For details see the module docstring.
	**/
	static public function date2num(d:Dynamic):Dynamic;
	/**
		Create a date locator with *numticks* (approx) and a date formatter
		for *span* in days.  Return value is (locator, formatter).
	**/
	static public function date_ticker_factory(span:Dynamic, ?tz:Dynamic, ?numticks:Dynamic):Dynamic;
	/**
		Convert a date string to a datenum using :func:`dateutil.parser.parse`.
		
		Parameters
		----------
		d : string or sequence of strings
		    The dates to convert.
		
		default : datetime instance, optional
		    The default date to use when fields are missing in *d*.
	**/
	static public function datestr2num(d:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Return a sequence of equally spaced Matplotlib dates.
		
		The dates start at *dstart* and reach up to, but not including *dend*.
		They are spaced by *delta*.
		
		Parameters
		----------
		dstart, dend : `~datetime.datetime`
		    The date limits.
		delta : `datetime.timedelta`
		    Spacing of the dates.
		
		Returns
		-------
		drange : `numpy.array`
		    A list floats representing Matplotlib dates.
	**/
	static public function drange(dstart:Dynamic, dend:Dynamic, delta:Dynamic):Dynamic;
	/**
		Convert an epoch or sequence of epochs to the new date format,
		that is days since 0001.
	**/
	static public function epoch2num(e:Dynamic):Dynamic;
	/**
		[*Deprecated*] Return hours as days.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function hours(h:Dynamic):Dynamic;
	/**
		Convert a Julian date (or sequence) to a Matplotlib date (or sequence).
		
		Parameters
		----------
		j : float or sequence of floats
		    Julian date(s)
		
		Returns
		-------
		float or sequence of floats
		    Matplotlib date(s)
	**/
	static public function julian2num(j:Dynamic):Dynamic;
	/**
		[*Deprecated*] Return minutes as days.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function minutes(m:Dynamic):Dynamic;
	/**
		Convert mx :class:`datetime` instance (or sequence of mx
		instances) to the new date format.
	**/
	static public function mx2num(mxdates:Dynamic):Dynamic;
	/**
		Convert Matplotlib dates to `~datetime.datetime` objects.
		
		Parameters
		----------
		x : float or sequence of floats
		    Number of days (fraction part represents hours, minutes, seconds)
		    since 0001-01-01 00:00:00 UTC, plus one.
		tz : string, optional
		    Timezone of *x* (defaults to rcparams ``timezone``).
		
		Returns
		-------
		`~datetime.datetime` or sequence of `~datetime.datetime`
		    Dates are returned in timezone *tz*.
		
		    If *x* is a sequence, a sequence of :class:`datetime` objects will
		    be returned.
		
		Notes
		-----
		The addition of one here is a historical artifact. Also, note that the
		Gregorian calendar is assumed; this is not universal practice.
		For details, see the module docstring.
	**/
	static public function num2date(x:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Convert days since 0001 to epoch.  *d* can be a number or sequence.
	**/
	static public function num2epoch(d:Dynamic):Dynamic;
	/**
		Convert a Matplotlib date (or sequence) to a Julian date (or sequence).
		
		Parameters
		----------
		n : float or sequence of floats
		    Matplotlib date(s)
		
		Returns
		-------
		float or sequence of floats
		    Julian date(s)
	**/
	static public function num2julian(n:Dynamic):Dynamic;
	/**
		Convert number of days to a `~datetime.timedelta` object.
		
		If *x* is a sequence, a sequence of `~datetime.timedelta` objects will
		be returned.
		
		Parameters
		----------
		x : float, sequence of floats
		    Number of days. The fraction part represents hours, minutes, seconds.
		
		Returns
		-------
		`datetime.timedelta` or list[`datetime.timedelta`]
	**/
	static public function num2timedelta(x:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	/**
		[*Deprecated*] Return seconds as days.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function seconds(s:Dynamic):Dynamic;
	/**
		[*Deprecated*] Return weeks as days.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function weeks(w:Dynamic):Dynamic;
}