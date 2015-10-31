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
		Assert that datetimes *d1* and *d2* are within *epsilon* microseconds.
	**/
	static public function _close_to_dt(d1:Dynamic, d2:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Assert that float ordinals *o1* and *o2* are within *epsilon*
		microseconds.
	**/
	static public function _close_to_num(o1:Dynamic, o2:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Parse a string in one of the supported formats, using the `parserinfo`
		parameters.
		
		:param timestr:
		    A string containing a date/time stamp.
		
		:param parserinfo:
		    A :class:`parserinfo` object containing parameters for the parser.
		    If `None`, the default arguments to the `parserinfo` constructor are
		    used.
		
		The `**kwargs` parameter takes the following keyword arguments:
		
		:param default:
		    The default datetime object, if this is a datetime object and not
		    `None`, elements specified in `timestr` replace elements in the
		    default object.
		
		:param ignoretz:
		    Whether or not to ignore the time zone (boolean).
		
		:param tzinfos:
		    A time zone, to be applied to the date, if `ignoretz` is `True`.
		    This can be either a subclass of `tzinfo`, a time zone string or an
		    integer offset.
		
		:param dayfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the day (`True`) or month (`False`). If
		    `yearfirst` is set to `True`, this distinguishes between YDM and
		    YMD. If set to `None`, this value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to `False`).
		
		:param yearfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the year. If `True`, the first number is taken to
		    be the year, otherwise the last number is taken to be the year. If
		    this is set to `None`, the value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to `False`).
		
		:param fuzzy:
		    Whether to allow fuzzy parsing, allowing for string like "Today is
		    January 1, 2047 at 8:21:00AM".
		
		:param fuzzy_with_tokens:
		    If `True`, `fuzzy` is automatically set to True, and the parser will
		    return a tuple where the first element is the parsed
		    `datetime.datetime` datetimestamp and the second element is a tuple
		    containing the portions of the string which were ignored, e.g.
		    "Today is January 1, 2047 at 8:21:00AM" should return
		    `(datetime.datetime(2011, 1, 1, 8, 21), (u'Today is ', u' ', u'at '))`
	**/
	static public function _dateutil_parser_parse_np_vectorized(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Convert Gregorian float of the date, preserving hours, minutes,
		seconds and microseconds.  Return value is a :class:`datetime`.
		
		The input date `x` is a float in ordinal days at UTC, and the output will
		be the specified :class:`datetime` object corresponding to that time in
		timezone `tz`, or if `tz` is `None`, in the timezone specified in
		`rcParams['timezone']`.
	**/
	static public function _from_ordinalf(x:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Convert Gregorian float of the date, preserving hours, minutes,
		seconds and microseconds.  Return value is a :class:`datetime`.
		
		The input date `x` is a float in ordinal days at UTC, and the output will
		be the specified :class:`datetime` object corresponding to that time in
		timezone `tz`, or if `tz` is `None`, in the timezone specified in
		`rcParams['timezone']`.
	**/
	static public function _from_ordinalf_np_vectorized(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Retrieve the preferred timeszone from the rcParams dictionary.
	**/
	static public function _get_rc_timezone():Dynamic;
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
	static public function _to_ordinalf_np_vectorized(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Total seconds in the duration.
	**/
	static public function _total_seconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		*d* is either a :class:`datetime` instance or a sequence of datetimes.
		
		Return value is a floating point number (or sequence of floats)
		which gives the number of days (fraction part represents hours,
		minutes, seconds) since 0001-01-01 00:00:00 UTC, *plus* *one*.
		The addition of one here is a historical artifact.  Also, note
		that the Gregorian calendar is assumed; this is not universal
		practice.  For details, see the module docstring.
	**/
	static public function date2num(d:Dynamic):Dynamic;
	/**
		Create a date locator with *numticks* (approx) and a date formatter
		for *span* in days.  Return value is (locator, formatter).
	**/
	static public function date_ticker_factory(span:Dynamic, ?tz:Dynamic, ?numticks:Dynamic):Dynamic;
	/**
		Convert a date string to a datenum using
		:func:`dateutil.parser.parse`.
		
		Parameters
		----------
		d : string or sequence of strings
		    The dates to convert.
		
		default : datetime instance
		    The default date to use when fields are missing in `d`.
	**/
	static public function datestr2num(d:Dynamic, ?_default:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return a date range as float Gregorian ordinals.  *dstart* and
		*dend* are :class:`datetime` instances.  *delta* is a
		:class:`datetime.timedelta` instance.
	**/
	static public function drange(dstart:Dynamic, dend:Dynamic, delta:Dynamic):Dynamic;
	/**
		Convert an epoch or sequence of epochs to the new date format,
		that is days since 0001.
	**/
	static public function epoch2num(e:Dynamic):Dynamic;
	/**
		Return hours as days.
	**/
	static public function hours(h:Dynamic):Dynamic;
	/**
		Convert a Julian date (or sequence) to a matplotlib date (or sequence).
	**/
	static public function julian2num(j:Dynamic):Dynamic;
	/**
		Return minutes as days.
	**/
	static public function minutes(m:Dynamic):Dynamic;
	/**
		Convert mx :class:`datetime` instance (or sequence of mx
		instances) to the new date format.
	**/
	static public function mx2num(mxdates:Dynamic):Dynamic;
	/**
		*x* is a float value which gives the number of days
		(fraction part represents hours, minutes, seconds) since
		0001-01-01 00:00:00 UTC *plus* *one*.
		The addition of one here is a historical artifact.  Also, note
		that the Gregorian calendar is assumed; this is not universal
		practice.  For details, see the module docstring.
		
		Return value is a :class:`datetime` instance in timezone *tz* (default to
		rcparams TZ value).
		
		If *x* is a sequence, a sequence of :class:`datetime` objects will
		be returned.
	**/
	static public function num2date(x:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Convert days since 0001 to epoch.  *d* can be a number or sequence.
	**/
	static public function num2epoch(d:Dynamic):Dynamic;
	/**
		Convert a matplotlib date (or sequence) to a Julian date (or sequence).
	**/
	static public function num2julian(n:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return seconds as days.
	**/
	static public function seconds(s:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Return weeks as days.
	**/
	static public function weeks(w:Dynamic):Dynamic;
}