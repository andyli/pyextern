/* This file is generated, do not edit! */
package pandas._libs.tslibs.timestamps;
@:pythonImport("pandas._libs.tslibs.timestamps", "Timestamp") extern class Timestamp {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Formats self with strftime.
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	static public function __new__(cls:Dynamic, ?ts_input:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?unit:Dynamic, ?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?microsecond:Dynamic, ?nanosecond:Dynamic, ?tzinfo:Dynamic):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __reduce__():Dynamic;
	/**
		__reduce_ex__(proto) -> (cls, state)
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _date_attributes : Dynamic;
	public var _date_repr : Dynamic;
	public function _get_date_name_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns if the Timestamp has a time component
		in addition to the date part
	**/
	public function _has_time_component():Dynamic;
	public var _repr_base : Dynamic;
	public function _round(freq:Dynamic, mode:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	public var _short_repr : Dynamic;
	public var _time_repr : Dynamic;
	public var asm8 : Dynamic;
	/**
		Convert tz-aware Timestamp to another time zone.
		
		Parameters
		----------
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will be converted to.
		    None will remove timezone holding UTC time.
		
		Returns
		-------
		converted : Timestamp
		
		Raises
		------
		TypeError
		    If Timestamp is tz-naive.
	**/
	public function astimezone(tz:Dynamic):pandas.Timestamp;
	/**
		return a new Timestamp ceiled to this resolution
		
		Parameters
		----------
		freq : a freq string indicating the ceiling resolution
		ambiguous : bool, 'NaT', default 'raise'
		    - bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates)
		    - 'NaT' will return NaT for an ambiguous time
		    - 'raise' will raise an AmbiguousTimeError for an ambiguous time
		
		    .. versionadded:: 0.24.0
		nonexistent : 'shift_forward', 'shift_backward, 'NaT', timedelta,
		              default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times
		
		    .. versionadded:: 0.24.0
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function ceil(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	/**
		Timsetamp.combine(date, time)
		
		date, time -> datetime with same date and time fields
	**/
	static public function combine(date:Dynamic, time:Dynamic):Dynamic;
	/**
		Return ctime() style string.
	**/
	public function ctime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return date object with same year, month and day.
	**/
	public function date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var day : Dynamic;
	/**
		Return the day name of the Timestamp with specified locale.
		
		Parameters
		----------
		locale : string, default None (English locale)
		    locale determining the language in which to return the day name
		
		Returns
		-------
		day_name : string
		
		.. versionadded:: 0.23.0
	**/
	public function day_name(?locale:Dynamic):Dynamic;
	public var dayofweek : Dynamic;
	public var dayofyear : Dynamic;
	public var days_in_month : Dynamic;
	public var daysinmonth : Dynamic;
	/**
		Return self.tzinfo.dst(self).
	**/
	public function dst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return a new Timestamp floored to this resolution
		
		Parameters
		----------
		freq : a freq string indicating the flooring resolution
		ambiguous : bool, 'NaT', default 'raise'
		    - bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates)
		    - 'NaT' will return NaT for an ambiguous time
		    - 'raise' will raise an AmbiguousTimeError for an ambiguous time
		
		    .. versionadded:: 0.24.0
		nonexistent : 'shift_forward', 'shift_backward, 'NaT', timedelta,
		              default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times
		
		    .. versionadded:: 0.24.0
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function floor(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	public var fold : Dynamic;
	public var freq : Dynamic;
	public var freqstr : Dynamic;
	/**
		Timestamp.fromordinal(ordinal, freq=None, tz=None)
		
		passed an ordinal, translate and convert to a ts
		note: by definition there cannot be any tz info on the ordinal itself
		
		Parameters
		----------
		ordinal : int
		    date corresponding to a proleptic Gregorian ordinal
		freq : str, DateOffset
		    Offset which Timestamp will have
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will have.
	**/
	static public function fromordinal(ordinal:Dynamic, ?freq:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Timestamp.fromtimestamp(ts)
		
		timestamp[, tz] -> tz's local time from POSIX timestamp.
	**/
	static public function fromtimestamp(ts:Dynamic):Dynamic;
	public var hour : Dynamic;
	public var is_leap_year : Dynamic;
	public var is_month_end : Dynamic;
	public var is_month_start : Dynamic;
	public var is_quarter_end : Dynamic;
	public var is_quarter_start : Dynamic;
	public var is_year_end : Dynamic;
	public var is_year_start : Dynamic;
	/**
		Return a 3-tuple containing ISO year, week number, and weekday.
	**/
	public function isocalendar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isoformat(?sep:Dynamic):Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 1 ... Sunday == 7
	**/
	public function isoweekday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var max : Dynamic;
	public var microsecond : Dynamic;
	static public var min : Dynamic;
	public var minute : Dynamic;
	public var month : Dynamic;
	/**
		Return the month name of the Timestamp with specified locale.
		
		Parameters
		----------
		locale : string, default None (English locale)
		    locale determining the language in which to return the month name
		
		Returns
		-------
		month_name : string
		
		.. versionadded:: 0.23.0
	**/
	public function month_name(?locale:Dynamic):Dynamic;
	public var nanosecond : Dynamic;
	/**
		Normalize Timestamp to midnight, preserving
		tz information.
	**/
	public function normalize():Dynamic;
	/**
		Timestamp.now(tz=None)
		
		Returns new Timestamp object representing current time local to
		tz.
		
		Parameters
		----------
		tz : str or timezone object, default None
		    Timezone to localize to
	**/
	static public function now(?tz:Dynamic):Dynamic;
	public var quarter : Dynamic;
	/**
		implements datetime.replace, handles nanoseconds
		
		Parameters
		----------
		year : int, optional
		month : int, optional
		day : int, optional
		hour : int, optional
		minute : int, optional
		second : int, optional
		microsecond : int, optional
		nanosecond : int, optional
		tzinfo : tz-convertible, optional
		fold : int, optional, default is 0
		    added in 3.6, NotImplemented
		
		Returns
		-------
		Timestamp with fields replaced
	**/
	public function replace(?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?microsecond:Dynamic, ?nanosecond:Dynamic, ?tzinfo:Dynamic, ?fold:Dynamic):Dynamic;
	/**
		Return resolution describing the smallest difference between two
		times that can be represented by Timestamp object_state
	**/
	public var resolution : Dynamic;
	/**
		Round the Timestamp to the specified resolution
		
		Parameters
		----------
		freq : a freq string indicating the rounding resolution
		ambiguous : bool, 'NaT', default 'raise'
		    - bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates)
		    - 'NaT' will return NaT for an ambiguous time
		    - 'raise' will raise an AmbiguousTimeError for an ambiguous time
		
		    .. versionadded:: 0.24.0
		nonexistent : 'shift_forward', 'shift_backward, 'NaT', timedelta,
		              default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		a new Timestamp rounded to the given resolution of `freq`
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function round(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	public var second : Dynamic;
	/**
		format -> strftime() style string.
	**/
	public function strftime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		string, format -> new datetime parsed from a string (like time.strptime()).
	**/
	public function strptime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return time object with same time but with tzinfo=None.
	**/
	public function time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return POSIX timestamp as float.
	**/
	public function timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return time tuple, compatible with time.localtime().
	**/
	public function timetuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return time object with same time and tzinfo.
	**/
	public function timetz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a numpy.datetime64 object with 'ns' precision 
	**/
	public function to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert TimeStamp to a Julian Date.
		0 Julian date is noon January 1, 4713 BC.
	**/
	public function to_julian_date():Dynamic;
	/**
		Return an period of which this timestamp is an observation.
	**/
	public function to_period(?freq:Dynamic):Dynamic;
	/**
		Convert a Timestamp object to a native Python datetime object.
		
		If warn=True, issue a warning if nanoseconds is nonzero.
	**/
	public function to_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Timestamp.today(cls, tz=None)
		
		Return the current time in the local timezone.  This differs
		from datetime.today() in that it can be localized to a
		passed timezone.
		
		Parameters
		----------
		tz : str or timezone object, default None
		    Timezone to localize to
	**/
	static public function today(?tz:Dynamic):Dynamic;
	/**
		Return proleptic Gregorian ordinal.  January 1 of year 1 is day 1.
	**/
	public function toordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for tzinfo
	**/
	public var tz : Dynamic;
	/**
		Convert tz-aware Timestamp to another time zone.
		
		Parameters
		----------
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will be converted to.
		    None will remove timezone holding UTC time.
		
		Returns
		-------
		converted : Timestamp
		
		Raises
		------
		TypeError
		    If Timestamp is tz-naive.
	**/
	public function tz_convert(tz:Dynamic):pandas.Timestamp;
	/**
		Convert naive Timestamp to local time zone, or remove
		timezone from tz-aware Timestamp.
		
		Parameters
		----------
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will be converted to.
		    None will remove timezone holding local time.
		
		ambiguous : bool, 'NaT', default 'raise'
		    When clocks moved backward due to DST, ambiguous times may arise.
		    For example in Central European Time (UTC+01), when going from
		    03:00 DST to 02:00 non-DST, 02:30:00 local time occurs both at
		    00:30:00 UTC and at 01:30:00 UTC. In such a situation, the
		    `ambiguous` parameter dictates how ambiguous times should be
		    handled.
		
		    - bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates)
		    - 'NaT' will return NaT for an ambiguous time
		    - 'raise' will raise an AmbiguousTimeError for an ambiguous time
		
		nonexistent : 'shift_forward', 'shift_backward, 'NaT', timedelta,
		              default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times
		
		    .. versionadded:: 0.24.0
		
		errors : 'raise', 'coerce', default None
		    - 'raise' will raise a NonExistentTimeError if a timestamp is not
		       valid in the specified timezone (e.g. due to a transition from
		       or to DST time). Use ``nonexistent='raise'`` instead.
		    - 'coerce' will return NaT if the timestamp can not be converted
		      into the specified timezone. Use ``nonexistent='NaT'`` instead.
		
		      .. deprecated:: 0.24.0
		
		Returns
		-------
		localized : Timestamp
		
		Raises
		------
		TypeError
		    If the Timestamp is tz-aware and tz is not None.
	**/
	public function tz_localize(tz:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic, ?errors:Dynamic):pandas.Timestamp;
	public var tzinfo : Dynamic;
	/**
		Return self.tzinfo.tzname(self).
	**/
	public function tzname(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Timestamp.utcfromtimestamp(ts)
		
		Construct a naive UTC datetime from a POSIX timestamp.
	**/
	static public function utcfromtimestamp(ts:Dynamic):Dynamic;
	/**
		Timestamp.utcnow()
		
		Return a new Timestamp representing UTC day and time.
	**/
	static public function utcnow():Dynamic;
	/**
		Return self.tzinfo.utcoffset(self).
	**/
	public function utcoffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return UTC time tuple, compatible with time.localtime().
	**/
	public function utctimetuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var value : Dynamic;
	public var week : Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 0 ... Sunday == 6
	**/
	public function weekday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. deprecated:: 0.23.0
		    Use ``Timestamp.day_name()`` instead
	**/
	public var weekday_name : Dynamic;
	public var weekofyear : Dynamic;
	public var year : Dynamic;
}