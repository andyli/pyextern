/* This file is generated, do not edit! */
package pandas.core.arrays.interval;
@:pythonImport("pandas.core.arrays.interval", "IntervalArray") extern class IntervalArray {
	/**
		Return the IntervalArray's data as a numpy array of Interval
		objects (with dtype='object')
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
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
		Select a subset of self.
		
		Parameters
		----------
		item : int, slice, or ndarray
		    * int: The position in 'self' to get.
		
		    * slice: A slice object, where 'start', 'stop', and 'step' are
		      integers or None
		
		    * ndarray: A 1-d boolean NumPy ndarray the same length as 'self'
		
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
	public function __getitem__(value:Dynamic):Dynamic;
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
	public function __le__(value:Dynamic):Dynamic;
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
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, data:Dynamic, ?closed:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var _can_hold_na : Dynamic;
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
	static public var _fill_value : Dynamic;
	public function _format_data():Dynamic;
	public function _format_space():Dynamic;
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
	static public function _from_sequence(scalars:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
	static public var _na_value : Dynamic;
	/**
		Internal pandas method for lossy conversion to a NumPy ndarray.
		
		This method is not part of the pandas interface.
		
		The expectation is that this is cheap to compute, and is primarily
		used for interacting with our indexers.
	**/
	public var _ndarray_values : Dynamic;
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
	/**
		Return a new IntervalArray with the replacement attributes
		
		Parameters
		----------
		left : array-like
		    Values to be used for the left-side of the the intervals.
		    If None, the existing left and right values will be used.
		
		right : array-like
		    Values to be used for the right-side of the the intervals.
		    If None and left is IntervalArray-like, the left and right
		    of the IntervalArray-like will be used.
		
		closed : {'left', 'right', 'both', 'neither'}, optional
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither.  If None, the existing closed will be used.
	**/
	public function _shallow_copy(?left:Dynamic, ?right:Dynamic, ?closed:Dynamic):Dynamic;
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
		neither
	**/
	public var closed : Dynamic;
	/**
		Check if the interval is closed on the left side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var closed_left : Dynamic;
	/**
		Check if the interval is closed on the right side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var closed_right : Dynamic;
	/**
		Return a copy of the array.
		
		Parameters
		----------
		deep : bool, default False
		    Also copy the underlying data backing this array.
		
		Returns
		-------
		IntervalArray
	**/
	public function copy(?deep:Dynamic):Dynamic;
	/**
		Return ExtensionArray without NA values
		
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
		copy : boolean, default False
		    Copy the data.
		dtype : dtype, optional
		    If None, dtype will be inferred.
		
		    .. versionadded:: 0.23.0
		
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
		
		Examples
		--------
		>>> IntervalArray.from_arrays([0, 1, 2], [1, 2, 3])
		IntervalArray([(0, 1], (1, 2], (2, 3]],
		             closed='right',
		             dtype='interval[int64]')
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
		copy : boolean, default False
		    copy the data
		dtype : dtype or None, default None
		    If None, dtype will be inferred
		
		    .. versionadded:: 0.23.0
		
		See Also
		--------
		interval_range : Function to create a fixed frequency IntervalIndex.
		IntervalArray.from_arrays : Construct from a left and right array.
		IntervalArray.from_tuples : Construct from a sequence of tuples.
		
		Examples
		--------
		>>> pd.arrays.IntervalArray.from_breaks([0, 1, 2, 3])
		IntervalArray([(0, 1], (1, 2], (2, 3]],
		              closed='right',
		              dtype='interval[int64]')
	**/
	static public function from_breaks(breaks:Dynamic, ?closed:Dynamic, ?copy:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Construct an IntervalArray from an array-like of tuples
		
		Parameters
		----------
		data : array-like (1-dimensional)
		    Array of tuples
		closed : {'left', 'right', 'both', 'neither'}, default 'right'
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither.
		copy : boolean, default False
		    by-default copy the data, this is compat only and ignored
		dtype : dtype or None, default None
		    If None, dtype will be inferred
		
		    ..versionadded:: 0.23.0
		
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
		IntervalArray([(0, 1], (1, 2]],
		            closed='right', dtype='interval[int64]')
	**/
	static public function from_tuples(data:Dynamic, ?closed:Dynamic, ?copy:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return True if the IntervalArray is non-overlapping (no Intervals share
		points) and is either monotonic increasing or monotonic decreasing,
		else False
	**/
	public var is_non_overlapping_monotonic : Dynamic;
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
		an Index
	**/
	public var left : Dynamic;
	/**
		Return an Index with entries denoting the length of each Interval in
		the IntervalArray
	**/
	public var length : Dynamic;
	/**
		Return the midpoint of each Interval in the IntervalArray as an Index
	**/
	public var mid : Dynamic;
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
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var open_left : Dynamic;
	/**
		Check if the interval is open on the right side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var open_right : Dynamic;
	/**
		Check elementwise if an Interval overlaps the values in the IntervalArray.
		
		Two intervals overlap if they share a common point, including closed
		endpoints. Intervals that only have an open endpoint in common do not
		overlap.
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		other : Interval
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
		>>> intervals = pd.arrays.IntervalArray.from_tuples([(0, 1), (1, 3), (2, 4)])
		>>> intervals
		IntervalArray([(0, 1], (1, 3], (2, 4]],
		      closed='right',
		      dtype='interval[int64]')
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
		[a, b, c]
		Categories (3, object): [a, b, c]
		>>> cat.repeat(2)
		[a, a, b, b, c, c]
		Categories (3, object): [a, b, c]
		>>> cat.repeat([1, 2, 3])
		[a, b, b, c, c, c]
		Categories (3, object): [a, b, c]
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the right endpoints of each Interval in the IntervalArray as
		an Index
	**/
	public var right : Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		.. versionadded:: 0.24.0
		
		Find the indices into a sorted array `self` (a) such that, if the
		corresponding elements in `v` were inserted before the indices, the
		order of `self` would be preserved.
		
		Assuming that `a` is sorted:
		
		======  ============================
		`side`  returned index `i` satisfies
		======  ============================
		left    ``self[i-1] < v <= self[i]``
		right   ``self[i-1] <= v < self[i]``
		======  ============================
		
		Parameters
		----------
		value : array_like
		    Values to insert into `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array_like, optional
		    Optional array of integer indices that sort array a into ascending
		    order. They are typically the result of argsort.
		
		Returns
		-------
		indices : array of ints
		    Array of insertion points with the same shape as `value`.
		
		See Also
		--------
		numpy.searchsorted : Similar method from NumPy.
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Return an IntervalArray identical to the current one, but closed on the
		specified side
		
		.. versionadded:: 0.24.0
		
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
		>>> index = pd.interval_range(0, 3)
		>>> index
		IntervalIndex([(0, 1], (1, 2], (2, 3]],
		      closed='right',
		      dtype='interval[int64]')
		>>> index.set_closed('both')
		IntervalIndex([[0, 1], [1, 2], [2, 3]],
		      closed='both',
		      dtype='interval[int64]')
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
		Return an ndarray of tuples of the form (left, right)
		
		Parameters
		----------
		na_tuple : boolean, default True
		    Returns NA as a tuple if True, ``(nan, nan)``, or just as the NA
		    value itself if False, ``nan``.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		tuples: ndarray
	**/
	public function to_tuples(?na_tuple:Dynamic):numpy.Ndarray;
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
		dropna : boolean, default True
		    Don't include counts of NaN.
		
		Returns
		-------
		counts : Series
		
		See Also
		--------
		Series.value_counts
	**/
	public function value_counts(?dropna:Dynamic):pandas.Series;
}