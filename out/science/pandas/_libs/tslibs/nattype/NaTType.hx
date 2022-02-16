/* This file is generated, do not edit! */
package pandas._libs.tslibs.nattype;
@:pythonImport("pandas._libs.tslibs.nattype", "NaTType") extern class NaTType {
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
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
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
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	static public function __new__(cls:Dynamic):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	public function __reduce__():Dynamic;
	public function __reduce_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
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
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
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
	static public function astimezone(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Timestamp;
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
	static public function ceil(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Timestamp.combine(date, time)
		
		Combine date, time into datetime with same date and time fields.
		
		Examples
		--------
		>>> from datetime import date, time
		>>> pd.Timestamp.combine(date(2020, 3, 14), time(15, 30, 15))
		Timestamp('2020-03-14 15:30:15')
	**/
	static public function combine(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return ctime() style string.
	**/
	static public function ctime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return date object with same year, month and day.
	**/
	static public function date(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function day_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var day_of_week : Dynamic;
	public var day_of_year : Dynamic;
	public var dayofweek : Dynamic;
	public var dayofyear : Dynamic;
	public var days : Dynamic;
	public var days_in_month : Dynamic;
	public var daysinmonth : Dynamic;
	/**
		Return self.tzinfo.dst(self).
	**/
	static public function dst(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function floor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var fold : Dynamic;
	public var freq : Dynamic;
	/**
		int, int, int -> Construct a date from the ISO year, week number and weekday.
		
		This is the inverse of the date.isocalendar() function
	**/
	static public function fromisocalendar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function fromordinal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Timestamp.fromtimestamp(ts)
		
		Transform timestamp[, tz] to tz's local time from POSIX timestamp.
		
		Examples
		--------
		>>> pd.Timestamp.fromtimestamp(1584199972)
		Timestamp('2020-03-14 15:32:52')
		
		Note that the output may change depending on your local time.
	**/
	static public function fromtimestamp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function isocalendar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[sep] -> string in ISO 8601 format, YYYY-MM-DDT[HH[:MM[:SS[.mmm[uuu]]]]][+HH:MM].
		sep is used to separate the year from the time, and defaults to 'T'.
		The optional argument timespec specifies the number of additional terms
		of the time to include. Valid options are 'auto', 'hours', 'minutes',
		'seconds', 'milliseconds' and 'microseconds'.
	**/
	public function isoformat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 1 ... Sunday == 7.
	**/
	static public function isoweekday(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var max : Dynamic;
	public var microsecond : Dynamic;
	public var microseconds : Dynamic;
	public var millisecond : Dynamic;
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
	static public function month_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var nanosecond : Dynamic;
	public var nanoseconds : Dynamic;
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
	static public function now(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var quarter : Dynamic;
	public var qyear : Dynamic;
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
	static public function replace(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function round(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var second : Dynamic;
	public var seconds : Dynamic;
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
	static public function strftime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Timestamp.strptime(string, format)
		
		Function is not implemented. Use pd.to_datetime().
	**/
	static public function strptime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return time object with same time but with tzinfo=None.
	**/
	static public function time(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return POSIX timestamp as float.
		
		Examples
		--------
		>>> ts = pd.Timestamp('2020-03-14T15:32:52.192548')
		>>> ts.timestamp()
		1584199972.192548
	**/
	static public function timestamp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return time tuple, compatible with time.localtime().
	**/
	static public function timetuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return time object with same time and tzinfo.
	**/
	static public function timetz(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a numpy.datetime64 object with 'ns' precision.
	**/
	public function to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the Timestamp to a NumPy datetime64 or timedelta64.
		
		.. versionadded:: 0.25.0
		
		With the default 'dtype', this is an alias method for `NaT.to_datetime64()`.
		
		The copy parameter is available here only for compatibility. Its value
		will not affect the return value.
		
		Returns
		-------
		numpy.datetime64 or numpy.timedelta64
		
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
		
		>>> pd.NaT.to_numpy("m8[ns]")
		numpy.timedelta64('NaT','ns')
	**/
	public function to_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function to_pydatetime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function today(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return proleptic Gregorian ordinal.  January 1 of year 1 is day 1.
	**/
	static public function toordinal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total seconds in the duration.
	**/
	static public function total_seconds(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function tz_convert(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Timestamp;
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
	static public function tz_localize(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Timestamp;
	public var tzinfo : Dynamic;
	/**
		Return self.tzinfo.tzname(self).
	**/
	static public function tzname(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Timestamp.utcfromtimestamp(ts)
		
		Construct a naive UTC datetime from a POSIX timestamp.
		
		Examples
		--------
		>>> pd.Timestamp.utcfromtimestamp(1584199972)
		Timestamp('2020-03-14 15:32:52')
	**/
	static public function utcfromtimestamp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Timestamp.utcnow()
		
		Return a new Timestamp representing UTC day and time.
		
		Examples
		--------
		>>> pd.Timestamp.utcnow()   # doctest: +SKIP
		Timestamp('2020-11-16 22:50:18.092888+0000', tz='UTC')
	**/
	static public function utcnow(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return self.tzinfo.utcoffset(self).
	**/
	static public function utcoffset(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return UTC time tuple, compatible with time.localtime().
	**/
	static public function utctimetuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var value : Dynamic;
	public var week : Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 0 ... Sunday == 6.
	**/
	static public function weekday(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var weekofyear : Dynamic;
	public var year : Dynamic;
}