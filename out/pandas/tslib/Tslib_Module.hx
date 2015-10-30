/* This file is generated, do not edit! */
package pandas.tslib;
@:pythonImport("pandas.tslib") extern class Tslib_Module {
	static public var DEFAULTPARSER : Dynamic;
	static public var IGNORECASE : Dynamic;
	static public var NaT : Dynamic;
	static public var UTC : Dynamic;
	static public var _CACHE_MAX_SIZE : Dynamic;
	static public var _DEFAULT_DATETIME : Dynamic;
	static public var _MONTHS : Dynamic;
	static public var _MONTH_ALIASES : Dynamic;
	static public var _MONTH_NUMBERS : Dynamic;
	static public var _TimeRE_cache : Dynamic;
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public function __nat_unpickle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _cache_lock : Dynamic;
	static public function _dateutil_gettz(?name:Dynamic):Dynamic;
	static public function _delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _does_string_look_like_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return starting month of given freq, default is December.
		
		Example
		-------
		>>> _get_rule_month('D')
		'DEC'
		
		>>> _get_rule_month('A-JAN')
		'JAN'
	**/
	static public function _get_rule_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_utcoffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _getlang(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _implemented_methods : Dynamic;
	/**
		Take a datetime/Timestamp in UTC and localizes to timezone tz.
	**/
	static public function _localize_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _make_error_func(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _make_nan_func(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _make_nat_func(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _maybe_method : Dynamic;
	static public var _maybe_method_name : Dynamic;
	static public var _method_name : Dynamic;
	static public var _nan_methods : Dynamic;
	static public var _nat_methods : Dynamic;
	static public var _nat_strings : Dynamic;
	/**
		Python interface for cache function to facilitate testing.
	**/
	static public function _p_tz_cache_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _regex_cache : Dynamic;
	/**
		allocate_lock() -> lock object
		(allocate() is an obsolete synonym)
		
		Create a new lock object.  See help(LockType) for information about locks.
	**/
	static public function _thread_allocate_lock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _unbox_utcoffsets(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _zero_time : Dynamic;
	static public function apply_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		values : ndarray of string-like objects
		fmt : string-like regex
		exact : matches must be exact if True, search if False
		coerce : if invalid values found, coerce to NaT
	**/
	static public function array_strptime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function array_to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert an ndarray to an array of ints that are timedeltas
		force conversion if coerce = True,
		else will raise if cannot convert 
	**/
	static public function array_to_timedelta64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Datetime as int64 representation to a structured array of fields
	**/
	static public function build_field_sarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	/**
		return a casting of the unit represented to nanoseconds
		round the fractional part of a float to our precision, p 
	**/
	static public function cast_from_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function cast_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var compat_NaT : Dynamic;
	static public function convert_str_to_tsobject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function convert_to_timedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function date_normalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dates_normalized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function datetime_to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lifted from dateutil to get resolution
	**/
	static public function dateutil_parse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var dst_cache : Dynamic;
	static public var field : Dynamic;
	static public var fields : Dynamic;
	/**
		return a np object array of the string formatted values
		
		Parameters
		----------
		values : a 1-d i8 array
		tz : the timezone (or None)
		format : optional, default is None
		      a strftime capable string
		na_rep : optional, default is None
		      a nat format
	**/
	static public function format_array_from_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based datetime index, extract the year, month, etc.,
		field and return an array of these values.
	**/
	static public function get_date_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an int64-based datetime index return array of indicators
		of whether timestamps are at the start/end of the month/quarter/year
		(defined by frequency).
	**/
	static public function get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Datetime as int64 representation to a structured array of fields
	**/
	static public function get_time_micros(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_timezone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_value_box(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var have_pytz : Dynamic;
	/**
		Inverse of pydt_to_i8
	**/
	static public function i8_to_pydt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	static public function ints_to_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ints_to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_platform_windows():Dynamic;
	static public function is_timestamp_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isleapyear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		replacement for six's iteritems for Python2/3 compat
		uses 'iteritems' if available and otherwise uses 'items'.
		
		Passes kwargs to method.
	**/
	static public function iteritems(obj:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		(Maybe) Construct a timezone object from a string. If tz is a string, use it to construct a timezone object.
		Otherwise, just return tz.
	**/
	static public function maybe_get_tz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function monthrange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var np_NaT : Dynamic;
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
	static public function parse_date(timestr:Dynamic, ?parserinfo:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		parse datetime string, only returns datetime.
		Also cares special handling matching time patterns.
		
		Returns
		-------
		datetime
	**/
	static public function parse_datetime_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parse datetime string, only returns datetime
		
		Returns
		-------
		datetime
	**/
	static public function parse_datetime_string_with_reso(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Shortcut to parse str array for quicker DatetimeIndex construction
	**/
	static public function parse_str_array_to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var prop : Dynamic;
	/**
		Convert to int64 representation compatible with numpy datetime64; converts
		to UTC
	**/
	static public function pydt_to_i8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compile a regular expression pattern, returning a pattern object.
	**/
	static public function re_compile(pattern:Dynamic, ?flags:Dynamic):Dynamic;
	/**
		Escape all the characters in pattern except ASCII letters, numbers and '_'.
	**/
	static public function re_escape(pattern:Dynamic):Dynamic;
	/**
		Given an int64-based datetime index, shift all elements
		specified number of months using DateOffset semantics
		
		day: {None, 'start', 'end'}
		   * None: day of month
		   * 'start' 1st day of month
		   * 'end' last day of month
	**/
	static public function shift_months(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
	static public function tot_seconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function tz_convert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function tz_convert_single(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Localize tzinfo-naive DateRange to given time zone (using pytz). If
		there are ambiguities in the values, raise AmbiguousTimeError.
		
		Returns
		-------
		localized : DatetimeIndex
	**/
	static public function tz_localize_to_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function unique_deltas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var version_info : Dynamic;
}