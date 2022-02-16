/* This file is generated, do not edit! */
package pandas.core.resample;
@:pythonImport("pandas.core.resample") extern class Resample_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function IndexLabel(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var NDFrameT : Dynamic;
	static public var NaT : Dynamic;
	static public var T : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function TimedeltaConvertibleTypes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function TimestampConvertibleTypes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _adjust_dates_anchored(first:Dynamic, last:Dynamic, freq:Dynamic, ?closed:Dynamic, ?origin:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Helper to mimic asfreq on (empty) DatetimeIndex and TimedeltaIndex.
		
		Parameters
		----------
		index : PeriodIndex, DatetimeIndex, or TimedeltaIndex
		freq : DateOffset
		
		Returns
		-------
		same type as index
	**/
	static public function _asfreq_compat(index:Dynamic, freq:Dynamic):Dynamic;
	/**
		Adjust the provided `first` and `last` Periods to the respective Period of
		the given offset that encompasses them.
		
		Parameters
		----------
		first : pd.Period
		    The beginning Period of the range to be adjusted.
		last : pd.Period
		    The ending Period of the range to be adjusted.
		freq : pd.DateOffset
		    The freq to which the Periods will be adjusted.
		closed : {'right', 'left'}, default "left"
		    Which side of bin interval is closed.
		origin : {'epoch', 'start', 'start_day'}, Timestamp, default 'start_day'
		    The timestamp on which to adjust the grouping. The timezone of origin must
		    match the timezone of the index.
		
		    If a timestamp is not used, these values are also supported:
		
		    - 'epoch': `origin` is 1970-01-01
		    - 'start': `origin` is the first value of the timeseries
		    - 'start_day': `origin` is the first day at midnight of the timeseries
		offset : pd.Timedelta, default is None
		    An offset timedelta added to the origin.
		
		Returns
		-------
		A tuple of length 2, containing the adjusted pd.Period objects.
	**/
	static public function _get_period_range_edges(first:Dynamic, last:Dynamic, freq:Dynamic, ?closed:Dynamic, ?origin:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Adjust the `first` Timestamp to the preceding Timestamp that resides on
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
		freq : pd.DateOffset
		    The dateoffset to which the Timestamps will be adjusted.
		closed : {'right', 'left'}, default "left"
		    Which side of bin interval is closed.
		origin : {'epoch', 'start', 'start_day'} or Timestamp, default 'start_day'
		    The timestamp on which to adjust the grouping. The timezone of origin must
		    match the timezone of the index.
		    If a timestamp is not used, these values are also supported:
		
		    - 'epoch': `origin` is 1970-01-01
		    - 'start': `origin` is the first value of the timeseries
		    - 'start_day': `origin` is the first day at midnight of the timeseries
		offset : pd.Timedelta, default is None
		    An offset timedelta added to the origin.
		
		Returns
		-------
		A tuple of length 2, containing the adjusted pd.Timestamp objects.
	**/
	static public function _get_timestamp_range_edges(first:Dynamic, last:Dynamic, freq:Dynamic, ?closed:Dynamic, ?origin:Dynamic, ?offset:Dynamic):Dynamic;
	static public function _insert_nat_bin(binner:Dynamic, bins:Dynamic, labels:Dynamic, nat_count:Dynamic):Dynamic;
	static public var _pipe_template : Dynamic;
	static public var _shared_docs : Dynamic;
	static public var _shared_docs_kwargs : Dynamic;
	static public function _take_new_index(obj:Dynamic, indexer:Dynamic, new_index:Dynamic, ?axis:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Utility frequency conversion method for Series/DataFrame.
		
		See :meth:`pandas.NDFrame.asfreq` for full documentation.
	**/
	static public function asfreq(obj:Dynamic, freq:Dynamic, ?method:Dynamic, ?how:Dynamic, ?normalize:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return a fixed frequency DatetimeIndex.
		
		Returns the range of equally spaced time points (where the difference between any
		two adjacent points is specified by the given frequency) such that they all
		satisfy `start <[=] x <[=] end`, where the first one and the last one are, resp.,
		the first and last time points in that range that fall on the boundary of ``freq``
		(if given as a frequency string) or that are valid for ``freq`` (if given as a
		:class:`pandas.tseries.offsets.DateOffset`). (If exactly one of ``start``,
		``end``, or ``freq`` is *not* specified, this missing parameter can be computed
		given ``periods``, the number of timesteps in the range. See the note below.)
		
		Parameters
		----------
		start : str or datetime-like, optional
		    Left bound for generating dates.
		end : str or datetime-like, optional
		    Right bound for generating dates.
		periods : int, optional
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
		
		    .. deprecated:: 1.4.0
		       Argument `closed` has been deprecated to standardize boundary inputs.
		       Use `inclusive` instead, to set each bound as closed or open.
		inclusive : {"both", "neither", "left", "right"}, default "both"
		    Include boundaries; Whether to set each bound as closed or open.
		
		    .. versionadded:: 1.4.0
		**kwargs
		    For compatibility. Has no effect on the result.
		
		Returns
		-------
		rng : DatetimeIndex
		
		See Also
		--------
		DatetimeIndex : An immutable container for datetimes.
		timedelta_range : Return a fixed frequency TimedeltaIndex.
		period_range : Return a fixed frequency PeriodIndex.
		interval_range : Return a fixed frequency IntervalIndex.
		
		Notes
		-----
		Of the four parameters ``start``, ``end``, ``periods``, and ``freq``,
		exactly three must be specified. If ``freq`` is omitted, the resulting
		``DatetimeIndex`` will have ``periods`` linearly spaced elements between
		``start`` and ``end`` (closed on both sides).
		
		To learn more about the frequency strings, please see `this link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
		
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
		
		`inclusive` controls whether to include `start` and `end` that are on the
		boundary. The default, "both", includes boundary points on either end.
		
		>>> pd.date_range(start='2017-01-01', end='2017-01-04', inclusive="both")
		DatetimeIndex(['2017-01-01', '2017-01-02', '2017-01-03', '2017-01-04'],
		              dtype='datetime64[ns]', freq='D')
		
		Use ``inclusive='left'`` to exclude `end` if it falls on the boundary.
		
		>>> pd.date_range(start='2017-01-01', end='2017-01-04', inclusive='left')
		DatetimeIndex(['2017-01-01', '2017-01-02', '2017-01-03'],
		              dtype='datetime64[ns]', freq='D')
		
		Use ``inclusive='right'`` to exclude `start` if it falls on the boundary, and
		similarly ``inclusive='neither'`` will exclude both `start` and `end`.
		
		>>> pd.date_range(start='2017-01-01', end='2017-01-04', inclusive='right')
		DatetimeIndex(['2017-01-02', '2017-01-03', '2017-01-04'],
		              dtype='datetime64[ns]', freq='D')
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?inclusive:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Decorator to deprecate a use of non-keyword arguments of a function.
		
		Parameters
		----------
		version : str, optional
		    The version in which positional arguments will become
		    keyword-only. If None, then the warning message won't
		    specify any particular version.
		
		allowed_args : list, optional
		    In case of list, it must be the list of names of some
		    first arguments of the decorated functions that are
		    OK to be given as positional arguments. In case of None value,
		    defaults to list of all arguments not having the
		    default value.
		
		stacklevel : int, default=2
		    The stack level for warnings.warn
	**/
	static public function deprecate_nonkeyword_arguments(version:Dynamic, ?allowed_args:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute last of group values.
		
		Parameters
		----------
		numeric_only : bool, default False
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		min_count : int, default -1
		    The required number of valid values to perform the operation. If fewer
		    than ``min_count`` non-NA values are present the result will be NA.
		
		Returns
		-------
		Series or DataFrame
		    Computed last of values within each group.
	**/
	static public function f(self:Dynamic, ?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A decorator to indicate final methods and final classes.
		
		Use this decorator to indicate to type checkers that the decorated
		method cannot be overridden, and decorated class cannot be subclassed.
		For example:
		
		  class Base:
		      @final
		      def done(self) -> None:
		          ...
		  class Sub(Base):
		      def done(self) -> None:  # Error reported by type checker
		            ...
		
		  @final
		  class Leaf:
		      ...
		  class Other(Leaf):  # Error reported by type checker
		      ...
		
		There is no runtime checking of these properties.
	**/
	@:native("final")
	static public function _final(f:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Compute open, high, low and close values of a group, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex
		
		Returns
		-------
		DataFrame
		    Open, high, low and close values within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	static public function g(self:Dynamic, ?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		name : str
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
	static public function get_groupby(obj:Dynamic, ?by:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?observed:Dynamic, ?mutated:Dynamic, ?dropna:Dynamic):Int;
	/**
		Class for resampling datetimelike data, a groupby-like operation.
		See aggregate, transform, and apply functions on this object.
		
		It's easiest to use obj.resample(...) to use Resampler.
		
		Parameters
		----------
		obj : Series or DataFrame
		groupby : TimeGrouper
		axis : int, default 0
		kind : str or None
		    'period', 'timestamp' to override default index treatment
		
		Returns
		-------
		a Resampler of the appropriate type
		
		Notes
		-----
		After resampling, see aggregate, apply, and transform functions.
	**/
	static public function get_resampler(obj:Dynamic, ?kind:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return our appropriate resampler when grouping as well.
	**/
	static public function get_resampler_for_grouping(groupby:Dynamic, rule:Dynamic, ?how:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?kind:Dynamic, ?on:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return number of unique elements in the group.
		
		Returns
		-------
		Series
		    Number of unique values within each group.
	**/
	static public function h(self:Dynamic, ?_method:Dynamic):Dynamic;
	/**
		Returns True if downsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : str or DateOffset
		    Frequency converting from
		target : str or DateOffset
		    Frequency converting to
		
		Returns
		-------
		bool
	**/
	static public function is_subperiod(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Returns True if upsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : str or DateOffset
		    Frequency converting from
		target : str or DateOffset
		    Frequency converting to
		
		Returns
		-------
		bool
	**/
	static public function is_superperiod(source:Dynamic, target:Dynamic):Dynamic;
	static public var method : Dynamic;
	/**
		Decorator to indicate that annotations are not type hints.
		
		The argument must be a class or function; if it is a class, it
		applies recursively to all methods and classes defined in that class
		(but not to methods defined in its superclasses or subclasses).
		
		This mutates the function(s) or class(es) in place.
	**/
	static public function no_type_check(arg:Dynamic):Dynamic;
	static public var npt : Dynamic;
	/**
		Return a fixed frequency PeriodIndex.
		
		The day (calendar) is the default frequency.
		
		Parameters
		----------
		start : str or period-like, default None
		    Left bound for generating periods.
		end : str or period-like, default None
		    Right bound for generating periods.
		periods : int, default None
		    Number of periods to generate.
		freq : str or DateOffset, optional
		    Frequency alias. By default the freq is taken from `start` or `end`
		    if those are Period objects. Otherwise, the default is ``"D"`` for
		    daily frequency.
		name : str, default None
		    Name of the resulting PeriodIndex.
		
		Returns
		-------
		PeriodIndex
		
		Notes
		-----
		Of the three parameters: ``start``, ``end``, and ``periods``, exactly two
		must be specified.
		
		To learn more about the frequency strings, please see `this link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		>>> pd.period_range(start='2017-01-01', end='2018-01-01', freq='M')
		PeriodIndex(['2017-01', '2017-02', '2017-03', '2017-04', '2017-05', '2017-06',
		         '2017-07', '2017-08', '2017-09', '2017-10', '2017-11', '2017-12',
		         '2018-01'],
		        dtype='period[M]')
		
		If ``start`` or ``end`` are ``Period`` objects, they will be used as anchor
		endpoints for a ``PeriodIndex`` with frequency matching that of the
		``period_range`` constructor.
		
		>>> pd.period_range(start=pd.Period('2017Q1', freq='Q'),
		...                 end=pd.Period('2017Q2', freq='Q'), freq='M')
		PeriodIndex(['2017-03', '2017-04', '2017-05', '2017-06'],
		            dtype='period[M]')
	**/
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a fixed frequency TimedeltaIndex, with day as the default
		frequency.
		
		Parameters
		----------
		start : str or timedelta-like, default None
		    Left bound for generating timedeltas.
		end : str or timedelta-like, default None
		    Right bound for generating timedeltas.
		periods : int, default None
		    Number of periods to generate.
		freq : str or DateOffset, default 'D'
		    Frequency strings can have multiples, e.g. '5H'.
		name : str, default None
		    Name of the resulting TimedeltaIndex.
		closed : str, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None).
		
		Returns
		-------
		TimedeltaIndex
		
		Notes
		-----
		Of the four parameters ``start``, ``end``, ``periods``, and ``freq``,
		exactly three must be specified. If ``freq`` is omitted, the resulting
		``TimedeltaIndex`` will have ``periods`` linearly spaced elements between
		``start`` and ``end`` (closed on both sides).
		
		To learn more about the frequency strings, please see `this link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
		
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
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object.
		
		Parameters
		----------
		freq : str, datetime.timedelta, BaseOffset or None
		
		Returns
		-------
		DateOffset or None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		BaseOffset : Standard kind of date increment used for a date range.
		
		Examples
		--------
		>>> to_offset("5min")
		<5 * Minutes>
		
		>>> to_offset("1D1H")
		<25 * Hours>
		
		>>> to_offset("2W")
		<2 * Weeks: weekday=6>
		
		>>> to_offset("2B")
		<2 * BusinessDays>
		
		>>> to_offset(pd.Timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
}