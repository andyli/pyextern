/* This file is generated, do not edit! */
package pandas.core.arrays.categorical;
@:pythonImport("pandas.core.arrays.categorical", "Categorical") extern class Categorical {
	public var T : Dynamic;
	static public var __abstractmethods__ : Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		The numpy array interface.
		
		Returns
		-------
		numpy.array
		    A numpy array of either the specified dtype or,
		    if dtype==None (default), the same dtype as
		    categorical.categories.dtype.
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __array_ufunc__(ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns True if `key` is in this Categorical.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic, ?copy:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns an Iterator over the values of this Categorical.
	**/
	public function __iter__():Dynamic;
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		String representation.
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
	/**
		Necessary for making this object picklable
	**/
	public function __setstate__(state:Dynamic):Dynamic;
	public function __setstate_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
	static public var _abc_impl : Dynamic;
	static public var _accessors : Dynamic;
	/**
		Wrap numpy type in our dtype.type if necessary.
	**/
	public function _box_func(i:Dynamic):Dynamic;
	public var _can_hold_na : Dynamic;
	/**
		Returns True if categoricals are the same dtype
		  same categories, and same ordered
		
		Parameters
		----------
		other : Categorical
		
		Returns
		-------
		bool
	**/
	public function _categories_match_up_to_permutation(other:Dynamic):Dynamic;
	public var _codes : Dynamic;
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
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	public var _dtype : Dynamic;
	/**
		Analogous to np.empty(shape, dtype=dtype)
		
		Parameters
		----------
		shape : tuple[int]
		dtype : CategoricalDtype
	**/
	static public function _empty(shape:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Re-encode another categorical using this Categorical's categories.
		
		Notes
		-----
		This assumes we have already checked
		self._categories_match_up_to_permutation(other).
	**/
	public function _encode_with_my_categories(other:Dynamic):Dynamic;
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
	static public function _from_factorized(uniques:Dynamic, original:Dynamic):Dynamic;
	/**
		Construct a Categorical from inferred values.
		
		For inferred categories (`dtype` is None) the categories are sorted.
		For explicit `dtype`, the `inferred_categories` are cast to the
		appropriate type.
		
		Parameters
		----------
		inferred_categories : Index
		inferred_codes : Index
		dtype : CategoricalDtype or 'category'
		true_values : list, optional
		    If none are provided, the default ones are
		    "True", "TRUE", and "true."
		
		Returns
		-------
		Categorical
	**/
	static public function _from_inferred_categories(inferred_categories:Dynamic, inferred_codes:Dynamic, dtype:Dynamic, ?true_values:Dynamic):Dynamic;
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
	public function _get_repr(?length:Dynamic, ?na_rep:Dynamic, ?footer:Dynamic):Dynamic;
	/**
		Equivalent to `self.isna().any()`.
		
		Some ExtensionArray subclasses may be able to optimize this check.
	**/
	public var _hasna : Dynamic;
	static public var _hidden_attrs : Dynamic;
	/**
		Return the values.
		
		For internal compatibility with pandas formatting.
		
		Returns
		-------
		np.ndarray or Index
		    A numpy array of the same dtype as categorical.categories.dtype or
		    Index if datetime / periods.
	**/
	public function _internal_get_values():Dynamic;
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
	public function _replace(to_replace:Dynamic, value:Dynamic, ?inplace:Dynamic):Dynamic;
	public function _repr_2d():Dynamic;
	/**
		return the base repr for the categories
	**/
	public function _repr_categories():Dynamic;
	/**
		Returns a string representation of the footer.
	**/
	public function _repr_categories_info():Dynamic;
	public function _repr_footer():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Compute the inverse of a categorical, returning
		a dict of categories -> indexers.
		
		*This is an internal function*
		
		Returns
		-------
		Dict[Hashable, np.ndarray[np.intp]]
		    dict of categories -> indexers
		
		Examples
		--------
		>>> c = pd.Categorical(list('aabca'))
		>>> c
		['a', 'a', 'b', 'c', 'a']
		Categories (3, object): ['a', 'b', 'c']
		>>> c.categories
		Index(['a', 'b', 'c'], dtype='object')
		>>> c.codes
		array([0, 0, 1, 2, 0], dtype=int8)
		>>> c._reverse_indexer()
		{'a': array([0, 1, 4]), 'b': array([2]), 'c': array([3])}
	**/
	public function _reverse_indexer():Dynamic;
	/**
		Sets new categories inplace
		
		Parameters
		----------
		fastpath : bool, default False
		   Don't perform validation of the categories for uniqueness or nulls
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'b'])
		>>> c
		['a', 'b']
		Categories (2, object): ['a', 'b']
		
		>>> c._set_categories(pd.Index(['a', 'c']))
		>>> c
		['a', 'c']
		Categories (2, object): ['a', 'c']
	**/
	public function _set_categories(categories:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Internal method for directly updating the CategoricalDtype
		
		Parameters
		----------
		dtype : CategoricalDtype
		
		Notes
		-----
		We don't do any validation here. It's assumed that the dtype is
		a (valid) instance of `CategoricalDtype`.
	**/
	public function _set_dtype(dtype:Dynamic):Dynamic;
	public function _simple_new(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _str_capitalize():Dynamic;
	public function _str_casefold():Dynamic;
	public function _str_contains(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_count(pat:Dynamic, ?flags:Dynamic):Dynamic;
	public function _str_encode(encoding:Dynamic, ?errors:Dynamic):Dynamic;
	public function _str_endswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_extract(pat:Dynamic, ?flags:Dynamic, ?expand:Dynamic):Dynamic;
	public function _str_find(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_find_(sub:Dynamic, start:Dynamic, end:Dynamic, side:Dynamic):Dynamic;
	public function _str_findall(pat:Dynamic, ?flags:Dynamic):Dynamic;
	public function _str_fullmatch(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_get(i:Dynamic):Dynamic;
	public function _str_get_dummies(?sep:Dynamic):Dynamic;
	public function _str_getitem(key:Dynamic):Dynamic;
	public function _str_index(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_isalnum():Dynamic;
	public function _str_isalpha():Dynamic;
	public function _str_isdecimal():Dynamic;
	public function _str_isdigit():Dynamic;
	public function _str_islower():Dynamic;
	public function _str_isnumeric():Dynamic;
	public function _str_isspace():Dynamic;
	public function _str_istitle():Dynamic;
	public function _str_isupper():Dynamic;
	public function _str_join(sep:Dynamic):Dynamic;
	public function _str_len():Dynamic;
	public function _str_lower():Dynamic;
	public function _str_lstrip(?to_strip:Dynamic):Dynamic;
	/**
		Map a callable over valid elements of the array.
		
		Parameters
		----------
		f : Callable
		    A function to call on each non-NA element.
		na_value : Scalar, optional
		    The value to set for NA values. Might also be used for the
		    fill value if the callable `f` raises an exception.
		    This defaults to ``self._str_na_value`` which is ``np.nan``
		    for object-dtype and Categorical and ``pd.NA`` for StringArray.
		dtype : Dtype, optional
		    The dtype of the result array.
		convert : bool, default True
		    Whether to call `maybe_convert_objects` on the resulting ndarray
	**/
	public function _str_map(f:Dynamic, ?na_value:Dynamic, ?dtype:Dynamic, ?convert:Dynamic):Dynamic;
	public function _str_match(pat:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?na:Dynamic):Dynamic;
	static public var _str_na_value : Dynamic;
	public function _str_normalize(form:Dynamic):Dynamic;
	public function _str_pad(width:Dynamic, ?side:Dynamic, ?fillchar:Dynamic):Dynamic;
	public function _str_partition(sep:Dynamic, expand:Dynamic):Dynamic;
	public function _str_removeprefix(prefix:Dynamic):Dynamic;
	public function _str_removesuffix(suffix:Dynamic):Dynamic;
	public function _str_repeat(repeats:Dynamic):Dynamic;
	public function _str_replace(pat:Dynamic, repl:Dynamic, ?n:Dynamic, ?_case:Dynamic, ?flags:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_rfind(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_rindex(sub:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function _str_rpartition(sep:Dynamic, expand:Dynamic):Dynamic;
	public function _str_rsplit(?pat:Dynamic, ?n:Dynamic):Dynamic;
	public function _str_rstrip(?to_strip:Dynamic):Dynamic;
	public function _str_slice(?start:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
	public function _str_slice_replace(?start:Dynamic, ?stop:Dynamic, ?repl:Dynamic):Dynamic;
	public function _str_split(?pat:Dynamic, ?n:Dynamic, ?expand:Dynamic, ?regex:Dynamic):Dynamic;
	public function _str_startswith(pat:Dynamic, ?na:Dynamic):Dynamic;
	public function _str_strip(?to_strip:Dynamic):Dynamic;
	public function _str_swapcase():Dynamic;
	public function _str_title():Dynamic;
	public function _str_translate(table:Dynamic):Dynamic;
	public function _str_upper():Dynamic;
	public function _str_wrap(width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a short repr displaying only max_vals and an optional (but default
		footer)
	**/
	public function _tidy_repr(?max_vals:Dynamic, ?footer:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	public function _unbox_scalar(key:Dynamic):Dynamic;
	public function _validate_listlike(value:Dynamic):Dynamic;
	/**
		Convert a user-facing fill_value to a representation to use with our
		underlying ndarray, raising TypeError if this is not possible.
		
		Parameters
		----------
		fill_value : object
		
		Returns
		-------
		fill_value : int
		
		Raises
		------
		TypeError
	**/
	public function _validate_scalar(fill_value:Dynamic):Dynamic;
	public function _validate_searchsorted_value(value:Dynamic):Dynamic;
	public function _validate_setitem_value(value:Dynamic):Dynamic;
	public function _validate_shift_value(fill_value:Dynamic):Dynamic;
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
		For correctly ranking ordered categorical data. See GH#15420
		
		Ordered categorical data should be ranked on the basis of
		codes with -1 translated to NaN.
		
		Returns
		-------
		numpy.array
	**/
	public function _values_for_rank():Dynamic;
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
		Add new categories.
		
		`new_categories` will be included at the last/highest place in the
		categories and will be unused directly after this call.
		
		Parameters
		----------
		new_categories : category or list-like of category
		   The new categories to be included.
		inplace : bool, default False
		   Whether or not to add the categories inplace or return a copy of
		   this categorical with added categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with new categories added or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If the new categories include old categories or do not validate as
		    categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['c', 'b', 'c'])
		>>> c
		['c', 'b', 'c']
		Categories (2, object): ['b', 'c']
		
		>>> c.add_categories(['d', 'a'])
		['c', 'b', 'c']
		Categories (4, object): ['b', 'c', 'd', 'a']
	**/
	public function add_categories(new_categories:Dynamic, ?inplace:Dynamic):Dynamic;
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
		Return the indices that would sort the Categorical.
		
		.. versionchanged:: 0.25.0
		
		   Changed to sort missing values at the end.
		
		Parameters
		----------
		ascending : bool, default True
		    Whether the indices should result in an ascending
		    or descending sort.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    Sorting algorithm.
		**kwargs:
		    passed through to :func:`numpy.argsort`.
		
		Returns
		-------
		np.ndarray[np.intp]
		
		See Also
		--------
		numpy.ndarray.argsort
		
		Notes
		-----
		While an ordering is applied to the category values, arg-sorting
		in this context refers more to organizing and grouping together
		based on matching category values. Thus, this function can be
		called on an unordered Categorical instance unlike the functions
		'Categorical.min' and 'Categorical.max'.
		
		Examples
		--------
		>>> pd.Categorical(['b', 'b', 'a', 'c']).argsort()
		array([2, 0, 1, 3])
		
		>>> cat = pd.Categorical(['b', 'b', 'a', 'c'],
		...                      categories=['c', 'b', 'a'],
		...                      ordered=True)
		>>> cat.argsort()
		array([3, 0, 1, 2])
		
		Missing values are placed at the end
		
		>>> cat = pd.Categorical([2, None, 1])
		>>> cat.argsort()
		array([2, 0, 1])
	**/
	public function argsort(?ascending:Dynamic, ?kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the Categorical to be ordered.
		
		Parameters
		----------
		inplace : bool, default False
		   Whether or not to set the ordered attribute in-place or return
		   a copy of this categorical with ordered set to True.
		
		Returns
		-------
		Categorical or None
		    Ordered Categorical or None if ``inplace=True``.
	**/
	public function as_ordered(?inplace:Dynamic):Dynamic;
	/**
		Set the Categorical to be unordered.
		
		Parameters
		----------
		inplace : bool, default False
		   Whether or not to set the ordered attribute in-place or return
		   a copy of this categorical with ordered set to False.
		
		Returns
		-------
		Categorical or None
		    Unordered Categorical or None if ``inplace=True``.
	**/
	public function as_unordered(?inplace:Dynamic):Dynamic;
	/**
		Coerce this type to another dtype
		
		Parameters
		----------
		dtype : numpy dtype or pandas type
		copy : bool, default True
		    By default, astype always returns a newly allocated object.
		    If copy is set to False and dtype is categorical, the original
		    object is returned.
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		The categories of this categorical.
		
		Setting assigns new values to each category (effectively a rename of
		each individual category).
		
		The assigned value has to be a list-like object. All items must be
		unique and the number of items in the new categories must be the same
		as the number of items in the old categories.
		
		Assigning to `categories` is a inplace operation!
		
		Raises
		------
		ValueError
		    If the new categories do not validate as categories or if the
		    number of new categories is unequal the number of old categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
	**/
	public var categories : Dynamic;
	/**
		assert that we are ordered
	**/
	public function check_for_ordered(op:Dynamic):Dynamic;
	/**
		The category codes of this categorical.
		
		Codes are an array of integers which are the positions of the actual
		values in the categories array.
		
		There is no setter, use the other categorical methods and the normal item
		setter to change values in the categorical.
		
		Returns
		-------
		ndarray[int]
		    A non-writable view of the `codes` array.
	**/
	public var codes : Dynamic;
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function delete(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Describes this Categorical
		
		Returns
		-------
		description: `DataFrame`
		    A dataframe with frequency and counts by category.
	**/
	public function describe():Dynamic;
	/**
		Return ExtensionArray without NA values.
		
		Returns
		-------
		valid : ExtensionArray
	**/
	public function dropna():Dynamic;
	/**
		The :class:`~pandas.api.types.CategoricalDtype` for this instance.
	**/
	public var dtype : Dynamic;
	/**
		Returns True if categorical arrays are equal.
		
		Parameters
		----------
		other : `Categorical`
		
		Returns
		-------
		bool
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
		Make a Categorical type from codes and categories or dtype.
		
		This constructor is useful if you already have codes and
		categories/dtype and so do not need the (computation intensive)
		factorization step, which is usually done on the constructor.
		
		If your data does not follow this convention, please use the normal
		constructor.
		
		Parameters
		----------
		codes : array-like of int
		    An integer array, where each integer points to a category in
		    categories or dtype.categories, or else is -1 for NaN.
		categories : index-like, optional
		    The categories for the categorical. Items need to be unique.
		    If the categories are not given here, then they must be provided
		    in `dtype`.
		ordered : bool, optional
		    Whether or not this categorical is treated as an ordered
		    categorical. If not given here or in `dtype`, the resulting
		    categorical will be unordered.
		dtype : CategoricalDtype or "category", optional
		    If :class:`CategoricalDtype`, cannot be used together with
		    `categories` or `ordered`.
		
		Returns
		-------
		Categorical
		
		Examples
		--------
		>>> dtype = pd.CategoricalDtype(['a', 'b'], ordered=True)
		>>> pd.Categorical.from_codes(codes=[0, 1, 0, 1], dtype=dtype)
		['a', 'b', 'a', 'b']
		Categories (2, object): ['a' < 'b']
	**/
	static public function from_codes(codes:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?dtype:Dynamic):Dynamic;
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
	public function is_dtype_equal(other:Dynamic):Dynamic;
	/**
		Check whether `values` are contained in Categorical.
		
		Return a boolean NumPy Array showing whether each element in
		the Categorical matches an element in the passed sequence of
		`values` exactly.
		
		Parameters
		----------
		values : set or list-like
		    The sequence of values to test. Passing in a single string will
		    raise a ``TypeError``. Instead, turn a single string into a
		    list of one element.
		
		Returns
		-------
		np.ndarray[bool]
		
		Raises
		------
		TypeError
		  * If `values` is not a set or list-like
		
		See Also
		--------
		pandas.Series.isin : Equivalent method on Series.
		
		Examples
		--------
		>>> s = pd.Categorical(['lama', 'cow', 'lama', 'beetle', 'lama',
		...                'hippo'])
		>>> s.isin(['cow', 'lama'])
		array([ True,  True,  True, False,  True, False])
		
		Passing a single string as ``s.isin('lama')`` will raise an error. Use
		a list of one element instead:
		
		>>> s.isin(['lama'])
		array([ True, False,  True, False,  True, False])
	**/
	public function isin(values:Dynamic):Dynamic;
	/**
		Detect missing values
		
		Missing values (-1 in .codes) are detected.
		
		Returns
		-------
		np.ndarray[bool] of whether my values are null
		
		See Also
		--------
		isna : Top-level isna.
		isnull : Alias of isna.
		Categorical.notna : Boolean inverse of Categorical.isna.
	**/
	public function isna():Dynamic;
	/**
		Detect missing values
		
		Missing values (-1 in .codes) are detected.
		
		Returns
		-------
		np.ndarray[bool] of whether my values are null
		
		See Also
		--------
		isna : Top-level isna.
		isnull : Alias of isna.
		Categorical.notna : Boolean inverse of Categorical.isna.
	**/
	public function isnull():Dynamic;
	/**
		return the size of a single category
	**/
	public var itemsize : Dynamic;
	/**
		Map categories using an input mapping or function.
		
		Maps the categories to new categories. If the mapping correspondence is
		one-to-one the result is a :class:`~pandas.Categorical` which has the
		same order property as the original, otherwise a :class:`~pandas.Index`
		is returned. NaN values are unaffected.
		
		If a `dict` or :class:`~pandas.Series` is used any unmapped category is
		mapped to `NaN`. Note that if this happens an :class:`~pandas.Index`
		will be returned.
		
		Parameters
		----------
		mapper : function, dict, or Series
		    Mapping correspondence.
		
		Returns
		-------
		pandas.Categorical or pandas.Index
		    Mapped categorical.
		
		See Also
		--------
		CategoricalIndex.map : Apply a mapping correspondence on a
		    :class:`~pandas.CategoricalIndex`.
		Index.map : Apply a mapping correspondence on an
		    :class:`~pandas.Index`.
		Series.map : Apply a mapping correspondence on a
		    :class:`~pandas.Series`.
		Series.apply : Apply more complex functions on a
		    :class:`~pandas.Series`.
		
		Examples
		--------
		>>> cat = pd.Categorical(['a', 'b', 'c'])
		>>> cat
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		>>> cat.map(lambda x: x.upper())
		['A', 'B', 'C']
		Categories (3, object): ['A', 'B', 'C']
		>>> cat.map({'a': 'first', 'b': 'second', 'c': 'third'})
		['first', 'second', 'third']
		Categories (3, object): ['first', 'second', 'third']
		
		If the mapping is one-to-one the ordering of the categories is
		preserved:
		
		>>> cat = pd.Categorical(['a', 'b', 'c'], ordered=True)
		>>> cat
		['a', 'b', 'c']
		Categories (3, object): ['a' < 'b' < 'c']
		>>> cat.map({'a': 3, 'b': 2, 'c': 1})
		[3, 2, 1]
		Categories (3, int64): [3 < 2 < 1]
		
		If the mapping is not one-to-one an :class:`~pandas.Index` is returned:
		
		>>> cat.map({'a': 'first', 'b': 'second', 'c': 'first'})
		Index(['first', 'second', 'first'], dtype='object')
		
		If a `dict` is used, all unmapped categories are mapped to `NaN` and
		the result is an :class:`~pandas.Index`:
		
		>>> cat.map({'a': 'first', 'b': 'second'})
		Index(['first', 'second', nan], dtype='object')
	**/
	public function map(mapper:Dynamic):Dynamic;
	/**
		The maximum value of the object.
		
		Only ordered `Categoricals` have a maximum!
		
		.. versionchanged:: 1.0.0
		
		   Returns an NA value on empty arrays
		
		Raises
		------
		TypeError
		    If the `Categorical` is not `ordered`.
		
		Returns
		-------
		max : the maximum of this `Categorical`
	**/
	public function max(?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Memory usage of my values
		
		Parameters
		----------
		deep : bool
		    Introspect the data deeply, interrogate
		    `object` dtypes for system-level memory consumption
		
		Returns
		-------
		bytes used
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array if deep=False
		
		See Also
		--------
		numpy.ndarray.nbytes
	**/
	public function memory_usage(?deep:Dynamic):Dynamic;
	/**
		The minimum value of the object.
		
		Only ordered `Categoricals` have a minimum!
		
		.. versionchanged:: 1.0.0
		
		   Returns an NA value on empty arrays
		
		Raises
		------
		TypeError
		    If the `Categorical` is not `ordered`.
		
		Returns
		-------
		min : the minimum of this `Categorical`
	**/
	public function min(?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the mode(s) of the Categorical.
		
		Always returns `Categorical` even if only one value.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't consider counts of NaN/NaT.
		
		Returns
		-------
		modes : `Categorical` (sorted)
	**/
	public function mode(?dropna:Dynamic):Dynamic;
	/**
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	public var ndim : Dynamic;
	/**
		Inverse of isna
		
		Both missing values (-1 in .codes) and NA as a category are detected as
		null.
		
		Returns
		-------
		np.ndarray[bool] of whether my values are not null
		
		See Also
		--------
		notna : Top-level notna.
		notnull : Alias of notna.
		Categorical.isna : Boolean inverse of Categorical.notna.
	**/
	public function notna():Dynamic;
	/**
		Inverse of isna
		
		Both missing values (-1 in .codes) and NA as a category are detected as
		null.
		
		Returns
		-------
		np.ndarray[bool] of whether my values are not null
		
		See Also
		--------
		notna : Top-level notna.
		notnull : Alias of notna.
		Categorical.isna : Boolean inverse of Categorical.notna.
	**/
	public function notnull():Dynamic;
	/**
		Whether the categories have an ordered relationship.
	**/
	public var ordered : Dynamic;
	public function ravel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Remove the specified categories.
		
		`removals` must be included in the old categories. Values which were in
		the removed categories will be set to NaN
		
		Parameters
		----------
		removals : category or list of categories
		   The categories which should be removed.
		inplace : bool, default False
		   Whether or not to remove the categories inplace or return a copy of
		   this categorical with removed categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with removed categories or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If the removals are not contained in the categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'c', 'b', 'c', 'd'])
		>>> c
		['a', 'c', 'b', 'c', 'd']
		Categories (4, object): ['a', 'b', 'c', 'd']
		
		>>> c.remove_categories(['d', 'a'])
		[NaN, 'c', 'b', 'c', NaN]
		Categories (2, object): ['b', 'c']
	**/
	public function remove_categories(removals:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Remove categories which are not used.
		
		Parameters
		----------
		inplace : bool, default False
		   Whether or not to drop unused categories inplace or return a copy of
		   this categorical with unused categories dropped.
		
		   .. deprecated:: 1.2.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with unused categories dropped or None if ``inplace=True``.
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'c', 'b', 'c', 'd'])
		>>> c
		['a', 'c', 'b', 'c', 'd']
		Categories (4, object): ['a', 'b', 'c', 'd']
		
		>>> c[2] = 'a'
		>>> c[4] = 'c'
		>>> c
		['a', 'c', 'a', 'c', 'c']
		Categories (4, object): ['a', 'b', 'c', 'd']
		
		>>> c.remove_unused_categories()
		['a', 'c', 'a', 'c', 'c']
		Categories (2, object): ['a', 'c']
	**/
	public function remove_unused_categories(?inplace:Dynamic):Dynamic;
	/**
		Rename categories.
		
		Parameters
		----------
		new_categories : list-like, dict-like or callable
		
		    New categories which will replace old categories.
		
		    * list-like: all items must be unique and the number of items in
		      the new categories must match the existing number of categories.
		
		    * dict-like: specifies a mapping from
		      old categories to new. Categories not contained in the mapping
		      are passed through and extra categories in the mapping are
		      ignored.
		
		    * callable : a callable that is called on all items in the old
		      categories and whose return values comprise the new categories.
		
		inplace : bool, default False
		    Whether or not to rename the categories inplace or return a copy of
		    this categorical with renamed categories.
		
		    .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with removed categories or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If new categories are list-like and do not have the same number of
		    items than the current categories or do not validate as categories
		
		See Also
		--------
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'a', 'b'])
		>>> c.rename_categories([0, 1])
		[0, 0, 1]
		Categories (2, int64): [0, 1]
		
		For dict-like ``new_categories``, extra keys are ignored and
		categories not in the dictionary are passed through
		
		>>> c.rename_categories({'a': 'A', 'c': 'C'})
		['A', 'A', 'b']
		Categories (2, object): ['A', 'b']
		
		You may also provide a callable to create the new categories
		
		>>> c.rename_categories(lambda x: x.upper())
		['A', 'A', 'B']
		Categories (2, object): ['A', 'B']
	**/
	public function rename_categories(new_categories:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Reorder categories as specified in new_categories.
		
		`new_categories` need to include all old categories and no new category
		items.
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : bool, optional
		   Whether or not the categorical is treated as a ordered categorical.
		   If not given, do not change the ordered information.
		inplace : bool, default False
		   Whether or not to reorder the categories inplace or return a copy of
		   this categorical with reordered categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with removed categories or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If the new categories do not contain all old category items or any
		    new ones
		
		See Also
		--------
		rename_categories : Rename categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
	**/
	public function reorder_categories(new_categories:Dynamic, ?ordered:Dynamic, ?inplace:Dynamic):Dynamic;
	public function repeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Replaces all instances of one value with another
		
		Parameters
		----------
		to_replace: object
		    The value to be replaced
		
		value: object
		    The value to replace it with
		
		inplace: bool
		    Whether the operation is done in-place
		
		Returns
		-------
		None if inplace is True, otherwise the new Categorical after replacement
		
		
		Examples
		--------
		>>> s = pd.Categorical([1, 2, 1, 3])
		>>> s.replace(1, 3)
		[3, 2, 3, 3]
		Categories (2, int64): [2, 3]
	**/
	public function replace(to_replace:Dynamic, value:Dynamic, ?inplace:Dynamic):Dynamic;
	public function reshape(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Set the categories to the specified new_categories.
		
		`new_categories` can include new categories (which will result in
		unused categories) or remove old categories (which results in values
		set to NaN). If `rename==True`, the categories will simple be renamed
		(less or more items than in old categories will result in values set to
		NaN or in unused categories respectively).
		
		This method can be used to perform more than one action of adding,
		removing, and reordering simultaneously and is therefore faster than
		performing the individual steps via the more specialised methods.
		
		On the other hand this methods does not do checks (e.g., whether the
		old categories are included in the new categories on a reorder), which
		can result in surprising changes, for example when using special string
		dtypes, which does not considers a S1 string equal to a single char
		python string.
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : bool, default False
		   Whether or not the categorical is treated as a ordered categorical.
		   If not given, do not change the ordered information.
		rename : bool, default False
		   Whether or not the new_categories should be considered as a rename
		   of the old categories or as reordered categories.
		inplace : bool, default False
		   Whether or not to reorder the categories in-place or return a copy
		   of this categorical with reordered categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		Categorical with reordered categories or None if inplace.
		
		Raises
		------
		ValueError
		    If new_categories does not validate as categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
	**/
	public function set_categories(new_categories:Dynamic, ?ordered:Dynamic, ?rename:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Set the ordered attribute to the boolean value.
		
		Parameters
		----------
		value : bool
		   Set whether this categorical is ordered (True) or not (False).
		inplace : bool, default False
		   Whether or not to set the ordered attribute in-place or return
		   a copy of this categorical with ordered set to the value.
	**/
	public function set_ordered(value:Dynamic, ?inplace:Dynamic):Dynamic;
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
	/**
		Sort the Categorical by category value returning a new
		Categorical by default.
		
		While an ordering is applied to the category values, sorting in this
		context refers more to organizing and grouping together based on
		matching category values. Thus, this function can be called on an
		unordered Categorical instance unlike the functions 'Categorical.min'
		and 'Categorical.max'.
		
		Parameters
		----------
		inplace : bool, default False
		    Do operation in place.
		ascending : bool, default True
		    Order ascending. Passing False orders descending. The
		    ordering parameter provides the method by which the
		    category values are organized.
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		
		Returns
		-------
		Categorical or None
		
		See Also
		--------
		Categorical.sort
		Series.sort_values
		
		Examples
		--------
		>>> c = pd.Categorical([1, 2, 2, 1, 5])
		>>> c
		[1, 2, 2, 1, 5]
		Categories (3, int64): [1, 2, 5]
		>>> c.sort_values()
		[1, 1, 2, 2, 5]
		Categories (3, int64): [1, 2, 5]
		>>> c.sort_values(ascending=False)
		[5, 2, 2, 1, 1]
		Categories (3, int64): [1, 2, 5]
		
		Inplace sorting can be done as well:
		
		>>> c.sort_values(inplace=True)
		>>> c
		[1, 1, 2, 2, 5]
		Categories (3, int64): [1, 2, 5]
		>>>
		>>> c = pd.Categorical([1, 2, 2, 1, 5])
		
		'sort_values' behaviour with NaNs. Note that 'na_position'
		is independent of the 'ascending' parameter:
		
		>>> c = pd.Categorical([np.nan, 2, 2, np.nan, 5])
		>>> c
		[NaN, 2, 2, NaN, 5]
		Categories (2, int64): [2, 5]
		>>> c.sort_values()
		[2, 2, 5, NaN, NaN]
		Categories (2, int64): [2, 5]
		>>> c.sort_values(ascending=False)
		[5, 2, 2, NaN, NaN]
		Categories (2, int64): [2, 5]
		>>> c.sort_values(na_position='first')
		[NaN, NaN, 2, 2, 5]
		Categories (2, int64): [2, 5]
		>>> c.sort_values(ascending=False, na_position='first')
		[NaN, NaN, 5, 2, 2]
		Categories (2, int64): [2, 5]
	**/
	public function sort_values(?inplace:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
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
	public function take_nd(indexer:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return my 'dense' representation
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		dense : array
	**/
	public function to_dense():Array<Dynamic>;
	/**
		Alias for tolist.
	**/
	public function to_list():Dynamic;
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
		Return the ``Categorical`` which ``categories`` and ``codes`` are
		unique.
		
		.. versionchanged:: 1.3.0
		
		    Previously, unused categories were dropped from the new categories.
		
		Returns
		-------
		Categorical
		
		See Also
		--------
		pandas.unique
		CategoricalIndex.unique
		Series.unique : Return unique values of Series object.
		
		Examples
		--------
		>>> pd.Categorical(list("baabc")).unique()
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		>>> pd.Categorical(list("baab"), categories=list("abc"), ordered=True).unique()
		['b', 'a']
		Categories (3, object): ['a' < 'b' < 'c']
	**/
	public function unique():Dynamic;
	/**
		Return a Series containing counts of each category.
		
		Every category will have an entry, even those with a count of 0.
		
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