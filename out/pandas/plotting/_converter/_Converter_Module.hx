/* This file is generated, do not edit! */
package pandas.plotting._converter;
@:pythonImport("pandas.plotting._converter") extern class _Converter_Module {
	static public var HOURS_PER_DAY : Dynamic;
	static public var MIN_PER_HOUR : Dynamic;
	static public var MUSEC_PER_DAY : Dynamic;
	static public var SEC_PER_DAY : Dynamic;
	static public var SEC_PER_HOUR : Dynamic;
	static public var SEC_PER_MIN : Dynamic;
	static public var _WARN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _annual_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	static public function _check_implicitly_registered():Dynamic;
	static public function _daily_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	/**
		Convert :mod:`datetime` to the Gregorian date as UTC float days,
		preserving hours, minutes, seconds and microseconds.  Return value
		is a :func:`float`.
	**/
	static public function _dt_to_float_ordinal(dt:Dynamic):Dynamic;
	static public function _from_ordinal(x:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Returns a default spacing between consecutive ticks for annual data.
	**/
	static public function _get_default_annual_spacing(nyears:Dynamic):Dynamic;
	static public function _monthly_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	static public var _mpl_units : Dynamic;
	static public function _quarterly_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	static public function _to_ordinalf(tm:Dynamic):Dynamic;
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
		Remove pandas' formatters and converters
		
		Removes the custom converters added by :func:`register`. This
		attempts to set the state of the registry back to the state before
		pandas registered its own units. Converters for pandas' own types like
		Timestamp and Period are removed completely. Converters for types
		pandas overwrites, like ``datetime.datetime``, are restored to their
		original value.
		
		See Also
		--------
		deregister_matplotlib_converters
	**/
	static public function deregister():Dynamic;
	static public function get_datevalue(date:Dynamic, freq:Dynamic):Dynamic;
	static public function get_finder(freq:Dynamic):Dynamic;
	/**
		Return frequency code of given frequency str.
		If input is not string, return input as it is.
		
		Examples
		--------
		>>> get_freq('A')
		1000
		
		>>> get_freq('3A')
		1000
	**/
	static public function get_freq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_pairs():Dynamic;
	/**
		Returns true if the ``label_flags`` indicate there is at least one label
		for this level.
		
		if the minimum view limit is not an exact integer, then the first tick
		label won't be shown, so we must adjust for that.
	**/
	static public function has_level_label(label_flags:Dynamic, vmin:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the datetime64[ns] dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the datetime64[ns] dtype.
		
		Examples
		--------
		>>> is_datetime64_ns_dtype(str)
		False
		>>> is_datetime64_ns_dtype(int)
		False
		>>> is_datetime64_ns_dtype(np.datetime64)  # no unit
		False
		>>> is_datetime64_ns_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_ns_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_ns_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_ns_dtype(np.array([], dtype=np.datetime64))  # no unit
		False
		>>> is_datetime64_ns_dtype(np.array([],
		                           dtype="datetime64[ps]"))  # wrong unit
		False
		>>> is_datetime64_ns_dtype(pd.DatetimeIndex([1, 2, 3],
		                           dtype=np.datetime64))  # has 'ns' unit
		True
	**/
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like, and that all of its elements
		are also list-like.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_nested_list_like([[1, 2, 3]])
		True
		>>> is_nested_list_like([{1, 2, 3}, {1, 2, 3}])
		True
		>>> is_nested_list_like(["foo"])
		False
		>>> is_nested_list_like([])
		False
		>>> is_nested_list_like([[1, 2, 3], 1])
		False
		
		Notes
		-----
		This won't reliably detect whether a consumable iterator (e. g.
		a generator) is a nested-list-like without consuming the iterator.
		To avoid consuming it, we always return False if the outer container
		doesn't define `__len__`.
		
		See Also
		--------
		is_list_like
	**/
	static public function is_nested_list_like(obj:Dynamic):Bool;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modify the endpoints of a range as needed to avoid singularities.
		
		Parameters
		----------
		vmin, vmax : float
		    The initial endpoints.
		expander : float, optional, default: 0.001
		    Fractional amount by which *vmin* and *vmax* are expanded if
		    the original interval is too small, based on *tiny*.
		tiny : float, optional, default: 1e-15
		    Threshold for the ratio of the interval to the maximum absolute
		    value of its endpoints.  If the interval is smaller than
		    this, it will be expanded.  This value should be around
		    1e-15 or larger; otherwise the interval will be approaching
		    the double precision resolution limit.
		increasing : bool, optional, default: True
		    If True, swap *vmin*, *vmax* if *vmin* > *vmax*.
		
		Returns
		-------
		vmin, vmax : float
		    Endpoints, expanded and/or swapped if necessary.
		    If either input is inf or NaN, or if both inputs are 0 or very
		    close to zero, it returns -*expander*, *expander*.
	**/
	static public function nonsingular(vmin:Dynamic, vmax:Dynamic, ?expander:Dynamic, ?tiny:Dynamic, ?increasing:Dynamic):Float;
	/**
		Returns the indices where the given period changes.
		
		Parameters
		----------
		dates : PeriodIndex
		    Array of intervals to monitor.
		period : string
		    Name of the period to monitor.
	**/
	static public function period_break(dates:Dynamic, period:Dynamic):Dynamic;
	/**
		Return a fixed frequency PeriodIndex, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or period-like, default None
		    Left bound for generating periods
		end : string or period-like, default None
		    Right bound for generating periods
		periods : integer, default None
		    Number of periods to generate
		freq : string or DateOffset, optional
		    Frequency alias. By default the freq is taken from `start` or `end`
		    if those are Period objects. Otherwise, the default is ``"D"`` for
		    daily frequency.
		
		name : string, default None
		    Name of the resulting PeriodIndex
		
		Returns
		-------
		prng : PeriodIndex
		
		Notes
		-----
		Of the three parameters: ``start``, ``end``, and ``periods``, exactly two
		must be specified.
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		
		>>> pd.period_range(start='2017-01-01', end='2018-01-01', freq='M')
		PeriodIndex(['2017-01', '2017-02', '2017-03', '2017-04', '2017-05',
		             '2017-06', '2017-06', '2017-07', '2017-08', '2017-09',
		             '2017-10', '2017-11', '2017-12', '2018-01'],
		            dtype='period[M]', freq='M')
		
		If ``start`` or ``end`` are ``Period`` objects, they will be used as anchor
		endpoints for a ``PeriodIndex`` with frequency matching that of the
		``period_range`` constructor.
		
		>>> pd.period_range(start=pd.Period('2017Q1', freq='Q'),
		...                 end=pd.Period('2017Q2', freq='Q'), freq='M')
		PeriodIndex(['2017-03', '2017-04', '2017-05', '2017-06'],
		            dtype='period[M]', freq='M')
	**/
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):pandas.PeriodIndex;
	/**
		Register Pandas Formatters and Converters with matplotlib
		
		This function modifies the global ``matplotlib.units.registry``
		dictionary. Pandas adds custom converters for
		
		* pd.Timestamp
		* pd.Period
		* np.datetime64
		* datetime.datetime
		* datetime.date
		* datetime.time
		
		See Also
		--------
		deregister_matplotlib_converter
	**/
	static public function register(?explicit:Dynamic):Dynamic;
	static public function time2num(d:Dynamic):Dynamic;
}