/* This file is generated, do not edit! */
package pandas._libs.tslibs.timestamps;
@:pythonImport("pandas._libs.tslibs.timestamps", "Timestamp") extern class Timestamp {
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
	static public var __dict__ : Dynamic;
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
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	static public function __new__(cls:Dynamic, ?ts_input:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?unit:Dynamic, ?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?microsecond:Dynamic, ?nanosecond:Dynamic, ?tzinfo:Dynamic, ?fold:Dynamic):Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _date_repr : Dynamic;
	public var _freq : Dynamic;
	public var _freqstr : Dynamic;
	public var _repr_base : Dynamic;
	public function _round(freq:Dynamic, mode:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
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
		Convert timezone-aware Timestamp to another time zone.
		
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
		
		Examples
		--------
		Create a timestamp object with UTC timezone:
		
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651', tz='UTC')
		>>> ts
		Timestamp('2020-03-14 15:32:52.192548651+0000', tz='UTC')
		
		Change to Tokyo timezone:
		
		>>> ts.tz_convert(tz='Asia/Tokyo')
		Timestamp('2020-03-15 00:32:52.192548651+0900', tz='Asia/Tokyo')
		
		Can also use ``astimezone``:
		
		>>> ts.astimezone(tz='Asia/Tokyo')
		Timestamp('2020-03-15 00:32:52.192548651+0900', tz='Asia/Tokyo')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.tz_convert(tz='Asia/Tokyo')
		NaT
	**/
	public function astimezone(tz:Dynamic):pandas.Timestamp;
	/**
		Return a new Timestamp ceiled to this resolution.
		
		Parameters
		----------
		freq : str
		    Frequency string indicating the ceiling resolution.
		ambiguous : bool or {'raise', 'NaT'}, default 'raise'
		    The behavior is as follows:
		
		    * bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates).
		    * 'NaT' will return NaT for an ambiguous time.
		    * 'raise' will raise an AmbiguousTimeError for an ambiguous time.
		
		nonexistent : {'raise', 'shift_forward', 'shift_backward, 'NaT', timedelta}, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    * 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time.
		    * 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time.
		    * 'NaT' will return NaT where there are nonexistent times.
		    * timedelta objects will shift nonexistent times by the timedelta.
		    * 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Raises
		------
		ValueError if the freq cannot be converted.
		
		Notes
		-----
		If the Timestamp has a timezone, ceiling will take place relative to the
		local ("wall") time and re-localized to the same timezone. When ceiling
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
		Examples
		--------
		Create a timestamp object:
		
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		
		A timestamp can be ceiled using multiple frequency units:
		
		>>> ts.ceil(freq='H') # hour
		Timestamp('2020-03-14 16:00:00')
		
		>>> ts.ceil(freq='T') # minute
		Timestamp('2020-03-14 15:33:00')
		
		>>> ts.ceil(freq='S') # seconds
		Timestamp('2020-03-14 15:32:53')
		
		>>> ts.ceil(freq='U') # microseconds
		Timestamp('2020-03-14 15:32:52.192549')
		
		``freq`` can also be a multiple of a single unit, like '5T' (i.e.  5 minutes):
		
		>>> ts.ceil(freq='5T')
		Timestamp('2020-03-14 15:35:00')
		
		or a combination of multiple units, like '1H30T' (i.e. 1 hour and 30 minutes):
		
		>>> ts.ceil(freq='1H30T')
		Timestamp('2020-03-14 16:30:00')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.ceil()
		NaT
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> ts_tz = pd.Timestamp("2021-10-31 01:30:00").tz_localize("Europe/Amsterdam")
		
		>>> ts_tz.ceil("H", ambiguous=False)
		Timestamp('2021-10-31 02:00:00+0100', tz='Europe/Amsterdam')
		
		>>> ts_tz.ceil("H", ambiguous=True)
		Timestamp('2021-10-31 02:00:00+0200', tz='Europe/Amsterdam')
	**/
	public function ceil(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	/**
		Timestamp.combine(date, time)
		
		Combine date, time into datetime with same date and time fields.
		
		Examples
		--------
		>>> from datetime import date, time
		>>> pd.Timestamp.combine(date(2020, 3, 14), time(15, 30, 15))
		Timestamp('2020-03-14 15:30:15')
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
		Return the number of days in the month.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.days_in_month
		31
	**/
	public var daysinmonth : Dynamic;
	/**
		Return self.tzinfo.dst(self).
	**/
	public function dst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new Timestamp floored to this resolution.
		
		Parameters
		----------
		freq : str
		    Frequency string indicating the flooring resolution.
		ambiguous : bool or {'raise', 'NaT'}, default 'raise'
		    The behavior is as follows:
		
		    * bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates).
		    * 'NaT' will return NaT for an ambiguous time.
		    * 'raise' will raise an AmbiguousTimeError for an ambiguous time.
		
		nonexistent : {'raise', 'shift_forward', 'shift_backward, 'NaT', timedelta}, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    * 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time.
		    * 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time.
		    * 'NaT' will return NaT where there are nonexistent times.
		    * timedelta objects will shift nonexistent times by the timedelta.
		    * 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Raises
		------
		ValueError if the freq cannot be converted.
		
		Notes
		-----
		If the Timestamp has a timezone, flooring will take place relative to the
		local ("wall") time and re-localized to the same timezone. When flooring
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
		Examples
		--------
		Create a timestamp object:
		
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		
		A timestamp can be floored using multiple frequency units:
		
		>>> ts.floor(freq='H') # hour
		Timestamp('2020-03-14 15:00:00')
		
		>>> ts.floor(freq='T') # minute
		Timestamp('2020-03-14 15:32:00')
		
		>>> ts.floor(freq='S') # seconds
		Timestamp('2020-03-14 15:32:52')
		
		>>> ts.floor(freq='N') # nanoseconds
		Timestamp('2020-03-14 15:32:52.192548651')
		
		``freq`` can also be a multiple of a single unit, like '5T' (i.e.  5 minutes):
		
		>>> ts.floor(freq='5T')
		Timestamp('2020-03-14 15:30:00')
		
		or a combination of multiple units, like '1H30T' (i.e. 1 hour and 30 minutes):
		
		>>> ts.floor(freq='1H30T')
		Timestamp('2020-03-14 15:00:00')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.floor()
		NaT
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> ts_tz = pd.Timestamp("2021-10-31 03:30:00").tz_localize("Europe/Amsterdam")
		
		>>> ts_tz.floor("2H", ambiguous=False)
		Timestamp('2021-10-31 02:00:00+0100', tz='Europe/Amsterdam')
		
		>>> ts_tz.floor("2H", ambiguous=True)
		Timestamp('2021-10-31 02:00:00+0200', tz='Europe/Amsterdam')
	**/
	public function floor(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	public var fold : Dynamic;
	public var freq : Dynamic;
	/**
		Return the total number of days in the month.
	**/
	public var freqstr : Dynamic;
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
		Timestamp.fromordinal(ordinal, freq=None, tz=None)
		
		Passed an ordinal, translate and convert to a ts.
		Note: by definition there cannot be any tz info on the ordinal itself.
		
		Parameters
		----------
		ordinal : int
		    Date corresponding to a proleptic Gregorian ordinal.
		freq : str, DateOffset
		    Offset to apply to the Timestamp.
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for the Timestamp.
		
		Examples
		--------
		>>> pd.Timestamp.fromordinal(737425)
		Timestamp('2020-01-01 00:00:00')
	**/
	static public function fromordinal(ordinal:Dynamic, ?freq:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Timestamp.fromtimestamp(ts)
		
		Transform timestamp[, tz] to tz's local time from POSIX timestamp.
		
		Examples
		--------
		>>> pd.Timestamp.fromtimestamp(1584199972)
		Timestamp('2020-03-14 15:32:52')
		
		Note that the output may change depending on your local time.
	**/
	static public function fromtimestamp(ts:Dynamic, ?tz:Dynamic):Dynamic;
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
		Monday == 1 ... Sunday == 7.
	**/
	public function isoweekday():Dynamic;
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
		Timestamp.now(tz=None)
		
		Return new Timestamp object representing current time local to
		tz.
		
		Parameters
		----------
		tz : str or timezone object, default None
		    Timezone to localize to.
		
		Examples
		--------
		>>> pd.Timestamp.now()  # doctest: +SKIP
		Timestamp('2020-11-16 22:06:16.378782')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.now()
		NaT
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
		Implements datetime.replace, handles nanoseconds.
		
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
		fold : int, optional
		
		Returns
		-------
		Timestamp with fields replaced
		
		Examples
		--------
		Create a timestamp object:
		
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651', tz='UTC')
		>>> ts
		Timestamp('2020-03-14 15:32:52.192548651+0000', tz='UTC')
		
		Replace year and the hour:
		
		>>> ts.replace(year=1999, hour=10)
		Timestamp('1999-03-14 10:32:52.192548651+0000', tz='UTC')
		
		Replace timezone (not a conversion):
		
		>>> import pytz
		>>> ts.replace(tzinfo=pytz.timezone('US/Pacific'))
		Timestamp('2020-03-14 15:32:52.192548651-0700', tz='US/Pacific')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.replace(tzinfo=pytz.timezone('US/Pacific'))
		NaT
	**/
	public function replace(?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?microsecond:Dynamic, ?nanosecond:Dynamic, ?tzinfo:Dynamic, ?fold:Dynamic):Dynamic;
	static public var resolution : Dynamic;
	/**
		Round the Timestamp to the specified resolution.
		
		Parameters
		----------
		freq : str
		    Frequency string indicating the rounding resolution.
		ambiguous : bool or {'raise', 'NaT'}, default 'raise'
		    The behavior is as follows:
		
		    * bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates).
		    * 'NaT' will return NaT for an ambiguous time.
		    * 'raise' will raise an AmbiguousTimeError for an ambiguous time.
		
		nonexistent : {'raise', 'shift_forward', 'shift_backward, 'NaT', timedelta}, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    * 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time.
		    * 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time.
		    * 'NaT' will return NaT where there are nonexistent times.
		    * timedelta objects will shift nonexistent times by the timedelta.
		    * 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		a new Timestamp rounded to the given resolution of `freq`
		
		Raises
		------
		ValueError if the freq cannot be converted
		
		Notes
		-----
		If the Timestamp has a timezone, rounding will take place relative to the
		local ("wall") time and re-localized to the same timezone. When rounding
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
		Examples
		--------
		Create a timestamp object:
		
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		
		A timestamp can be rounded using multiple frequency units:
		
		>>> ts.round(freq='H') # hour
		Timestamp('2020-03-14 16:00:00')
		
		>>> ts.round(freq='T') # minute
		Timestamp('2020-03-14 15:33:00')
		
		>>> ts.round(freq='S') # seconds
		Timestamp('2020-03-14 15:32:52')
		
		>>> ts.round(freq='L') # milliseconds
		Timestamp('2020-03-14 15:32:52.193000')
		
		``freq`` can also be a multiple of a single unit, like '5T' (i.e.  5 minutes):
		
		>>> ts.round(freq='5T')
		Timestamp('2020-03-14 15:35:00')
		
		or a combination of multiple units, like '1H30T' (i.e. 1 hour and 30 minutes):
		
		>>> ts.round(freq='1H30T')
		Timestamp('2020-03-14 15:00:00')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.round()
		NaT
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> ts_tz = pd.Timestamp("2021-10-31 01:30:00").tz_localize("Europe/Amsterdam")
		
		>>> ts_tz.round("H", ambiguous=False)
		Timestamp('2021-10-31 02:00:00+0100', tz='Europe/Amsterdam')
		
		>>> ts_tz.round("H", ambiguous=True)
		Timestamp('2021-10-31 02:00:00+0200', tz='Europe/Amsterdam')
	**/
	public function round(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	public var second : Dynamic;
	/**
		Timestamp.strftime(format)
		
		Return a string representing the given POSIX timestamp
		controlled by an explicit format string.
		
		Parameters
		----------
		format : str
		    Format string to convert Timestamp to string.
		    See strftime documentation for more information on the format string:
		    https://docs.python.org/3/library/datetime.html#strftime-and-strptime-behavior.
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		>>> ts.strftime('%Y-%m-%d %X')
		'2020-03-14 15:32:52'
	**/
	public function strftime(format:Dynamic):Dynamic;
	/**
		Timestamp.strptime(string, format)
		
		Function is not implemented. Use pd.to_datetime().
	**/
	static public function strptime(date_string:Dynamic, format:Dynamic):Dynamic;
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
		Convert TimeStamp to a Julian Date.
		0 Julian date is noon January 1, 4713 BC.
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52')
		>>> ts.to_julian_date()
		2458923.147824074
	**/
	public function to_julian_date():Dynamic;
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
		Timestamp.today(cls, tz=None)
		
		Return the current time in the local timezone.  This differs
		from datetime.today() in that it can be localized to a
		passed timezone.
		
		Parameters
		----------
		tz : str or timezone object, default None
		    Timezone to localize to.
		
		Examples
		--------
		>>> pd.Timestamp.today()    # doctest: +SKIP
		Timestamp('2020-11-16 22:37:39.969883')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.today()
		NaT
	**/
	static public function today(?tz:Dynamic):Dynamic;
	/**
		Return proleptic Gregorian ordinal.  January 1 of year 1 is day 1.
	**/
	public function toordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for tzinfo.
		
		Examples
		--------
		>>> ts = pd.Timestamp(1584226800, unit='s', tz='Europe/Stockholm')
		>>> ts.tz
		<DstTzInfo 'Europe/Stockholm' CET+1:00:00 STD>
	**/
	public var tz : Dynamic;
	/**
		Convert timezone-aware Timestamp to another time zone.
		
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
		
		Examples
		--------
		Create a timestamp object with UTC timezone:
		
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651', tz='UTC')
		>>> ts
		Timestamp('2020-03-14 15:32:52.192548651+0000', tz='UTC')
		
		Change to Tokyo timezone:
		
		>>> ts.tz_convert(tz='Asia/Tokyo')
		Timestamp('2020-03-15 00:32:52.192548651+0900', tz='Asia/Tokyo')
		
		Can also use ``astimezone``:
		
		>>> ts.astimezone(tz='Asia/Tokyo')
		Timestamp('2020-03-15 00:32:52.192548651+0900', tz='Asia/Tokyo')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.tz_convert(tz='Asia/Tokyo')
		NaT
	**/
	public function tz_convert(tz:Dynamic):pandas.Timestamp;
	/**
		Convert naive Timestamp to local time zone, or remove
		timezone from timezone-aware Timestamp.
		
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
		
		    The behavior is as follows:
		
		    * bool contains flags to determine if time is dst or not (note
		      that this flag is only applicable for ambiguous fall dst dates).
		    * 'NaT' will return NaT for an ambiguous time.
		    * 'raise' will raise an AmbiguousTimeError for an ambiguous time.
		
		nonexistent : 'shift_forward', 'shift_backward, 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    The behavior is as follows:
		
		    * 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time.
		    * 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time.
		    * 'NaT' will return NaT where there are nonexistent times.
		    * timedelta objects will shift nonexistent times by the timedelta.
		    * 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		localized : Timestamp
		
		Raises
		------
		TypeError
		    If the Timestamp is tz-aware and tz is not None.
		
		Examples
		--------
		Create a naive timestamp object:
		
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548651')
		>>> ts
		Timestamp('2020-03-14 15:32:52.192548651')
		
		Add 'Europe/Stockholm' as timezone:
		
		>>> ts.tz_localize(tz='Europe/Stockholm')
		Timestamp('2020-03-14 15:32:52.192548651+0100', tz='Europe/Stockholm')
		
		Analogous for ``pd.NaT``:
		
		>>> pd.NaT.tz_localize()
		NaT
	**/
	public function tz_localize(tz:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):pandas.Timestamp;
	public var tzinfo : Dynamic;
	/**
		Return self.tzinfo.tzname(self).
	**/
	public function tzname(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Timestamp.utcfromtimestamp(ts)
		
		Construct a naive UTC datetime from a POSIX timestamp.
		
		Examples
		--------
		>>> pd.Timestamp.utcfromtimestamp(1584199972)
		Timestamp('2020-03-14 15:32:52')
	**/
	static public function utcfromtimestamp(ts:Dynamic):Dynamic;
	/**
		Timestamp.utcnow()
		
		Return a new Timestamp representing UTC day and time.
		
		Examples
		--------
		>>> pd.Timestamp.utcnow()   # doctest: +SKIP
		Timestamp('2020-11-16 22:50:18.092888+0000', tz='UTC')
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
		Monday == 0 ... Sunday == 6.
	**/
	public function weekday():Dynamic;
	/**
		Return the week number of the year.
		
		Examples
		--------
		>>> ts = pd.Timestamp(2020, 3, 14)
		>>> ts.week
		11
	**/
	public var weekofyear : Dynamic;
	public var year : Dynamic;
}