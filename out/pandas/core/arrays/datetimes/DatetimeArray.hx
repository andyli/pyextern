/* This file is generated, do not edit! */
package pandas.core.arrays.datetimes;
@:pythonImport("pandas.core.arrays.datetimes", "DatetimeArray") extern class DatetimeArray {
	public function __add__(other:Dynamic):Dynamic;
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		This getitem defers to the underlying array, which by-definition can
		only handle list-likes, slices, and integer scalars
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, ?dtype:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, ?dtype:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	/**
		Return an iterator over the boxed values
		
		Yields
		-------
		tstamp : Timestamp
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Length of this array
		
		Returns
		-------
		length : int
	**/
	public function __len__():Int;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
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
	public function __rsub__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set one or more values inplace.
		
		This method is not required to satisfy the pandas extension array
		interface.
		
		Parameters
		----------
		key : int, ndarray, or slice
		    When called from, e.g. ``Series.__setitem__``, ``key`` will be
		    one of
		
		    * scalar int
		    * ndarray of integers.
		    * boolean ndarray
		    * slice object
		
		value : ExtensionDtype.type, Sequence[ExtensionDtype.type], or object
		    value or values to be set of ``key``.
		
		Returns
		-------
		None
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _add_arithmetic_ops():Dynamic;
	static public function _add_comparison_ops():Dynamic;
	public function _add_datetime_arraylike(other:Dynamic):Dynamic;
	public function _add_datetimelike_scalar(other:Dynamic):Dynamic;
	/**
		Add a timedelta-like, Tick, or TimedeltaIndex-like object
		to self, yielding a new DatetimeArray
		
		Parameters
		----------
		other : {timedelta, np.timedelta64, Tick,
		         TimedeltaIndex, ndarray[timedelta64]}
		
		Returns
		-------
		result : DatetimeArray
	**/
	public function _add_delta(delta:Dynamic):Dynamic;
	/**
		Add a delta of a TimedeltaIndex
		return the i8 result view
	**/
	public function _add_delta_tdi(other:Dynamic):Dynamic;
	/**
		Add pd.NaT to self
	**/
	public function _add_nat():Dynamic;
	public function _add_offset(offset:Dynamic):Dynamic;
	/**
		Add a delta of a timedeltalike
		return the i8 result view
	**/
	public function _add_timedeltalike_scalar(other:Dynamic):Dynamic;
	/**
		Add or subtract array-like of integers equivalent to applying
		`_time_shift` pointwise.
		
		Parameters
		----------
		other : Index, ExtensionArray, np.ndarray
		    integer-dtype
		op : {operator.add, operator.sub}
		
		Returns
		-------
		result : same class as self
	**/
	public function _addsub_int_array(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Add or subtract array-like of DateOffset objects
		
		Parameters
		----------
		other : Index, np.ndarray
		    object-dtype containing pd.DateOffset objects
		op : {operator.add, operator.sub}
		
		Returns
		-------
		result : same class as self
	**/
	public function _addsub_offset_array(other:Dynamic, op:Dynamic):Dynamic;
	public function _assert_tzawareness_compat(other:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	static public var _bool_ops : Dynamic;
	/**
		box function to get object from internal representation
	**/
	public var _box_func : Dynamic;
	/**
		apply box func to passed values
	**/
	public function _box_values(values:Dynamic):Dynamic;
	static public var _can_hold_na : Dynamic;
	static public var _ceil_example : Dynamic;
	/**
		Verify that `self` and `other` are compatible.
		
		* DatetimeArray verifies that the timezones (if any) match
		* PeriodArray verifies that the freq matches
		* Timedelta has no verification
		
		In each case, NaT is considered compatible.
		
		Parameters
		----------
		other
		
		Raises
		------
		Exception
	**/
	public function _check_compatible_with(other:Dynamic):Dynamic;
	/**
		Concatenate multiple array
		
		Parameters
		----------
		to_concat : sequence of this type
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _concat_same_type(to_concat:Dynamic):Dynamic;
	/**
		Wrap comparison operations to convert datetime-like to datetime64
	**/
	static public function _create_comparison_method(op:Dynamic):Dynamic;
	static public var _datetimelike_methods : Dynamic;
	static public var _datetimelike_ops : Dynamic;
	static public var _dayofweek_doc : Dynamic;
	static public var _dtype : Dynamic;
	/**
		Ensure that we are re-localized.
		
		This is for compat as we can then call this on all datetimelike
		arrays generally (ignored for Period/Timedelta)
		
		Parameters
		----------
		arg : Union[DatetimeLikeArray, DatetimeIndexOpsMixin, ndarray]
		ambiguous : str, bool, or bool-ndarray, default 'raise'
		nonexistent : str, default 'raise'
		from_utc : bool, default False
		    If True, localize the i8 ndarray to UTC first before converting to
		    the appropriate tz. If False, localize directly to the tz.
		
		Returns
		-------
		localized array
	**/
	public function _ensure_localized(arg:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic, ?from_utc:Dynamic):Dynamic;
	static public var _field_ops : Dynamic;
	static public var _floor_example : Dynamic;
	/**
		Helper method for astype when converting to strings.
		
		Returns
		-------
		ndarray[str]
	**/
	public function _format_native_types(?na_rep:Dynamic, ?date_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Formatting function for scalar values.
		
		This is used in the default '__repr__'. The returned formatting
		function receives instances of your scalar type.
		
		Parameters
		----------
		boxed: bool, default False
		    An indicated for whether or not your array is being printed
		    within a Series, DataFrame, or Index (True), or just by
		    itself (False). This may be useful if you want scalar values
		    to appear differently within a Series versus on its own (e.g.
		    quoted or not).
		
		Returns
		-------
		Callable[[Any], str]
		    A callable that gets instances of the scalar type and
		    returns a string. By default, :func:`repr` is used
		    when ``boxed=False`` and :func:`str` is used when
		    ``boxed=True``.
	**/
	public function _formatter(?boxed:Dynamic):Dynamic;
	/**
		An array of values to be printed in, e.g. the Series repr
		
		.. deprecated:: 0.24.0
		
		   Use :meth:`ExtensionArray._formatter` instead.
	**/
	public function _formatting_values():Dynamic;
	static public var _freq : Dynamic;
	/**
		Reconstruct an ExtensionArray after factorization.
		
		Parameters
		----------
		values : ndarray
		    An integer ndarray with the factorized values.
		original : ExtensionArray
		    The original ExtensionArray that factorize was called on.
		
		See Also
		--------
		pandas.factorize
		ExtensionArray.factorize
	**/
	static public function _from_factorized(values:Dynamic, original:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of scalars.
		
		Parameters
		----------
		scalars : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type``.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : boolean, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?tz:Dynamic, ?freq:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?ambiguous:Dynamic, ?int_as_wall_time:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of strings.
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		strings : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type``.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : boolean, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence_of_strings(strings:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _generate_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		return an attributes dict for my class
	**/
	public function _get_attributes_dict():Dynamic;
	public function _has_same_tz(other:Dynamic):Dynamic;
	/**
		return if I have any nans; enables various perf speedups
	**/
	public var _hasnans : Dynamic;
	public var _is_monotonic_decreasing : Dynamic;
	public var _is_monotonic_increasing : Dynamic;
	static public var _is_month_doc : Dynamic;
	public var _is_unique : Dynamic;
	/**
		return if each value is nan
	**/
	public var _isnan : Dynamic;
	/**
		Convert to an i8 (unix-like nanosecond timestamp) representation
		while keeping the local timezone and not using UTC.
		This is used to calculate time-of-day information as if the timestamps
		were timezone-naive.
	**/
	public function _local_timestamps():Dynamic;
	public function _maybe_clear_freq():Dynamic;
	/**
		Parameters
		----------
		result : a ndarray
		fill_value : object, default iNaT
		convert : string/dtype or None
		
		Returns
		-------
		result : ndarray with values replace by the fill_value
		
		mask the result if needed, convert to the provided dtype if its not
		None
		
		This is an internal routine
	**/
	public function _maybe_mask_results(result:Dynamic, ?fill_value:Dynamic, ?convert:Dynamic):Dynamic;
	/**
		Internal pandas method for lossy conversion to a NumPy ndarray.
		
		This method is not part of the pandas interface.
		
		The expectation is that this is cheap to compute, and is primarily
		used for interacting with our indexers.
	**/
	public var _ndarray_values : Dynamic;
	static public var _object_ops : Dynamic;
	static public var _other_ops : Dynamic;
	/**
		Return a scalar result of performing the reduction operation.
		
		Parameters
		----------
		name : str
		    Name of the function, supported values are:
		    { any, all, min, max, sum, mean, median, prod,
		    std, var, sem, kurt, skew }.
		skipna : bool, default True
		    If True, skip NaN values.
		**kwargs
		    Additional keyword arguments passed to the reduction function.
		    Currently, `ddof` is the only supported kwarg.
		
		Returns
		-------
		scalar
		
		Raises
		------
		TypeError : subclass does not define reductions
	**/
	public function _reduce(name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _resolution : Dynamic;
	public function _round(freq:Dynamic, mode:Dynamic, ambiguous:Dynamic, nonexistent:Dynamic):Dynamic;
	static public var _round_doc : Dynamic;
	static public var _round_example : Dynamic;
	/**
		Construct a scalar type from a string.
		
		Parameters
		----------
		value : str
		
		Returns
		-------
		Period, Timestamp, or Timedelta, or NaT
		    Whatever the type of ``self._scalar_type`` is.
		
		Notes
		-----
		This should call ``self._check_compatible_with`` before
		unboxing the result.
	**/
	public function _scalar_from_string(value:Dynamic):Dynamic;
	/**
		Pandas replacement for datetime.datetime
		
		Timestamp is the pandas equivalent of python's Datetime
		and is interchangeable with it in most cases. It's the type used
		for the entries that make up a DatetimeIndex, and other timeseries
		oriented data structures in pandas.
		
		Parameters
		----------
		ts_input : datetime-like, str, int, float
		    Value to be converted to Timestamp
		freq : str, DateOffset
		    Offset which Timestamp will have
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will have.
		unit : str
		    Unit used for conversion if ts_input is of type int or float. The
		    valid values are 'D', 'h', 'm', 's', 'ms', 'us', and 'ns'. For
		    example, 's' means seconds and 'ms' means milliseconds.
		year, month, day : int
		    .. versionadded:: 0.19.0
		hour, minute, second, microsecond : int, optional, default 0
		    .. versionadded:: 0.19.0
		nanosecond : int, optional, default 0
		    .. versionadded:: 0.23.0
		tzinfo : datetime.tzinfo, optional, default None
		    .. versionadded:: 0.19.0
		
		Notes
		-----
		There are essentially three calling conventions for the constructor. The
		primary form accepts four parameters. They can be passed by position or
		keyword.
		
		The other two forms mimic the parameters from ``datetime.datetime``. They
		can be passed by either position or keyword, but not both mixed together.
		
		Examples
		--------
		Using the primary calling convention:
		
		This converts a datetime-like string
		>>> pd.Timestamp('2017-01-01T12')
		Timestamp('2017-01-01 12:00:00')
		
		This converts a float representing a Unix epoch in units of seconds
		>>> pd.Timestamp(1513393355.5, unit='s')
		Timestamp('2017-12-16 03:02:35.500000')
		
		This converts an int representing a Unix-epoch in units of seconds
		and for a particular timezone
		>>> pd.Timestamp(1513393355, unit='s', tz='US/Pacific')
		Timestamp('2017-12-15 19:02:35-0800', tz='US/Pacific')
		
		Using the other two forms that mimic the API for ``datetime.datetime``:
		
		>>> pd.Timestamp(2017, 1, 1, 12)
		Timestamp('2017-01-01 12:00:00')
		
		>>> pd.Timestamp(year=2017, month=1, day=1, hour=12)
		Timestamp('2017-01-01 12:00:00')
	**/
	static public function _scalar_type(?ts_input:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?unit:Dynamic, ?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?microsecond:Dynamic, ?nanosecond:Dynamic, ?tzinfo:Dynamic):Dynamic;
	static public function _simple_new(values:Dynamic, ?freq:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		subtract DatetimeArray/Index or ndarray[datetime64]
	**/
	public function _sub_datetime_arraylike(other:Dynamic):Dynamic;
	public function _sub_datetimelike_scalar(other:Dynamic):Dynamic;
	/**
		Subtract pd.NaT from self
	**/
	public function _sub_nat():Dynamic;
	public function _sub_period(other:Dynamic):Dynamic;
	/**
		Subtract a Period Array/Index from self.  This is only valid if self
		is itself a Period Array/Index, raises otherwise.  Both objects must
		have the same frequency.
		
		Parameters
		----------
		other : PeriodIndex or PeriodArray
		
		Returns
		-------
		result : np.ndarray[object]
		    Array of DateOffset objects; nulls represented by NaT
	**/
	public function _sub_period_array(other:Dynamic):Dynamic;
	/**
		Shift each value by `periods`.
		
		Note this is different from ExtensionArray.shift, which
		shifts the *position* of each element, padding the end with
		missing values.
		
		Parameters
		----------
		periods : int
		    Number of periods to shift by.
		freq : pandas.DateOffset, pandas.Timedelta, or string
		    Frequency increment to shift by.
	**/
	public function _time_shift(periods:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Comparable timezone both for pytz / dateutil
	**/
	public var _timezone : Dynamic;
	static public var _typ : Dynamic;
	/**
		Unbox the integer value of a scalar `value`.
		
		Parameters
		----------
		value : Union[Period, Timestamp, Timedelta]
		
		Returns
		-------
		int
		
		Examples
		--------
		>>> self._unbox_scalar(Timedelta('10s'))  # DOCTEST: +SKIP
		10000000000
	**/
	public function _unbox_scalar(value:Dynamic):Dynamic;
	/**
		If a fill_value is passed to `take` convert it to an i8 representation,
		raising ValueError if this is not possible.
		
		Parameters
		----------
		fill_value : object
		
		Returns
		-------
		fill_value : np.int64
		
		Raises
		------
		ValueError
	**/
	public function _validate_fill_value(fill_value:Dynamic):Dynamic;
	/**
		Validate that a frequency is compatible with the values of a given
		Datetime Array/Index or Timedelta Array/Index
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		    The index on which to determine if the given frequency is valid
		freq : DateOffset
		    The frequency to validate
	**/
	static public function _validate_frequency(index:Dynamic, freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return values for sorting.
		
		Returns
		-------
		ndarray
		    The transformed values should maintain the ordering between values
		    within the array.
		
		See Also
		--------
		ExtensionArray.argsort
	**/
	public function _values_for_argsort():Dynamic;
	/**
		Return an array and missing value suitable for factorization.
		
		Returns
		-------
		values : ndarray
		
		    An array suitable for factorization. This should maintain order
		    and be a supported dtype (Float64, Int64, UInt64, String, Object).
		    By default, the extension array is cast to object dtype.
		na_value : object
		    The value in `values` to consider missing. This will be treated
		    as NA in the factorization routines, so it will be coded as
		    `na_sentinal` and not included in `uniques`. By default,
		    ``np.nan`` is used.
		
		Notes
		-----
		The values returned by this method are also used in
		:func:`pandas.util.hash_pandas_object`.
	**/
	public function _values_for_factorize():Dynamic;
	/**
		Return the indices that would sort this array.
		
		Parameters
		----------
		ascending : bool, default True
		    Whether the indices should result in an ascending
		    or descending sort.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm.
		*args, **kwargs:
		    passed through to :func:`numpy.argsort`.
		
		Returns
		-------
		index_array : ndarray
		    Array of indices that sort ``self``.
		
		See Also
		--------
		numpy.argsort : Sorting implementation used internally.
	**/
	public function argsort(?ascending:Dynamic, ?kind:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Integer representation of the values.
		
		Returns
		-------
		ndarray
		    An ndarray with int64 dtype.
	**/
	public var asi8 : Dynamic;
	/**
		Cast to a NumPy array with 'dtype'.
		
		Parameters
		----------
		dtype : str or dtype
		    Typecode or data-type to which the array is cast.
		copy : bool, default True
		    Whether to copy the data, even if not necessary. If False,
		    a copy is made only if the old dtype does not match the
		    new dtype.
		
		Returns
		-------
		array : ndarray
		    NumPy ndarray with 'dtype' for its dtype.
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):numpy.Ndarray;
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
	public function ceil(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	/**
		Return a copy of the array.
		
		Parameters
		----------
		deep : bool, default False
		    Also copy the underlying data backing this array.
		
		Returns
		-------
		ExtensionArray
	**/
	public function copy(?deep:Dynamic):Dynamic;
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
	public function day_name(?locale:Dynamic):Dynamic;
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
		The number of days in the month.
	**/
	public var days_in_month : Dynamic;
	/**
		The number of days in the month.
	**/
	public var daysinmonth : Dynamic;
	/**
		Return ExtensionArray without NA values
		
		Returns
		-------
		valid : ExtensionArray
	**/
	public function dropna():Dynamic;
	/**
		The dtype for the DatetimeArray.
		
		.. warning::
		
		   A future version of pandas will change dtype to never be a
		   ``numpy.dtype``. Instead, :attr:`DatetimeArray.dtype` will
		   always be an instance of an ``ExtensionDtype`` subclass.
		
		Returns
		-------
		numpy.dtype or DatetimeTZDtype
		    If the values are tz-naive, then ``np.dtype('datetime64[ns]')``
		    is returned.
		
		    If the values are tz-aware, then the ``DatetimeTZDtype``
		    is returned.
	**/
	public var dtype : Dynamic;
	/**
		Encode the extension array as an enumerated type.
		
		Parameters
		----------
		na_sentinel : int, default -1
		    Value to use in the `labels` array to indicate missing values.
		
		Returns
		-------
		labels : ndarray
		    An integer NumPy array that's an indexer into the original
		    ExtensionArray.
		uniques : ExtensionArray
		    An ExtensionArray containing the unique values of `self`.
		
		    .. note::
		
		       uniques will *not* contain an entry for the NA value of
		       the ExtensionArray if there are any missing values present
		       in `self`.
		
		See Also
		--------
		pandas.factorize : Top-level factorize method that dispatches here.
		
		Notes
		-----
		:meth:`pandas.factorize` offers a `sort` keyword as well.
	**/
	public function factorize(?na_sentinel:Dynamic):numpy.Ndarray;
	/**
		Fill NA/NaN values using the specified method.
		
		Parameters
		----------
		value : scalar, array-like
		    If a scalar value is passed it is used to fill all missing values.
		    Alternatively, an array-like 'value' can be given. It's expected
		    that the array-like have the same length as 'self'.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill gap
		limit : int, default None
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled.
		
		Returns
		-------
		filled : ExtensionArray with NA/NaN filled
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?limit:Dynamic):Dynamic;
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
	public function floor(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	/**
		Return the frequency object if it is set, otherwise None.
	**/
	public var freq : Dynamic;
	/**
		Return the frequency object as a string if its set, otherwise None
	**/
	public var freqstr : Dynamic;
	/**
		The hours of the datetime.
	**/
	public var hour : Dynamic;
	/**
		Tryies to return a string representing a frequency guess,
		generated by infer_freq.  Returns None if it can't autodetect the
		frequency.
	**/
	public var inferred_freq : Dynamic;
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
		Returns True if all of the dates are at midnight ("no time")
	**/
	public var is_normalized : Dynamic;
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
		A 1-D array indicating if each value is missing.
		
		Returns
		-------
		na_values : Union[np.ndarray, ExtensionArray]
		    In most cases, this should return a NumPy ndarray. For
		    exceptional cases like ``SparseArray``, where returning
		    an ndarray would be expensive, an ExtensionArray may be
		    returned.
		
		Notes
		-----
		If returning an ExtensionArray, then
		
		* ``na_values._is_boolean`` should be True
		* `na_values` should implement :func:`ExtensionArray._reduce`
		* ``na_values.any`` and ``na_values.all`` should be implemented
	**/
	public function isna():Dynamic;
	public function map(mapper:Dynamic):Dynamic;
	/**
		Return the maximum value of the Array or maximum along
		an axis.
		
		See Also
		--------
		numpy.ndarray.max
		Index.max : Return the maximum value in an Index.
		Series.max : Return the maximum value in a Series.
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The microseconds of the datetime.
	**/
	public var microsecond : Dynamic;
	/**
		Return the minimum value of the Array or minimum along
		an axis.
		
		See Also
		--------
		numpy.ndarray.min
		Index.min : Return the minimum value in an Index.
		Series.min : Return the minimum value in a Series.
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function month_name(?locale:Dynamic):Dynamic;
	/**
		The nanoseconds of the datetime.
	**/
	public var nanosecond : Dynamic;
	/**
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	static public var ndim : Dynamic;
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
	public function normalize():Dynamic;
	/**
		The quarter of the date.
	**/
	public var quarter : Dynamic;
	/**
		Repeat elements of an array.
		
		See Also
		--------
		numpy.ndarray.repeat
	**/
	public function repeat(repeats:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns day, hour, minute, second, millisecond or microsecond
	**/
	public var resolution : Dynamic;
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
	public function round(freq:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted array `self` such that, if the
		corresponding elements in `value` were inserted before the indices,
		the order of `self` would be preserved.
		
		Parameters
		----------
		value : array_like
		    Values to insert into `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array_like, optional
		    Optional array of integer indices that sort `self` into ascending
		    order. They are typically the result of ``np.argsort``.
		
		Returns
		-------
		indices : array of ints
		    Array of insertion points with the same shape as `value`.
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		The seconds of the datetime.
	**/
	public var second : Dynamic;
	/**
		Return a tuple of the array dimensions.
	**/
	public var shape : Dynamic;
	/**
		Shift values by desired number.
		
		Newly introduced missing values are filled with
		``self.dtype.na_value``.
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		periods : int, default 1
		    The number of periods to shift. Negative values are allowed
		    for shifting backwards.
		
		fill_value : object, optional
		    The scalar value to use for newly introduced missing values.
		    The default is ``self.dtype.na_value``
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		shifted : ExtensionArray
		
		Notes
		-----
		If ``self`` is empty or ``periods`` is 0, a copy of ``self`` is
		returned.
		
		If ``periods > len(self)``, then an array of size
		len(self) is returned, with all values filled with
		``self.dtype.na_value``.
	**/
	public function shift(?periods:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		The number of elements in this array.
	**/
	public var size : Dynamic;
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
	public function strftime(date_format:Dynamic):Dynamic;
	/**
		Take elements from an array.
		
		Parameters
		----------
		indices : sequence of integers
		    Indices to be taken.
		allow_fill : bool, default False
		    How to handle negative values in `indices`.
		
		    * False: negative values in `indices` indicate positional indices
		      from the right (the default). This is similar to
		      :func:`numpy.take`.
		
		    * True: negative values in `indices` indicate
		      missing values. These values are set to `fill_value`. Any other
		      other negative values raise a ``ValueError``.
		
		fill_value : any, optional
		    Fill value to use for NA-indices when `allow_fill` is True.
		    This may be ``None``, in which case the default NA value for
		    the type, ``self.dtype.na_value``, is used.
		
		    For many ExtensionArrays, there will be two representations of
		    `fill_value`: a user-facing "boxed" scalar, and a low-level
		    physical NA value. `fill_value` should be the user-facing version,
		    and the implementation should handle translating that to the
		    physical version for processing the take if necessary.
		
		Returns
		-------
		ExtensionArray
		
		Raises
		------
		IndexError
		    When the indices are out of bounds for the array.
		ValueError
		    When `indices` contains negative values other than ``-1``
		    and `allow_fill` is True.
		
		Notes
		-----
		ExtensionArray.take is called by ``Series.__getitem__``, ``.loc``,
		``iloc``, when `indices` is a sequence of values. Additionally,
		it's called by :meth:`Series.reindex`, or any other method
		that causes realignment, with a `fill_value`.
		
		See Also
		--------
		numpy.take
		pandas.api.extensions.take
		
		Examples
		--------
		Here's an example implementation, which relies on casting the
		extension array to object dtype. This uses the helper method
		:func:`pandas.api.extensions.take`.
		
		.. code-block:: python
		
		   def take(self, indices, allow_fill=False, fill_value=None):
		       from pandas.core.algorithms import take
		
		       # If the ExtensionArray is backed by an ndarray, then
		       # just pass that here instead of coercing to object.
		       data = self.astype(object)
		
		       if allow_fill and fill_value is None:
		           fill_value = self.dtype.na_value
		
		       # fill value should always be translated from the scalar
		       # type for the array, to the physical storage type for
		       # the data, before passing to take.
		
		       result = take(data, indices, fill_value=fill_value,
		                     allow_fill=allow_fill)
		       return self._from_sequence(result, dtype=self.dtype)
	**/
	public function take(indices:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Returns numpy array of datetime.time. The time part of the Timestamps.
	**/
	public var time : Dynamic;
	static public var timetuple : Dynamic;
	/**
		Returns numpy array of datetime.time also containing timezone
		information. The time part of the Timestamps.
	**/
	public var timetz : Dynamic;
	/**
		Convert Datetime Array to float64 ndarray of Julian Dates.
		0 Julian date is noon January 1, 4713 BC.
		http://en.wikipedia.org/wiki/Julian_day
	**/
	public function to_julian_date():Dynamic;
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
	public function to_period(?freq:Dynamic):Dynamic;
	/**
		Calculate TimedeltaArray of difference between index
		values and index converted to PeriodArray at specified
		freq. Used for vectorized offsets
		
		Parameters
		----------
		freq : Period frequency
		
		Returns
		-------
		TimedeltaArray/Index
	**/
	public function to_perioddelta(freq:Dynamic):Dynamic;
	/**
		Return Datetime Array/Index as object ndarray of datetime.datetime
		objects
		
		Returns
		-------
		datetimes : ndarray
	**/
	public function to_pydatetime():numpy.Ndarray;
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
	public function tz_convert(tz:Dynamic):Dynamic;
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
	public function tz_localize(tz:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Alias for tz attribute
	**/
	public var tzinfo : Dynamic;
	/**
		Compute the ExtensionArray of unique values.
		
		Returns
		-------
		uniques : ExtensionArray
	**/
	public function unique():Dynamic;
	/**
		Return a Series containing counts of unique values.
		
		Parameters
		----------
		dropna : boolean, default True
		    Don't include counts of NaT values.
		
		Returns
		-------
		Series
	**/
	public function value_counts(?dropna:Dynamic):Dynamic;
	/**
		New view on this array with the same data.
		
		Parameters
		----------
		dtype : numpy dtype, optional
		
		Returns
		-------
		ndarray
		    With the specified `dtype`.
	**/
	public function view(?dtype:Dynamic):Dynamic;
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