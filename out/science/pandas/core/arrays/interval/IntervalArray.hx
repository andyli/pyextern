/* This file is generated, do not edit! */
package pandas.core.arrays.interval;
@:pythonImport("pandas.core.arrays.interval", "IntervalArray") extern class IntervalArray {
	public var T : Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Return the IntervalArray's data as a numpy array of Interval
		objects (with dtype='object')
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	public function __array_ufunc__(ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert myself into a pyarrow Array.
	**/
	public function __arrow_array__(?type:Dynamic):Dynamic;
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
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		Select a subset of self.
		
		Parameters
		----------
		item : int, slice, or ndarray
		    * int: The position in 'self' to get.
		
		    * slice: A slice object, where 'start', 'stop', and 'step' are
		      integers or None
		
		    * ndarray: A 1-d boolean NumPy ndarray the same length as 'self'
		
		    * list[int]:  A list of int
		
		Returns
		-------
		item : scalar or ExtensionArray
		
		Notes
		-----
		For scalar ``item``, return a scalar value suitable for the array's
		type. This should be an instance of ``self.dtype.type``.
		
		For slice ``key``, return an instance of ``ExtensionArray``, even
		if the slice is length 0 or 1.
		
		For a boolean mask, return an instance of ``ExtensionArray``, filtered
		to the values where ``item`` is True.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, data:Dynamic, ?closed:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
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
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _can_hold_na : Dynamic;
	/**
		Check if the closed attribute of `other` matches.
		
		Note that 'left' and 'right' are considered different from 'both'.
		
		Parameters
		----------
		other : Interval, IntervalIndex, IntervalArray
		name : str
		    Name to use for 'other' in the error message.
		
		Raises
		------
		ValueError
		    When `other` is not closed exactly the same as self.
	**/
	public function _check_closed_matches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _cmp_method(other:Dynamic, op:Dynamic):Dynamic;
	public var _combined : Dynamic;
	/**
		Concatenate multiple IntervalArray
		
		Parameters
		----------
		to_concat : sequence of IntervalArray
		
		Returns
		-------
		IntervalArray
	**/
	static public function _concat_same_type(to_concat:Dynamic):Dynamic;
	/**
		Create an ExtensionArray with the given shape and dtype.
		
		See also
		--------
		ExtensionDtype.empty
		    ExtensionDtype.empty is the 'official' public version of this API.
	**/
	static public function _empty(shape:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Replace values in locations specified by 'mask' using pad or backfill.
		
		See also
		--------
		ExtensionArray.fillna
	**/
	public function _fill_mask_inplace(method:Dynamic, limit:Dynamic, mask:Dynamic):Dynamic;
	static public var _fill_value : Dynamic;
	public function _format_data():Dynamic;
	public function _format_space():Dynamic;
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
		Create a new IntervalArray with our dtype from a 1D complex128 ndarray.
	**/
	public function _from_combined(combined:Dynamic):Dynamic;
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
	/**
		Equivalent to `self.isna().any()`.
		
		Some ExtensionArray subclasses may be able to optimize this check.
	**/
	public var _hasna : Dynamic;
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
	static public var _na_value : Dynamic;
	/**
		Analogue to np.putmask(self, mask, value)
		
		Parameters
		----------
		mask : np.ndarray[bool]
		value : scalar or listlike
		    If listlike, must be arraylike with same length as self.
		
		Returns
		-------
		None
		
		Notes
		-----
		Unlike np.putmask, we do not repeat listlike values with mismatched length.
		'value' should either be a scalar or an arraylike with the same length
		as self.
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
	/**
		Return a new IntervalArray with the replacement attributes
		
		Parameters
		----------
		left : Index
		    Values to be used for the left-side of the intervals.
		right : Index
		    Values to be used for the right-side of the intervals.
	**/
	public function _shallow_copy(left:Dynamic, right:Dynamic):Dynamic;
	static public function _simple_new(left:Dynamic, right:Dynamic, ?closed:Dynamic, ?copy:Dynamic, ?dtype:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	/**
		Verify that the IntervalArray is valid.
		
		Checks that
		
		* closed is valid
		* left and right match lengths
		* left and right have the same missing values
		* left is always below right
	**/
	public function _validate():Dynamic;
	public function _validate_listlike(value:Dynamic):Dynamic;
	public function _validate_scalar(value:Dynamic):Dynamic;
	public function _validate_setitem_value(value:Dynamic):Dynamic;
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
		
		Returns
		-------
		same type as self
	**/
	public function _where(mask:Dynamic, value:Dynamic):Dynamic;
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
	public function argmax(?skipna:Dynamic):Dynamic;
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
	public function argmin(?skipna:Dynamic):Dynamic;
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
		Cast to an ExtensionArray or NumPy array with dtype 'dtype'.
		
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
		array : ExtensionArray or ndarray
		    ExtensionArray or NumPy ndarray with 'dtype' for its dtype.
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var can_hold_na : Dynamic;
	/**
		Whether the intervals are closed on the left-side, right-side, both or
		neither.
	**/
	public var closed : Dynamic;
	/**
		Check if the interval is closed on the left side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    True if the Interval is closed on the left-side.
	**/
	public var closed_left : Dynamic;
	/**
		Check if the interval is closed on the right side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    True if the Interval is closed on the left-side.
	**/
	public var closed_right : Dynamic;
	/**
		Check elementwise if the Intervals contain the value.
		
		Return a boolean mask whether the value is contained in the Intervals
		of the IntervalArray.
		
		.. versionadded:: 0.25.0
		
		Parameters
		----------
		other : scalar
		    The value to check whether it is contained in the Intervals.
		
		Returns
		-------
		boolean array
		
		See Also
		--------
		Interval.contains : Check whether Interval object contains value.
		IntervalArray.overlaps : Check if an Interval overlaps the values in the
		    IntervalArray.
		
		Examples
		--------
		>>> intervals = pd.arrays.IntervalArray.from_tuples([(0, 1), (1, 3), (2, 4)])
		>>> intervals
		<IntervalArray>
		[(0, 1], (1, 3], (2, 4]]
		Length: 3, dtype: interval[int64, right]
		
		>>> intervals.contains(0.5)
		array([ True, False, False])
	**/
	public function contains(other:Dynamic):Dynamic;
	/**
		Return a copy of the array.
		
		Returns
		-------
		IntervalArray
	**/
	public function copy():Dynamic;
	public function delete(loc:Dynamic):Dynamic;
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
		value : scalar, dict, Series
		    If a scalar value is passed it is used to fill all missing values.
		    Alternatively, a Series or dict can be used to fill in different
		    values for each index. The value should not be a list. The
		    value(s) passed should be either Interval objects or NA/NaN.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    (Not implemented yet for IntervalArray)
		    Method to use for filling holes in reindexed Series
		limit : int, default None
		    (Not implemented yet for IntervalArray)
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled.
		
		Returns
		-------
		filled : IntervalArray with NA/NaN filled
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Construct from two arrays defining the left and right bounds.
		
		Parameters
		----------
		left : array-like (1-dimensional)
		    Left bounds for each interval.
		right : array-like (1-dimensional)
		    Right bounds for each interval.
		closed : {'left', 'right', 'both', 'neither'}, default 'right'
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither.
		copy : bool, default False
		    Copy the data.
		dtype : dtype, optional
		    If None, dtype will be inferred.
		
		Returns
		-------
		IntervalArray
		
		Raises
		------
		ValueError
		    When a value is missing in only one of `left` or `right`.
		    When a value in `left` is greater than the corresponding value
		    in `right`.
		
		See Also
		--------
		interval_range : Function to create a fixed frequency IntervalIndex.
		IntervalArray.from_breaks : Construct an IntervalArray from an array of
		    splits.
		IntervalArray.from_tuples : Construct an IntervalArray from an
		    array-like of tuples.
		
		Notes
		-----
		Each element of `left` must be less than or equal to the `right`
		element at the same position. If an element is missing, it must be
		missing in both `left` and `right`. A TypeError is raised when
		using an unsupported type for `left` or `right`. At the moment,
		'category', 'object', and 'string' subtypes are not supported.
		
		>>> pd.arrays.IntervalArray.from_arrays([0, 1, 2], [1, 2, 3])
		<IntervalArray>
		[(0, 1], (1, 2], (2, 3]]
		Length: 3, dtype: interval[int64, right]
	**/
	static public function from_arrays(left:Dynamic, right:Dynamic, ?closed:Dynamic, ?copy:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Construct an IntervalArray from an array of splits.
		
		Parameters
		----------
		breaks : array-like (1-dimensional)
		    Left and right bounds for each interval.
		closed : {'left', 'right', 'both', 'neither'}, default 'right'
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither.
		copy : bool, default False
		    Copy the data.
		dtype : dtype or None, default None
		    If None, dtype will be inferred.
		
		Returns
		-------
		IntervalArray
		
		See Also
		--------
		interval_range : Function to create a fixed frequency IntervalIndex.
		IntervalArray.from_arrays : Construct from a left and right array.
		IntervalArray.from_tuples : Construct from a sequence of tuples.
		
		Examples
		--------
		>>> pd.arrays.IntervalArray.from_breaks([0, 1, 2, 3])
		<IntervalArray>
		[(0, 1], (1, 2], (2, 3]]
		Length: 3, dtype: interval[int64, right]
	**/
	static public function from_breaks(breaks:Dynamic, ?closed:Dynamic, ?copy:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Construct an IntervalArray from an array-like of tuples.
		
		Parameters
		----------
		data : array-like (1-dimensional)
		    Array of tuples.
		closed : {'left', 'right', 'both', 'neither'}, default 'right'
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither.
		copy : bool, default False
		    By-default copy the data, this is compat only and ignored.
		dtype : dtype or None, default None
		    If None, dtype will be inferred.
		
		Returns
		-------
		IntervalArray
		
		See Also
		--------
		interval_range : Function to create a fixed frequency IntervalIndex.
		IntervalArray.from_arrays : Construct an IntervalArray from a left and
		                            right array.
		IntervalArray.from_breaks : Construct an IntervalArray from an array of
		                            splits.
		
		Examples
		--------
		>>> pd.arrays.IntervalArray.from_tuples([(0, 1), (1, 2)])
		<IntervalArray>
		[(0, 1], (1, 2]]
		Length: 2, dtype: interval[int64, right]
	**/
	static public function from_tuples(data:Dynamic, ?closed:Dynamic, ?copy:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return a new IntervalArray inserting new item at location. Follows
		Python numpy.insert semantics for negative values.  Only Interval
		objects and NA can be inserted into an IntervalIndex
		
		Parameters
		----------
		loc : int
		item : Interval
		
		Returns
		-------
		IntervalArray
	**/
	public function insert(loc:Dynamic, item:Dynamic):Dynamic;
	/**
		Indicates if an interval is empty, meaning it contains no points.
		
		.. versionadded:: 0.25.0
		
		Returns
		-------
		bool or ndarray
		    A boolean indicating if a scalar :class:`Interval` is empty, or a
		    boolean ``ndarray`` positionally indicating if an ``Interval`` in
		    an :class:`~arrays.IntervalArray` or :class:`IntervalIndex` is
		    empty.
		
		Examples
		--------
		An :class:`Interval` that contains points is not empty:
		
		>>> pd.Interval(0, 1, closed='right').is_empty
		False
		
		An ``Interval`` that does not contain any points is empty:
		
		>>> pd.Interval(0, 0, closed='right').is_empty
		True
		>>> pd.Interval(0, 0, closed='left').is_empty
		True
		>>> pd.Interval(0, 0, closed='neither').is_empty
		True
		
		An ``Interval`` that contains a single point is not empty:
		
		>>> pd.Interval(0, 0, closed='both').is_empty
		False
		
		An :class:`~arrays.IntervalArray` or :class:`IntervalIndex` returns a
		boolean ``ndarray`` positionally indicating if an ``Interval`` is
		empty:
		
		>>> ivs = [pd.Interval(0, 0, closed='neither'),
		...        pd.Interval(1, 2, closed='neither')]
		>>> pd.arrays.IntervalArray(ivs).is_empty
		array([ True, False])
		
		Missing values are not considered empty:
		
		>>> ivs = [pd.Interval(0, 0, closed='neither'), np.nan]
		>>> pd.IntervalIndex(ivs).is_empty
		array([ True, False])
	**/
	public var is_empty : Dynamic;
	/**
		Return True if the IntervalArray is non-overlapping (no Intervals share
		points) and is either monotonic increasing or monotonic decreasing,
		else False.
	**/
	public var is_non_overlapping_monotonic : Dynamic;
	/**
		Pointwise comparison for set containment in the given values.
		
		Roughly equivalent to `np.array([x in values for x in self])`
		
		Parameters
		----------
		values : Sequence
		
		Returns
		-------
		np.ndarray[bool]
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
	/**
		Return the left endpoints of each Interval in the IntervalArray as
		an Index.
	**/
	public var left : Dynamic;
	/**
		Return an Index with entries denoting the length of each Interval in
		the IntervalArray.
	**/
	public var length : Dynamic;
	public function max(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Return the midpoint of each Interval in the IntervalArray as an Index.
	**/
	public var mid : Dynamic;
	public function min(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	static public var ndim : Dynamic;
	/**
		Check if the interval is open on the left side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    True if the Interval is closed on the left-side.
	**/
	public var open_left : Dynamic;
	/**
		Check if the interval is open on the right side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    True if the Interval is closed on the left-side.
	**/
	public var open_right : Dynamic;
	/**
		Check elementwise if an Interval overlaps the values in the IntervalArray.
		
		Two intervals overlap if they share a common point, including closed
		endpoints. Intervals that only have an open endpoint in common do not
		overlap.
		
		Parameters
		----------
		other : IntervalArray
		    Interval to check against for an overlap.
		
		Returns
		-------
		ndarray
		    Boolean array positionally indicating where an overlap occurs.
		
		See Also
		--------
		Interval.overlaps : Check whether two Interval objects overlap.
		
		Examples
		--------
		>>> data = [(0, 1), (1, 3), (2, 4)]
		>>> intervals = pd.arrays.IntervalArray.from_tuples(data)
		>>> intervals
		<IntervalArray>
		[(0, 1], (1, 3], (2, 4]]
		Length: 3, dtype: interval[int64, right]
		
		>>> intervals.overlaps(pd.Interval(0.5, 1.5))
		array([ True,  True, False])
		
		Intervals that share closed endpoints overlap:
		
		>>> intervals.overlaps(pd.Interval(1, 3, closed='left'))
		array([ True,  True, True])
		
		Intervals that only have an open endpoint in common do not overlap:
		
		>>> intervals.overlaps(pd.Interval(1, 2, closed='right'))
		array([False,  True, False])
	**/
	public function overlaps(other:Dynamic):Dynamic;
	/**
		Return a flattened view on this array.
		
		Parameters
		----------
		order : {None, 'C', 'F', 'A', 'K'}, default 'C'
		
		Returns
		-------
		ExtensionArray
		
		Notes
		-----
		- Because ExtensionArrays are 1D-only, this is a no-op.
		- The "order" argument is ignored, is for compatibility with NumPy.
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		Repeat elements of a IntervalArray.
		
		Returns a new IntervalArray where each element of the current IntervalArray
		is repeated consecutively a given number of times.
		
		Parameters
		----------
		repeats : int or array of ints
		    The number of repetitions for each element. This should be a
		    non-negative integer. Repeating 0 times will return an empty
		    IntervalArray.
		axis : None
		    Must be ``None``. Has no effect but is accepted for compatibility
		    with numpy.
		
		Returns
		-------
		repeated_array : IntervalArray
		    Newly created IntervalArray with repeated elements.
		
		See Also
		--------
		Series.repeat : Equivalent function for Series.
		Index.repeat : Equivalent function for Index.
		numpy.repeat : Similar method for :class:`numpy.ndarray`.
		ExtensionArray.take : Take arbitrary positions.
		
		Examples
		--------
		>>> cat = pd.Categorical(['a', 'b', 'c'])
		>>> cat
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		>>> cat.repeat(2)
		['a', 'a', 'b', 'b', 'c', 'c']
		Categories (3, object): ['a', 'b', 'c']
		>>> cat.repeat([1, 2, 3])
		['a', 'b', 'b', 'c', 'c', 'c']
		Categories (3, object): ['a', 'b', 'c']
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the right endpoints of each Interval in the IntervalArray as
		an Index.
	**/
	public var right : Dynamic;
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
	/**
		Return an IntervalArray identical to the current one, but closed on the
		specified side.
		
		Parameters
		----------
		closed : {'left', 'right', 'both', 'neither'}
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither.
		
		Returns
		-------
		new_index : IntervalArray
		
		Examples
		--------
		>>> index = pd.arrays.IntervalArray.from_breaks(range(4))
		>>> index
		<IntervalArray>
		[(0, 1], (1, 2], (2, 3]]
		Length: 3, dtype: interval[int64, right]
		>>> index.set_closed('both')
		<IntervalArray>
		[[0, 1], [1, 2], [2, 3]]
		Length: 3, dtype: interval[int64, both]
	**/
	public function set_closed(closed:Dynamic):Dynamic;
	/**
		Return a tuple of the array dimensions.
	**/
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
	public function shift(?periods:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		The number of elements in the array.
	**/
	public var size : Dynamic;
	/**
		Take elements from the IntervalArray.
		
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
		
		fill_value : Interval or NA, optional
		    Fill value to use for NA-indices when `allow_fill` is True.
		    This may be ``None``, in which case the default NA value for
		    the type, ``self.dtype.na_value``, is used.
		
		    For many ExtensionArrays, there will be two representations of
		    `fill_value`: a user-facing "boxed" scalar, and a low-level
		    physical NA value. `fill_value` should be the user-facing version,
		    and the implementation should handle translating that to the
		    physical version for processing the take if necessary.
		
		axis : any, default None
		    Present for compat with IntervalIndex; does nothing.
		
		Returns
		-------
		IntervalArray
		
		Raises
		------
		IndexError
		    When the indices are out of bounds for the array.
		ValueError
		    When `indices` contains negative values other than ``-1``
		    and `allow_fill` is True.
	**/
	public function take(indices:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return an ndarray of tuples of the form (left, right).
		
		Parameters
		----------
		na_tuple : bool, default True
		    Returns NA as a tuple if True, ``(nan, nan)``, or just as the NA
		    value itself if False, ``nan``.
		
		Returns
		-------
		tuples: ndarray
	**/
	public function to_tuples(?na_tuple:Dynamic):numpy.Ndarray;
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
	/**
		Return a transposed view on this array.
		
		Because ExtensionArrays are always 1D, this is a no-op.  It is included
		for compatibility with np.ndarray.
	**/
	public function transpose(?axes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Compute the ExtensionArray of unique values.
		
		Returns
		-------
		uniques : ExtensionArray
	**/
	public function unique():Dynamic;
	/**
		Returns a Series containing counts of each interval.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't include counts of NaN.
		
		Returns
		-------
		counts : Series
		
		See Also
		--------
		Series.value_counts
	**/
	public function value_counts(?dropna:Dynamic):pandas.Series;
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