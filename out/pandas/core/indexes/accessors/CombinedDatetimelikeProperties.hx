/* This file is generated, do not edit! */
package pandas.core.indexes.accessors;
@:pythonImport("pandas.core.indexes.accessors", "CombinedDatetimelikeProperties") extern class CombinedDatetimelikeProperties {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
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
	public function ___init__(data:Dynamic, orig:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, orig:Dynamic):Void;
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
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, data:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		Add accessors to cls from the delegate class.
		
		Parameters
		----------
		cls : the class to add the methods/properties to
		delegate : the class to get methods/properties & doc-strings
		acccessors : string list of accessors to add
		typ : 'property' or 'method'
		overwrite : boolean, default False
		   overwrite the method/property in the target class if it exists
	**/
	static public function _add_delegate_accessors(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	public function _delegate_method(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_get(name:Dynamic):Dynamic;
	public function _delegate_property_set(name:Dynamic, value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add additional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Prevents setting additional attributes
	**/
	public function _freeze():Dynamic;
	public function _get_values():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Convert the Period Array/Index to the specified frequency `freq`.
		
		Parameters
		----------
		freq : str
		    a frequency
		how : str {'E', 'S'}
		    'E', 'END', or 'FINISH' for end,
		    'S', 'START', or 'BEGIN' for start.
		    Whether the elements should be aligned to the end
		    or start within pa period. January 31st ('END') vs.
		    January 1st ('START') for example.
		
		Returns
		-------
		new : Period Array/Index with the new frequency
		
		Examples
		--------
		>>> pidx = pd.period_range('2010-01-01', '2015-01-01', freq='A')
		>>> pidx
		<class 'pandas.core.indexes.period.PeriodIndex'>
		[2010, ..., 2015]
		Length: 6, Freq: A-DEC
		
		>>> pidx.asfreq('M')
		<class 'pandas.core.indexes.period.PeriodIndex'>
		[2010-12, ..., 2015-12]
		Length: 6, Freq: M
		
		>>> pidx.asfreq('M', how='S')
		<class 'pandas.core.indexes.period.PeriodIndex'>
		[2010-01, ..., 2015-01]
		Length: 6, Freq: M
	**/
	public function asfreq(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform ceil operation on the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to ceil the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    Only relevant for DatetimeIndex:
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
		
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
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Examples
		--------
		**DatetimeIndex**
		
		>>> rng = pd.date_range('1/1/2018 11:59:00', periods=3, freq='min')
		>>> rng
		DatetimeIndex(['2018-01-01 11:59:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:01:00'],
		              dtype='datetime64[ns]', freq='T')
		>>> rng.ceil('H')
		DatetimeIndex(['2018-01-01 12:00:00', '2018-01-01 12:00:00',
		               '2018-01-01 13:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		**Series**
		
		>>> pd.Series(rng).dt.ceil("H")
		0   2018-01-01 12:00:00
		1   2018-01-01 12:00:00
		2   2018-01-01 13:00:00
		dtype: datetime64[ns]
	**/
	public function ceil(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a Dataframe of the components of the Timedeltas.
		
		Returns
		-------
		DataFrame
		
		Examples
		--------
		>>> s = pd.Series(pd.to_timedelta(np.arange(5), unit='s'))
		>>> s
		0   00:00:00
		1   00:00:01
		2   00:00:02
		3   00:00:03
		4   00:00:04
		dtype: timedelta64[ns]
		>>> s.dt.components
		   days  hours  minutes  seconds  milliseconds  microseconds  nanoseconds
		0     0      0        0        0             0             0            0
		1     0      0        0        1             0             0            0
		2     0      0        0        2             0             0            0
		3     0      0        0        3             0             0            0
		4     0      0        0        4             0             0            0
	**/
	public var components : Dynamic;
	/**
		Returns numpy array of python datetime.date objects (namely, the date
		part of Timestamps without timezone information).
	**/
	public var date : Dynamic;
	/**
		The days of the datetime.
	**/
	public var day : Dynamic;
	/**
		Return the day names of the DateTimeIndex with specified locale.
		
		.. versionadded:: 0.23.0
		
		Parameters
		----------
		locale : str, optional
		    Locale determining the language in which to return the day name.
		    Default is English locale.
		
		Returns
		-------
		Index
		    Index of day names.
		
		Examples
		--------
		>>> idx = pd.date_range(start='2018-01-01', freq='D', periods=3)
		>>> idx
		DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03'],
		              dtype='datetime64[ns]', freq='D')
		>>> idx.day_name()
		Index(['Monday', 'Tuesday', 'Wednesday'], dtype='object')
	**/
	public function day_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6.
		
		Return the day of the week. It is assumed the week starts on
		Monday, which is denoted by 0 and ends on Sunday which is denoted
		by 6. This method is available on both Series with datetime
		values (using the `dt` accessor) or DatetimeIndex.
		
		Returns
		-------
		Series or Index
		    Containing integers indicating the day number.
		
		See Also
		--------
		Series.dt.dayofweek : Alias.
		Series.dt.weekday : Alias.
		Series.dt.day_name : Returns the name of the day of the week.
		
		Examples
		--------
		>>> s = pd.date_range('2016-12-31', '2017-01-08', freq='D').to_series()
		>>> s.dt.dayofweek
		2016-12-31    5
		2017-01-01    6
		2017-01-02    0
		2017-01-03    1
		2017-01-04    2
		2017-01-05    3
		2017-01-06    4
		2017-01-07    5
		2017-01-08    6
		Freq: D, dtype: int64
	**/
	public var dayofweek : Dynamic;
	/**
		The ordinal day of the year.
	**/
	public var dayofyear : Dynamic;
	/**
		Number of days for each element.
	**/
	public var days : Dynamic;
	/**
		The number of days in the month.
	**/
	public var days_in_month : Dynamic;
	/**
		The number of days in the month.
	**/
	public var daysinmonth : Dynamic;
	public var end_time : Dynamic;
	/**
		Perform floor operation on the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to floor the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    Only relevant for DatetimeIndex:
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
		
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
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Examples
		--------
		**DatetimeIndex**
		
		>>> rng = pd.date_range('1/1/2018 11:59:00', periods=3, freq='min')
		>>> rng
		DatetimeIndex(['2018-01-01 11:59:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:01:00'],
		              dtype='datetime64[ns]', freq='T')
		>>> rng.floor('H')
		DatetimeIndex(['2018-01-01 11:00:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		**Series**
		
		>>> pd.Series(rng).dt.floor("H")
		0   2018-01-01 11:00:00
		1   2018-01-01 12:00:00
		2   2018-01-01 12:00:00
		dtype: datetime64[ns]
	**/
	public function floor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var freq : Dynamic;
	/**
		The hours of the datetime.
	**/
	public var hour : Dynamic;
	/**
		Boolean indicator if the date belongs to a leap year.
		
		A leap year is a year, which has 366 days (instead of 365) including
		29th of February as an intercalary day.
		Leap years are years which are multiples of four with the exception
		of years divisible by 100 but not by 400.
		
		Returns
		-------
		Series or ndarray
		     Booleans indicating if dates belong to a leap year.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> idx = pd.date_range("2012-01-01", "2015-01-01", freq="Y")
		>>> idx
		DatetimeIndex(['2012-12-31', '2013-12-31', '2014-12-31'],
		              dtype='datetime64[ns]', freq='A-DEC')
		>>> idx.is_leap_year
		array([ True, False, False], dtype=bool)
		
		>>> dates = pd.Series(idx)
		>>> dates_series
		0   2012-12-31
		1   2013-12-31
		2   2014-12-31
		dtype: datetime64[ns]
		>>> dates_series.dt.is_leap_year
		0     True
		1    False
		2    False
		dtype: bool
	**/
	public var is_leap_year : Dynamic;
	/**
		Indicates whether the date is the last day of the month.
		
		Returns
		-------
		Series or array
		    For Series, returns a Series with boolean values.
		    For DatetimeIndex, returns a boolean array.
		
		See Also
		--------
		is_month_start : Return a boolean indicating whether the date
		    is the first day of the month.
		is_month_end : Return a boolean indicating whether the date
		    is the last day of the month.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> s = pd.Series(pd.date_range("2018-02-27", periods=3))
		>>> s
		0   2018-02-27
		1   2018-02-28
		2   2018-03-01
		dtype: datetime64[ns]
		>>> s.dt.is_month_start
		0    False
		1    False
		2    True
		dtype: bool
		>>> s.dt.is_month_end
		0    False
		1    True
		2    False
		dtype: bool
		
		>>> idx = pd.date_range("2018-02-27", periods=3)
		>>> idx.is_month_start
		array([False, False, True])
		>>> idx.is_month_end
		array([False, True, False])
	**/
	public var is_month_end : Dynamic;
	/**
		Indicates whether the date is the first day of the month.
		
		Returns
		-------
		Series or array
		    For Series, returns a Series with boolean values.
		    For DatetimeIndex, returns a boolean array.
		
		See Also
		--------
		is_month_start : Return a boolean indicating whether the date
		    is the first day of the month.
		is_month_end : Return a boolean indicating whether the date
		    is the last day of the month.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> s = pd.Series(pd.date_range("2018-02-27", periods=3))
		>>> s
		0   2018-02-27
		1   2018-02-28
		2   2018-03-01
		dtype: datetime64[ns]
		>>> s.dt.is_month_start
		0    False
		1    False
		2    True
		dtype: bool
		>>> s.dt.is_month_end
		0    False
		1    True
		2    False
		dtype: bool
		
		>>> idx = pd.date_range("2018-02-27", periods=3)
		>>> idx.is_month_start
		array([False, False, True])
		>>> idx.is_month_end
		array([False, True, False])
	**/
	public var is_month_start : Dynamic;
	/**
		Indicator for whether the date is the last day of a quarter.
		
		Returns
		-------
		is_quarter_end : Series or DatetimeIndex
		    The same type as the original data with boolean values. Series will
		    have the same name and index. DatetimeIndex will have the same
		    name.
		
		See Also
		--------
		quarter : Return the quarter of the date.
		is_quarter_start : Similar property indicating the quarter start.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> df = pd.DataFrame({'dates': pd.date_range("2017-03-30",
		...                    periods=4)})
		>>> df.assign(quarter=df.dates.dt.quarter,
		...           is_quarter_end=df.dates.dt.is_quarter_end)
		       dates  quarter    is_quarter_end
		0 2017-03-30        1             False
		1 2017-03-31        1              True
		2 2017-04-01        2             False
		3 2017-04-02        2             False
		
		>>> idx = pd.date_range('2017-03-30', periods=4)
		>>> idx
		DatetimeIndex(['2017-03-30', '2017-03-31', '2017-04-01', '2017-04-02'],
		              dtype='datetime64[ns]', freq='D')
		
		>>> idx.is_quarter_end
		array([False,  True, False, False])
	**/
	public var is_quarter_end : Dynamic;
	/**
		Indicator for whether the date is the first day of a quarter.
		
		Returns
		-------
		is_quarter_start : Series or DatetimeIndex
		    The same type as the original data with boolean values. Series will
		    have the same name and index. DatetimeIndex will have the same
		    name.
		
		See Also
		--------
		quarter : Return the quarter of the date.
		is_quarter_end : Similar property for indicating the quarter start.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> df = pd.DataFrame({'dates': pd.date_range("2017-03-30",
		...                   periods=4)})
		>>> df.assign(quarter=df.dates.dt.quarter,
		...           is_quarter_start=df.dates.dt.is_quarter_start)
		       dates  quarter  is_quarter_start
		0 2017-03-30        1             False
		1 2017-03-31        1             False
		2 2017-04-01        2              True
		3 2017-04-02        2             False
		
		>>> idx = pd.date_range('2017-03-30', periods=4)
		>>> idx
		DatetimeIndex(['2017-03-30', '2017-03-31', '2017-04-01', '2017-04-02'],
		              dtype='datetime64[ns]', freq='D')
		
		>>> idx.is_quarter_start
		array([False, False,  True, False])
	**/
	public var is_quarter_start : Dynamic;
	/**
		Indicate whether the date is the last day of the year.
		
		Returns
		-------
		Series or DatetimeIndex
		    The same type as the original data with boolean values. Series will
		    have the same name and index. DatetimeIndex will have the same
		    name.
		
		See Also
		--------
		is_year_start : Similar property indicating the start of the year.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> dates = pd.Series(pd.date_range("2017-12-30", periods=3))
		>>> dates
		0   2017-12-30
		1   2017-12-31
		2   2018-01-01
		dtype: datetime64[ns]
		
		>>> dates.dt.is_year_end
		0    False
		1     True
		2    False
		dtype: bool
		
		>>> idx = pd.date_range("2017-12-30", periods=3)
		>>> idx
		DatetimeIndex(['2017-12-30', '2017-12-31', '2018-01-01'],
		              dtype='datetime64[ns]', freq='D')
		
		>>> idx.is_year_end
		array([False,  True, False])
	**/
	public var is_year_end : Dynamic;
	/**
		Indicate whether the date is the first day of a year.
		
		Returns
		-------
		Series or DatetimeIndex
		    The same type as the original data with boolean values. Series will
		    have the same name and index. DatetimeIndex will have the same
		    name.
		
		See Also
		--------
		is_year_end : Similar property indicating the last day of the year.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> dates = pd.Series(pd.date_range("2017-12-30", periods=3))
		>>> dates
		0   2017-12-30
		1   2017-12-31
		2   2018-01-01
		dtype: datetime64[ns]
		
		>>> dates.dt.is_year_start
		0    False
		1    False
		2    True
		dtype: bool
		
		>>> idx = pd.date_range("2017-12-30", periods=3)
		>>> idx
		DatetimeIndex(['2017-12-30', '2017-12-31', '2018-01-01'],
		              dtype='datetime64[ns]', freq='D')
		
		>>> idx.is_year_start
		array([False, False,  True])
	**/
	public var is_year_start : Dynamic;
	/**
		The microseconds of the datetime.
	**/
	public var microsecond : Dynamic;
	/**
		Number of microseconds (>= 0 and less than 1 second) for each element.
	**/
	public var microseconds : Dynamic;
	/**
		The minutes of the datetime.
	**/
	public var minute : Dynamic;
	/**
		The month as January=1, December=12. 
	**/
	public var month : Dynamic;
	/**
		Return the month names of the DateTimeIndex with specified locale.
		
		.. versionadded:: 0.23.0
		
		Parameters
		----------
		locale : str, optional
		    Locale determining the language in which to return the month name.
		    Default is English locale.
		
		Returns
		-------
		Index
		    Index of month names.
		
		Examples
		--------
		>>> idx = pd.date_range(start='2018-01', freq='M', periods=3)
		>>> idx
		DatetimeIndex(['2018-01-31', '2018-02-28', '2018-03-31'],
		              dtype='datetime64[ns]', freq='M')
		>>> idx.month_name()
		Index(['January', 'February', 'March'], dtype='object')
	**/
	public function month_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The nanoseconds of the datetime.
	**/
	public var nanosecond : Dynamic;
	/**
		Number of nanoseconds (>= 0 and less than 1 microsecond) for each element.
	**/
	public var nanoseconds : Dynamic;
	/**
		Convert times to midnight.
		
		The time component of the date-time is converted to midnight i.e.
		00:00:00. This is useful in cases, when the time does not matter.
		Length is unaltered. The timezones are unaffected.
		
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on Datetime Array/Index.
		
		Returns
		-------
		DatetimeArray, DatetimeIndex or Series
		    The same type as the original data. Series will have the same
		    name and index. DatetimeIndex will have the same name.
		
		See Also
		--------
		floor : Floor the datetimes to the specified freq.
		ceil : Ceil the datetimes to the specified freq.
		round : Round the datetimes to the specified freq.
		
		Examples
		--------
		>>> idx = pd.date_range(start='2014-08-01 10:00', freq='H',
		...                     periods=3, tz='Asia/Calcutta')
		>>> idx
		DatetimeIndex(['2014-08-01 10:00:00+05:30',
		               '2014-08-01 11:00:00+05:30',
		               '2014-08-01 12:00:00+05:30'],
		                dtype='datetime64[ns, Asia/Calcutta]', freq='H')
		>>> idx.normalize()
		DatetimeIndex(['2014-08-01 00:00:00+05:30',
		               '2014-08-01 00:00:00+05:30',
		               '2014-08-01 00:00:00+05:30'],
		               dtype='datetime64[ns, Asia/Calcutta]', freq=None)
	**/
	public function normalize(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The quarter of the date.
	**/
	public var quarter : Dynamic;
	public var qyear : Dynamic;
	/**
		Perform round operation on the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to round the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    Only relevant for DatetimeIndex:
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
		
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
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Examples
		--------
		**DatetimeIndex**
		
		>>> rng = pd.date_range('1/1/2018 11:59:00', periods=3, freq='min')
		>>> rng
		DatetimeIndex(['2018-01-01 11:59:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:01:00'],
		              dtype='datetime64[ns]', freq='T')
		>>> rng.round('H')
		DatetimeIndex(['2018-01-01 12:00:00', '2018-01-01 12:00:00',
		               '2018-01-01 12:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		**Series**
		
		>>> pd.Series(rng).dt.round("H")
		0   2018-01-01 12:00:00
		1   2018-01-01 12:00:00
		2   2018-01-01 12:00:00
		dtype: datetime64[ns]
	**/
	public function round(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The seconds of the datetime.
	**/
	public var second : Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day) for each element.
	**/
	public var seconds : Dynamic;
	public var start_time : Dynamic;
	/**
		Convert to Index using specified date_format.
		
		Return an Index of formatted strings specified by date_format, which
		supports the same string format as the python standard library. Details
		of the string format can be found in `python string format
		doc <https://docs.python.org/3/library/datetime.html#strftime-and-strptime-behavior>`__
		
		Parameters
		----------
		date_format : str
		    Date format string (e.g. "%Y-%m-%d").
		
		Returns
		-------
		Index
		    Index of formatted strings
		
		See Also
		--------
		to_datetime : Convert the given argument to datetime.
		DatetimeIndex.normalize : Return DatetimeIndex with times to midnight.
		DatetimeIndex.round : Round the DatetimeIndex to the specified freq.
		DatetimeIndex.floor : Floor the DatetimeIndex to the specified freq.
		
		Examples
		--------
		>>> rng = pd.date_range(pd.Timestamp("2018-03-10 09:00"),
		...                     periods=3, freq='s')
		>>> rng.strftime('%B %d, %Y, %r')
		Index(['March 10, 2018, 09:00:00 AM', 'March 10, 2018, 09:00:01 AM',
		       'March 10, 2018, 09:00:02 AM'],
		      dtype='object')
	**/
	public function strftime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns numpy array of datetime.time. The time part of the Timestamps.
	**/
	public var time : Dynamic;
	/**
		Returns numpy array of datetime.time also containing timezone
		information. The time part of the Timestamps.
	**/
	public var timetz : Dynamic;
	/**
		Cast to PeriodArray/Index at a particular frequency.
		
		Converts DatetimeArray/Index to PeriodArray/Index.
		
		Parameters
		----------
		freq : string or Offset, optional
		    One of pandas' :ref:`offset strings <timeseries.offset_aliases>`
		    or an Offset object. Will be inferred by default.
		
		Returns
		-------
		PeriodArray/Index
		
		Raises
		------
		ValueError
		    When converting a DatetimeArray/Index with non-regular values,
		    so that a frequency cannot be inferred.
		
		See Also
		--------
		PeriodIndex: Immutable ndarray holding ordinal values.
		DatetimeIndex.to_pydatetime: Return DatetimeIndex as object.
		
		Examples
		--------
		>>> df = pd.DataFrame({"y": [1,2,3]},
		...                   index=pd.to_datetime(["2000-03-31 00:00:00",
		...                                         "2000-05-31 00:00:00",
		...                                         "2000-08-31 00:00:00"]))
		>>> df.index.to_period("M")
		PeriodIndex(['2000-03', '2000-05', '2000-08'],
		            dtype='period[M]', freq='M')
		
		Infer the daily frequency
		
		>>> idx = pd.date_range("2017-01-01", periods=2)
		>>> idx.to_period()
		PeriodIndex(['2017-01-01', '2017-01-02'],
		            dtype='period[D]', freq='D')
	**/
	public function to_period(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the data as an array of native Python datetime objects.
		
		Timezone information is retained if present.
		
		.. warning::
		
		   Python's datetime uses microsecond resolution, which is lower than
		   pandas (nanosecond). The values are truncated.
		
		Returns
		-------
		numpy.ndarray
		    object dtype array containing native Python datetime objects.
		
		See Also
		--------
		datetime.datetime : Standard library value for a datetime.
		
		Examples
		--------
		>>> s = pd.Series(pd.date_range('20180310', periods=2))
		>>> s
		0   2018-03-10
		1   2018-03-11
		dtype: datetime64[ns]
		
		>>> s.dt.to_pydatetime()
		array([datetime.datetime(2018, 3, 10, 0, 0),
		       datetime.datetime(2018, 3, 11, 0, 0)], dtype=object)
		
		pandas' nanosecond precision is truncated to microseconds.
		
		>>> s = pd.Series(pd.date_range('20180310', periods=2, freq='ns'))
		>>> s
		0   2018-03-10 00:00:00.000000000
		1   2018-03-10 00:00:00.000000001
		dtype: datetime64[ns]
		
		>>> s.dt.to_pydatetime()
		array([datetime.datetime(2018, 3, 10, 0, 0),
		       datetime.datetime(2018, 3, 10, 0, 0)], dtype=object)
	**/
	public function to_pydatetime():Dynamic;
	/**
		Return an array of native `datetime.timedelta` objects.
		
		Python's standard `datetime` library uses a different representation
		timedelta's. This method converts a Series of pandas Timedeltas
		to `datetime.timedelta` format with the same length as the original
		Series.
		
		Returns
		-------
		a : numpy.ndarray
		    1D array containing data with `datetime.timedelta` type.
		
		See Also
		--------
		datetime.timedelta
		
		Examples
		--------
		>>> s = pd.Series(pd.to_timedelta(np.arange(5), unit='d'))
		>>> s
		0   0 days
		1   1 days
		2   2 days
		3   3 days
		4   4 days
		dtype: timedelta64[ns]
		
		>>> s.dt.to_pytimedelta()
		array([datetime.timedelta(0), datetime.timedelta(1),
		       datetime.timedelta(2), datetime.timedelta(3),
		       datetime.timedelta(4)], dtype=object)
	**/
	public function to_pytimedelta():Dynamic;
	/**
		Cast to DatetimeArray/Index.
		
		Parameters
		----------
		freq : string or DateOffset, optional
		    Target frequency. The default is 'D' for week or longer,
		    'S' otherwise
		how : {'s', 'e', 'start', 'end'}
		
		Returns
		-------
		DatetimeArray/Index
	**/
	public function to_timestamp(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return total duration of each element expressed in seconds.
		
		This method is available directly on TimedeltaArray, TimedeltaIndex
		and on Series containing timedelta values under the ``.dt`` namespace.
		
		Returns
		-------
		seconds : [ndarray, Float64Index, Series]
		    When the calling object is a TimedeltaArray, the return type
		    is ndarray.  When the calling object is a TimedeltaIndex,
		    the return type is a Float64Index. When the calling object
		    is a Series, the return type is Series of type `float64` whose
		    index is the same as the original.
		
		See Also
		--------
		datetime.timedelta.total_seconds : Standard library version
		    of this method.
		TimedeltaIndex.components : Return a DataFrame with components of
		    each Timedelta.
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series(pd.to_timedelta(np.arange(5), unit='d'))
		>>> s
		0   0 days
		1   1 days
		2   2 days
		3   3 days
		4   4 days
		dtype: timedelta64[ns]
		
		>>> s.dt.total_seconds()
		0         0.0
		1     86400.0
		2    172800.0
		3    259200.0
		4    345600.0
		dtype: float64
		
		**TimedeltaIndex**
		
		>>> idx = pd.to_timedelta(np.arange(5), unit='d')
		>>> idx
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
		
		>>> idx.total_seconds()
		Float64Index([0.0, 86400.0, 172800.0, 259200.00000000003, 345600.0],
		             dtype='float64')
	**/
	public function total_seconds(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return timezone, if any.
		
		Returns
		-------
		datetime.tzinfo, pytz.tzinfo.BaseTZInfo, dateutil.tz.tz.tzfile, or None
		    Returns None when the array is tz-naive.
	**/
	public var tz : Dynamic;
	/**
		Convert tz-aware Datetime Array/Index from one time zone to another.
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time. Corresponding timestamps would be converted
		    to this time zone of the Datetime Array/Index. A `tz` of None will
		    convert to UTC and remove the timezone information.
		
		Returns
		-------
		normalized : same type as self
		
		Raises
		------
		TypeError
		    If Datetime Array/Index is tz-naive.
		
		See Also
		--------
		DatetimeIndex.tz : A timezone that has a variable offset from UTC.
		DatetimeIndex.tz_localize : Localize tz-naive DatetimeIndex to a
		    given time zone, or remove timezone from a tz-aware DatetimeIndex.
		
		Examples
		--------
		With the `tz` parameter, we can change the DatetimeIndex
		to other time zones:
		
		>>> dti = pd.date_range(start='2014-08-01 09:00',
		...                     freq='H', periods=3, tz='Europe/Berlin')
		
		>>> dti
		DatetimeIndex(['2014-08-01 09:00:00+02:00',
		               '2014-08-01 10:00:00+02:00',
		               '2014-08-01 11:00:00+02:00'],
		              dtype='datetime64[ns, Europe/Berlin]', freq='H')
		
		>>> dti.tz_convert('US/Central')
		DatetimeIndex(['2014-08-01 02:00:00-05:00',
		               '2014-08-01 03:00:00-05:00',
		               '2014-08-01 04:00:00-05:00'],
		              dtype='datetime64[ns, US/Central]', freq='H')
		
		With the ``tz=None``, we can remove the timezone (after converting
		to UTC if necessary):
		
		>>> dti = pd.date_range(start='2014-08-01 09:00',freq='H',
		...                     periods=3, tz='Europe/Berlin')
		
		>>> dti
		DatetimeIndex(['2014-08-01 09:00:00+02:00',
		               '2014-08-01 10:00:00+02:00',
		               '2014-08-01 11:00:00+02:00'],
		                dtype='datetime64[ns, Europe/Berlin]', freq='H')
		
		>>> dti.tz_convert(None)
		DatetimeIndex(['2014-08-01 07:00:00',
		               '2014-08-01 08:00:00',
		               '2014-08-01 09:00:00'],
		                dtype='datetime64[ns]', freq='H')
	**/
	public function tz_convert(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Localize tz-naive Datetime Array/Index to tz-aware
		Datetime Array/Index.
		
		This method takes a time zone (tz) naive Datetime Array/Index object
		and makes this time zone aware. It does not move the time to another
		time zone.
		Time zone localization helps to switch from time zone aware to time
		zone unaware objects.
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone to convert timestamps to. Passing ``None`` will
		    remove the time zone information preserving local time.
		ambiguous : 'infer', 'NaT', bool array, default 'raise'
		    When clocks moved backward due to DST, ambiguous times may arise.
		    For example in Central European Time (UTC+01), when going from
		    03:00 DST to 02:00 non-DST, 02:30:00 local time occurs both at
		    00:30:00 UTC and at 01:30:00 UTC. In such a situation, the
		    `ambiguous` parameter dictates how ambiguous times should be
		    handled.
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False signifies a
		      non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
		
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
		
		errors : {'raise', 'coerce'}, default None
		
		    - 'raise' will raise a NonExistentTimeError if a timestamp is not
		      valid in the specified time zone (e.g. due to a transition from
		      or to DST time). Use ``nonexistent='raise'`` instead.
		    - 'coerce' will return NaT if the timestamp can not be converted
		      to the specified time zone. Use ``nonexistent='NaT'`` instead.
		
		    .. deprecated:: 0.24.0
		
		Returns
		-------
		result : same type as self
		    Array/Index converted to the specified time zone.
		
		Raises
		------
		TypeError
		    If the Datetime Array/Index is tz-aware and tz is not None.
		
		See Also
		--------
		DatetimeIndex.tz_convert : Convert tz-aware DatetimeIndex from
		    one time zone to another.
		
		Examples
		--------
		>>> tz_naive = pd.date_range('2018-03-01 09:00', periods=3)
		>>> tz_naive
		DatetimeIndex(['2018-03-01 09:00:00', '2018-03-02 09:00:00',
		               '2018-03-03 09:00:00'],
		              dtype='datetime64[ns]', freq='D')
		
		Localize DatetimeIndex in US/Eastern time zone:
		
		>>> tz_aware = tz_naive.tz_localize(tz='US/Eastern')
		>>> tz_aware
		DatetimeIndex(['2018-03-01 09:00:00-05:00',
		               '2018-03-02 09:00:00-05:00',
		               '2018-03-03 09:00:00-05:00'],
		              dtype='datetime64[ns, US/Eastern]', freq='D')
		
		With the ``tz=None``, we can remove the time zone information
		while keeping the local time (not converted to UTC):
		
		>>> tz_aware.tz_localize(None)
		DatetimeIndex(['2018-03-01 09:00:00', '2018-03-02 09:00:00',
		               '2018-03-03 09:00:00'],
		              dtype='datetime64[ns]', freq='D')
		
		Be careful with DST changes. When there is sequential data, pandas can
		infer the DST time:
		>>> s = pd.to_datetime(pd.Series([
		... '2018-10-28 01:30:00',
		... '2018-10-28 02:00:00',
		... '2018-10-28 02:30:00',
		... '2018-10-28 02:00:00',
		... '2018-10-28 02:30:00',
		... '2018-10-28 03:00:00',
		... '2018-10-28 03:30:00']))
		>>> s.dt.tz_localize('CET', ambiguous='infer')
		2018-10-28 01:30:00+02:00    0
		2018-10-28 02:00:00+02:00    1
		2018-10-28 02:30:00+02:00    2
		2018-10-28 02:00:00+01:00    3
		2018-10-28 02:30:00+01:00    4
		2018-10-28 03:00:00+01:00    5
		2018-10-28 03:30:00+01:00    6
		dtype: int64
		
		In some cases, inferring the DST is impossible. In such cases, you can
		pass an ndarray to the ambiguous parameter to set the DST explicitly
		
		>>> s = pd.to_datetime(pd.Series([
		... '2018-10-28 01:20:00',
		... '2018-10-28 02:36:00',
		... '2018-10-28 03:46:00']))
		>>> s.dt.tz_localize('CET', ambiguous=np.array([True, True, False]))
		0   2018-10-28 01:20:00+02:00
		1   2018-10-28 02:36:00+02:00
		2   2018-10-28 03:46:00+01:00
		dtype: datetime64[ns, CET]
		
		If the DST transition causes nonexistent times, you can shift these
		dates forward or backwards with a timedelta object or `'shift_forward'`
		or `'shift_backwards'`.
		>>> s = pd.to_datetime(pd.Series([
		... '2015-03-29 02:30:00',
		... '2015-03-29 03:30:00']))
		>>> s.dt.tz_localize('Europe/Warsaw', nonexistent='shift_forward')
		0   2015-03-29 03:00:00+02:00
		1   2015-03-29 03:30:00+02:00
		dtype: datetime64[ns, 'Europe/Warsaw']
		>>> s.dt.tz_localize('Europe/Warsaw', nonexistent='shift_backward')
		0   2015-03-29 01:59:59.999999999+01:00
		1   2015-03-29 03:30:00+02:00
		dtype: datetime64[ns, 'Europe/Warsaw']
		>>> s.dt.tz_localize('Europe/Warsaw', nonexistent=pd.Timedelta('1H'))
		0   2015-03-29 03:30:00+02:00
		1   2015-03-29 03:30:00+02:00
		dtype: datetime64[ns, 'Europe/Warsaw']
	**/
	public function tz_localize(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The week ordinal of the year.
	**/
	public var week : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6.
		
		Return the day of the week. It is assumed the week starts on
		Monday, which is denoted by 0 and ends on Sunday which is denoted
		by 6. This method is available on both Series with datetime
		values (using the `dt` accessor) or DatetimeIndex.
		
		Returns
		-------
		Series or Index
		    Containing integers indicating the day number.
		
		See Also
		--------
		Series.dt.dayofweek : Alias.
		Series.dt.weekday : Alias.
		Series.dt.day_name : Returns the name of the day of the week.
		
		Examples
		--------
		>>> s = pd.date_range('2016-12-31', '2017-01-08', freq='D').to_series()
		>>> s.dt.dayofweek
		2016-12-31    5
		2017-01-01    6
		2017-01-02    0
		2017-01-03    1
		2017-01-04    2
		2017-01-05    3
		2017-01-06    4
		2017-01-07    5
		2017-01-08    6
		Freq: D, dtype: int64
	**/
	public var weekday : Dynamic;
	/**
		The name of day in a week (ex: Friday)
		
		.. deprecated:: 0.23.0
	**/
	public var weekday_name : Dynamic;
	/**
		The week ordinal of the year.
	**/
	public var weekofyear : Dynamic;
	/**
		The year of the datetime.
	**/
	public var year : Dynamic;
}