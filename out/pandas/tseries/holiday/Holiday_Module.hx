/* This file is generated, do not edit! */
package pandas.tseries.holiday;
@:pythonImport("pandas.tseries.holiday") extern class Holiday_Module {
	static public var EasterMonday : Dynamic;
	static public function FR(n:Dynamic):Dynamic;
	static public var GoodFriday : Dynamic;
	static public function HolidayCalendarFactory(name:Dynamic, base:Dynamic, other:Dynamic, ?base_class:Dynamic):Dynamic;
	static public function MO(n:Dynamic):Dynamic;
	static public function SA(n:Dynamic):Dynamic;
	static public function SU(n:Dynamic):Dynamic;
	static public function TH(n:Dynamic):Dynamic;
	static public function TU(n:Dynamic):Dynamic;
	static public var USColumbusDay : Dynamic;
	static public var USLaborDay : Dynamic;
	static public var USMartinLutherKingJr : Dynamic;
	static public var USMemorialDay : Dynamic;
	static public var USPresidentsDay : Dynamic;
	static public var USThanksgivingDay : Dynamic;
	static public function WE(n:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Class decorator for creating a class with a metaclass.
	**/
	static public function add_metaclass(metaclass:Dynamic):Dynamic;
	/**
		returns next workday after nearest workday
		needed for Boxing day or multiple holidays in a series
	**/
	static public function after_nearest_workday(dt:Dynamic):Dynamic;
	/**
		returns previous workday after nearest workday
	**/
	static public function before_nearest_workday(dt:Dynamic):Dynamic;
	/**
		Return a fixed frequency DatetimeIndex.
		
		Parameters
		----------
		start : str or datetime-like, optional
		    Left bound for generating dates.
		end : str or datetime-like, optional
		    Right bound for generating dates.
		periods : integer, optional
		    Number of periods to generate.
		freq : str or DateOffset, default 'D'
		    Frequency strings can have multiples, e.g. '5H'. See
		    :ref:`here <timeseries.offset_aliases>` for a list of
		    frequency aliases.
		tz : str or tzinfo, optional
		    Time zone name for returning localized DatetimeIndex, for example
		    'Asia/Hong_Kong'. By default, the resulting DatetimeIndex is
		    timezone-naive.
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range.
		name : str, default None
		    Name of the resulting DatetimeIndex.
		closed : {None, 'left', 'right'}, optional
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None, the default).
		**kwargs
		    For compatibility. Has no effect on the result.
		
		Returns
		-------
		rng : DatetimeIndex
		
		See Also
		--------
		pandas.DatetimeIndex : An immutable container for datetimes.
		pandas.timedelta_range : Return a fixed frequency TimedeltaIndex.
		pandas.period_range : Return a fixed frequency PeriodIndex.
		pandas.interval_range : Return a fixed frequency IntervalIndex.
		
		Notes
		-----
		Of the four parameters ``start``, ``end``, ``periods``, and ``freq``,
		exactly three must be specified. If ``freq`` is omitted, the resulting
		``DatetimeIndex`` will have ``periods`` linearly spaced elements between
		``start`` and ``end`` (closed on both sides).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		**Specifying the values**
		
		The next four examples generate the same `DatetimeIndex`, but vary
		the combination of `start`, `end` and `periods`.
		
		Specify `start` and `end`, with the default daily frequency.
		
		>>> pd.date_range(start='1/1/2018', end='1/08/2018')
		DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
		               '2018-01-05', '2018-01-06', '2018-01-07', '2018-01-08'],
		              dtype='datetime64[ns]', freq='D')
		
		Specify `start` and `periods`, the number of periods (days).
		
		>>> pd.date_range(start='1/1/2018', periods=8)
		DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
		               '2018-01-05', '2018-01-06', '2018-01-07', '2018-01-08'],
		              dtype='datetime64[ns]', freq='D')
		
		Specify `end` and `periods`, the number of periods (days).
		
		>>> pd.date_range(end='1/1/2018', periods=8)
		DatetimeIndex(['2017-12-25', '2017-12-26', '2017-12-27', '2017-12-28',
		               '2017-12-29', '2017-12-30', '2017-12-31', '2018-01-01'],
		              dtype='datetime64[ns]', freq='D')
		
		Specify `start`, `end`, and `periods`; the frequency is generated
		automatically (linearly spaced).
		
		>>> pd.date_range(start='2018-04-24', end='2018-04-27', periods=3)
		DatetimeIndex(['2018-04-24 00:00:00', '2018-04-25 12:00:00',
		               '2018-04-27 00:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		**Other Parameters**
		
		Changed the `freq` (frequency) to ``'M'`` (month end frequency).
		
		>>> pd.date_range(start='1/1/2018', periods=5, freq='M')
		DatetimeIndex(['2018-01-31', '2018-02-28', '2018-03-31', '2018-04-30',
		               '2018-05-31'],
		              dtype='datetime64[ns]', freq='M')
		
		Multiples are allowed
		
		>>> pd.date_range(start='1/1/2018', periods=5, freq='3M')
		DatetimeIndex(['2018-01-31', '2018-04-30', '2018-07-31', '2018-10-31',
		               '2019-01-31'],
		              dtype='datetime64[ns]', freq='3M')
		
		`freq` can also be specified as an Offset object.
		
		>>> pd.date_range(start='1/1/2018', periods=5, freq=pd.offsets.MonthEnd(3))
		DatetimeIndex(['2018-01-31', '2018-04-30', '2018-07-31', '2018-10-31',
		               '2019-01-31'],
		              dtype='datetime64[ns]', freq='3M')
		
		Specify `tz` to set the timezone.
		
		>>> pd.date_range(start='1/1/2018', periods=5, tz='Asia/Tokyo')
		DatetimeIndex(['2018-01-01 00:00:00+09:00', '2018-01-02 00:00:00+09:00',
		               '2018-01-03 00:00:00+09:00', '2018-01-04 00:00:00+09:00',
		               '2018-01-05 00:00:00+09:00'],
		              dtype='datetime64[ns, Asia/Tokyo]', freq='D')
		
		`closed` controls whether to include `start` and `end` that are on the
		boundary. The default includes boundary points on either end.
		
		>>> pd.date_range(start='2017-01-01', end='2017-01-04', closed=None)
		DatetimeIndex(['2017-01-01', '2017-01-02', '2017-01-03', '2017-01-04'],
		              dtype='datetime64[ns]', freq='D')
		
		Use ``closed='left'`` to exclude `end` if it falls on the boundary.
		
		>>> pd.date_range(start='2017-01-01', end='2017-01-04', closed='left')
		DatetimeIndex(['2017-01-01', '2017-01-02', '2017-01-03'],
		              dtype='datetime64[ns]', freq='D')
		
		Use ``closed='right'`` to exclude `start` if it falls on the boundary.
		
		>>> pd.date_range(start='2017-01-01', end='2017-01-04', closed='right')
		DatetimeIndex(['2017-01-02', '2017-01-03', '2017-01-04'],
		              dtype='datetime64[ns]', freq='D')
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	/**
		Return an instance of a calendar based on its name.
		
		Parameters
		----------
		name : str
		    Calendar name to return an instance of
	**/
	static public function get_calendar(name:Dynamic):Dynamic;
	static public var holiday_calendars : Dynamic;
	/**
		If holiday falls on Saturday, use day before (Friday) instead;
		if holiday falls on Sunday, use day thereafter (Monday) instead.
	**/
	static public function nearest_workday(dt:Dynamic):Dynamic;
	/**
		If holiday falls on Saturday, use following Monday instead;
		if holiday falls on Sunday, use Monday instead
	**/
	static public function next_monday(dt:Dynamic):Dynamic;
	/**
		For second holiday of two adjacent ones!
		If holiday falls on Saturday, use following Monday instead;
		if holiday falls on Sunday or Monday, use following Tuesday instead
		(because Monday is already taken by adjacent holiday on the day before)
	**/
	static public function next_monday_or_tuesday(dt:Dynamic):Dynamic;
	/**
		returns next weekday used for observances
	**/
	static public function next_workday(dt:Dynamic):Dynamic;
	/**
		If holiday falls on Saturday or Sunday, use previous Friday instead.
	**/
	static public function previous_friday(dt:Dynamic):Dynamic;
	/**
		returns previous weekday used for observances
	**/
	static public function previous_workday(dt:Dynamic):Dynamic;
	static public function register(cls:Dynamic):Dynamic;
	/**
		If holiday falls on Sunday, use day thereafter (Monday) instead.
	**/
	static public function sunday_to_monday(dt:Dynamic):Dynamic;
	/**
		If holiday falls on Sunday or Saturday,
		use day thereafter (Monday) instead.
		Needed for holidays such as Christmas observation in Europe
	**/
	static public function weekend_to_monday(dt:Dynamic):Dynamic;
}