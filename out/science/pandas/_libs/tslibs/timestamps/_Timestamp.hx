/* This file is generated, do not edit! */
package pandas._libs.tslibs.timestamps;
@:pythonImport("pandas._libs.tslibs.timestamps", "_Timestamp") extern class _Timestamp {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		__reduce__() -> (cls, state)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __reduce_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __setstate_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public var _date_repr : Dynamic;
	public var _freq : Dynamic;
	public var _repr_base : Dynamic;
	public function _set_freq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _short_repr : Dynamic;
	public var _time_repr : Dynamic;
	/**
		Return numpy datetime64 format in nanoseconds.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14, 15)
		>>> ts.asm8
		numpy.datetime64('2020-03-14T15:00:00.000000000')
	**/
	public var asm8 : Dynamic;
	/**
		tz -> convert to local time in new timezone tz
	**/
	public function astimezone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		date, time -> datetime with same date and time fields
	**/
	public function combine(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		locale : str, default None (English locale)
		    Locale determining the language in which to return the day name.
		
		Returns
		-------
		str
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		>>> ts.day_name()
		'Saturday'
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.day_name()
		nan
	**/
	public function day_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return day of the week.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.day_of_week
		5
	**/
	public var day_of_week : Dynamic;
	/**
		Return the day of the year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.day_of_year
		74
	**/
	public var day_of_year : Dynamic;
	/**
		Return day of the week.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.day_of_week
		5
	**/
	public var dayofweek : Dynamic;
	/**
		Return the day of the year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.day_of_year
		74
	**/
	public var dayofyear : Dynamic;
	/**
		Return the number of days in the month.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.days_in_month
		31
	**/
	public var days_in_month : Dynamic;
	/**
		Return self.tzinfo.dst(self).
	**/
	public function dst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var fold : Dynamic;
	public var freq : Dynamic;
	/**
		int, int, int -> Construct a date from the ISO year, week number and weekday.
		
		This is the inverse of the date.isocalendar() function
	**/
	public function fromisocalendar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		string -> datetime from datetime.isoformat() output
	**/
	public function fromisoformat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int -> date corresponding to a proleptic Gregorian ordinal.
	**/
	public function fromordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		timestamp[, tz] -> tz's local time from POSIX timestamp.
	**/
	public function fromtimestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var hour : Dynamic;
	/**
		Return True if year is a leap year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.is_leap_year
		True
	**/
	public var is_leap_year : Dynamic;
	/**
		Return True if date is last day of month.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.is_month_end
		False
		
		>>> ts = pd.Timestamp(2020, 12, 31)
		>>> ts.is_month_end
		True
	**/
	public var is_month_end : Dynamic;
	/**
		Return True if date is first day of month.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.is_month_start
		False
		
		>>> ts = pd.Timestamp(2020, 1, 1)
		>>> ts.is_month_start
		True
	**/
	public var is_month_start : Dynamic;
	/**
		Return True if date is last day of the quarter.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.is_quarter_end
		False
		
		>>> ts = pd.Timestamp(2020, 3, 31)
		>>> ts.is_quarter_end
		True
	**/
	public var is_quarter_end : Dynamic;
	/**
		Return True if date is first day of the quarter.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.is_quarter_start
		False
		
		>>> ts = pd.Timestamp(2020, 4, 1)
		>>> ts.is_quarter_start
		True
	**/
	public var is_quarter_start : Dynamic;
	/**
		Return True if date is last day of the year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.is_year_end
		False
		
		>>> ts = pd.Timestamp(2020, 12, 31)
		>>> ts.is_year_end
		True
	**/
	public var is_year_end : Dynamic;
	/**
		Return True if date is first day of the year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.is_year_start
		False
		
		>>> ts = pd.Timestamp(2020, 1, 1)
		>>> ts.is_year_start
		True
	**/
	public var is_year_start : Dynamic;
	/**
		Return a 3-tuple containing ISO year, week number, and weekday.
	**/
	public function isocalendar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the time formatted according to ISO 8610.
		
		The full format looks like 'YYYY-MM-DD HH:MM:SS.mmmmmmnnn'.
		By default, the fractional part is omitted if self.microsecond == 0
		and self.nanosecond == 0.
		
		If self.tzinfo is not None, the UTC offset is also attached, giving
		giving a full format of 'YYYY-MM-DD HH:MM:SS.mmmmmmnnn+HH:MM'.
		
		Parameters
		----------
		sep : str, default 'T'
		    String used as the separator between the date and time.
		
		timespec : str, default 'auto'
		    Specifies the number of additional terms of the time to include.
		    The valid values are 'auto', 'hours', 'minutes', 'seconds',
		    'milliseconds', 'microseconds', and 'nanoseconds'.
		
		Returns
		-------
		str
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		>>> ts.isoformat()
		'2020-03-14T15:32:52.192548651'
		>>> ts.isoformat(timespec='microseconds')
		'2020-03-14T15:32:52.192548'
	**/
	public function isoformat(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		locale : str, default None (English locale)
		    Locale determining the language in which to return the month name.
		
		Returns
		-------
		str
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		>>> ts.month_name()
		'March'
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.month_name()
		nan
	**/
	public function month_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var nanosecond : Dynamic;
	/**
		Normalize Timestamp to midnight, preserving tz information.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14, 15, 30)
		>>> ts.normalize()
		Timestamp('2020-03-14 00:00:00')
	**/
	public function normalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns new datetime object representing current time local to tz.
		
		  tz
		    Timezone object.
		
		If no tz is specified, uses local timezone.
	**/
	static public function now(?tz:Dynamic):Dynamic;
	/**
		Return the quarter of the year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.quarter
		1
	**/
	public var quarter : Dynamic;
	/**
		Return datetime with new specified fields.
	**/
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var resolution : Dynamic;
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
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548')
		>>> ts.timestamp()
		1584199972.192548
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
		Return a numpy.datetime64 object with 'ns' precision.
	**/
	public function to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the Timestamp to a NumPy datetime64.
		
		.. versionadded:: 0.25.0
		
		This is an alias method for `Timestamp.to_datetime64()`. The dtype and
		copy parameters are available here only for compatibility. Their values
		will not affect the return value.
		
		Returns
		-------
		numpy.datetime64
		
		See Also
		--------
		DatetimeIndex.to_numpy : Similar method for DatetimeIndex.
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		>>> ts.to_numpy()
		numpy.datetime64('2020-03-14T15:32:52.192548651')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.to_numpy()
		numpy.datetime64('NaT')
	**/
	public function to_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an period of which this timestamp is an observation.
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		>>> # Year end frequency
		>>> ts.to_period(freq='Y')
		Period('2020', 'A-DEC')
		
		>>> # Month end frequency
		>>> ts.to_period(freq='M')
		Period('2020-03', 'M')
		
		>>> # Weekly frequency
		>>> ts.to_period(freq='W')
		Period('2020-03-09/2020-03-15', 'W-SUN')
		
		>>> # Quarter end frequency
		>>> ts.to_period(freq='Q')
		Period('2020Q1', 'Q-DEC')
	**/
	public function to_period(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert a Timestamp object to a native Python datetime object.
		
		If warn=True, issue a warning if nanoseconds is nonzero.
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548')
		>>> ts.to_pydatetime()
		datetime.datetime(2020, 3, 14, 15, 32, 52, 192548)
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.to_pydatetime()
		NaT
	**/
	public function to_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Current date or datetime:  same as self.__class__.fromtimestamp(time.time()).
	**/
	public function today(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return proleptic Gregorian ordinal.  January 1 of year 1 is day 1.
	**/
	public function toordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var tzinfo : Dynamic;
	/**
		Return self.tzinfo.tzname(self).
	**/
	public function tzname(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Construct a naive UTC datetime from a POSIX timestamp.
	**/
	public function utcfromtimestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new datetime representing UTC day and time.
	**/
	public function utcnow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self.tzinfo.utcoffset(self).
	**/
	public function utcoffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return UTC time tuple, compatible with time.localtime().
	**/
	public function utctimetuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var value : Dynamic;
	/**
		Return the week number of the year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.week
		11
	**/
	public var week : Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 0 ... Sunday == 6
	**/
	public function weekday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var year : Dynamic;
}