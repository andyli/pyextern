/* This file is generated, do not edit! */
package pandas._libs.tslibs.parsing;
@:pythonImport("pandas._libs.tslibs.parsing") extern class Parsing_Module {
	static public var DEFAULTPARSER : Dynamic;
	static public var MONTH_NUMBERS : Dynamic;
	static public var NaT : Dynamic;
	static public function _DATEUTIL_LEXER_SPLIT(s:Dynamic):Dynamic;
	static public var _DEFAULT_DATETIME : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _does_string_look_like_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Does format match the iso8601 set that can be handled by the C parser?
		Generally of form YYYY-MM-DDTHH:MM:SS - date separator can be different
		but must be consistent.  Leading 0s in dates and times are optional.
	**/
	static public function _format_is_iso(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _get_option : Dynamic;
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
	static public function _guess_datetime_format(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function du_parse(timestr:Dynamic, ?parserinfo:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Defer import of get_option to break an import cycle that caused
		significant performance degradation in Period construction. See
		GH#24118 for details
	**/
	static public function get_option(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nat_strings : Dynamic;
	/**
		parse datetime string, only returns datetime.
		Also cares special handling matching time patterns.
		
		Returns
		-------
		datetime
	**/
	static public function parse_datetime_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function parse_time_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_date_and_time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_dates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_datetime_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_year_month_day(args:haxe.extern.Rest<Dynamic>):Dynamic;
}