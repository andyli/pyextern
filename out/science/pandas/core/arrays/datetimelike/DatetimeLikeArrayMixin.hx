/* This file is generated, do not edit! */
package pandas.core.arrays.datetimelike;
@:pythonImport("pandas.core.arrays.datetimelike", "DatetimeLikeArrayMixin") extern class DatetimeLikeArrayMixin {
	public var T : Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	public function __array__(?dtype:Dynamic):Dynamic;
	public function __array_ufunc__(ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return for `item in self`.
	**/
	public function __contains__(item:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	public function __divmod__(?other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(?other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?dtype:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, ?dtype:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Void;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __mod__(?other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(?other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(?other:Dynamic):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdivmod__(?other:Dynamic):Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(?other:Dynamic):Dynamic;
	public function __rmod__(?other:Dynamic):Dynamic;
	public function __rmul__(?other:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(?other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(?other:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __setstate_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __truediv__(?other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	public function _add_datetime_arraylike(other:Dynamic):Dynamic;
	public function _add_datetimelike_scalar(other:Dynamic):Dynamic;
	/**
		Add pd.NaT to self
	**/
	public function _add_nat():Dynamic;
	public function _add_offset(offset:Dynamic):Dynamic;
	public function _add_period(other:Dynamic):Dynamic;
	/**
		Add a delta of a TimedeltaIndex
		
		Returns
		-------
		Same type as self
	**/
	public function _add_timedelta_arraylike(other:Dynamic):Dynamic;
	/**
		Add a delta of a timedeltalike
		
		Returns
		-------
		Same type as self
	**/
	public function _add_timedeltalike_scalar(other:Dynamic):Dynamic;
	/**
		Add or subtract array-like of DateOffset objects
		
		Parameters
		----------
		other : np.ndarray[object]
		op : {operator.add, operator.sub}
		
		Returns
		-------
		result : same class as self
	**/
	public function _addsub_object_array(other:Dynamic, op:Dynamic):Dynamic;
	public function _arith_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		box function to get object from internal representation
	**/
	public function _box_func(x:Dynamic):Dynamic;
	/**
		apply box func to passed values
	**/
	public function _box_values(values:Dynamic):Dynamic;
	public var _can_hold_na : Dynamic;
	/**
		Verify that `self` and `other` are compatible.
		
		* DatetimeArray verifies that the timezones (if any) match
		* PeriodArray verifies that the freq matches
		* Timedelta has no verification
		
		In each case, NaT is considered compatible.
		
		Parameters
		----------
		other
		setitem : bool, default False
		    For __setitem__ we may have stricter compatibility restrictions than
		    for comparisons.
		
		Raises
		------
		Exception
	**/
	public function _check_compatible_with(other:Dynamic, ?setitem:Dynamic):Dynamic;
	public function _cmp_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Concatenate multiple array of this dtype.
		
		Parameters
		----------
		to_concat : sequence of this type
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _concat_same_type(to_concat:Dynamic, ?axis:Dynamic):Dynamic;
	public var _data : Dynamic;
	public var _dtype : Dynamic;
	/**
		Analogous to np.empty(shape, dtype=dtype)
		
		Parameters
		----------
		shape : tuple[int]
		dtype : ExtensionDtype
	**/
	static public function _empty(shape:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Replace values in locations specified by 'mask' using pad or backfill.
		
		See also
		--------
		ExtensionArray.fillna
	**/
	public function _fill_mask_inplace(method:Dynamic, limit:Dynamic, mask:Dynamic):Dynamic;
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
		boxed : bool, default False
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
		Construct a new ExtensionArray `new_array` with `arr` as its _ndarray.
		
		This should round-trip:
		    self == self._from_backing_data(self._ndarray)
	**/
	public function _from_backing_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		factorize : Top-level factorize method that dispatches here.
		ExtensionArray.factorize : Encode the extension array as an enumerated type.
	**/
	static public function _from_factorized(values:Dynamic, original:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of scalars.
		
		Parameters
		----------
		scalars : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type`` or be converted into this type in this method.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : bool, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence(scalars:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of strings.
		
		Parameters
		----------
		strings : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type``.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : bool, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence_of_strings(strings:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _generate_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find the `freq` attribute to assign to the result of a __getitem__ lookup.
	**/
	public function _get_getitem_freq(key:Dynamic):Dynamic;
	/**
		return if I have any nans; enables various perf speedups
	**/
	public var _hasna : Dynamic;
	public var _is_monotonic_decreasing : Dynamic;
	public var _is_monotonic_increasing : Dynamic;
	public var _is_unique : Dynamic;
	/**
		return if each value is nan
	**/
	public var _isnan : Dynamic;
	public function _logical_method(other:Dynamic, op:Dynamic):Dynamic;
	public function _maybe_clear_freq():Dynamic;
	/**
		Parameters
		----------
		result : np.ndarray
		fill_value : object, default iNaT
		convert : str, dtype or None
		
		Returns
		-------
		result : ndarray with values replace by the fill_value
		
		mask the result if needed, convert to the provided dtype if its not
		None
		
		This is an internal routine.
	**/
	public function _maybe_mask_results(result:Dynamic, ?fill_value:Dynamic, ?convert:Dynamic):Dynamic;
	/**
		Returns the mode(s) of the ExtensionArray.
		
		Always returns `ExtensionArray` even if only one value.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't consider counts of NA values.
		
		Returns
		-------
		same type as self
		    Sorted, if possible.
	**/
	public function _mode(?dropna:Dynamic):Dynamic;
	public var _ndarray : Dynamic;
	/**
		Analogue to np.putmask(self, mask, value)
		
		Parameters
		----------
		mask : np.ndarray[bool]
		value : scalar or listlike
		
		Raises
		------
		TypeError
		    If value cannot be cast to self.dtype.
	**/
	public function _putmask(mask:Dynamic, value:Dynamic):Dynamic;
	/**
		Compute the quantiles of self for each quantile in `qs`.
		
		Parameters
		----------
		qs : np.ndarray[float64]
		interpolation: str
		
		Returns
		-------
		same type as self
	**/
	public function _quantile(qs:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		See Series.rank.__doc__.
	**/
	public function _rank(?axis:Dynamic, ?method:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
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
	public function _reduce(name:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _repr_2d():Dynamic;
	public var _resolution_obj : Dynamic;
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
		The scalar associated with this datelike
		
		* PeriodArray : Period
		* DatetimeArray : Timestamp
		* TimedeltaArray : Timedelta
	**/
	public var _scalar_type : Dynamic;
	public function _simple_new(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _sub_datetime_arraylike(other:Dynamic):Dynamic;
	public function _sub_datetimelike_scalar(other:Dynamic):Dynamic;
	/**
		Subtract pd.NaT from self
	**/
	public function _sub_nat():Dynamic;
	public function _sub_period(other:Dynamic):Dynamic;
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
		freq : pandas.DateOffset, pandas.Timedelta, or str
		    Frequency increment to shift by.
	**/
	public function _time_shift(periods:Dynamic, ?freq:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	/**
		Unbox either a scalar with _unbox_scalar or an instance of our own type.
	**/
	public function _unbox(other:Dynamic, ?setitem:Dynamic):Dynamic;
	/**
		Unbox the integer value of a scalar `value`.
		
		Parameters
		----------
		value : Period, Timestamp, Timedelta, or NaT
		    Depending on subclass.
		setitem : bool, default False
		    Whether to check compatibility with setitem strictness.
		
		Returns
		-------
		int
		
		Examples
		--------
		>>> self._unbox_scalar(Timedelta("10s"))  # doctest: +SKIP
		10000000000
	**/
	public function _unbox_scalar(value:Dynamic, ?setitem:Dynamic):Dynamic;
	public function _validate_comparison_value(other:Dynamic):Dynamic;
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
	public function _validate_listlike(value:Dynamic, ?allow_object:Dynamic):Dynamic;
	/**
		Validate that the input value can be cast to our scalar_type.
		
		Parameters
		----------
		value : object
		allow_listlike: bool, default False
		    When raising an exception, whether the message should say
		    listlike inputs are allowed.
		setitem : bool, default True
		    Whether to check compatibility with setitem strictness.
		unbox : bool, default True
		    Whether to unbox the result before returning.  Note: unbox=False
		    skips the setitem compatibility check.
		
		Returns
		-------
		self._scalar_type or NaT
	**/
	public function _validate_scalar(value:Dynamic, ?allow_listlike:Dynamic, ?setitem:Dynamic, ?unbox:Dynamic):Dynamic;
	public function _validate_searchsorted_value(value:Dynamic):Dynamic;
	public function _validate_setitem_value(value:Dynamic):Dynamic;
	public function _validate_shift_value(fill_value:Dynamic):Dynamic;
	/**
		Construct an exception message on validation error.
		
		Some methods allow only scalar inputs, while others allow either scalar
		or listlike.
		
		Parameters
		----------
		allow_listlike: bool, default False
		
		Returns
		-------
		str
	**/
	public function _validation_error_message(value:Dynamic, ?allow_listlike:Dynamic):Dynamic;
	/**
		Return values for sorting.
		
		Returns
		-------
		ndarray
		    The transformed values should maintain the ordering between values
		    within the array.
		
		See Also
		--------
		ExtensionArray.argsort : Return the indices that would sort this array.
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
		    `na_sentinel` and not included in `uniques`. By default,
		    ``np.nan`` is used.
		
		Notes
		-----
		The values returned by this method are also used in
		:func:`pandas.util.hash_pandas_object`.
	**/
	public function _values_for_factorize():Dynamic;
	/**
		Analogue to np.where(mask, self, value)
		
		Parameters
		----------
		mask : np.ndarray[bool]
		value : scalar or listlike
		
		Raises
		------
		TypeError
		    If value cannot be cast to self.dtype.
	**/
	public function _where(mask:Dynamic, value:Dynamic):Dynamic;
	public function _wrap_reduction_result(axis:Dynamic, result:Dynamic):Dynamic;
	/**
		Return the index of maximum value.
		
		In case of multiple occurrences of the maximum value, the index
		corresponding to the first occurrence is returned.
		
		Parameters
		----------
		skipna : bool, default True
		
		Returns
		-------
		int
		
		See Also
		--------
		ExtensionArray.argmin
	**/
	public function argmax(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Return the index of minimum value.
		
		In case of multiple occurrences of the minimum value, the index
		corresponding to the first occurrence is returned.
		
		Parameters
		----------
		skipna : bool, default True
		
		Returns
		-------
		int
		
		See Also
		--------
		ExtensionArray.argmax
	**/
	public function argmin(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Return the indices that would sort this array.
		
		Parameters
		----------
		ascending : bool, default True
		    Whether the indices should result in an ascending
		    or descending sort.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    Sorting algorithm.
		*args, **kwargs:
		    Passed through to :func:`numpy.argsort`.
		
		Returns
		-------
		np.ndarray[np.intp]
		    Array of indices that sort ``self``. If NaN values are contained,
		    NaN values are placed at the end.
		
		See Also
		--------
		numpy.argsort : Sorting implementation used internally.
	**/
	public function argsort(?ascending:Dynamic, ?kind:Dynamic, ?na_position:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Integer representation of the values.
		
		Returns
		-------
		ndarray
		    An ndarray with int64 dtype.
	**/
	public var asi8 : Dynamic;
	/**
		Cast to a NumPy array or ExtensionArray with 'dtype'.
		
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
		array : np.ndarray or ExtensionArray
		    An ExtensionArray if dtype is ExtensionDtype,
		    Otherwise a NumPy ndarray with 'dtype' for its dtype.
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return a copy of the array.
		
		Returns
		-------
		ExtensionArray
	**/
	public function copy(?order:Dynamic):Dynamic;
	public function delete(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return ExtensionArray without NA values.
		
		Returns
		-------
		valid : ExtensionArray
	**/
	public function dropna():Dynamic;
	/**
		An instance of 'ExtensionDtype'.
	**/
	public var dtype : Dynamic;
	/**
		Return if another array is equivalent to this array.
		
		Equivalent means that both arrays have the same shape and dtype, and
		all values compare equal. Missing values in the same location are
		considered equal (in contrast with normal equality).
		
		Parameters
		----------
		other : ExtensionArray
		    Array to compare to this Array.
		
		Returns
		-------
		boolean
		    Whether the arrays are equivalent.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Encode the extension array as an enumerated type.
		
		Parameters
		----------
		na_sentinel : int, default -1
		    Value to use in the `codes` array to indicate missing values.
		
		Returns
		-------
		codes : ndarray
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
		factorize : Top-level factorize method that dispatches here.
		
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
		    backfill / bfill: use NEXT valid observation to fill gap.
		limit : int, default None
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled.
		
		Returns
		-------
		ExtensionArray
		    With NA/NaN filled.
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Return the frequency object if it is set, otherwise None.
	**/
	public var freq : Dynamic;
	/**
		Return the frequency object as a string if its set, otherwise None.
	**/
	public var freqstr : Dynamic;
	/**
		Tries to return a string representing a frequency guess,
		generated by infer_freq.  Returns None if it can't autodetect the
		frequency.
	**/
	public var inferred_freq : Dynamic;
	/**
		Make new ExtensionArray inserting new item at location. Follows
		Python list.append semantics for negative values.
		
		Parameters
		----------
		loc : int
		item : object
		
		Returns
		-------
		type(self)
	**/
	public function insert(loc:Dynamic, item:Dynamic):Dynamic;
	/**
		Compute boolean array of whether each value is found in the
		passed set of values.
		
		Parameters
		----------
		values : set or sequence of values
		
		Returns
		-------
		ndarray[bool]
	**/
	public function isin(values:Dynamic):Dynamic;
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
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the mean value of the Array.
		
		.. versionadded:: 0.25.0
		
		Parameters
		----------
		skipna : bool, default True
		    Whether to ignore any NaT elements.
		axis : int, optional, default 0
		
		Returns
		-------
		scalar
		    Timestamp or Timedelta.
		
		See Also
		--------
		numpy.ndarray.mean : Returns the average of array elements along a given axis.
		Series.mean : Return the mean value in a Series.
		
		Notes
		-----
		mean is only defined for Datetime and Timedelta dtypes, not for Period.
	**/
	public function mean(?skipna:Dynamic, ?axis:Dynamic):Dynamic;
	public function median(?axis:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the minimum value of the Array or minimum along
		an axis.
		
		See Also
		--------
		numpy.ndarray.min
		Index.min : Return the minimum value in an Index.
		Series.min : Return the minimum value in a Series.
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var nbytes : Dynamic;
	public var ndim : Dynamic;
	public function ravel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function repeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reshape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns day, hour, minute, second, millisecond or microsecond
	**/
	public var resolution : Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted array `self` (a) such that, if the
		corresponding elements in `value` were inserted before the indices,
		the order of `self` would be preserved.
		
		Assuming that `self` is sorted:
		
		======  ================================
		`side`  returned index `i` satisfies
		======  ================================
		left    ``self[i-1] < value <= self[i]``
		right   ``self[i-1] <= value < self[i]``
		======  ================================
		
		Parameters
		----------
		value : array-like, list or scalar
		    Value(s) to insert into `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array-like, optional
		    Optional array of integer indices that sort array a into ascending
		    order. They are typically the result of argsort.
		
		Returns
		-------
		array of ints or int
		    If value is array-like, array of insertion points.
		    If value is scalar, a single integer.
		
		See Also
		--------
		numpy.searchsorted : Similar method from NumPy.
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	public var shape : Dynamic;
	/**
		Shift values by desired number.
		
		Newly introduced missing values are filled with
		``self.dtype.na_value``.
		
		Parameters
		----------
		periods : int, default 1
		    The number of periods to shift. Negative values are allowed
		    for shifting backwards.
		
		fill_value : object, optional
		    The scalar value to use for newly introduced missing values.
		    The default is ``self.dtype.na_value``.
		
		Returns
		-------
		ExtensionArray
		    Shifted.
		
		Notes
		-----
		If ``self`` is empty or ``periods`` is 0, a copy of ``self`` is
		returned.
		
		If ``periods > len(self)``, then an array of size
		len(self) is returned, with all values filled with
		``self.dtype.na_value``.
	**/
	public function shift(?periods:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	public var size : Dynamic;
	public function swapaxes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Take elements from an array.
		
		Parameters
		----------
		indices : sequence of int or one-dimensional np.ndarray of int
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
		
		See Also
		--------
		numpy.take : Take elements from an array along an axis.
		api.extensions.take : Take elements from an array.
		
		Notes
		-----
		ExtensionArray.take is called by ``Series.__getitem__``, ``.loc``,
		``iloc``, when `indices` is a sequence of values. Additionally,
		it's called by :meth:`Series.reindex`, or any other method
		that causes realignment, with a `fill_value`.
		
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
	public function take(indices:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convert to a NumPy ndarray.
		
		.. versionadded:: 1.0.0
		
		This is similar to :meth:`numpy.asarray`, but may provide additional control
		over how the conversion is done.
		
		Parameters
		----------
		dtype : str or numpy.dtype, optional
		    The dtype to pass to :meth:`numpy.asarray`.
		copy : bool, default False
		    Whether to ensure that the returned value is a not a view on
		    another array. Note that ``copy=False`` does not *ensure* that
		    ``to_numpy()`` is no-copy. Rather, ``copy=True`` ensure that
		    a copy is made, even if not strictly necessary.
		na_value : Any, optional
		    The value to use for missing values. The default value depends
		    on `dtype` and the type of the array.
		
		Returns
		-------
		numpy.ndarray
	**/
	public function to_numpy(?dtype:Dynamic, ?copy:Dynamic, ?na_value:Dynamic):Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		list
	**/
	public function tolist():Dynamic;
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		dropna : bool, default True
		    Don't include counts of NA values.
		
		Returns
		-------
		Series
	**/
	public function value_counts(?dropna:Dynamic):Dynamic;
	/**
		Return a view on the array.
		
		Parameters
		----------
		dtype : str, np.dtype, or ExtensionDtype, optional
		    Default None.
		
		Returns
		-------
		ExtensionArray or np.ndarray
		    A view on the :class:`ExtensionArray`'s data.
	**/
	public function view(?dtype:Dynamic):Dynamic;
}