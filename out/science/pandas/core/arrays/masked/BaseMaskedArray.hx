/* This file is generated, do not edit! */
package pandas.core.arrays.masked;
@:pythonImport("pandas.core.arrays.masked", "BaseMaskedArray") extern class BaseMaskedArray {
	public var T : Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		the array interface, return my values
		We return an object array here to preserve our scalar values
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
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
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
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
	public function __getitem__(item:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, mask:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, mask:Dynamic, ?copy:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __invert__():Dynamic;
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
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
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
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	public function _arith_method(other:Dynamic, op:Dynamic):Dynamic;
	public var _can_hold_na : Dynamic;
	public function _cmp_method(other:Dynamic, op:Dynamic):Dynamic;
	public function _coerce_to_array(values:Dynamic):Dynamic;
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
	/**
		Create an ExtensionArray with the given shape and dtype.
		
		See also
		--------
		ExtensionDtype.empty
		    ExtensionDtype.empty is the 'official' public version of this API.
	**/
	static public function _empty(shape:Dynamic, dtype:Dynamic):Dynamic;
	static public function _falsey_value(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Replace values in locations specified by 'mask' using pad or backfill.
		
		See also
		--------
		ExtensionArray.fillna
	**/
	public function _fill_mask_inplace(method:Dynamic, limit:Dynamic, mask:Dynamic):Dynamic;
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
	public function _logical_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Parameters
		----------
		result : array-like
		mask : array-like bool
		other : scalar or array-like
		op_name : str
	**/
	public function _maybe_mask_result(result:Dynamic, mask:Dynamic, other:Dynamic, op_name:Dynamic):Dynamic;
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
	public var _na_value : Dynamic;
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
		Dispatch to quantile_with_mask, needed because we do not have
		_from_factorized.
		
		Notes
		-----
		We assume that all impacted cases are 1D-only.
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
	static public function _truthy_value(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _typ : Dynamic;
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
	public function _wrap_reduction_result(name:Dynamic, result:Dynamic, skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether all elements are truthy.
		
		Returns True unless there is at least one element that is falsey.
		By default, NAs are skipped. If ``skipna=False`` is specified and
		missing values are present, similar :ref:`Kleene logic <boolean.kleene>`
		is used as for logical operations.
		
		.. versionchanged:: 1.4.0
		
		Parameters
		----------
		skipna : bool, default True
		    Exclude NA values. If the entire array is NA and `skipna` is
		    True, then the result will be True, as for an empty array.
		    If `skipna` is False, the result will still be False if there is
		    at least one element that is falsey, otherwise NA will be returned
		    if there are NA's present.
		**kwargs : any, default None
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		bool or :attr:`pandas.NA`
		
		See Also
		--------
		numpy.all : Numpy version of this method.
		BooleanArray.any : Return whether any element is truthy.
		
		Examples
		--------
		The result indicates whether all elements are truthy (and by default
		skips NAs):
		
		>>> pd.array([True, True, pd.NA]).all()
		True
		>>> pd.array([1, 1, pd.NA]).all()
		True
		>>> pd.array([True, False, pd.NA]).all()
		False
		>>> pd.array([], dtype="boolean").all()
		True
		>>> pd.array([pd.NA], dtype="boolean").all()
		True
		>>> pd.array([pd.NA], dtype="Float64").all()
		True
		
		With ``skipna=False``, the result can be NA if this is logically
		required (whether ``pd.NA`` is True or False influences the result):
		
		>>> pd.array([True, True, pd.NA]).all(skipna=False)
		<NA>
		>>> pd.array([1, 1, pd.NA]).all(skipna=False)
		<NA>
		>>> pd.array([True, False, pd.NA]).all(skipna=False)
		False
		>>> pd.array([1, 0, pd.NA]).all(skipna=False)
		False
	**/
	public function all(?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether any element is truthy.
		
		Returns False unless there is at least one element that is truthy.
		By default, NAs are skipped. If ``skipna=False`` is specified and
		missing values are present, similar :ref:`Kleene logic <boolean.kleene>`
		is used as for logical operations.
		
		.. versionchanged:: 1.4.0
		
		Parameters
		----------
		skipna : bool, default True
		    Exclude NA values. If the entire array is NA and `skipna` is
		    True, then the result will be False, as for an empty array.
		    If `skipna` is False, the result will still be True if there is
		    at least one element that is truthy, otherwise NA will be returned
		    if there are NA's present.
		**kwargs : any, default None
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		bool or :attr:`pandas.NA`
		
		See Also
		--------
		numpy.any : Numpy version of this method.
		BaseMaskedArray.all : Return whether all elements are truthy.
		
		Examples
		--------
		The result indicates whether any element is truthy (and by default
		skips NAs):
		
		>>> pd.array([True, False, True]).any()
		True
		>>> pd.array([True, False, pd.NA]).any()
		True
		>>> pd.array([False, False, pd.NA]).any()
		False
		>>> pd.array([], dtype="boolean").any()
		False
		>>> pd.array([pd.NA], dtype="boolean").any()
		False
		>>> pd.array([pd.NA], dtype="Float64").any()
		False
		
		With ``skipna=False``, the result can be NA if this is logically
		required (whether ``pd.NA`` is True or False influences the result):
		
		>>> pd.array([True, False, pd.NA]).any(skipna=False)
		True
		>>> pd.array([1, 0, pd.NA]).any(skipna=False)
		True
		>>> pd.array([False, False, pd.NA]).any(skipna=False)
		<NA>
		>>> pd.array([0, 0, pd.NA]).any(skipna=False)
		<NA>
	**/
	public function any(?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function copy():Dynamic;
	public function delete(loc:Dynamic, ?axis:Dynamic):Dynamic;
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
		Insert an item at the given position.
		
		Parameters
		----------
		loc : int
		item : scalar-like
		
		Returns
		-------
		same type as self
		
		Notes
		-----
		This method should be both type and dtype-preserving.  If the item
		cannot be held in an array of this type/dtype, either ValueError or
		TypeError should be raised.
		
		The default implementation relies on _from_sequence to raise on invalid
		items.
	**/
	public function insert(loc:Dynamic, item:Dynamic):Dynamic;
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
	public function max(?skipna:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function min(?skipna:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	/**
		Extension Arrays are only allowed to be 1-dimensional.
	**/
	public var ndim : Dynamic;
	public function prod(?skipna:Dynamic, ?min_count:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function ravel(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Repeat elements of a ExtensionArray.
		
		Returns a new ExtensionArray where each element of the current ExtensionArray
		is repeated consecutively a given number of times.
		
		Parameters
		----------
		repeats : int or array of ints
		    The number of repetitions for each element. This should be a
		    non-negative integer. Repeating 0 times will return an empty
		    ExtensionArray.
		axis : None
		    Must be ``None``. Has no effect but is accepted for compatibility
		    with numpy.
		
		Returns
		-------
		repeated_array : ExtensionArray
		    Newly created ExtensionArray with repeated elements.
		
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
	public function reshape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function sum(?skipna:Dynamic, ?min_count:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function swapaxes(axis1:Dynamic, axis2:Dynamic):Dynamic;
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
	public function take(indexer:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convert to a NumPy Array.
		
		By default converts to an object-dtype NumPy array. Specify the `dtype` and
		`na_value` keywords to customize the conversion.
		
		Parameters
		----------
		dtype : dtype, default object
		    The numpy dtype to convert to.
		copy : bool, default False
		    Whether to ensure that the returned value is a not a view on
		    the array. Note that ``copy=False`` does not *ensure* that
		    ``to_numpy()`` is no-copy. Rather, ``copy=True`` ensure that
		    a copy is made, even if not strictly necessary. This is typically
		    only possible when no missing values are present and `dtype`
		    is the equivalent numpy dtype.
		na_value : scalar, optional
		     Scalar missing value indicator to use in numpy array. Defaults
		     to the native missing value indicator of this array (pd.NA).
		
		Returns
		-------
		numpy.ndarray
		
		Examples
		--------
		An object-dtype is the default result
		
		>>> a = pd.array([True, False, pd.NA], dtype="boolean")
		>>> a.to_numpy()
		array([True, False, <NA>], dtype=object)
		
		When no missing values are present, an equivalent dtype can be used.
		
		>>> pd.array([True, False], dtype="boolean").to_numpy(dtype="bool")
		array([ True, False])
		>>> pd.array([1, 2], dtype="Int64").to_numpy("int64")
		array([1, 2])
		
		However, requesting such dtype will raise a ValueError if
		missing values are present and the default missing value :attr:`NA`
		is used.
		
		>>> a = pd.array([True, False, pd.NA], dtype="boolean")
		>>> a
		<BooleanArray>
		[True, False, <NA>]
		Length: 3, dtype: boolean
		
		>>> a.to_numpy(dtype="bool")
		Traceback (most recent call last):
		...
		ValueError: cannot convert to bool numpy array in presence of missing values
		
		Specify a valid `na_value` instead
		
		>>> a.to_numpy(dtype="bool", na_value=False)
		array([ True, False, False])
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
		Returns a Series containing counts of each unique value.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't include counts of missing values.
		
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