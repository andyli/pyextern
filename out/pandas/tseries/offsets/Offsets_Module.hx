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
	static public function _delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _delta_to_tick(delta:Dynamic):Dynamic;
	/**
		wkday is the result of monthrange(year, month)
		
		If it's a saturday or sunday, increment first business day to reflect this
	**/
	static public function _get_firstbday(wkday:Dynamic):Dynamic;
	static public var _int_to_month : Dynamic;
	static public var _int_to_weekday : Dynamic;
	static public function _is_normalized(dt:Dynamic):Dynamic;
	static public var _month_to_int : Dynamic;
	static public function _tick_comp(op:Dynamic):Dynamic;
	static public var _weekday_to_int : Dynamic;
	static public function apply_index_wraps(func:Dynamic):Dynamic;
	static public function apply_wraps(func:Dynamic):Dynamic;
	static public function as_datetime(obj:Dynamic):Dynamic;
	static public function as_timestamp(obj:Dynamic):Dynamic;
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
		
		EASTER_JULIAN   = 1
		EASTER_ORTHODOX = 2
		EASTER_WESTERN  = 3
		
		The default method is method 3.
		
		More about the algorithm may be found at:
		
		http://users.chariot.net.au/~gmarts/eastalg.htm
		
		and
		
		http://www.tondering.dk/claus/calendar.html
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
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var prefix_mapping : Dynamic;
	/**
		Convert argument to datetime.
		
		Parameters
		----------
		arg : string, datetime, list, tuple, 1-d array, or Series
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
		
		    .. versionadded: 0.16.1
		
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
		
		unit : unit of the arg (D,s,ms,us,ns) denote the unit in epoch
		    (e.g. a unix timestamp), which is an integer/float number.
		infer_datetime_format : boolean, default False
		    If no `format` is given, try to infer the format based on the first
		    datetime string. Provides a large speed-up in many cases.
		
		Returns
		-------
		ret : datetime if parsing succeeded.
		    Return type depends on input:
		
		    - list-like: DatetimeIndex
		    - Series: Series of datetime64 dtype
		    - scalar: Timestamp
		
		    In case when it is not possible to return designated types (e.g. when
		    any element of input is before Timestamp.min or after Timestamp.max)
		    return will have datetime.datetime type (or correspoding array/Series).
		
		Examples
		--------
		Take separate series and convert to datetime
		
		>>> import pandas as pd
		>>> i = pd.date_range('20000101',periods=100)
		>>> df = pd.DataFrame(dict(year = i.year, month = i.month, day = i.day))
		>>> pd.to_datetime(df.year*10000 + df.month*100 + df.day, format='%Y%m%d')
		0    2000-01-01
		1    2000-01-02
		...
		98   2000-04-08
		99   2000-04-09
		Length: 100, dtype: datetime64[ns]
		
		Or from strings
		
		>>> df = df.astype(str)
		>>> pd.to_datetime(df.day + df.month + df.year, format="%d%m%Y")
		0    2000-01-01
		1    2000-01-02
		...
		98   2000-04-08
		99   2000-04-09
		Length: 100, dtype: datetime64[ns]
		
		Date that does not meet timestamp limitations:
		
		>>> pd.to_datetime('13000101', format='%Y%m%d')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?box:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?coerce:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
}