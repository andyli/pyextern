/* This file is generated, do not edit! */
package pandas.core.arrays.timedeltas;
@:pythonImport("pandas.core.arrays.timedeltas", "TimedeltaArray") extern class TimedeltaArray {
	public function __abs__():Dynamic;
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
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
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
		Iterate over elements of the array.
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
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
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
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
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
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _add_arithmetic_ops():Dynamic;
	static public function _add_comparison_ops():Dynamic;
	/**
		Add DatetimeArray/Index or ndarray[datetime64] to TimedeltaArray.
	**/
	public function _add_datetime_arraylike(other:Dynamic):Dynamic;
	public function _add_datetimelike_scalar(other:Dynamic):Dynamic;
	/**
		Add a timedelta-like, Tick, or TimedeltaIndex-like object
		to self, yielding a new TimedeltaArray.
		
		Parameters
		----------
		other : {timedelta, np.timedelta64, Tick,
		         TimedeltaIndex, ndarray[timedelta64]}
		
		Returns
		-------
		result : TimedeltaArray
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
	public function _add_offset(other:Dynamic):Dynamic;
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
		Wrap comparison operations to convert timedelta-like to timedelta64
	**/
	static public function _create_comparison_method(op:Dynamic):Dynamic;
	static public var _datetimelike_methods : Dynamic;
	static public var _datetimelike_ops : Dynamic;
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
	public function _format_native_types(?na_rep:Dynamic, ?date_format:Dynamic):Dynamic;
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
	static public function _from_sequence(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?freq:Dynamic, ?unit:Dynamic):Dynamic;
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
	static public function _generate_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		return an attributes dict for my class
	**/
	public function _get_attributes_dict():Dynamic;
	/**
		return if I have any nans; enables various perf speedups
	**/
	public var _hasnans : Dynamic;
	public var _is_monotonic_decreasing : Dynamic;
	public var _is_monotonic_increasing : Dynamic;
	public var _is_unique : Dynamic;
	/**
		return if each value is nan
	**/
	public var _isnan : Dynamic;
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
		Represents a duration, the difference between two dates or times.
		
		Timedelta is the pandas equivalent of python's ``datetime.timedelta``
		and is interchangeable with it in most cases.
		
		Parameters
		----------
		value : Timedelta, timedelta, np.timedelta64, string, or integer
		unit : str, optional
		    Denote the unit of the input, if input is an integer. Default 'ns'.
		    Possible values:
		    {'Y', 'M', 'W', 'D', 'days', 'day', 'hours', hour', 'hr', 'h',
		    'm', 'minute', 'min', 'minutes', 'T', 'S', 'seconds', 'sec', 'second',
		    'ms', 'milliseconds', 'millisecond', 'milli', 'millis', 'L',
		    'us', 'microseconds', 'microsecond', 'micro', 'micros', 'U',
		    'ns', 'nanoseconds', 'nano', 'nanos', 'nanosecond', 'N'}
		days, seconds, microseconds,
		milliseconds, minutes, hours, weeks : numeric, optional
		    Values for construction in compat with datetime.timedelta.
		    np ints and floats will be coerced to python ints and floats.
		
		Notes
		-----
		The ``.value`` attribute is always in ns.
	**/
	static public function _scalar_type(?value:Dynamic, ?unit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _simple_new(values:Dynamic, ?freq:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Return a dataframe of the components (days, hours, minutes,
		seconds, milliseconds, microseconds, nanoseconds) of the Timedeltas.
		
		Returns
		-------
		a DataFrame
	**/
	public var components : Dynamic;
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
		Number of days for each element.
	**/
	public var days : Dynamic;
	/**
		Return ExtensionArray without NA values
		
		Returns
		-------
		valid : ExtensionArray
	**/
	public function dropna():Dynamic;
	/**
		The dtype for the TimedeltaArray.
		
		.. warning::
		
		   A future version of pandas will change dtype to be an instance
		   of a :class:`pandas.api.extensions.ExtensionDtype` subclass,
		   not a ``numpy.dtype``.
		
		Returns
		-------
		numpy.dtype
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
		Tryies to return a string representing a frequency guess,
		generated by infer_freq.  Returns None if it can't autodetect the
		frequency.
	**/
	public var inferred_freq : Dynamic;
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
		Number of microseconds (>= 0 and less than 1 second) for each element.
	**/
	public var microseconds : Dynamic;
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
		Number of nanoseconds (>= 0 and less than 1 microsecond) for each element.
	**/
	public var nanoseconds : Dynamic;
	/**
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	static public var ndim : Dynamic;
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
		Number of seconds (>= 0 and less than 1 day) for each element.
	**/
	public var seconds : Dynamic;
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
		Return Timedelta Array/Index as object ndarray of datetime.timedelta
		objects.
		
		Returns
		-------
		datetimes : ndarray
	**/
	public function to_pytimedelta():numpy.Ndarray;
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
	public function total_seconds():Dynamic;
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
}