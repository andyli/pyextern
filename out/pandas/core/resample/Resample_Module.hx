/* This file is generated, do not edit! */
package pandas.core.resample;
@:pythonImport("pandas.core.resample") extern class Resample_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _adjust_dates_anchored(first:Dynamic, last:Dynamic, offset:Dynamic, ?closed:Dynamic, ?base:Dynamic):Dynamic;
	/**
		Adjust the provided `first` and `last` Periods to the respective Period of
		the given offset that encompasses them.
		
		Parameters
		----------
		first : pd.Period
		    The beginning Period of the range to be adjusted.
		last : pd.Period
		    The ending Period of the range to be adjusted.
		offset : pd.DateOffset
		    The dateoffset to which the Periods will be adjusted.
		closed : {'right', 'left'}, default None
		    Which side of bin interval is closed.
		base : int, default 0
		    The "origin" of the adjusted Periods.
		
		Returns
		-------
		A tuple of length 2, containing the adjusted pd.Period objects.
	**/
	static public function _get_period_range_edges(first:Dynamic, last:Dynamic, offset:Dynamic, ?closed:Dynamic, ?base:Dynamic):Dynamic;
	/**
		Adjust the `first` Timestamp to the preceeding Timestamp that resides on
		the provided offset. Adjust the `last` Timestamp to the following
		Timestamp that resides on the provided offset. Input Timestamps that
		already reside on the offset will be adjusted depending on the type of
		offset and the `closed` parameter.
		
		Parameters
		----------
		first : pd.Timestamp
		    The beginning Timestamp of the range to be adjusted.
		last : pd.Timestamp
		    The ending Timestamp of the range to be adjusted.
		offset : pd.DateOffset
		    The dateoffset to which the Timestamps will be adjusted.
		closed : {'right', 'left'}, default None
		    Which side of bin interval is closed.
		base : int, default 0
		    The "origin" of the adjusted Timestamps.
		
		Returns
		-------
		A tuple of length 2, containing the adjusted pd.Timestamp objects.
	**/
	static public function _get_timestamp_range_edges(first:Dynamic, last:Dynamic, offset:Dynamic, ?closed:Dynamic, ?base:Dynamic):Dynamic;
	/**
		Potentially we might have a deprecation warning, show it
		but call the appropriate methods anyhow.
	**/
	static public function _maybe_process_deprecations(r:Dynamic, ?how:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic):Dynamic;
	static public var _pipe_template : Dynamic;
	static public var _shared_docs : Dynamic;
	static public var _shared_docs_kwargs : Dynamic;
	static public function _take_new_index(obj:Dynamic, indexer:Dynamic, new_index:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Utility frequency conversion method for Series/DataFrame.
	**/
	static public function asfreq(obj:Dynamic, freq:Dynamic, ?method:Dynamic, ?how:Dynamic, ?normalize:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Returns number of unique elements in the group 
	**/
	static public function f(self:Dynamic, ?_method:Dynamic):Dynamic;
	/**
		Return our appropriate resampler when grouping as well.
	**/
	static public function get_resampler_for_grouping(groupby:Dynamic, rule:Dynamic, ?how:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Class for grouping and aggregating relational data.
		
		See aggregate, transform, and apply functions on this object.
		
		It's easiest to use obj.groupby(...) to use GroupBy, but you can also do:
		
		::
		
		    grouped = groupby(obj, ...)
		
		Parameters
		----------
		obj : pandas object
		axis : int, default 0
		level : int, default None
		    Level of MultiIndex
		groupings : list of Grouping objects
		    Most users should ignore this
		exclusions : array-like, optional
		    List of columns to exclude
		name : string
		    Most users should ignore this
		
		Returns
		-------
		**Attributes**
		groups : dict
		    {group name -> group labels}
		len(grouped) : int
		    Number of groups
		
		Notes
		-----
		After grouping, see aggregate, apply, and transform functions. Here are
		some other brief notes about usage. When grouping by multiple groups, the
		result index will be a MultiIndex (hierarchical) by default.
		
		Iteration produces (key, group) tuples, i.e. chunking the data by group. So
		you can write code like:
		
		::
		
		    grouped = obj.groupby(keys, axis=axis)
		    for key, group in grouped:
		        # do something with the data
		
		Function calls on GroupBy, if not specially implemented, "dispatch" to the
		grouped data. So if you group a DataFrame and wish to invoke the std()
		method on each group, you can simply do:
		
		::
		
		    df.groupby(mapper).std()
		
		rather than
		
		::
		
		    df.groupby(mapper).aggregate(np.std)
		
		You can pass arguments to these "wrapped" functions, too.
		
		See the online documentation for full exposition on these topics and much
		more
	**/
	static public function groupby(obj:Dynamic, by:Dynamic, ?kwds:python.KwArgs<Dynamic>):Int;
	/**
		Returns True if downsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string or DateOffset
		    Frequency converting from
		target : string or DateOffset
		    Frequency converting to
		
		Returns
		-------
		is_subperiod : boolean
	**/
	static public function is_subperiod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if upsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string
		    Frequency converting from
		target : string
		    Frequency converting to
		
		Returns
		-------
		is_superperiod : boolean
	**/
	static public function is_superperiod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var method : Dynamic;
	/**
		Class for resampling datetimelike data, a groupby-like operation.
		See aggregate, transform, and apply functions on this object.
		
		It's easiest to use obj.resample(...) to use Resampler.
		
		Parameters
		----------
		obj : pandas object
		groupby : a TimeGrouper object
		axis : int, default 0
		kind : str or None
		    'period', 'timestamp' to override default index treatement
		
		Returns
		-------
		a Resampler of the appropriate type
		
		Notes
		-----
		After resampling, see aggregate, apply, and transform functions.
	**/
	static public function resample(obj:Dynamic, ?kind:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a fixed frequency TimedeltaIndex, with day as the default
		frequency
		
		Parameters
		----------
		start : string or timedelta-like, default None
		    Left bound for generating timedeltas
		end : string or timedelta-like, default None
		    Right bound for generating timedeltas
		periods : integer, default None
		    Number of periods to generate
		freq : string or DateOffset, default 'D'
		    Frequency strings can have multiples, e.g. '5H'
		name : string, default None
		    Name of the resulting TimedeltaIndex
		closed : string, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Returns
		-------
		rng : TimedeltaIndex
		
		Notes
		-----
		Of the four parameters ``start``, ``end``, ``periods``, and ``freq``,
		exactly three must be specified. If ``freq`` is omitted, the resulting
		``TimedeltaIndex`` will have ``periods`` linearly spaced elements between
		``start`` and ``end`` (closed on both sides).
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		
		>>> pd.timedelta_range(start='1 day', periods=4)
		TimedeltaIndex(['1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq='D')
		
		The ``closed`` parameter specifies which endpoint is included.  The default
		behavior is to include both endpoints.
		
		>>> pd.timedelta_range(start='1 day', periods=4, closed='right')
		TimedeltaIndex(['2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq='D')
		
		The ``freq`` parameter specifies the frequency of the TimedeltaIndex.
		Only fixed frequencies can be passed, non-fixed frequencies such as
		'M' (month end) will raise.
		
		>>> pd.timedelta_range(start='1 day', end='2 days', freq='6H')
		TimedeltaIndex(['1 days 00:00:00', '1 days 06:00:00', '1 days 12:00:00',
		                '1 days 18:00:00', '2 days 00:00:00'],
		               dtype='timedelta64[ns]', freq='6H')
		
		Specify ``start``, ``end``, and ``periods``; the frequency is generated
		automatically (linearly spaced).
		
		>>> pd.timedelta_range(start='1 day', end='5 days', periods=4)
		TimedeltaIndex(['1 days 00:00:00', '2 days 08:00:00', '3 days 16:00:00',
		            '5 days 00:00:00'],
		           dtype='timedelta64[ns]', freq=None)
	**/
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):pandas.TimedeltaIndex;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object
		
		Parameters
		----------
		freq : str, tuple, datetime.timedelta, DateOffset or None
		
		Returns
		-------
		delta : DateOffset
		    None if freq is None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		pandas.DateOffset
		
		Examples
		--------
		>>> to_offset('5min')
		<5 * Minutes>
		
		>>> to_offset('1D1H')
		<25 * Hours>
		
		>>> to_offset(('W', 2))
		<2 * Weeks: weekday=6>
		
		>>> to_offset((2, 'B'))
		<2 * BusinessDays>
		
		>>> to_offset(datetime.timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(freq:Dynamic):pandas.DateOffset;
}