/* This file is generated, do not edit! */
package pandas.core.arrays.integer;
@:pythonImport("pandas.core.arrays.integer", "IntegerArray") extern class IntegerArray {
	public function __add__(other:Dynamic):Dynamic;
	/**
		the array interface, return my values
		We return an object array here to preserve our scalar values
	**/
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
	public function __getitem__(item:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
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
	public function __pow__(other:Dynamic):Dynamic;
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
	public function __rpow__(other:Dynamic):Dynamic;
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
	static public var _can_hold_na : Dynamic;
	/**
		coerce to an ndarary of object dtype
	**/
	public function _coerce_to_ndarray():Dynamic;
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
	static public function _create_arithmetic_method(op:Dynamic):Dynamic;
	static public function _create_comparison_method(op:Dynamic):Dynamic;
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
	/**
		Parameters
		----------
		result : array-like
		mask : array-like bool
		other : scalar or array-like
		op_name : str
	**/
	public function _maybe_mask_result(result:Dynamic, mask:Dynamic, other:Dynamic, op_name:Dynamic):Dynamic;
	public var _na_value : Dynamic;
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
		Cast to a NumPy array or IntegerArray with 'dtype'.
		
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
		array : ndarray or IntegerArray
		    NumPy ndarray or IntergerArray with 'dtype' for its dtype.
		
		Raises
		------
		TypeError
		    if incompatible type with an IntegerDtype, equivalent of same_kind
		    casting
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
		Return ExtensionArray without NA values
		
		Returns
		-------
		valid : ExtensionArray
	**/
	public function dropna():Dynamic;
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
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	/**
		Extension Arrays are only allowed to be 1-dimensional.
	**/
	public var ndim : Dynamic;
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
	public function take(indexer:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Compute the ExtensionArray of unique values.
		
		Returns
		-------
		uniques : ExtensionArray
	**/
	public function unique():Dynamic;
	/**
		Returns a Series containing counts of each category.
		
		Every category will have an entry, even those with a count of 0.
		
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