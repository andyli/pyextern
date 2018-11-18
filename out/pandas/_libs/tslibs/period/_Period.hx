/* This file is generated, do not edit! */
package pandas._libs.tslibs.period;
@:pythonImport("pandas._libs.tslibs.period", "_Period") extern class _Period {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		default object formatter
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
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
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
		Return a string representation for a particular DataFrame
		
		Invoked by unicode(df) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _add_delta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast creation from an ordinal and freq that are already validated!
	**/
	public function _from_ordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _maybe_convert_freq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _typ : Dynamic;
	/**
		Convert Period to desired frequency, either at the start or end of the
		interval
		
		Parameters
		----------
		freq : string
		how : {'E', 'S', 'end', 'start'}, default 'end'
		    Start or end of the timespan
		
		Returns
		-------
		resampled : Period
	**/
	public function asfreq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get day of the month that a Period falls on.
		
		Returns
		-------
		int
		
		See Also
		--------
		Period.dayofweek : Get the day of the week
		
		Period.dayofyear : Get the day of the year
		
		Examples
		--------
		>>> p = pd.Period("2018-03-11", freq='H')
		>>> p.day
		11
	**/
	public var day : Dynamic;
	/**
		Return the day of the week.
		
		This attribute returns the day of the week on which the particular
		date for the given period occurs depending on the frequency with
		Monday=0, Sunday=6.
		
		Returns
		-------
		Int
		    Range from 0 to 6 (included).
		
		See also
		--------
		Period.dayofyear : Return the day of the year.
		Period.daysinmonth : Return the number of days in that month.
		
		Examples
		--------
		>>> period1 = pd.Period('2012-1-1 19:00', freq='H')
		>>> period1
		Period('2012-01-01 19:00', 'H')
		>>> period1.dayofweek
		6
		
		>>> period2 = pd.Period('2013-1-9 11:00', freq='H')
		>>> period2
		Period('2013-01-09 11:00', 'H')
		>>> period2.dayofweek
		2
	**/
	public var dayofweek : Dynamic;
	/**
		Return the day of the year.
		
		This attribute returns the day of the year on which the particular
		date occurs. The return value ranges between 1 to 365 for regular
		years and 1 to 366 for leap years.
		
		Returns
		-------
		int
		    The day of year.
		
		See Also
		--------
		Period.day : Return the day of the month.
		Period.dayofweek : Return the day of week.
		PeriodIndex.dayofyear : Return the day of year of all indexes.
		
		Examples
		--------
		>>> period = pd.Period("2015-10-23", freq='H')
		>>> period.dayofyear
		296
		>>> period = pd.Period("2012-12-31", freq='D')
		>>> period.dayofyear
		366
		>>> period = pd.Period("2013-01-01", freq='D')
		>>> period.dayofyear
		1
	**/
	public var dayofyear : Dynamic;
	/**
		Get the total number of days in the month that this period falls on.
		
		Returns
		-------
		int
		
		See Also
		--------
		Period.daysinmonth : Gets the number of days in the month.
		DatetimeIndex.daysinmonth : Gets the number of days in the month.
		calendar.monthrange : Returns a tuple containing weekday
		    (0-6 ~ Mon-Sun) and number of days (28-31).
		
		Examples
		--------
		>>> p = pd.Period('2018-2-17')
		>>> p.days_in_month
		28
		
		>>> pd.Period('2018-03-01').days_in_month
		31
		
		Handles the leap year case as well:
		
		>>> p = pd.Period('2016-2-17')
		>>> p.days_in_month
		29
	**/
	public var days_in_month : Dynamic;
	/**
		Get the total number of days of the month that the Period falls in.
		
		Returns
		-------
		int
		
		See Also
		--------
		Period.days_in_month : Return the days of the month
		Period.dayofyear : Return the day of the year
		
		Examples
		--------
		>>> p = pd.Period("2018-03-11", freq='H')
		>>> p.daysinmonth
		31
	**/
	public var daysinmonth : Dynamic;
	public var end_time : Dynamic;
	public var freq : Dynamic;
	public var freqstr : Dynamic;
	/**
		Get the hour of the day component of the Period.
		
		Returns
		-------
		int
		    The hour as an integer, between 0 and 23.
		
		See Also
		--------
		Period.second : Get the second component of the Period.
		Period.minute : Get the minute component of the Period.
		
		Examples
		--------
		>>> p = pd.Period("2018-03-11 13:03:12.050000")
		>>> p.hour
		13
		
		Period longer than a day
		
		>>> p = pd.Period("2018-03-11", freq="M")
		>>> p.hour
		0
	**/
	public var hour : Dynamic;
	public var is_leap_year : Dynamic;
	/**
		Get minute of the hour component of the Period.
		
		Returns
		-------
		int
		    The minute as an integer, between 0 and 59.
		
		See Also
		--------
		Period.hour : Get the hour component of the Period.
		Period.second : Get the second component of the Period.
		
		Examples
		--------
		>>> p = pd.Period("2018-03-11 13:03:12.050000")
		>>> p.minute
		3
	**/
	public var minute : Dynamic;
	public var month : Dynamic;
	public function now(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var ordinal : Dynamic;
	public var quarter : Dynamic;
	public var qyear : Dynamic;
	/**
		Get the second component of the Period.
		
		Returns
		-------
		int
		    The second of the Period (ranges from 0 to 59).
		
		See Also
		--------
		Period.hour : Get the hour component of the Period.
		Period.minute : Get the minute component of the Period.
		
		Examples
		--------
		>>> p = pd.Period("2018-03-11 13:03:12.050000")
		>>> p.second
		12
	**/
	public var second : Dynamic;
	/**
		Get the Timestamp for the start of the period.
		
		Returns
		-------
		Timestamp
		
		See also
		--------
		Period.end_time : Return the end Timestamp.
		Period.dayofyear : Return the day of year.
		Period.daysinmonth : Return the days in that month.
		Period.dayofweek : Return the day of the week.
		
		Examples
		--------
		>>> period = pd.Period('2012-1-1', freq='D')
		>>> period
		Period('2012-01-01', 'D')
		
		>>> period.start_time
		Timestamp('2012-01-01 00:00:00')
		
		>>> period.end_time
		Timestamp('2012-01-01 23:59:59.999999999')
	**/
	public var start_time : Dynamic;
	/**
		Returns the string representation of the :class:`Period`, depending
		on the selected ``fmt``. ``fmt`` must be a string
		containing one or several directives.  The method recognizes the same
		directives as the :func:`time.strftime` function of the standard Python
		distribution, as well as the specific additional directives ``%f``,
		``%F``, ``%q``. (formatting & docs originally from scikits.timeries)
		
		+-----------+--------------------------------+-------+
		| Directive | Meaning                        | Notes |
		+===========+================================+=======+
		| ``%a``    | Locale's abbreviated weekday   |       |
		|           | name.                          |       |
		+-----------+--------------------------------+-------+
		| ``%A``    | Locale's full weekday name.    |       |
		+-----------+--------------------------------+-------+
		| ``%b``    | Locale's abbreviated month     |       |
		|           | name.                          |       |
		+-----------+--------------------------------+-------+
		| ``%B``    | Locale's full month name.      |       |
		+-----------+--------------------------------+-------+
		| ``%c``    | Locale's appropriate date and  |       |
		|           | time representation.           |       |
		+-----------+--------------------------------+-------+
		| ``%d``    | Day of the month as a decimal  |       |
		|           | number [01,31].                |       |
		+-----------+--------------------------------+-------+
		| ``%f``    | 'Fiscal' year without a        | \(1)  |
		|           | century  as a decimal number   |       |
		|           | [00,99]                        |       |
		+-----------+--------------------------------+-------+
		| ``%F``    | 'Fiscal' year with a century   | \(2)  |
		|           | as a decimal number            |       |
		+-----------+--------------------------------+-------+
		| ``%H``    | Hour (24-hour clock) as a      |       |
		|           | decimal number [00,23].        |       |
		+-----------+--------------------------------+-------+
		| ``%I``    | Hour (12-hour clock) as a      |       |
		|           | decimal number [01,12].        |       |
		+-----------+--------------------------------+-------+
		| ``%j``    | Day of the year as a decimal   |       |
		|           | number [001,366].              |       |
		+-----------+--------------------------------+-------+
		| ``%m``    | Month as a decimal number      |       |
		|           | [01,12].                       |       |
		+-----------+--------------------------------+-------+
		| ``%M``    | Minute as a decimal number     |       |
		|           | [00,59].                       |       |
		+-----------+--------------------------------+-------+
		| ``%p``    | Locale's equivalent of either  | \(3)  |
		|           | AM or PM.                      |       |
		+-----------+--------------------------------+-------+
		| ``%q``    | Quarter as a decimal number    |       |
		|           | [01,04]                        |       |
		+-----------+--------------------------------+-------+
		| ``%S``    | Second as a decimal number     | \(4)  |
		|           | [00,61].                       |       |
		+-----------+--------------------------------+-------+
		| ``%U``    | Week number of the year        | \(5)  |
		|           | (Sunday as the first day of    |       |
		|           | the week) as a decimal number  |       |
		|           | [00,53].  All days in a new    |       |
		|           | year preceding the first       |       |
		|           | Sunday are considered to be in |       |
		|           | week 0.                        |       |
		+-----------+--------------------------------+-------+
		| ``%w``    | Weekday as a decimal number    |       |
		|           | [0(Sunday),6].                 |       |
		+-----------+--------------------------------+-------+
		| ``%W``    | Week number of the year        | \(5)  |
		|           | (Monday as the first day of    |       |
		|           | the week) as a decimal number  |       |
		|           | [00,53].  All days in a new    |       |
		|           | year preceding the first       |       |
		|           | Monday are considered to be in |       |
		|           | week 0.                        |       |
		+-----------+--------------------------------+-------+
		| ``%x``    | Locale's appropriate date      |       |
		|           | representation.                |       |
		+-----------+--------------------------------+-------+
		| ``%X``    | Locale's appropriate time      |       |
		|           | representation.                |       |
		+-----------+--------------------------------+-------+
		| ``%y``    | Year without century as a      |       |
		|           | decimal number [00,99].        |       |
		+-----------+--------------------------------+-------+
		| ``%Y``    | Year with century as a decimal |       |
		|           | number.                        |       |
		+-----------+--------------------------------+-------+
		| ``%Z``    | Time zone name (no characters  |       |
		|           | if no time zone exists).       |       |
		+-----------+--------------------------------+-------+
		| ``%%``    | A literal ``'%'`` character.   |       |
		+-----------+--------------------------------+-------+
		
		Notes
		-----
		
		(1)
		    The ``%f`` directive is the same as ``%y`` if the frequency is
		    not quarterly.
		    Otherwise, it corresponds to the 'fiscal' year, as defined by
		    the :attr:`qyear` attribute.
		
		(2)
		    The ``%F`` directive is the same as ``%Y`` if the frequency is
		    not quarterly.
		    Otherwise, it corresponds to the 'fiscal' year, as defined by
		    the :attr:`qyear` attribute.
		
		(3)
		    The ``%p`` directive only affects the output hour field
		    if the ``%I`` directive is used to parse the hour.
		
		(4)
		    The range really is ``0`` to ``61``; this accounts for leap
		    seconds and the (very rare) double leap seconds.
		
		(5)
		    The ``%U`` and ``%W`` directives are only used in calculations
		    when the day of the week and the year are specified.
		
		Examples
		--------
		
		>>> a = Period(freq='Q-JUL', year=2006, quarter=1)
		>>> a.strftime('%F-Q%q')
		'2006-Q1'
		>>> # Output the last month in the quarter of this date
		>>> a.strftime('%b-%Y')
		'Oct-2005'
		>>>
		>>> a = Period(freq='D', year=2001, month=1, day=1)
		>>> a.strftime('%d-%b-%Y')
		'01-Jan-2006'
		>>> a.strftime('%b. %d, %Y was a %A')
		'Jan. 01, 2001 was a Monday'
	**/
	public function strftime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the Timestamp representation of the Period at the target
		frequency at the specified end (how) of the Period
		
		Parameters
		----------
		freq : string or DateOffset
		    Target frequency. Default is 'D' if self.freq is week or
		    longer and 'S' otherwise
		how: str, default 'S' (start)
		    'S', 'E'. Can be aliased as case insensitive
		    'Start', 'Finish', 'Begin', 'End'
		
		Returns
		-------
		Timestamp
	**/
	public function to_timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the week of the year on the given Period.
		
		Returns
		-------
		int
		
		See Also
		--------
		Period.dayofweek : Get the day component of the Period.
		Period.weekday : Get the day component of the Period.
		
		Examples
		--------
		>>> p = pd.Period("2018-03-11", "H")
		>>> p.week
		10
		
		>>> p = pd.Period("2018-02-01", "D")
		>>> p.week
		5
		
		>>> p = pd.Period("2018-01-06", "D")
		>>> p.week
		1
	**/
	public var week : Dynamic;
	public var weekday : Dynamic;
	public var weekofyear : Dynamic;
	public var year : Dynamic;
}