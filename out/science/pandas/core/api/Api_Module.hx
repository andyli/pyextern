/* This file is generated, do not edit! */
package pandas.core.api;
@:pythonImport("pandas.core.api") extern class Api_Module {
	static public var IndexSlice : Dynamic;
	static public var NA : Dynamic;
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create an array.
		
		Parameters
		----------
		data : Sequence of objects
		    The scalars inside `data` should be instances of the
		    scalar type for `dtype`. It's expected that `data`
		    represents a 1-dimensional array of data.
		
		    When `data` is an Index or Series, the underlying array
		    will be extracted from `data`.
		
		dtype : str, np.dtype, or ExtensionDtype, optional
		    The dtype to use for the array. This may be a NumPy
		    dtype or an extension type registered with pandas using
		    :meth:`pandas.api.extensions.register_extension_dtype`.
		
		    If not specified, there are two possibilities:
		
		    1. When `data` is a :class:`Series`, :class:`Index`, or
		       :class:`ExtensionArray`, the `dtype` will be taken
		       from the data.
		    2. Otherwise, pandas will attempt to infer the `dtype`
		       from the data.
		
		    Note that when `data` is a NumPy array, ``data.dtype`` is
		    *not* used for inferring the array type. This is because
		    NumPy cannot represent all the types of data that can be
		    held in extension arrays.
		
		    Currently, pandas will infer an extension dtype for sequences of
		
		    ============================== =======================================
		    Scalar Type                    Array Type
		    ============================== =======================================
		    :class:`pandas.Interval`       :class:`pandas.arrays.IntervalArray`
		    :class:`pandas.Period`         :class:`pandas.arrays.PeriodArray`
		    :class:`datetime.datetime`     :class:`pandas.arrays.DatetimeArray`
		    :class:`datetime.timedelta`    :class:`pandas.arrays.TimedeltaArray`
		    :class:`int`                   :class:`pandas.arrays.IntegerArray`
		    :class:`float`                 :class:`pandas.arrays.FloatingArray`
		    :class:`str`                   :class:`pandas.arrays.StringArray` or
		                                   :class:`pandas.arrays.ArrowStringArray`
		    :class:`bool`                  :class:`pandas.arrays.BooleanArray`
		    ============================== =======================================
		
		    The ExtensionArray created when the scalar type is :class:`str` is determined by
		    ``pd.options.mode.string_storage`` if the dtype is not explicitly given.
		
		    For all other cases, NumPy's usual inference rules will be used.
		
		    .. versionchanged:: 1.0.0
		
		       Pandas infers nullable-integer dtype for integer data,
		       string dtype for string data, and nullable-boolean dtype
		       for boolean data.
		
		    .. versionchanged:: 1.2.0
		
		        Pandas now also infers nullable-floating dtype for float-like
		        input data
		
		copy : bool, default True
		    Whether to copy the data, even if not necessary. Depending
		    on the type of `data`, creating the new array may require
		    copying data, even if ``copy=False``.
		
		Returns
		-------
		ExtensionArray
		    The newly created array.
		
		Raises
		------
		ValueError
		    When `data` is not 1-dimensional.
		
		See Also
		--------
		numpy.array : Construct a NumPy array.
		Series : Construct a pandas Series.
		Index : Construct a pandas Index.
		arrays.PandasArray : ExtensionArray wrapping a NumPy array.
		Series.array : Extract the array stored within a Series.
		
		Notes
		-----
		Omitting the `dtype` argument means pandas will attempt to infer the
		best array type from the values in the data. As new array types are
		added by pandas and 3rd party libraries, the "best" array type may
		change. We recommend specifying `dtype` to ensure that
		
		1. the correct array type for the data is returned
		2. the returned array type doesn't change as new extension types
		   are added by pandas and third-party libraries
		
		Additionally, if the underlying memory representation of the returned
		array matters, we recommend specifying the `dtype` as a concrete object
		rather than a string alias or allowing it to be inferred. For example,
		a future version of pandas or a 3rd-party library may include a
		dedicated ExtensionArray for string data. In this event, the following
		would no longer return a :class:`arrays.PandasArray` backed by a NumPy
		array.
		
		>>> pd.array(['a', 'b'], dtype=str)
		<PandasArray>
		['a', 'b']
		Length: 2, dtype: str32
		
		This would instead return the new ExtensionArray dedicated for string
		data. If you really need the new array to be backed by a  NumPy array,
		specify that in the dtype.
		
		>>> pd.array(['a', 'b'], dtype=np.dtype("<U1"))
		<PandasArray>
		['a', 'b']
		Length: 2, dtype: str32
		
		Finally, Pandas has arrays that mostly overlap with NumPy
		
		  * :class:`arrays.DatetimeArray`
		  * :class:`arrays.TimedeltaArray`
		
		When data with a ``datetime64[ns]`` or ``timedelta64[ns]`` dtype is
		passed, pandas will always return a ``DatetimeArray`` or ``TimedeltaArray``
		rather than a ``PandasArray``. This is for symmetry with the case of
		timezone-aware data, which NumPy does not natively support.
		
		>>> pd.array(['2015', '2016'], dtype='datetime64[ns]')
		<DatetimeArray>
		['2015-01-01 00:00:00', '2016-01-01 00:00:00']
		Length: 2, dtype: datetime64[ns]
		
		>>> pd.array(["1H", "2H"], dtype='timedelta64[ns]')
		<TimedeltaArray>
		['0 days 01:00:00', '0 days 02:00:00']
		Length: 2, dtype: timedelta64[ns]
		
		Examples
		--------
		If a dtype is not specified, pandas will infer the best dtype from the values.
		See the description of `dtype` for the types pandas infers for.
		
		>>> pd.array([1, 2])
		<IntegerArray>
		[1, 2]
		Length: 2, dtype: Int64
		
		>>> pd.array([1, 2, np.nan])
		<IntegerArray>
		[1, 2, <NA>]
		Length: 3, dtype: Int64
		
		>>> pd.array([1.1, 2.2])
		<FloatingArray>
		[1.1, 2.2]
		Length: 2, dtype: Float64
		
		>>> pd.array(["a", None, "c"])
		<StringArray>
		['a', <NA>, 'c']
		Length: 3, dtype: string
		
		>>> with pd.option_context("string_storage", "pyarrow"):
		...     arr = pd.array(["a", None, "c"])
		...
		>>> arr
		<ArrowStringArray>
		['a', <NA>, 'c']
		Length: 3, dtype: string
		
		>>> pd.array([pd.Period('2000', freq="D"), pd.Period("2000", freq="D")])
		<PeriodArray>
		['2000-01-01', '2000-01-01']
		Length: 2, dtype: period[D]
		
		You can use the string alias for `dtype`
		
		>>> pd.array(['a', 'b', 'a'], dtype='category')
		['a', 'b', 'a']
		Categories (2, object): ['a', 'b']
		
		Or specify the actual dtype
		
		>>> pd.array(['a', 'b', 'a'],
		...          dtype=pd.CategoricalDtype(['a', 'b', 'c'], ordered=True))
		['a', 'b', 'a']
		Categories (3, object): ['a' < 'b' < 'c']
		
		If pandas does not infer a dedicated extension type a
		:class:`arrays.PandasArray` is returned.
		
		>>> pd.array([1 + 1j, 3 + 2j])
		<PandasArray>
		[(1+1j), (3+2j)]
		Length: 2, dtype: complex128
		
		As mentioned in the "Notes" section, new extension types may be added
		in the future (by pandas or 3rd party libraries), causing the return
		value to no longer be a :class:`arrays.PandasArray`. Specify the `dtype`
		as a NumPy dtype if you need to ensure there's no future change in
		behavior.
		
		>>> pd.array([1, 2], dtype=np.dtype("int32"))
		<PandasArray>
		[1, 2]
		Length: 2, dtype: int32
		
		`data` must be 1-dimensional. A ValueError is raised when the input
		has the wrong dimensionality.
		
		>>> pd.array(1)
		Traceback (most recent call last):
		  ...
		ValueError: Cannot pass scalar '1' to 'pandas.array'.
	**/
	static public function array(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return a fixed frequency DatetimeIndex, with business day as the default
		frequency.
		
		Parameters
		----------
		start : str or datetime-like, default None
		    Left bound for generating dates.
		end : str or datetime-like, default None
		    Right bound for generating dates.
		periods : int, default None
		    Number of periods to generate.
		freq : str or DateOffset, default 'B' (business daily)
		    Frequency strings can have multiples, e.g. '5H'.
		tz : str or None
		    Time zone name for returning localized DatetimeIndex, for example
		    Asia/Beijing.
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range.
		name : str, default None
		    Name of the resulting DatetimeIndex.
		weekmask : str or None, default None
		    Weekmask of valid business days, passed to ``numpy.busdaycalendar``,
		    only used when custom frequency strings are passed.  The default
		    value None is equivalent to 'Mon Tue Wed Thu Fri'.
		holidays : list-like or None, default None
		    Dates to exclude from the set of valid business days, passed to
		    ``numpy.busdaycalendar``, only used when custom frequency strings
		    are passed.
		closed : str, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None).
		
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
		DatetimeIndex
		
		Notes
		-----
		Of the four parameters: ``start``, ``end``, ``periods``, and ``freq``,
		exactly three must be specified.  Specifying ``freq`` is a requirement
		for ``bdate_range``.  Use ``date_range`` if specifying ``freq`` is not
		desired.
		
		To learn more about the frequency strings, please see `this link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		Note how the two weekend days are skipped in the result.
		
		>>> pd.bdate_range(start='1/1/2018', end='1/08/2018')
		DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
		           '2018-01-05', '2018-01-08'],
		          dtype='datetime64[ns]', freq='B')
	**/
	static public function bdate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?weekmask:Dynamic, ?holidays:Dynamic, ?closed:Dynamic, ?inclusive:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Encode the object as an enumerated type or categorical variable.
		
		This method is useful for obtaining a numeric representation of an
		array when all that matters is identifying distinct values. `factorize`
		is available as both a top-level function :func:`pandas.factorize`,
		and as a method :meth:`Series.factorize` and :meth:`Index.factorize`.
		
		Parameters
		----------
		values : sequence
		    A 1-D sequence. Sequences that aren't pandas objects are
		    coerced to ndarrays before factorization.
		sort : bool, default False
		    Sort `uniques` and shuffle `codes` to maintain the
		    relationship.
		
		na_sentinel : int or None, default -1
		    Value to mark "not found". If None, will not drop the NaN
		    from the uniques of the values.
		
		    .. versionchanged:: 1.1.2
		size_hint : int, optional
		    Hint to the hashtable sizer.
		
		Returns
		-------
		codes : ndarray
		    An integer ndarray that's an indexer into `uniques`.
		    ``uniques.take(codes)`` will have the same values as `values`.
		uniques : ndarray, Index, or Categorical
		    The unique valid values. When `values` is Categorical, `uniques`
		    is a Categorical. When `values` is some other pandas object, an
		    `Index` is returned. Otherwise, a 1-D ndarray is returned.
		
		    .. note::
		
		       Even if there's a missing value in `values`, `uniques` will
		       *not* contain an entry for it.
		
		See Also
		--------
		cut : Discretize continuous-valued array.
		unique : Find the unique value in an array.
		
		Notes
		-----
		Reference :ref:`the user guide <reshaping.factorize>` for more examples.
		
		Examples
		--------
		These examples all show factorize as a top-level method like
		``pd.factorize(values)``. The results are identical for methods like
		:meth:`Series.factorize`.
		
		>>> codes, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'])
		>>> codes
		array([0, 0, 1, 2, 0]...)
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		With ``sort=True``, the `uniques` will be sorted, and `codes` will be
		shuffled so that the relationship is the maintained.
		
		>>> codes, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'], sort=True)
		>>> codes
		array([1, 1, 0, 2, 1]...)
		>>> uniques
		array(['a', 'b', 'c'], dtype=object)
		
		Missing values are indicated in `codes` with `na_sentinel`
		(``-1`` by default). Note that missing values are never
		included in `uniques`.
		
		>>> codes, uniques = pd.factorize(['b', None, 'a', 'c', 'b'])
		>>> codes
		array([ 0, -1,  1,  2,  0]...)
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		Thus far, we've only factorized lists (which are internally coerced to
		NumPy arrays). When factorizing pandas objects, the type of `uniques`
		will differ. For Categoricals, a `Categorical` is returned.
		
		>>> cat = pd.Categorical(['a', 'a', 'c'], categories=['a', 'b', 'c'])
		>>> codes, uniques = pd.factorize(cat)
		>>> codes
		array([0, 0, 1]...)
		>>> uniques
		['a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Notice that ``'b'`` is in ``uniques.categories``, despite not being
		present in ``cat.values``.
		
		For all other pandas objects, an Index of the appropriate type is
		returned.
		
		>>> cat = pd.Series(['a', 'a', 'c'])
		>>> codes, uniques = pd.factorize(cat)
		>>> codes
		array([0, 0, 1]...)
		>>> uniques
		Index(['a', 'c'], dtype='object')
		
		If NaN is in the values, and we want to include NaN in the uniques of the
		values, it can be achieved by setting ``na_sentinel=None``.
		
		>>> values = np.array([1, 2, 1, np.nan])
		>>> codes, uniques = pd.factorize(values)  # default: na_sentinel=-1
		>>> codes
		array([ 0,  1,  0, -1])
		>>> uniques
		array([1., 2.])
		
		>>> codes, uniques = pd.factorize(values, na_sentinel=None)
		>>> codes
		array([0, 1, 0, 2])
		>>> uniques
		array([ 1.,  2., nan])
	**/
	static public function factorize(values:Dynamic, ?sort:Dynamic, ?na_sentinel:Dynamic, ?size_hint:Dynamic):numpy.Ndarray;
	/**
		Return a fixed frequency IntervalIndex.
		
		Parameters
		----------
		start : numeric or datetime-like, default None
		    Left bound for generating intervals.
		end : numeric or datetime-like, default None
		    Right bound for generating intervals.
		periods : int, default None
		    Number of periods to generate.
		freq : numeric, str, or DateOffset, default None
		    The length of each interval. Must be consistent with the type of start
		    and end, e.g. 2 for numeric, or '5H' for datetime-like.  Default is 1
		    for numeric and 'D' for datetime-like.
		name : str, default None
		    Name of the resulting IntervalIndex.
		closed : {'left', 'right', 'both', 'neither'}, default 'right'
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither.
		
		Returns
		-------
		IntervalIndex
		
		See Also
		--------
		IntervalIndex : An Index of intervals that are all closed on the same side.
		
		Notes
		-----
		Of the four parameters ``start``, ``end``, ``periods``, and ``freq``,
		exactly three must be specified. If ``freq`` is omitted, the resulting
		``IntervalIndex`` will have ``periods`` linearly spaced elements between
		``start`` and ``end``, inclusively.
		
		To learn more about datetime-like frequency strings, please see `this link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		Numeric ``start`` and  ``end`` is supported.
		
		>>> pd.interval_range(start=0, end=5)
		IntervalIndex([(0, 1], (1, 2], (2, 3], (3, 4], (4, 5]],
		              dtype='interval[int64, right]')
		
		Additionally, datetime-like input is also supported.
		
		>>> pd.interval_range(start=pd.Timestamp('2017-01-01'),
		...                   end=pd.Timestamp('2017-01-04'))
		IntervalIndex([(2017-01-01, 2017-01-02], (2017-01-02, 2017-01-03],
		               (2017-01-03, 2017-01-04]],
		              dtype='interval[datetime64[ns], right]')
		
		The ``freq`` parameter specifies the frequency between the left and right.
		endpoints of the individual intervals within the ``IntervalIndex``.  For
		numeric ``start`` and ``end``, the frequency must also be numeric.
		
		>>> pd.interval_range(start=0, periods=4, freq=1.5)
		IntervalIndex([(0.0, 1.5], (1.5, 3.0], (3.0, 4.5], (4.5, 6.0]],
		              dtype='interval[float64, right]')
		
		Similarly, for datetime-like ``start`` and ``end``, the frequency must be
		convertible to a DateOffset.
		
		>>> pd.interval_range(start=pd.Timestamp('2017-01-01'),
		...                   periods=3, freq='MS')
		IntervalIndex([(2017-01-01, 2017-02-01], (2017-02-01, 2017-03-01],
		               (2017-03-01, 2017-04-01]],
		              dtype='interval[datetime64[ns], right]')
		
		Specify ``start``, ``end``, and ``periods``; the frequency is generated
		automatically (linearly spaced).
		
		>>> pd.interval_range(start=0, end=6, periods=4)
		IntervalIndex([(0.0, 1.5], (1.5, 3.0], (3.0, 4.5], (4.5, 6.0]],
		          dtype='interval[float64, right]')
		
		The ``closed`` parameter specifies which endpoints of the individual
		intervals within the ``IntervalIndex`` are closed.
		
		>>> pd.interval_range(end=5, periods=4, closed='both')
		IntervalIndex([[1, 2], [2, 3], [3, 4], [4, 5]],
		              dtype='interval[int64, both]')
	**/
	static public function interval_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(pd.NA)
		False
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(pd.NA)
		False
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notnull(obj:Dynamic):Dynamic;
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
		Alter default behavior on how float is formatted in DataFrame.
		Format float in engineering format. By accuracy, we mean the number of
		decimal digits after the floating point.
		
		See also EngFormatter.
	**/
	static public function set_eng_float_format(?accuracy:Dynamic, ?use_eng_prefix:Dynamic):Dynamic;
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
		Convert argument to datetime.
		
		This function converts a scalar, array-like, :class:`Series` or
		:class:`DataFrame`/dict-like to a pandas datetime object.
		
		Parameters
		----------
		arg : int, float, str, datetime, list, tuple, 1-d array, Series, DataFrame/dict-like
		    The object to convert to a datetime. If a :class:`DataFrame` is provided, the
		    method expects minimally the following columns: :const:`"year"`,
		    :const:`"month"`, :const:`"day"`.
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If :const:`'raise'`, then invalid parsing will raise an exception.
		    - If :const:`'coerce'`, then invalid parsing will be set as :const:`NaT`.
		    - If :const:`'ignore'`, then invalid parsing will return the input.
		dayfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		    If :const:`True`, parses dates with the day first, e.g. :const:`"10/11/12"`
		    is parsed as :const:`2012-11-10`.
		
		    .. warning::
		
		        ``dayfirst=True`` is not strict, but will prefer to parse
		        with day first. If a delimited date string cannot be parsed in
		        accordance with the given `dayfirst` option, e.g.
		        ``to_datetime(['31-12-2021'])``, then a warning will be shown.
		
		yearfirst : bool, default False
		    Specify a date parse order if `arg` is str or is list-like.
		
		    - If :const:`True` parses dates with the year first, e.g.
		      :const:`"10/11/12"` is parsed as :const:`2010-11-12`.
		    - If both `dayfirst` and `yearfirst` are :const:`True`, `yearfirst` is
		      preceded (same as :mod:`dateutil`).
		
		    .. warning::
		
		        ``yearfirst=True`` is not strict, but will prefer to parse
		        with year first.
		
		utc : bool, default None
		    Control timezone-related parsing, localization and conversion.
		
		    - If :const:`True`, the function *always* returns a timezone-aware
		      UTC-localized :class:`Timestamp`, :class:`Series` or
		      :class:`DatetimeIndex`. To do this, timezone-naive inputs are
		      *localized* as UTC, while timezone-aware inputs are *converted* to UTC.
		
		    - If :const:`False` (default), inputs will not be coerced to UTC.
		      Timezone-naive inputs will remain naive, while timezone-aware ones
		      will keep their time offsets. Limitations exist for mixed
		      offsets (typically, daylight savings), see :ref:`Examples
		      <to_datetime_tz_examples>` section for details.
		
		    See also: pandas general documentation about `timezone conversion and
		    localization
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		    #time-zone-handling>`_.
		
		format : str, default None
		    The strftime to parse time, e.g. :const:`"%d/%m/%Y"`. Note that
		    :const:`"%f"` will parse all the way up to nanoseconds. See
		    `strftime documentation
		    <https://docs.python.org/3/library/datetime.html
		    #strftime-and-strptime-behavior>`_ for more information on choices.
		exact : bool, default True
		    Control how `format` is used:
		
		    - If :const:`True`, require an exact `format` match.
		    - If :const:`False`, allow the `format` to match anywhere in the target
		      string.
		
		unit : str, default 'ns'
		    The unit of the arg (D,s,ms,us,ns) denote the unit, which is an
		    integer or float number. This will be based off the origin.
		    Example, with ``unit='ms'`` and ``origin='unix'`` (the default), this
		    would calculate the number of milliseconds to the unix epoch start.
		infer_datetime_format : bool, default False
		    If :const:`True` and no `format` is given, attempt to infer the format
		    of the datetime strings based on the first non-NaN element,
		    and if it can be inferred, switch to a faster method of parsing them.
		    In some cases this can increase the parsing speed by ~5-10x.
		origin : scalar, default 'unix'
		    Define the reference date. The numeric values would be parsed as number
		    of units (defined by `unit`) since this reference date.
		
		    - If :const:`'unix'` (or POSIX) time; origin is set to 1970-01-01.
		    - If :const:`'julian'`, unit must be :const:`'D'`, and origin is set to
		      beginning of Julian Calendar. Julian day number :const:`0` is assigned
		      to the day starting at noon on January 1, 4713 BC.
		    - If Timestamp convertible, origin is set to Timestamp identified by
		      origin.
		cache : bool, default True
		    If :const:`True`, use a cache of unique, converted dates to apply the
		    datetime conversion. May produce significant speed-up when parsing
		    duplicate date strings, especially ones with timezone offsets. The cache
		    is only used when there are at least 50 values. The presence of
		    out-of-bounds values will render the cache unusable and may slow down
		    parsing.
		
		    .. versionchanged:: 0.25.0
		        changed default value from :const:`False` to :const:`True`.
		
		Returns
		-------
		datetime
		    If parsing succeeded.
		    Return type depends on input (types in parenthesis correspond to
		    fallback in case of unsuccessful timezone or out-of-range timestamp
		    parsing):
		
		    - scalar: :class:`Timestamp` (or :class:`datetime.datetime`)
		    - array-like: :class:`DatetimeIndex` (or :class:`Series` with
		      :class:`object` dtype containing :class:`datetime.datetime`)
		    - Series: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		    - DataFrame: :class:`Series` of :class:`datetime64` dtype (or
		      :class:`Series` of :class:`object` dtype containing
		      :class:`datetime.datetime`)
		
		Raises
		------
		ParserError
		    When parsing a date from string fails.
		ValueError
		    When another datetime conversion error happens. For example when one
		    of 'year', 'month', day' columns is missing in a :class:`DataFrame`, or
		    when a Timezone-aware :class:`datetime.datetime` is found in an array-like
		    of mixed time offsets, and ``utc=False``.
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_timedelta : Convert argument to timedelta.
		convert_dtypes : Convert dtypes.
		
		Notes
		-----
		
		Many input types are supported, and lead to different output types:
		
		- **scalars** can be int, float, str, datetime object (from stdlib :mod:`datetime`
		  module or :mod:`numpy`). They are converted to :class:`Timestamp` when
		  possible, otherwise they are converted to :class:`datetime.datetime`.
		  None/NaN/null scalars are converted to :const:`NaT`.
		
		- **array-like** can contain int, float, str, datetime objects. They are
		  converted to :class:`DatetimeIndex` when possible, otherwise they are
		  converted to :class:`Index` with :class:`object` dtype, containing
		  :class:`datetime.datetime`. None/NaN/null entries are converted to
		  :const:`NaT` in both cases.
		
		- **Series** are converted to :class:`Series` with :class:`datetime64`
		  dtype when possible, otherwise they are converted to :class:`Series` with
		  :class:`object` dtype, containing :class:`datetime.datetime`. None/NaN/null
		  entries are converted to :const:`NaT` in both cases.
		
		- **DataFrame/dict-like** are converted to :class:`Series` with
		  :class:`datetime64` dtype. For each row a datetime is created from assembling
		  the various dataframe columns. Column keys can be common abbreviations
		  like [‘year’, ‘month’, ‘day’, ‘minute’, ‘second’, ‘ms’, ‘us’, ‘ns’]) or
		  plurals of the same.
		
		The following causes are responsible for :class:`datetime.datetime` objects
		being returned (possibly inside an :class:`Index` or a :class:`Series` with
		:class:`object` dtype) instead of a proper pandas designated type
		(:class:`Timestamp`, :class:`DatetimeIndex` or :class:`Series`
		with :class:`datetime64` dtype):
		
		- when any input element is before :const:`Timestamp.min` or after
		  :const:`Timestamp.max`, see `timestamp limitations
		  <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		  #timeseries-timestamp-limits>`_.
		
		- when ``utc=False`` (default) and the input is an array-like or
		  :class:`Series` containing mixed naive/aware datetime, or aware with mixed
		  time offsets. Note that this happens in the (quite frequent) situation when
		  the timezone has a daylight savings policy. In that case you may wish to
		  use ``utc=True``.
		
		Examples
		--------
		
		**Handling various input formats**
		
		Assembling a datetime from multiple columns of a :class:`DataFrame`. The keys
		can be common abbreviations like ['year', 'month', 'day', 'minute', 'second',
		'ms', 'us', 'ns']) or plurals of the same
		
		>>> df = pd.DataFrame({'year': [2015, 2016],
		...                    'month': [2, 3],
		...                    'day': [4, 5]})
		>>> pd.to_datetime(df)
		0   2015-02-04
		1   2016-03-05
		dtype: datetime64[ns]
		
		Passing ``infer_datetime_format=True`` can often-times speedup a parsing
		if its not an ISO8601 format exactly, but in a regular format.
		
		>>> s = pd.Series(['3/11/2000', '3/12/2000', '3/13/2000'] * 1000)
		>>> s.head()
		0    3/11/2000
		1    3/12/2000
		2    3/13/2000
		3    3/11/2000
		4    3/12/2000
		dtype: object
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=True)  # doctest: +SKIP
		100 loops, best of 3: 10.4 ms per loop
		
		>>> %timeit pd.to_datetime(s, infer_datetime_format=False)  # doctest: +SKIP
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
		...                origin=pd.Timestamp('1960-01-01'))
		DatetimeIndex(['1960-01-02', '1960-01-03', '1960-01-04'],
		              dtype='datetime64[ns]', freq=None)
		
		**Non-convertible date/times**
		
		If a date does not meet the `timestamp limitations
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
		#timeseries-timestamp-limits>`_, passing ``errors='ignore'``
		will return the original input instead of raising any exception.
		
		Passing ``errors='coerce'`` will force an out-of-bounds date to :const:`NaT`,
		in addition to forcing non-dates (or non-parseable dates) to :const:`NaT`.
		
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='ignore')
		datetime.datetime(1300, 1, 1, 0, 0)
		>>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
		NaT
		
		.. _to_datetime_tz_examples:
		
		**Timezones and time offsets**
		
		The default behaviour (``utc=False``) is as follows:
		
		- Timezone-naive inputs are converted to timezone-naive :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00:15'])
		DatetimeIndex(['2018-10-26 12:00:00', '2018-10-26 13:00:15'],
		              dtype='datetime64[ns]', freq=None)
		
		- Timezone-aware inputs *with constant time offset* are converted to
		  timezone-aware :class:`DatetimeIndex`:
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0500', '2018-10-26 13:00 -0500'])
		DatetimeIndex(['2018-10-26 12:00:00-05:00', '2018-10-26 13:00:00-05:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-300)]', freq=None)
		
		- However, timezone-aware inputs *with mixed time offsets* (for example
		  issued from a timezone with daylight savings, such as Europe/Paris)
		  are **not successfully converted** to a :class:`DatetimeIndex`. Instead a
		  simple :class:`Index` containing :class:`datetime.datetime` objects is
		  returned:
		
		>>> pd.to_datetime(['2020-10-25 02:00 +0200', '2020-10-25 04:00 +0100'])
		Index([2020-10-25 02:00:00+02:00, 2020-10-25 04:00:00+01:00],
		      dtype='object')
		
		- A mix of timezone-aware and timezone-naive inputs is converted to
		  a timezone-aware :class:`DatetimeIndex` if the offsets of the timezone-aware
		  are constant:
		
		>>> from datetime import datetime
		>>> pd.to_datetime(["2020-01-01 01:00 -01:00", datetime(2020, 1, 1, 3, 0)])
		DatetimeIndex(['2020-01-01 01:00:00-01:00', '2020-01-01 02:00:00-01:00'],
		              dtype='datetime64[ns, pytz.FixedOffset(-60)]', freq=None)
		
		- Finally, mixing timezone-aware strings and :class:`datetime.datetime` always
		  raises an error, even if the elements all have the same time offset.
		
		>>> from datetime import datetime, timezone, timedelta
		>>> d = datetime(2020, 1, 1, 18, tzinfo=timezone(-timedelta(hours=1)))
		>>> pd.to_datetime(["2020-01-01 17:00 -0100", d])
		Traceback (most recent call last):
		    ...
		ValueError: Tz-aware datetime.datetime cannot be converted to datetime64
		            unless utc=True
		
		|
		
		Setting ``utc=True`` solves most of the above issues:
		
		- Timezone-naive inputs are *localized* as UTC
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00'], utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 13:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Timezone-aware inputs are *converted* to UTC (the output represents the
		  exact same datetime, but viewed from the UTC time offset `+00:00`).
		
		>>> pd.to_datetime(['2018-10-26 12:00 -0530', '2018-10-26 12:00 -0500'],
		...                utc=True)
		DatetimeIndex(['2018-10-26 17:30:00+00:00', '2018-10-26 17:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
		
		- Inputs can contain both naive and aware, string or datetime, the above
		  rules still apply
		
		>>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 12:00 -0530',
		...                datetime(2020, 1, 1, 18),
		...                datetime(2020, 1, 1, 18,
		...                tzinfo=timezone(-timedelta(hours=1)))],
		...                utc=True)
		DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 17:30:00+00:00',
		               '2020-01-01 18:00:00+00:00', '2020-01-01 19:00:00+00:00'],
		              dtype='datetime64[ns, UTC]', freq=None)
	**/
	static public function to_datetime(arg:Dynamic, ?errors:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?utc:Dynamic, ?format:Dynamic, ?exact:Dynamic, ?unit:Dynamic, ?infer_datetime_format:Dynamic, ?origin:Dynamic, ?cache:Dynamic):Dynamic;
	/**
		Convert argument to a numeric type.
		
		The default return dtype is `float64` or `int64`
		depending on the data supplied. Use the `downcast` parameter
		to obtain other dtypes.
		
		Please note that precision loss may occur if really large numbers
		are passed in. Due to the internal limitations of `ndarray`, if
		numbers smaller than `-9223372036854775808` (np.iinfo(np.int64).min)
		or larger than `18446744073709551615` (np.iinfo(np.uint64).max) are
		passed in, it is very likely they will be converted to float so that
		they can stored in an `ndarray`. These warnings apply similarly to
		`Series` since it internally leverages `ndarray`.
		
		Parameters
		----------
		arg : scalar, list, tuple, 1-d array, or Series
		    Argument to be converted.
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception.
		    - If 'coerce', then invalid parsing will be set as NaN.
		    - If 'ignore', then invalid parsing will return the input.
		downcast : str, default None
		    Can be 'integer', 'signed', 'unsigned', or 'float'.
		    If not None, and if the data has been successfully cast to a
		    numerical dtype (or if the data was numeric to begin with),
		    downcast that resulting data to the smallest numerical dtype
		    possible according to the following rules:
		
		    - 'integer' or 'signed': smallest signed int dtype (min.: np.int8)
		    - 'unsigned': smallest unsigned int dtype (min.: np.uint8)
		    - 'float': smallest float dtype (min.: np.float32)
		
		    As this behaviour is separate from the core conversion to
		    numeric values, any errors raised during the downcasting
		    will be surfaced regardless of the value of the 'errors' input.
		
		    In addition, downcasting will only occur if the size
		    of the resulting data's dtype is strictly larger than
		    the dtype it is to be cast to, so if none of the dtypes
		    checked satisfy that specification, no downcasting will be
		    performed on the data.
		
		Returns
		-------
		ret
		    Numeric if parsing succeeded.
		    Return type depends on input.  Series if Series, otherwise ndarray.
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_datetime : Convert argument to datetime.
		to_timedelta : Convert argument to timedelta.
		numpy.ndarray.astype : Cast a numpy array to a specified type.
		DataFrame.convert_dtypes : Convert dtypes.
		
		Examples
		--------
		Take separate series and convert to numeric, coercing when told to
		
		>>> s = pd.Series(['1.0', '2', -3])
		>>> pd.to_numeric(s)
		0    1.0
		1    2.0
		2   -3.0
		dtype: float64
		>>> pd.to_numeric(s, downcast='float')
		0    1.0
		1    2.0
		2   -3.0
		dtype: float32
		>>> pd.to_numeric(s, downcast='signed')
		0    1
		1    2
		2   -3
		dtype: int8
		>>> s = pd.Series(['apple', '1.0', '2', -3])
		>>> pd.to_numeric(s, errors='ignore')
		0    apple
		1      1.0
		2        2
		3       -3
		dtype: object
		>>> pd.to_numeric(s, errors='coerce')
		0    NaN
		1    1.0
		2    2.0
		3   -3.0
		dtype: float64
		
		Downcasting of nullable integer and floating dtypes is supported:
		
		>>> s = pd.Series([1, 2, 3], dtype="Int64")
		>>> pd.to_numeric(s, downcast="integer")
		0    1
		1    2
		2    3
		dtype: Int8
		>>> s = pd.Series([1.0, 2.1, 3.0], dtype="Float64")
		>>> pd.to_numeric(s, downcast="float")
		0    1.0
		1    2.1
		2    3.0
		dtype: Float32
	**/
	static public function to_numeric(arg:Dynamic, ?errors:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Convert argument to timedelta.
		
		Timedeltas are absolute differences in times, expressed in difference
		units (e.g. days, hours, minutes, seconds). This method converts
		an argument from a recognized timedelta format / value into
		a Timedelta type.
		
		Parameters
		----------
		arg : str, timedelta, list-like or Series
		    The data to be converted to timedelta.
		
		    .. deprecated:: 1.2
		        Strings with units 'M', 'Y' and 'y' do not represent
		        unambiguous timedelta values and will be removed in a future version
		
		unit : str, optional
		    Denotes the unit of the arg for numeric `arg`. Defaults to ``"ns"``.
		
		    Possible values:
		
		    * 'W'
		    * 'D' / 'days' / 'day'
		    * 'hours' / 'hour' / 'hr' / 'h'
		    * 'm' / 'minute' / 'min' / 'minutes' / 'T'
		    * 'S' / 'seconds' / 'sec' / 'second'
		    * 'ms' / 'milliseconds' / 'millisecond' / 'milli' / 'millis' / 'L'
		    * 'us' / 'microseconds' / 'microsecond' / 'micro' / 'micros' / 'U'
		    * 'ns' / 'nanoseconds' / 'nano' / 'nanos' / 'nanosecond' / 'N'
		
		    .. versionchanged:: 1.1.0
		
		       Must not be specified when `arg` context strings and
		       ``errors="raise"``.
		
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception.
		    - If 'coerce', then invalid parsing will be set as NaT.
		    - If 'ignore', then invalid parsing will return the input.
		
		Returns
		-------
		timedelta
		    If parsing succeeded.
		    Return type depends on input:
		
		    - list-like: TimedeltaIndex of timedelta64 dtype
		    - Series: Series of timedelta64 dtype
		    - scalar: Timedelta
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_datetime : Convert argument to datetime.
		convert_dtypes : Convert dtypes.
		
		Notes
		-----
		If the precision is higher than nanoseconds, the precision of the duration is
		truncated to nanoseconds for string inputs.
		
		Examples
		--------
		Parsing a single string to a Timedelta:
		
		>>> pd.to_timedelta('1 days 06:05:01.00003')
		Timedelta('1 days 06:05:01.000030')
		>>> pd.to_timedelta('15.5us')
		Timedelta('0 days 00:00:00.000015500')
		
		Parsing a list or array of strings:
		
		>>> pd.to_timedelta(['1 days 06:05:01.00003', '15.5us', 'nan'])
		TimedeltaIndex(['1 days 06:05:01.000030', '0 days 00:00:00.000015500', NaT],
		               dtype='timedelta64[ns]', freq=None)
		
		Converting numbers by specifying the `unit` keyword argument:
		
		>>> pd.to_timedelta(np.arange(5), unit='s')
		TimedeltaIndex(['0 days 00:00:00', '0 days 00:00:01', '0 days 00:00:02',
		                '0 days 00:00:03', '0 days 00:00:04'],
		               dtype='timedelta64[ns]', freq=None)
		>>> pd.to_timedelta(np.arange(5), unit='d')
		TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
		               dtype='timedelta64[ns]', freq=None)
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Return unique values based on a hash table.
		
		Uniques are returned in order of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique for long enough sequences.
		Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		numpy.ndarray or ExtensionArray
		
		    The return can be:
		
		    * Index : when the input is an Index
		    * Categorical : when the input is a Categorical dtype
		    * ndarray : when the input is a Series/ndarray
		
		    Return numpy.ndarray or ExtensionArray.
		
		See Also
		--------
		Index.unique : Return unique values from an Index.
		Series.unique : Return unique values of Series object.
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp("20160101"), pd.Timestamp("20160101")]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(
		...     pd.Series(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		<DatetimeArray>
		['2016-01-01 00:00:00-05:00']
		Length: 1, dtype: datetime64[ns, US/Eastern]
		
		>>> pd.unique(
		...     pd.Index(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		        dtype='datetime64[ns, US/Eastern]',
		        freq=None)
		
		>>> pd.unique(list("baabc"))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"), categories=list("abc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(
		...     pd.Series(
		...         pd.Categorical(list("baabc"), categories=list("abc"), ordered=True)
		...     )
		... )
		['b', 'a', 'c']
		Categories (3, object): ['a' < 'b' < 'c']
		
		An array of tuples
		
		>>> pd.unique([("a", "b"), ("b", "a"), ("a", "c"), ("b", "a")])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique(values:Dynamic):Dynamic;
	/**
		Compute a histogram of the counts of non-null values.
		
		Parameters
		----------
		values : ndarray (1-d)
		sort : bool, default True
		    Sort by values
		ascending : bool, default False
		    Sort in ascending order
		normalize: bool, default False
		    If True then compute a relative histogram
		bins : integer, optional
		    Rather than count values, group them into half-open bins,
		    convenience for pd.cut, only works with numeric data
		dropna : bool, default True
		    Don't include counts of NaN
		
		Returns
		-------
		Series
	**/
	static public function value_counts(values:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?normalize:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
}