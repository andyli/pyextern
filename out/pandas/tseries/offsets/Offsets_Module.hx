/* This file is generated, do not edit! */
package pandas.tseries.offsets;
@:pythonImport("pandas.tseries.offsets") extern class Offsets_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _delta_to_tick(delta:Dynamic):Dynamic;
	static public function _determine_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Generate busdaycalendar
	**/
	static public function _get_calendar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_normalized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _tick_comp(op:Dynamic):Dynamic;
	static public function _to_dt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function apply_index_wraps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function apply_wraps(func:Dynamic):Dynamic;
	static public function as_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function as_timestamp(obj:Dynamic):Dynamic;
	static public function delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This method was ported from the work done by GM Arts,
		on top of the algorithm by Claus Tondering, which was
		based in part on the algorithm of Ouding (1940), as
		quoted in "Explanatory Supplement to the Astronomical
		Almanac", P.  Kenneth Seidelmann, editor.
		
		This algorithm implements three different easter
		calculation methods:
		
		1 - Original calculation in Julian calendar, valid in
		    dates after 326 AD
		2 - Original method, with date converted to Gregorian
		    calendar, valid in years 1583 to 4099
		3 - Revised method, in Gregorian calendar, valid in
		    years 1583 to 4099 as well
		
		These methods are represented by the constants:
		
		* ``EASTER_JULIAN   = 1``
		* ``EASTER_ORTHODOX = 2``
		* ``EASTER_WESTERN  = 3``
		
		The default method is method 3.
		
		More about the algorithm may be found at:
		
		`GM Arts: Easter Algorithms <http://www.gmarts.org/index.php?go=415>`_
		
		and
		
		`The Calendar FAQ: Easter <https://www.tondering.dk/claus/cal/easter.php>`_
	**/
	static public function easter(year:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Generates a sequence of dates corresponding to the specified time
		offset. Similar to dateutil.rrule except uses pandas DateOffset
		objects to represent time increments
		
		Parameters
		----------
		start : datetime (default None)
		end : datetime (default None)
		periods : int, optional
		time_rule : (legacy) name of DateOffset object to be used, optional
		    Corresponds with names expected by tseries.frequencies.get_offset
		
		Notes
		-----
		* This method is faster for generating weekdays than dateutil.rrule
		* At least two of (start, end, periods) must be specified.
		* If both start and end are specified, the returned dates will
		satisfy start <= date <= end.
		* If both time_rule and offset are specified, time_rule supersedes offset.
		
		Returns
		-------
		dates : generator object
	**/
	static public function generate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?offset:Dynamic, ?time_rule:Dynamic):Dynamic;
	static public var prefix_mapping : Dynamic;
	/**
		Possibly increment or decrement the number of periods to shift
		based on rollforward/rollbackward conventions.
		
		Parameters
		----------
		other : datetime or Timestamp
		n : number of periods to increment, before adjusting for rolling
		month : reference month giving the first month of the year
		day_opt : 'start', 'end'
		    'start': returns 1
		    'end': returns last day of the month
		
		Returns
		-------
		n : int number of periods to increment
		
		Notes
		-----
		* Mirrors `roll_check` in shift_months
		
		Examples
		-------
		>>> month = 3
		>>> day_opt = 'start'              # `other` will be compared to March 1
		>>> other = datetime(2017, 2, 10)  # before March 1
		>>> roll_yearday(other, 2, month, day_opt)
		1
		>>> roll_yearday(other, -7, month, day_opt)
		-7
		>>>
		>>> other = Timestamp('2014-03-15', tz='US/Eastern')  # after March 1
		>>> roll_yearday(other, 2, month, day_opt)
		2
		>>> roll_yearday(other, -7, month, day_opt)
		-6
		
		>>> month = 6
		>>> day_opt = 'end'                # `other` will be compared to June 30
		>>> other = datetime(1999, 6, 29)  # before June 30
		>>> roll_yearday(other, 5, month, day_opt)
		4
		>>> roll_yearday(other, -7, month, day_opt)
		-7
		>>>
		>>> other = Timestamp(2072, 8, 24, 6, 17, 18)  # after June 30
		>>> roll_yearday(other, 5, month, day_opt)
		5
		>>> roll_yearday(other, -7, month, day_opt)
		-6
	**/
	static public function roll_yearday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Increment the datetime `other` by the given number of days, retaining
		the time-portion of the datetime.  For tz-naive datetimes this is
		equivalent to adding a timedelta.  For tz-aware datetimes it is similar to
		dateutil's relativedelta.__add__, but handles pytz tzinfo objects.
		
		Parameters
		----------
		other : datetime or Timestamp
		days : int
		
		Returns
		-------
		shifted: datetime or Timestamp
	**/
	static public function shift_day(other:Dynamic, days:Dynamic):Dynamic;
	/**
		Given a datetime (or Timestamp) `stamp`, an integer `months` and an
		option `day_opt`, return a new datetimelike that many months later,
		with day determined by `day_opt` using relativedelta semantics.
		
		Scalar analogue of shift_months
		
		Parameters
		----------
		stamp : datetime or Timestamp
		months : int
		day_opt : None, 'start', 'end', or an integer
		    None: returned datetimelike has the same day as the input, or the
		          last day of the month if the new month is too short
		    'start': returned datetimelike has day=1
		    'end': returned datetimelike has day on the last day of the month
		    int: returned datetimelike has day equal to day_opt
		
		Returns
		-------
		shifted : datetime or Timestamp (same as input `stamp`)
	**/
	static public function shift_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : integer, float, string, datetime, list, tuple, 1-d array, Series
		
		    .. versionadded:: 0.18.1
		
		       or DataFrame/dict-like
		
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		dayfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		    If True, parses dates with the day first, eg 10/11/12 is parsed as
		    2012-11-10.
		    Warning: dayfirst=True is not strict, but will prefer to parse
		    with day first (this is a known bug, based on dateutil behavior).
		yearfirst : boolean, default False
		    Specify a date parse order if `arg` is str or its list-likes.
		
		    - If True parses dates with the year first, eg 10/11/12 is parsed as
		      2010-11-12.
		    - If both dayfirst and yearfirst are True, yearfirst is preceded (same
		      as dateutil).
		
		    Warning: yearfirst=True is not strict, but will prefer to parse
		    with year first (this is a known bug, based on dateutil beahavior).
		
		    .. versionadded:: 0.16.1
		
		utc : boolean, default None
		    Return UTC DatetimeIndex if True (converting any tz-aware
		    datetime.datetime objects as well).
		box : boolean, default True
		
		    - If True returns a DatetimeIndex
		    - If False returns ndarray of values.
		format : string, default None
		    strftime to parse time, eg "%d/%m/%Y", note that "%f" will parse
		    all the way up to nanoseconds.
		exact : boolean, True by default
		
		    - If True, require an exact format match.
		    - If False, allow the format to match anywhere in the target string.
		
		unit : string, default 'ns'
		    unit of the arg (D,s,ms,us,ns) denote the unit, which is an
		    integer or float number. This will be based off the origin.
		    Example, with unit='ms' and origin='unix' (the default), this
		    would calculate the number of milliseconds to the unix epoch start.
		infer_datetime_format : boolean, default False
		    If True and no `format` is given, attempt to infer the format of the
		    datetime strings, and if it can be inferred, switch to a faster
		    method of parsing them. In some cases this can increase the parsing
		    speed by ~5-10x.
		origin : scalar, default is 'unix'
		    Define the reference date. The numeric values would be parsed as number
		    of units (defined by `unit`) since this reference date.
		
		    - If 'unix' (or POSIX) time; origin is set to 1970-01-01.
		    - If 'julian', unit must be 'D', and origin is set to beginning of
		      Julian Calendar. Julian day number 0 is assigned to the day starting
		      at noon on January 1, 4713 BC.
		    - If Timestamp convertible, origin is set to Timestamp identified by
		      origin.
		
		    .. versionadded:: 0.20.0
		cache : boolean, default False
		    If True, use a cache of unique, converted dates to apply the datetime
		    conversion. May produce sigificant speed-up when parsing duplicate date
		    strings, especially ones with timezone offsets.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		ret : datetime if parsing succeeded.
		    Return type depends on input:
		
		    - list-like: DatetimeIndex
		    - Series: Series of datetime64 dtype
		    - scalar: Timestamp
		
		    In case when it is not possible to return designated types (e.g. when
		    any element of input is before Timestamp.min or after Timestamp.max)
		    return will have datetime.datetime type (or corresponding
		    array/Series).
		
		Examples
		--------
		Assembling a datetime from multiple columns of a DataFrame. The keys can be
		common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		                       'month': [2, 3],
		                       'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		If a date does not meet the `timestamp limitations
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html
		#timeseries-timestamp-limits>`_, passing errors='ignore'
		will return the original input instead of raising any exception.
		
		Passing errors='coerce' will force an out-of-bounds date to NaT,
		in addition to forcing non-dates (or non-parseable dates) to NaT.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='ignore')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		Passing infer_datetime_format=True can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000']*1000)
		
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=True)
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s,infer_datetime_format=False)
		1 loop, best of 3: 471 ms per loop
		
		Using a unix epoch time
		
		>>> pd.to_datetime(1490195805, unit='s')
		Timestamp('2017-03-22 15:16:45')
		>>> pd.to_datetime(1490195805433502912, unit='ns')
		Timestamp('2017-03-22 15:16:45.433502912')
		
		.. warning:: For float arg, precision rounding might happen. To prevent
		    unexpected behavior use a fixed-width exact type.
		
		Using a non-unix epoch origin
		
		>>> pd.to_datetime([1, 2, 3], unit='D',
		                   origin=pd.Timestamp('1960-01-01'))
		0    1960-01-02
		1    1960-01-03
		2    1960-01-04
		
		See also
		--------
		pandas.DataFrame.astype : Cast argument to a specified dtype.
		pandas.to_timedelta : Convert argument to timedelta.
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic, ?cache:Dynamic):Dynamic;
}