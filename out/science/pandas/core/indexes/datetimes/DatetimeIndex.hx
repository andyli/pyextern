/* This file is generated, do not edit! */
package pandas.core.indexes.datetimes;
@:pythonImport("pandas.core.indexes.datetimes", "DatetimeIndex") extern class DatetimeIndex {
	/**
		Return the transpose, which is by definition self.
	**/
	public var T : Dynamic;
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		The array interface, return my values.
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __array_ufunc__(ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Gets called after a ufunc and other functions e.g. np.split.
	**/
	public function __array_wrap__(result:Dynamic, ?context:Dynamic):Dynamic;
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a boolean indicating whether the provided key is in the index.
		
		Parameters
		----------
		key : label
		    The key to check if it is present in the index.
		
		Returns
		-------
		bool
		    Whether the key search is in the index.
		
		Raises
		------
		TypeError
		    If the key is not hashable.
		
		See Also
		--------
		Index.isin : Returns an ndarray of boolean dtype indicating whether the
		    list-like key is in the index.
		
		Examples
		--------
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx
		Int64Index([1, 2, 3, 4], dtype='int64')
		
		>>> 2 in idx
		True
		>>> 6 in idx
		False
	**/
	public function __contains__(key:Dynamic):Dynamic;
	public function __copy__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		memo, default None
		    Standard signature. Unused
	**/
	public function __deepcopy__(?memo:Dynamic):Dynamic;
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
		Override numpy.ndarray's __getitem__ method to work as desired.
		
		This function adds lists and Series as valid boolean indexers
		(ndarrays only supports ndarray with dtype=bool).
		
		If resulting ndim != 1, plain ndarray is returned instead of
		corresponding `Index` subclass.
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
	public function __invert__():Dynamic;
	/**
		Return an iterator of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		iterator
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return the length of the Index.
	**/
	public function __len__():Dynamic;
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
	static public function __new__(cls:Dynamic, ?data:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?closed:Dynamic, ?ambiguous:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?name:Dynamic):Dynamic;
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pos__():Dynamic;
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
		Return a string representation for this object.
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
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
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
	static public var _accessors : Dynamic;
	public function _arith_method(other:Dynamic, op:Dynamic):Dynamic;
	public var _as_range_index : Dynamic;
	public function _assert_can_do_setop(other:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	public function _can_fast_intersect(other:Dynamic):Dynamic;
	public function _can_fast_union(other:Dynamic):Dynamic;
	/**
		Faster check for ``name in self`` when we know `name` is a Python
		identifier (e.g. in NDFrame.__getattr__, which hits this to support
		. key lookup). For indexes that can't hold identifiers (everything
		but object & categorical) we just return False.
		
		https://github.com/pandas-dev/pandas/issues/19764
	**/
	public function _can_hold_identifiers_and_holds_name(name:Dynamic):Dynamic;
	static public var _can_hold_na : Dynamic;
	static public var _can_hold_strings : Dynamic;
	public function _can_partial_date_slice(reso:Dynamic):Dynamic;
	public function _can_range_setop(other:Dynamic):Dynamic;
	/**
		Whether we can use the fastpaths implement in _libs.join
	**/
	public var _can_use_libjoin : Dynamic;
	public function _check_indexing_error(key:Dynamic):Dynamic;
	/**
		Raise if we have a get_indexer `method` that is not supported or valid.
	**/
	public function _check_indexing_method(method:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	public function _cleanup():Dynamic;
	/**
		Wrapper used to dispatch comparison operations.
	**/
	public function _cmp_method(other:Dynamic, op:Dynamic):Dynamic;
	static public var _comparables : Dynamic;
	/**
		Concatenate multiple Index objects.
	**/
	public function _concat(to_concat:Dynamic, name:Dynamic):Dynamic;
	/**
		Construct an appropriately-wrapped result from the ArrayLike result
		of an arithmetic-like operation.
	**/
	public function _construct_result(result:Dynamic, name:Dynamic):Dynamic;
	public var _constructor : Dynamic;
	public function _convert_can_do_setop(other:Dynamic):Dynamic;
	/**
		Convert a slice indexer.
		
		By definition, these are labels unless 'iloc' is passed in.
		Floats are not allowed as the start, step, or stop of the slice.
		
		Parameters
		----------
		key : label of the slice bound
		kind : {'loc', 'getitem'}
	**/
	public function _convert_slice_indexer(key:Dynamic, kind:Dynamic):Dynamic;
	public function _convert_tolerance(tolerance:Dynamic, target:Dynamic):Dynamic;
	/**
		Pandas ExtensionArray for tz-naive or tz-aware datetime data.
		
		.. warning::
		
		   DatetimeArray is currently experimental, and its API may change
		   without warning. In particular, :attr:`DatetimeArray.dtype` is
		   expected to change to always be an instance of an ``ExtensionDtype``
		   subclass.
		
		Parameters
		----------
		values : Series, Index, DatetimeArray, ndarray
		    The datetime data.
		
		    For DatetimeArray `values` (or a Series or Index boxing one),
		    `dtype` and `freq` will be extracted from `values`.
		
		dtype : numpy.dtype or DatetimeTZDtype
		    Note that the only NumPy dtype allowed is 'datetime64[ns]'.
		freq : str or Offset, optional
		    The frequency.
		copy : bool, default False
		    Whether to copy the underlying array of values.
		
		Attributes
		----------
		None
		
		Methods
		-------
		None
	**/
	static public function _data_cls(values:Dynamic, ?dtype:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Dynamic;
	public function _deprecate_mismatched_indexing(key:Dynamic):Dynamic;
	/**
		Issue a FutureWarning if the arg/kwarg is not no_default.
	**/
	public function _deprecated_arg(value:Dynamic, name:Dynamic, methodname:Dynamic):Dynamic;
	public function _difference(other:Dynamic, sort:Dynamic):Dynamic;
	public function _difference_compat(target:Dynamic, indexer:Dynamic):Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Add the string-like labels to the owner dataframe/series dir output.
		
		If this is a MultiIndex, it's first level values are used.
	**/
	public var _dir_additions_for_owner : Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	/**
		Drop MultiIndex levels by level _number_, not name.
	**/
	public function _drop_level_numbers(levnums:Dynamic):Dynamic;
	static public function _dtype_to_subclass(dtype:Dynamic):Dynamic;
	public function _duplicated(?keep:Dynamic):Dynamic;
	public var _engine : Dynamic;
	public function _engine_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Ensure we have a valid array to pass to _simple_new.
	**/
	static public function _ensure_array(data:Dynamic, dtype:Dynamic, copy:Dynamic):Dynamic;
	public function _fast_intersect(other:Dynamic, sort:Dynamic):Dynamic;
	public function _fast_union(other:Dynamic, ?sort:Dynamic):Dynamic;
	public function _filter_indexer_tolerance(target:Dynamic, indexer:Dynamic, tolerance:Dynamic):Dynamic;
	/**
		Implementation of find_common_type that adjusts for Index-specific
		special cases.
	**/
	public function _find_common_type_compat(target:Dynamic):Dynamic;
	/**
		Return a list of tuples of the (attr,formatted_value).
	**/
	public function _format_attrs():Dynamic;
	/**
		Return the formatted data as a unicode string.
	**/
	public function _format_data(?name:Dynamic):Dynamic;
	/**
		Construct the DataFrame for a DuplicateLabelError.
		
		This returns a DataFrame indicating the labels and positions
		of duplicates in an index. This should only be called when it's
		already known that duplicates are present.
		
		Examples
		--------
		>>> idx = pd.Index(['a', 'b', 'a'])
		>>> idx._format_duplicate_message()
		    positions
		label
		a        [0, 2]
	**/
	public function _format_duplicate_message():Dynamic;
	public function _format_native_types(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _format_space():Dynamic;
	public function _format_with_header(header:Dynamic, ?na_rep:Dynamic, ?date_format:Dynamic):Dynamic;
	/**
		Return the formatter function.
	**/
	public var _formatter_func : Dynamic;
	/**
		Cast the ndarray returned from one of the libjoin.foo_indexer functions
		back to type(self)._data.
	**/
	public function _from_join_target(result:Dynamic):Dynamic;
	/**
		Return an attributes dict for my class.
		
		Temporarily added back for compatibility issue in dask, see
		https://github.com/pandas-dev/pandas/pull/43895
	**/
	public function _get_attributes_dict():Dynamic;
	/**
		Find the `freq` for self.delete(loc).
	**/
	public function _get_delete_freq(loc:Dynamic):Dynamic;
	/**
		Get the ndarray that we can pass to the IndexEngine constructor.
	**/
	public function _get_engine_target():Dynamic;
	public function _get_fill_indexer(target:Dynamic, method:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Fallback pad/backfill get_indexer that works for monotonic decreasing
		indexes and non-monotonic targets.
	**/
	public function _get_fill_indexer_searchsorted(target:Dynamic, method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Get index grouper corresponding to an index level
		
		Parameters
		----------
		mapper: Group mapping function or None
		    Function mapping index values to groups
		level : int or None
		    Index level, positional
		
		Returns
		-------
		grouper : Index
		    Index of values to group on.
		labels : ndarray of int or None
		    Array of locations in level_index.
		uniques : Index or None
		    Index of unique values for level.
	**/
	public function _get_grouper_for_level(mapper:Dynamic, ?level:Dynamic):pandas.Index;
	public function _get_indexer(target:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Called from get_indexer or get_indexer_non_unique when the target
		is of a non-comparable dtype.
		
		For get_indexer lookups with method=None, get_indexer is an _equality_
		check, so non-comparable dtypes mean we will always have no matches.
		
		For get_indexer lookups with a method, get_indexer is an _inequality_
		check, so non-comparable dtypes mean we will always raise TypeError.
		
		Parameters
		----------
		target : Index
		method : str or None
		unique : bool, default True
		    * True if called from get_indexer.
		    * False if called from get_indexer_non_unique.
		
		Raises
		------
		TypeError
		    If doing an inequality check, i.e. method is not None.
	**/
	public function _get_indexer_non_comparable(target:Dynamic, method:Dynamic, ?unique:Dynamic):Dynamic;
	/**
		Analogue to get_indexer that raises if any elements are missing.
	**/
	public function _get_indexer_strict(key:Dynamic, axis_name:Dynamic):Dynamic;
	/**
		Find the `freq` for self.insert(loc, item).
	**/
	public function _get_insert_freq(loc:Dynamic, item:Dynamic):Dynamic;
	/**
		Get the freq to attach to the result of a join operation.
	**/
	public function _get_join_freq(other:Dynamic):Dynamic;
	public function _get_level_number(level:Dynamic):Dynamic;
	/**
		Return an Index of values for requested level.
		
		This is primarily useful to get an individual level of values from a
		MultiIndex, but is provided on Index as well for compatibility.
		
		Parameters
		----------
		level : int or str
		    It is either the integer position or the name of the level.
		
		Returns
		-------
		Index
		    Calling object, as there is only one level in the Index.
		
		See Also
		--------
		MultiIndex.get_level_values : Get values for a level of a MultiIndex.
		
		Notes
		-----
		For Index, level should be 0, since there are no multiple levels.
		
		Examples
		--------
		>>> idx = pd.Index(list('abc'))
		>>> idx
		Index(['a', 'b', 'c'], dtype='object')
		
		Get level values by supplying `level` as integer:
		
		>>> idx.get_level_values(0)
		Index(['a', 'b', 'c'], dtype='object')
	**/
	public function _get_level_values(level:Dynamic):Dynamic;
	public function _get_names():Dynamic;
	/**
		Get the indexer for the nearest index labels; requires an index with
		values that can be subtracted from each other (e.g., not strings or
		tuples).
	**/
	public function _get_nearest_indexer(target:Dynamic, limit:Dynamic, tolerance:Dynamic):Dynamic;
	/**
		If the result of a set operation will be self,
		return self, unless the name changes, in which
		case make a shallow copy of self.
	**/
	public function _get_reconciled_name_object(other:Dynamic):Dynamic;
	public function _get_string_slice(key:Dynamic):Dynamic;
	/**
		Return the number of microseconds since midnight.
		
		Returns
		-------
		ndarray[int64_t]
	**/
	public function _get_time_micros():Dynamic;
	/**
		Do a positional lookup on the given Series, returning either a scalar
		or a Series.
		
		Assumes that `series.index is self`
		
		key is included for MultiIndex compat.
	**/
	public function _get_values_for_loc(series:Dynamic, loc:Dynamic, key:Dynamic):Dynamic;
	/**
		Fastpath for __getitem__ when we know we have a slice.
	**/
	public function _getitem_slice(slobj:Dynamic):Dynamic;
	static public var _hidden_attrs : Dynamic;
	static public var _id : Dynamic;
	/**
		Whether we should treat this as unique for the sake of
		get_indexer vs get_indexer_non_unique.
		
		For IntervalIndex compat.
	**/
	public var _index_as_unique : Dynamic;
	public function _inner_indexer(other:Dynamic):Dynamic;
	/**
		intersection specialized to the case with matching dtypes and both non-empty.
	**/
	public function _intersection(other:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Find the intersection of two Indexes using get_indexer.
		
		Returns
		-------
		np.ndarray or ExtensionArray
		    The returned array will be unique.
	**/
	public function _intersection_via_get_indexer(other:Dynamic, sort:Dynamic):Dynamic;
	/**
		Consistent invalid indexer message.
	**/
	public function _invalid_indexer(form:Dynamic, key:Dynamic):Dynamic;
	/**
		Whether or not the index values only consist of dates.
	**/
	public var _is_all_dates : Dynamic;
	static public var _is_backward_compat_public_numeric_index : Dynamic;
	/**
		Can we compare values of the given dtype to our own?
	**/
	public function _is_comparable_dtype(dtype:Dynamic):Dynamic;
	/**
		Return a boolean if we are only dates (and don't have a timezone)
		
		Returns
		-------
		bool
	**/
	public var _is_dates_only : Dynamic;
	/**
		Return a boolean if we need a qualified .info display.
	**/
	public function _is_memory_usage_qualified():Dynamic;
	/**
		Return if the index is monotonic decreasing (only equal or
		decreasing) values.
		
		Examples
		--------
		>>> Index([3, 2, 1]).is_monotonic_decreasing
		True
		>>> Index([3, 2, 2]).is_monotonic_decreasing
		True
		>>> Index([3, 1, 2]).is_monotonic_decreasing
		False
	**/
	public var _is_monotonic_decreasing : Dynamic;
	/**
		Return if the index is monotonic increasing (only equal or
		increasing) values.
		
		Examples
		--------
		>>> Index([1, 2, 3]).is_monotonic_increasing
		True
		>>> Index([1, 2, 2]).is_monotonic_increasing
		True
		>>> Index([1, 3, 2]).is_monotonic_increasing
		False
	**/
	public var _is_monotonic_increasing : Dynamic;
	/**
		Cached check equivalent to isinstance(self, MultiIndex)
	**/
	public var _is_multi : Dynamic;
	static public var _is_numeric_dtype : Dynamic;
	/**
		Return if the index is strictly monotonic decreasing
		(only decreasing) values.
		
		Examples
		--------
		>>> Index([3, 2, 1])._is_strictly_monotonic_decreasing
		True
		>>> Index([3, 2, 2])._is_strictly_monotonic_decreasing
		False
		>>> Index([3, 1, 2])._is_strictly_monotonic_decreasing
		False
	**/
	public var _is_strictly_monotonic_decreasing : Dynamic;
	/**
		Return if the index is strictly monotonic increasing
		(only increasing) values.
		
		Examples
		--------
		>>> Index([1, 2, 3])._is_strictly_monotonic_increasing
		True
		>>> Index([1, 2, 2])._is_strictly_monotonic_increasing
		False
		>>> Index([1, 3, 2])._is_strictly_monotonic_increasing
		False
	**/
	public var _is_strictly_monotonic_increasing : Dynamic;
	/**
		Return if the index has unique values.
	**/
	public var _is_unique : Dynamic;
	public var _isnan : Dynamic;
	/**
		The join method *only* affects the level of the resulting
		MultiIndex. Otherwise it just exactly aligns the Index data to the
		labels of the level in the MultiIndex.
		
		If ```keep_order == True```, the order of the data indexed by the
		MultiIndex will not be changed; otherwise, it will tie out
		with `other`.
	**/
	public function _join_level(other:Dynamic, level:Dynamic, ?how:Dynamic, ?keep_order:Dynamic):Dynamic;
	public function _join_monotonic(other:Dynamic, ?how:Dynamic):Dynamic;
	public function _join_multi(other:Dynamic, how:Dynamic):Dynamic;
	public function _join_non_unique(other:Dynamic, ?how:Dynamic):Dynamic;
	static public var _join_precedence : Dynamic;
	public function _join_via_get_indexer(other:Dynamic, how:Dynamic, sort:Dynamic):Dynamic;
	public function _left_indexer(other:Dynamic):Dynamic;
	public function _left_indexer_unique(other:Dynamic):Dynamic;
	public function _logical_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		An internal function that maps values using the input
		correspondence (which can be a dict, Series, or function).
		
		Parameters
		----------
		mapper : function, dict, or Series
		    The input correspondence object
		na_action : {None, 'ignore'}
		    If 'ignore', propagate NA values, without passing them to the
		    mapping function
		
		Returns
		-------
		Union[Index, MultiIndex], inferred
		    The output of the mapping function applied to the index.
		    If the function returns a tuple with more than one element
		    a MultiIndex will be returned.
	**/
	public function _map_values(mapper:Dynamic, ?na_action:Dynamic):Dynamic;
	public function _maybe_cast_for_get_loc(key:Dynamic):Dynamic;
	/**
		If we have a float key and are not a floating index, then try to cast
		to an int if equivalent.
	**/
	public function _maybe_cast_indexer(key:Dynamic):Dynamic;
	/**
		Analogue to maybe_cast_indexer for get_indexer instead of get_loc.
	**/
	public function _maybe_cast_listlike_indexer(keyarr:Dynamic):Dynamic;
	/**
		If label is a string, cast it to scalar type according to resolution.
		
		Parameters
		----------
		label : object
		side : {'left', 'right'}
		kind : {'loc', 'getitem'} or None
		
		Returns
		-------
		label : object
		
		Notes
		-----
		Value of `side` parameter should be validated in caller.
	**/
	public function _maybe_cast_slice_bound(label:Dynamic, side:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Check that an Index has no duplicates.
		
		This is typically only called via
		`NDFrame.flags.allows_duplicate_labels.setter` when it's set to
		True (duplicates aren't allowed).
		
		Raises
		------
		DuplicateLabelError
		    When the index is not unique.
	**/
	public function _maybe_check_unique():Dynamic;
	/**
		raise if this Index subclass does not support any or all.
	**/
	public function _maybe_disable_logical_methods(opname:Dynamic):Dynamic;
	/**
		We only use pandas-style take when allow_fill is True _and_
		fill_value is not None.
	**/
	public function _maybe_disallow_fill(allow_fill:Dynamic, fill_value:Dynamic, indices:Dynamic):Dynamic;
	public function _maybe_preserve_names(target:Dynamic, preserve_names:Dynamic):Dynamic;
	/**
		When dealing with an object-dtype Index and a non-object Index, see
		if we can upcast the object-dtype one to improve performance.
	**/
	public function _maybe_promote(other:Dynamic):Dynamic;
	public function _maybe_utc_convert(other:Dynamic):Dynamic;
	/**
		Memory usage of the values.
		
		Parameters
		----------
		deep : bool, default False
		    Introspect the data deeply, interrogate
		    `object` dtypes for system-level memory consumption.
		
		Returns
		-------
		bytes used
		
		See Also
		--------
		numpy.ndarray.nbytes : Total bytes consumed by the elements of the
		    array.
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array if deep=False or if used on PyPy
	**/
	public function _memory_usage(?deep:Dynamic):Dynamic;
	public function _mpl_repr():Dynamic;
	/**
		The expected NA value to use with this index.
	**/
	public var _na_value : Dynamic;
	static public var _name : Dynamic;
	static public var _no_setting_name : Dynamic;
	public function _outer_indexer(other:Dynamic):Dynamic;
	public function _parse_with_reso(label:Dynamic):Dynamic;
	/**
		Calculate datetime bounds for parsed time string and its resolution.
		
		Parameters
		----------
		reso : str
		    Resolution provided by parsed string.
		parsed : datetime
		    Datetime from parsed string.
		
		Returns
		-------
		lower, upper: pd.Timestamp
	**/
	public function _parsed_string_to_bounds(reso:Dynamic, parsed:Dynamic):Dynamic;
	/**
		Parameters
		----------
		reso : Resolution
		parsed : datetime
		
		Returns
		-------
		slice or ndarray[intp]
	**/
	public function _partial_date_slice(reso:Dynamic, parsed:Dynamic):Dynamic;
	/**
		Check that indexer can be used to return a result.
		
		e.g. at least one element was found,
		unless the list of keys was actually empty.
		
		Parameters
		----------
		key : list-like
		    Targeted labels (only used to show correct error message).
		indexer: array-like of booleans
		    Indices corresponding to the key,
		    (with -1 indicating not found).
		axis_name : str
		
		Raises
		------
		KeyError
		    If at least one key was requested but none was found.
	**/
	public function _raise_if_missing(key:Dynamic, indexer:Dynamic, axis_name:Dynamic):Dynamic;
	public function _range_intersect(other:Dynamic, sort:Dynamic):Dynamic;
	public function _range_union(other:Dynamic, sort:Dynamic):Dynamic;
	/**
		Perform the reduction type operation if we can.
	**/
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new index with target's values (move/add/delete values as
		necessary) use with non-unique Index and a possibly non-unique target.
		
		Parameters
		----------
		target : an iterable
		
		Returns
		-------
		new_index : pd.Index
		    Resulting index.
		indexer : np.ndarray[np.intp]
		    Indices of output values in original index.
		new_indexer : np.ndarray[np.intp] or None
	**/
	public function _reindex_non_unique(target:Dynamic):pandas.Index;
	/**
		fastpath for rename if new name is already validated.
	**/
	public function _rename(name:Dynamic):Dynamic;
	/**
		Check that this is a scalar value that we can use for setitem-like
		operations without changing dtype.
	**/
	public function _require_scalar(value:Dynamic):Dynamic;
	static public var _requires_unique_msg : Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Initializes or resets ``_id`` attribute with new object.
	**/
	public function _reset_identity():Dynamic;
	public var _resolution_obj : Dynamic;
	static public function _scalar_data_error(data:Dynamic):Dynamic;
	public function _searchsorted_monotonic(label:Dynamic, ?side:Dynamic):Dynamic;
	/**
		Set new names on index. Each name has to be a hashable type.
		
		Parameters
		----------
		values : str or sequence
		    name(s) to set
		level : int, level name, or sequence of int/level names (default None)
		    If the index is a MultiIndex (hierarchical), level(s) to set (None
		    for all levels).  Otherwise level must be None
		
		Raises
		------
		TypeError if each name is not hashable.
	**/
	public function _set_names(values:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Create a new Index with the same class as the caller, don't copy the
		data, use the same object attributes with passed in attributes taking
		precedence.
		
		*this is an internal non-public method*
		
		Parameters
		----------
		values : the values to create the new Index, optional
		name : Label, defaults to self.name
	**/
	public function _shallow_copy(values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check if `self == other` can ever have non-False entries.
	**/
	public function _should_compare(other:Dynamic):Dynamic;
	/**
		Should an integer key be treated as positional?
	**/
	public var _should_fallback_to_positional : Dynamic;
	/**
		Should we attempt partial-matching indexing?
	**/
	public function _should_partial_index(target:Dynamic):Dynamic;
	/**
		We require that we have a dtype compat for the values. If we are passed
		a non-dtype compat, then coerce using the constructor.
		
		Must be careful not to recurse.
	**/
	static public function _simple_new(values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compat with MultiIndex.
	**/
	public function _sort_levels_monotonic():Dynamic;
	static public function _string_data_error(data:Dynamic):Dynamic;
	/**
		Return a summarized representation.
		
		Parameters
		----------
		name : str
		    name to use in the summary representation
		
		Returns
		-------
		String with a summarized representation of the index
	**/
	public function _summary(?name:Dynamic):Dynamic;
	static public var _supports_partial_string_indexing : Dynamic;
	/**
		Apply function to all values found in index.
		
		This includes transforming multiindex entries separately.
		Only apply function to one level of the MultiIndex if level is specified.
	**/
	public function _transform_index(func:Dynamic, ?level:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	public function _unary_method(op:Dynamic):Dynamic;
	/**
		Specific union logic should go here. In subclasses, union behavior
		should be overwritten here rather than in `self.union`.
		
		Parameters
		----------
		other : Index or array-like
		sort : False or None, default False
		    Whether to sort the resulting index.
		
		    * False : do not sort the result.
		    * None : sort the result, except when `self` and `other` are equal
		      or when the values cannot be compared.
		
		Returns
		-------
		Index
	**/
	public function _union(other:Dynamic, sort:Dynamic):Dynamic;
	/**
		Check if we are allowing reindexing with this particular indexer.
		
		Parameters
		----------
		indexer : an integer ndarray
		
		Raises
		------
		ValueError if its a duplicate axis
	**/
	public function _validate_can_reindex(indexer:Dynamic):Dynamic;
	/**
		Convert value to be insertable to underlying array.
	**/
	public function _validate_fill_value(value:Dynamic):Dynamic;
	/**
		Validate index level.
		
		For single-level Index getting level number is a no-op, but some
		verification must be done like in MultiIndex.
	**/
	public function _validate_index_level(level:Dynamic):Dynamic;
	/**
		If we are positional indexer, validate that we have appropriate
		typed bounds must be an integer.
	**/
	public function _validate_indexer(form:Dynamic, key:Dynamic, kind:Dynamic):Dynamic;
	/**
		Handles the quirks of having a singular 'name' parameter for general
		Index and plural 'names' parameter for MultiIndex.
	**/
	public function _validate_names(?name:Dynamic, ?names:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		For positional indexing, a slice must have either int or None
		for each of start, stop, and step.
	**/
	public function _validate_positional_slice(key:Dynamic):Dynamic;
	public function _validate_sort_keyword(sort:Dynamic):Dynamic;
	/**
		The best array representation.
		
		This is an ndarray or ExtensionArray.
		
		``_values`` are consistent between ``Series`` and ``Index``.
		
		It may differ from the public '.values' method.
		
		index             | values          | _values       |
		----------------- | --------------- | ------------- |
		Index             | ndarray         | ndarray       |
		CategoricalIndex  | Categorical     | Categorical   |
		DatetimeIndex     | ndarray[M8ns]   | DatetimeArray |
		DatetimeIndex[tz] | ndarray[M8ns]   | DatetimeArray |
		PeriodIndex       | ndarray[object] | PeriodArray   |
		IntervalIndex     | IntervalArray   | IntervalArray |
		
		See Also
		--------
		values : Values
	**/
	public var _values : Dynamic;
	/**
		fastpath to make a shallow copy, i.e. new object with same data.
	**/
	public function _view():Dynamic;
	public function _with_freq(freq:Dynamic):Dynamic;
	/**
		Constructor that uses the 1.0.x behavior inferring numeric dtypes
		for ndarray[object] inputs.
	**/
	static public function _with_infer(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _wrap_difference_result(other:Dynamic, result:Dynamic):Dynamic;
	public function _wrap_intersection_result(other:Dynamic, result:Dynamic):Dynamic;
	public function _wrap_joined_index(joined:Dynamic, other:Dynamic):Dynamic;
	public function _wrap_range_setop(other:Dynamic, res_i8:Dynamic):Dynamic;
	public function _wrap_reindex_result(target:Dynamic, indexer:Dynamic, preserve_names:Dynamic):Dynamic;
	public function _wrap_setop_result(other:Dynamic, result:Dynamic):Dynamic;
	/**
		Return whether all elements are Truthy.
		
		Parameters
		----------
		*args
		    Required for compatibility with numpy.
		**kwargs
		    Required for compatibility with numpy.
		
		Returns
		-------
		all : bool or array-like (if axis is specified)
		    A single element array-like may be converted to bool.
		
		See Also
		--------
		Index.any : Return whether any element in an Index is True.
		Series.any : Return whether any element in a Series is True.
		Series.all : Return whether all elements in a Series are True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity
		evaluate to True because these are not equal to zero.
		
		Examples
		--------
		True, because nonzero integers are considered True.
		
		>>> pd.Index([1, 2, 3]).all()
		True
		
		False, because ``0`` is considered False.
		
		>>> pd.Index([0, 1, 2]).all()
		False
	**/
	public function all(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether any element is Truthy.
		
		Parameters
		----------
		*args
		    Required for compatibility with numpy.
		**kwargs
		    Required for compatibility with numpy.
		
		Returns
		-------
		any : bool or array-like (if axis is specified)
		    A single element array-like may be converted to bool.
		
		See Also
		--------
		Index.all : Return whether all elements are True.
		Series.all : Return whether all elements are True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity
		evaluate to True because these are not equal to zero.
		
		Examples
		--------
		>>> index = pd.Index([0, 1, 2])
		>>> index.any()
		True
		
		>>> index = pd.Index([0, 0, 0])
		>>> index.any()
		False
	**/
	public function any(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Append a collection of Index options together.
		
		Parameters
		----------
		other : Index or list/tuple of indices
		
		Returns
		-------
		Index
	**/
	public function append(other:Dynamic):Dynamic;
	/**
		Return int position of the largest value in the Series.
		
		If the maximum is achieved in multiple locations,
		the first row position is returned.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		int
		    Row position of the maximum value.
		
		See Also
		--------
		Series.argmax : Return position of the maximum value.
		Series.argmin : Return position of the minimum value.
		numpy.ndarray.argmax : Equivalent method for numpy arrays.
		Series.idxmax : Return index label of the maximum values.
		Series.idxmin : Return index label of the minimum values.
		
		Examples
		--------
		Consider dataset containing cereal calories
		
		>>> s = pd.Series({'Corn Flakes': 100.0, 'Almond Delight': 110.0,
		...                'Cinnamon Toast Crunch': 120.0, 'Cocoa Puff': 110.0})
		>>> s
		Corn Flakes              100.0
		Almond Delight           110.0
		Cinnamon Toast Crunch    120.0
		Cocoa Puff               110.0
		dtype: float64
		
		>>> s.argmax()
		2
		>>> s.argmin()
		0
		
		The maximum cereal calories is the third element and
		the minimum cereal calories is the first element,
		since series is zero-indexed.
	**/
	public function argmax(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return int position of the smallest value in the Series.
		
		If the minimum is achieved in multiple locations,
		the first row position is returned.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		int
		    Row position of the minimum value.
		
		See Also
		--------
		Series.argmin : Return position of the minimum value.
		Series.argmax : Return position of the maximum value.
		numpy.ndarray.argmin : Equivalent method for numpy arrays.
		Series.idxmax : Return index label of the maximum values.
		Series.idxmin : Return index label of the minimum values.
		
		Examples
		--------
		Consider dataset containing cereal calories
		
		>>> s = pd.Series({'Corn Flakes': 100.0, 'Almond Delight': 110.0,
		...                'Cinnamon Toast Crunch': 120.0, 'Cocoa Puff': 110.0})
		>>> s
		Corn Flakes              100.0
		Almond Delight           110.0
		Cinnamon Toast Crunch    120.0
		Cocoa Puff               110.0
		dtype: float64
		
		>>> s.argmax()
		2
		>>> s.argmin()
		0
		
		The maximum cereal calories is the third element and
		the minimum cereal calories is the first element,
		since series is zero-indexed.
	**/
	public function argmin(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the integer indices that would sort the index.
		
		Parameters
		----------
		*args
		    Passed to `numpy.ndarray.argsort`.
		**kwargs
		    Passed to `numpy.ndarray.argsort`.
		
		Returns
		-------
		np.ndarray[np.intp]
		    Integer indices that would sort the index if used as
		    an indexer.
		
		See Also
		--------
		numpy.argsort : Similar method for NumPy arrays.
		Index.sort_values : Return sorted copy of Index.
		
		Examples
		--------
		>>> idx = pd.Index(['b', 'a', 'd', 'c'])
		>>> idx
		Index(['b', 'a', 'd', 'c'], dtype='object')
		
		>>> order = idx.argsort()
		>>> order
		array([1, 0, 3, 2])
		
		>>> idx[order]
		Index(['a', 'b', 'c', 'd'], dtype='object')
	**/
	public function argsort(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The ExtensionArray of the data backing this Series or Index.
		
		Returns
		-------
		ExtensionArray
		    An ExtensionArray of the values stored within. For extension
		    types, this is the actual array. For NumPy native types, this
		    is a thin (no copy) wrapper around :class:`numpy.ndarray`.
		
		    ``.array`` differs ``.values`` which may require converting the
		    data to a different form.
		
		See Also
		--------
		Index.to_numpy : Similar method that always returns a NumPy array.
		Series.to_numpy : Similar method that always returns a NumPy array.
		
		Notes
		-----
		This table lays out the different array types for each extension
		dtype within pandas.
		
		================== =============================
		dtype              array type
		================== =============================
		category           Categorical
		period             PeriodArray
		interval           IntervalArray
		IntegerNA          IntegerArray
		string             StringArray
		boolean            BooleanArray
		datetime64[ns, tz] DatetimeArray
		================== =============================
		
		For any 3rd-party extension types, the array type will be an
		ExtensionArray.
		
		For all remaining dtypes ``.array`` will be a
		:class:`arrays.NumpyExtensionArray` wrapping the actual ndarray
		stored within. If you absolutely need a NumPy array (possibly with
		copying / coercing data), then use :meth:`Series.to_numpy` instead.
		
		Examples
		--------
		For regular NumPy types like int, and float, a PandasArray
		is returned.
		
		>>> pd.Series([1, 2, 3]).array
		<PandasArray>
		[1, 2, 3]
		Length: 3, dtype: int64
		
		For extension types, like Categorical, the actual ExtensionArray
		is returned
		
		>>> ser = pd.Series(pd.Categorical(['a', 'b', 'a']))
		>>> ser.array
		['a', 'b', 'a']
		Categories (2, object): ['a', 'b']
	**/
	public var array : Dynamic;
	/**
		Integer representation of the values.
		
		Returns
		-------
		ndarray
		    An ndarray with int64 dtype.
	**/
	public var asi8 : Dynamic;
	/**
		Return the label from the index, or, if not present, the previous one.
		
		Assuming that the index is sorted, return the passed index label if it
		is in the index, or return the previous index label if the passed one
		is not in the index.
		
		Parameters
		----------
		label : object
		    The label up to which the method returns the latest index label.
		
		Returns
		-------
		object
		    The passed label if it is in the index. The previous label if the
		    passed label is not in the sorted index or `NaN` if there is no
		    such label.
		
		See Also
		--------
		Series.asof : Return the latest value in a Series up to the
		    passed index.
		merge_asof : Perform an asof merge (similar to left join but it
		    matches on nearest key rather than equal key).
		Index.get_loc : An `asof` is a thin wrapper around `get_loc`
		    with method='pad'.
		
		Examples
		--------
		`Index.asof` returns the latest index label up to the passed label.
		
		>>> idx = pd.Index(['2013-12-31', '2014-01-02', '2014-01-03'])
		>>> idx.asof('2014-01-01')
		'2013-12-31'
		
		If the label is in the index, the method returns the passed label.
		
		>>> idx.asof('2014-01-02')
		'2014-01-02'
		
		If all of the labels in the index are later than the passed label,
		NaN is returned.
		
		>>> idx.asof('1999-01-02')
		nan
		
		If the index is not sorted, an error is raised.
		
		>>> idx_not_sorted = pd.Index(['2013-12-31', '2015-01-02',
		...                            '2014-01-03'])
		>>> idx_not_sorted.asof('2013-12-31')
		Traceback (most recent call last):
		ValueError: index must be monotonic increasing or decreasing
	**/
	public function asof(label:Dynamic):Dynamic;
	/**
		Return the locations (indices) of labels in the index.
		
		As in the `asof` function, if the label (a particular entry in
		`where`) is not in the index, the latest index label up to the
		passed label is chosen and its index returned.
		
		If all of the labels in the index are later than a label in `where`,
		-1 is returned.
		
		`mask` is used to ignore NA values in the index during calculation.
		
		Parameters
		----------
		where : Index
		    An Index consisting of an array of timestamps.
		mask : np.ndarray[bool]
		    Array of booleans denoting where values in the original
		    data are not NA.
		
		Returns
		-------
		np.ndarray[np.intp]
		    An array of locations (indices) of the labels from the Index
		    which correspond to the return values of the `asof` function
		    for every element in `where`.
	**/
	public function asof_locs(where:Dynamic, mask:Dynamic):Dynamic;
	/**
		Create an Index with values cast to dtypes.
		
		The class of a new Index is determined by dtype. When conversion is
		impossible, a TypeError exception is raised.
		
		Parameters
		----------
		dtype : numpy dtype or pandas type
		    Note that any signed integer `dtype` is treated as ``'int64'``,
		    and any unsigned integer `dtype` is treated as ``'uint64'``,
		    regardless of the size.
		copy : bool, default True
		    By default, astype always returns a newly allocated object.
		    If copy is set to False and internal requirements on dtype are
		    satisfied, the original data is used to create a new Index
		    or the original Index is returned.
		
		Returns
		-------
		Index
		    Index with values cast to specified dtype.
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
		      times.
		
		nonexistent : 'shift_forward', 'shift_backward', 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Notes
		-----
		If the timestamps have a timezone, ceiling will take place relative to the
		local ("wall") time and re-localized to the same timezone. When ceiling
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
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
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> rng_tz = pd.DatetimeIndex(["2021-10-31 01:30:00"], tz="Europe/Amsterdam")
		
		>>> rng_tz.ceil("H", ambiguous=False)
		DatetimeIndex(['2021-10-31 02:00:00+01:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
		
		>>> rng_tz.ceil("H", ambiguous=True)
		DatetimeIndex(['2021-10-31 02:00:00+02:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
	**/
	public function ceil(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a copy of this object.
		
		Name and dtype sets those attributes on the new object.
		
		Parameters
		----------
		name : Label, optional
		    Set name for new object.
		deep : bool, default False
		dtype : numpy dtype or pandas type, optional
		    Set dtype for new object.
		
		    .. deprecated:: 1.2.0
		        use ``astype`` method instead.
		names : list-like, optional
		    Kept for compatibility with MultiIndex. Should not be used.
		
		    .. deprecated:: 1.4.0
		        use ``name`` instead.
		
		Returns
		-------
		Index
		    Index refer to new object which is a copy of this object.
		
		Notes
		-----
		In most cases, there should be no functional difference from using
		``deep``, but if ``deep`` is passed it will attempt to deepcopy.
	**/
	public function copy(?name:Dynamic, ?deep:Dynamic, ?dtype:Dynamic, ?names:Dynamic):Dynamic;
	/**
		Returns numpy array of python :class:`datetime.date` objects.
		
		Namely, the date part of Timestamps without time and
		timezone information.
	**/
	public var date : Dynamic;
	/**
		The day of the datetime.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="D")
		... )
		>>> datetime_series
		0   2000-01-01
		1   2000-01-02
		2   2000-01-03
		dtype: datetime64[ns]
		>>> datetime_series.dt.day
		0    1
		1    2
		2    3
		dtype: int64
	**/
	public var day : Dynamic;
	/**
		Return the day names of the DateTimeIndex with specified locale.
		
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
	public function day_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public var day_of_week : Dynamic;
	/**
		The ordinal day of the year.
	**/
	public var day_of_year : Dynamic;
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
		Make new Index with passed location(-s) deleted.
		
		Parameters
		----------
		loc : int or list of int
		    Location of item(-s) which will be deleted.
		    Use a list of locations to delete more than one value at the same time.
		
		Returns
		-------
		Index
		    Will be same type as self, except for RangeIndex.
		
		See Also
		--------
		numpy.delete : Delete any rows and column from NumPy array (ndarray).
		
		Examples
		--------
		>>> idx = pd.Index(['a', 'b', 'c'])
		>>> idx.delete(1)
		Index(['a', 'c'], dtype='object')
		
		>>> idx = pd.Index(['a', 'b', 'c'])
		>>> idx.delete([0, 2])
		Index(['b'], dtype='object')
	**/
	public function delete(loc:Dynamic):Dynamic;
	/**
		Return a new Index with elements of index not in `other`.
		
		This is the set difference of two Index objects.
		
		Parameters
		----------
		other : Index or array-like
		sort : False or None, default None
		    Whether to sort the resulting index. By default, the
		    values are attempted to be sorted, but any TypeError from
		    incomparable elements is caught by pandas.
		
		    * None : Attempt to sort the result, but catch any TypeErrors
		      from comparing incomparable elements.
		    * False : Do not sort the result.
		
		Returns
		-------
		difference : Index
		
		Examples
		--------
		>>> idx1 = pd.Index([2, 1, 3, 4])
		>>> idx2 = pd.Index([3, 4, 5, 6])
		>>> idx1.difference(idx2)
		Int64Index([1, 2], dtype='int64')
		>>> idx1.difference(idx2, sort=False)
		Int64Index([2, 1], dtype='int64')
	**/
	public function difference(other:Dynamic, ?sort:Dynamic):pandas.Index;
	/**
		Make new Index with passed list of labels deleted.
		
		Parameters
		----------
		labels : array-like or scalar
		errors : {'ignore', 'raise'}, default 'raise'
		    If 'ignore', suppress error and existing labels are dropped.
		
		Returns
		-------
		dropped : Index
		    Will be same type as self, except for RangeIndex.
		
		Raises
		------
		KeyError
		    If not all of the labels are found in the selected axis
	**/
	public function drop(labels:Dynamic, ?errors:Dynamic):pandas.Index;
	/**
		Return Index with duplicate values removed.
		
		Parameters
		----------
		keep : {'first', 'last', ``False``}, default 'first'
		    - 'first' : Drop duplicates except for the first occurrence.
		    - 'last' : Drop duplicates except for the last occurrence.
		    - ``False`` : Drop all duplicates.
		
		Returns
		-------
		deduplicated : Index
		
		See Also
		--------
		Series.drop_duplicates : Equivalent method on Series.
		DataFrame.drop_duplicates : Equivalent method on DataFrame.
		Index.duplicated : Related method on Index, indicating duplicate
		    Index values.
		
		Examples
		--------
		Generate an pandas.Index with duplicate values.
		
		>>> idx = pd.Index(['lama', 'cow', 'lama', 'beetle', 'lama', 'hippo'])
		
		The `keep` parameter controls  which duplicate values are removed.
		The value 'first' keeps the first occurrence for each
		set of duplicated entries. The default value of keep is 'first'.
		
		>>> idx.drop_duplicates(keep='first')
		Index(['lama', 'cow', 'beetle', 'hippo'], dtype='object')
		
		The value 'last' keeps the last occurrence for each set of duplicated
		entries.
		
		>>> idx.drop_duplicates(keep='last')
		Index(['cow', 'beetle', 'lama', 'hippo'], dtype='object')
		
		The value ``False`` discards all sets of duplicated entries.
		
		>>> idx.drop_duplicates(keep=False)
		Index(['cow', 'beetle', 'hippo'], dtype='object')
	**/
	public function drop_duplicates(?keep:Dynamic):pandas.Index;
	/**
		Return index with requested level(s) removed.
		
		If resulting index has only 1 level left, the result will be
		of Index type, not MultiIndex.
		
		Parameters
		----------
		level : int, str, or list-like, default 0
		    If a string is given, must be the name of a level
		    If list-like, elements must be names or indexes of levels.
		
		Returns
		-------
		Index or MultiIndex
		
		Examples
		--------
		>>> mi = pd.MultiIndex.from_arrays(
		... [[1, 2], [3, 4], [5, 6]], names=['x', 'y', 'z'])
		>>> mi
		MultiIndex([(1, 3, 5),
		            (2, 4, 6)],
		           names=['x', 'y', 'z'])
		
		>>> mi.droplevel()
		MultiIndex([(3, 5),
		            (4, 6)],
		           names=['y', 'z'])
		
		>>> mi.droplevel(2)
		MultiIndex([(1, 3),
		            (2, 4)],
		           names=['x', 'y'])
		
		>>> mi.droplevel('z')
		MultiIndex([(1, 3),
		            (2, 4)],
		           names=['x', 'y'])
		
		>>> mi.droplevel(['x', 'y'])
		Int64Index([5, 6], dtype='int64', name='z')
	**/
	public function droplevel(?level:Dynamic):Dynamic;
	/**
		Return Index without NA/NaN values.
		
		Parameters
		----------
		how : {'any', 'all'}, default 'any'
		    If the Index is a MultiIndex, drop the value when any or all levels
		    are NaN.
		
		Returns
		-------
		Index
	**/
	public function dropna(?how:Dynamic):Dynamic;
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
		Indicate duplicate index values.
		
		Duplicated values are indicated as ``True`` values in the resulting
		array. Either all duplicates, all except the first, or all except the
		last occurrence of duplicates can be indicated.
		
		Parameters
		----------
		keep : {'first', 'last', False}, default 'first'
		    The value or values in a set of duplicates to mark as missing.
		
		    - 'first' : Mark duplicates as ``True`` except for the first
		      occurrence.
		    - 'last' : Mark duplicates as ``True`` except for the last
		      occurrence.
		    - ``False`` : Mark all duplicates as ``True``.
		
		Returns
		-------
		np.ndarray[bool]
		
		See Also
		--------
		Series.duplicated : Equivalent method on pandas.Series.
		DataFrame.duplicated : Equivalent method on pandas.DataFrame.
		Index.drop_duplicates : Remove duplicate values from Index.
		
		Examples
		--------
		By default, for each set of duplicated values, the first occurrence is
		set to False and all others to True:
		
		>>> idx = pd.Index(['lama', 'cow', 'lama', 'beetle', 'lama'])
		>>> idx.duplicated()
		array([False, False,  True, False,  True])
		
		which is equivalent to
		
		>>> idx.duplicated(keep='first')
		array([False, False,  True, False,  True])
		
		By using 'last', the last occurrence of each set of duplicated values
		is set on False and all others on True:
		
		>>> idx.duplicated(keep='last')
		array([ True, False,  True, False, False])
		
		By setting keep on ``False``, all duplicates are True:
		
		>>> idx.duplicated(keep=False)
		array([ True, False,  True, False,  True])
	**/
	public function duplicated(?keep:Dynamic):Dynamic;
	public var empty : Dynamic;
	/**
		Determines if two Index objects contain the same elements.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Encode the object as an enumerated type or categorical variable.
		
		This method is useful for obtaining a numeric representation of an
		array when all that matters is identifying distinct values. `factorize`
		is available as both a top-level function :func:`pandas.factorize`,
		and as a method :meth:`Series.factorize` and :meth:`Index.factorize`.
		
		Parameters
		----------
		sort : bool, default False
		    Sort `uniques` and shuffle `codes` to maintain the
		    relationship.
		
		na_sentinel : int or None, default -1
		    Value to mark "not found". If None, will not drop the NaN
		    from the uniques of the values.
		
		    .. versionchanged:: 1.1.2
		
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
	public function factorize(?sort:Dynamic, ?na_sentinel:Dynamic):numpy.Ndarray;
	/**
		Fill NA/NaN values with the specified value.
		
		Parameters
		----------
		value : scalar
		    Scalar value to use to fill holes (e.g. 0).
		    This value cannot be a list-likes.
		downcast : dict, default is None
		    A dict of item->dtype of what to downcast if possible,
		    or the string 'infer' which will try to downcast to an appropriate
		    equal type (e.g. float64 to int64 if possible).
		
		Returns
		-------
		Index
		
		See Also
		--------
		DataFrame.fillna : Fill NaN values of a DataFrame.
		Series.fillna : Fill NaN Values of a Series.
	**/
	public function fillna(?value:Dynamic, ?downcast:Dynamic):Dynamic;
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
		      times.
		
		nonexistent : 'shift_forward', 'shift_backward', 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Notes
		-----
		If the timestamps have a timezone, flooring will take place relative to the
		local ("wall") time and re-localized to the same timezone. When flooring
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
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
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> rng_tz = pd.DatetimeIndex(["2021-10-31 03:30:00"], tz="Europe/Amsterdam")
		
		>>> rng_tz.floor("2H", ambiguous=False)
		DatetimeIndex(['2021-10-31 02:00:00+01:00'],
		             dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
		
		>>> rng_tz.floor("2H", ambiguous=True)
		DatetimeIndex(['2021-10-31 02:00:00+02:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
	**/
	public function floor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Render a string representation of the Index.
	**/
	public function format(?name:Dynamic, ?formatter:Dynamic, ?na_rep:Dynamic, ?date_format:Dynamic):Dynamic;
	/**
		Return the frequency object if it is set, otherwise None.
	**/
	public var freq : Dynamic;
	/**
		Return the frequency object as a string if its set, otherwise None.
	**/
	public var freqstr : Dynamic;
	/**
		Compute indexer and mask for new index given the current index. The
		indexer should be then used as an input to ndarray.take to align the
		current data to the new index.
		
		Parameters
		----------
		target : Index
		method : {None, 'pad'/'ffill', 'backfill'/'bfill', 'nearest'}, optional
		    * default: exact matches only.
		    * pad / ffill: find the PREVIOUS index value if no exact match.
		    * backfill / bfill: use NEXT index value if no exact match
		    * nearest: use the NEAREST index value if no exact match. Tied
		      distances are broken by preferring the larger index value.
		limit : int, optional
		    Maximum number of consecutive labels in ``target`` to match for
		    inexact matches.
		tolerance : optional
		    Maximum distance between original and new labels for inexact
		    matches. The values of the index at the matching locations must
		    satisfy the equation ``abs(index[indexer] - target) <= tolerance``.
		
		    Tolerance may be a scalar value, which applies the same tolerance
		    to all values, or list-like, which applies variable tolerance per
		    element. List-like includes list, tuple, array, Series, and must be
		    the same size as the index and its dtype must exactly match the
		    index's type.
		
		Returns
		-------
		indexer : np.ndarray[np.intp]
		    Integers from 0 to n - 1 indicating that the index at these
		    positions matches the corresponding target values. Missing values
		    in the target are marked by -1.
		
		Notes
		-----
		Returns -1 for unmatched values, for further explanation see the
		example below.
		
		Examples
		--------
		>>> index = pd.Index(['c', 'a', 'b'])
		>>> index.get_indexer(['a', 'b', 'x'])
		array([ 1,  2, -1])
		
		Notice that the return value is an array of locations in ``index``
		and ``x`` is marked by -1, as it is not in ``index``.
	**/
	public function get_indexer(target:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Guaranteed return of an indexer even when non-unique.
		
		This dispatches to get_indexer or get_indexer_non_unique
		as appropriate.
		
		Returns
		-------
		np.ndarray[np.intp]
		    List of indices.
		
		Examples
		--------
		>>> idx = pd.Index([np.nan, 'var1', np.nan])
		>>> idx.get_indexer_for([np.nan])
		array([0, 2])
	**/
	public function get_indexer_for(target:Dynamic):Dynamic;
	/**
		Compute indexer and mask for new index given the current index. The
		indexer should be then used as an input to ndarray.take to align the
		current data to the new index.
		
		Parameters
		----------
		target : Index
		
		Returns
		-------
		indexer : np.ndarray[np.intp]
		    Integers from 0 to n - 1 indicating that the index at these
		    positions matches the corresponding target values. Missing values
		    in the target are marked by -1.
		missing : np.ndarray[np.intp]
		    An indexer into the target of the values not found.
		    These correspond to the -1 in the indexer array.
	**/
	public function get_indexer_non_unique(target:Dynamic):Dynamic;
	/**
		Return an Index of values for requested level.
		
		This is primarily useful to get an individual level of values from a
		MultiIndex, but is provided on Index as well for compatibility.
		
		Parameters
		----------
		level : int or str
		    It is either the integer position or the name of the level.
		
		Returns
		-------
		Index
		    Calling object, as there is only one level in the Index.
		
		See Also
		--------
		MultiIndex.get_level_values : Get values for a level of a MultiIndex.
		
		Notes
		-----
		For Index, level should be 0, since there are no multiple levels.
		
		Examples
		--------
		>>> idx = pd.Index(list('abc'))
		>>> idx
		Index(['a', 'b', 'c'], dtype='object')
		
		Get level values by supplying `level` as integer:
		
		>>> idx.get_level_values(0)
		Index(['a', 'b', 'c'], dtype='object')
	**/
	public function get_level_values(level:Dynamic):Dynamic;
	/**
		Get integer location for requested label
		
		Returns
		-------
		loc : int
	**/
	public function get_loc(key:Dynamic, ?method:Dynamic, ?tolerance:Dynamic):Int;
	/**
		Calculate slice bound that corresponds to given label.
		
		Returns leftmost (one-past-the-rightmost if ``side=='right'``) position
		of given label.
		
		Parameters
		----------
		label : object
		side : {'left', 'right'}
		kind : {'loc', 'getitem'} or None
		
		    .. deprecated:: 1.4.0
		
		Returns
		-------
		int
		    Index of label.
	**/
	public function get_slice_bound(label:Dynamic, side:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Fast lookup of value from 1-dimensional ndarray.
		
		Only use this if you know what you're doing.
		
		Returns
		-------
		scalar or Series
	**/
	public function get_value(series:Dynamic, key:Dynamic):Dynamic;
	/**
		Group the index labels by a given array of values.
		
		Parameters
		----------
		values : array
		    Values used to determine the groups.
		
		Returns
		-------
		dict
		    {group name -> group labels}
	**/
	public function groupby(values:Dynamic):Dynamic;
	/**
		Check if the Index has duplicate values.
		
		Returns
		-------
		bool
		    Whether or not the Index has duplicate values.
		
		Examples
		--------
		>>> idx = pd.Index([1, 5, 7, 7])
		>>> idx.has_duplicates
		True
		
		>>> idx = pd.Index([1, 5, 7])
		>>> idx.has_duplicates
		False
		
		>>> idx = pd.Index(["Watermelon", "Orange", "Apple",
		...                 "Watermelon"]).astype("category")
		>>> idx.has_duplicates
		True
		
		>>> idx = pd.Index(["Orange", "Apple",
		...                 "Watermelon"]).astype("category")
		>>> idx.has_duplicates
		False
	**/
	public var has_duplicates : Dynamic;
	/**
		return if I have any nans; enables various perf speedups
	**/
	public var hasnans : Dynamic;
	/**
		Whether the type is an integer type.
	**/
	public function holds_integer():Dynamic;
	/**
		The hours of the datetime.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="h")
		... )
		>>> datetime_series
		0   2000-01-01 00:00:00
		1   2000-01-01 01:00:00
		2   2000-01-01 02:00:00
		dtype: datetime64[ns]
		>>> datetime_series.dt.hour
		0    0
		1    1
		2    2
		dtype: int64
	**/
	public var hour : Dynamic;
	/**
		Similar to equals, but checks that object attributes and types are also equal.
		
		Returns
		-------
		bool
		    If two Index objects have equal elements and same type True,
		    otherwise False.
	**/
	public function identical(other:Dynamic):Dynamic;
	/**
		Return index locations of values at particular time of day
		(e.g. 9:30AM).
		
		Parameters
		----------
		time : datetime.time or str
		    Time passed in either as object (datetime.time) or as string in
		    appropriate format ("%H:%M", "%H%M", "%I:%M%p", "%I%M%p",
		    "%H:%M:%S", "%H%M%S", "%I:%M:%S%p", "%I%M%S%p").
		
		Returns
		-------
		np.ndarray[np.intp]
		
		See Also
		--------
		indexer_between_time : Get index locations of values between particular
		    times of day.
		DataFrame.at_time : Select values at particular time of day.
	**/
	public function indexer_at_time(time:Dynamic, ?asof:Dynamic):Dynamic;
	/**
		Return index locations of values between particular times of day
		(e.g., 9:00-9:30AM).
		
		Parameters
		----------
		start_time, end_time : datetime.time, str
		    Time passed either as object (datetime.time) or as string in
		    appropriate format ("%H:%M", "%H%M", "%I:%M%p", "%I%M%p",
		    "%H:%M:%S", "%H%M%S", "%I:%M:%S%p","%I%M%S%p").
		include_start : bool, default True
		include_end : bool, default True
		
		Returns
		-------
		np.ndarray[np.intp]
		
		See Also
		--------
		indexer_at_time : Get index locations of values at particular time of day.
		DataFrame.between_time : Select values between particular times of day.
	**/
	public function indexer_between_time(start_time:Dynamic, end_time:Dynamic, ?include_start:Dynamic, ?include_end:Dynamic):Dynamic;
	/**
		Tries to return a string representing a frequency guess,
		generated by infer_freq.  Returns None if it can't autodetect the
		frequency.
	**/
	public var inferred_freq : Dynamic;
	/**
		Return a string of the type inferred from the values.
	**/
	public var inferred_type : Dynamic;
	/**
		Make new Index inserting new item at location.
		
		Follows Python numpy.insert semantics for negative values.
		
		Parameters
		----------
		loc : int
		item : object
		
		Returns
		-------
		new_index : Index
	**/
	public function insert(loc:Dynamic, item:Dynamic):Dynamic;
	/**
		Form the intersection of two Index objects.
		
		This returns a new Index with elements common to the index and `other`.
		
		Parameters
		----------
		other : Index or array-like
		sort : False or None, default False
		    Whether to sort the resulting index.
		
		    * False : do not sort the result.
		    * None : sort the result, except when `self` and `other` are equal
		      or when the values cannot be compared.
		
		Returns
		-------
		intersection : Index
		
		Examples
		--------
		>>> idx1 = pd.Index([1, 2, 3, 4])
		>>> idx2 = pd.Index([3, 4, 5, 6])
		>>> idx1.intersection(idx2)
		Int64Index([3, 4], dtype='int64')
	**/
	public function intersection(other:Dynamic, ?sort:Dynamic):pandas.Index;
	/**
		More flexible, faster check like ``is`` but that works through views.
		
		Note: this is *not* the same as ``Index.identical()``, which checks
		that metadata is also the same.
		
		Parameters
		----------
		other : object
		    Other object to compare against.
		
		Returns
		-------
		bool
		    True if both have same underlying data, False otherwise.
		
		See Also
		--------
		Index.identical : Works like ``Index.is_`` but also checks metadata.
	**/
	public function is_(other:Dynamic):Dynamic;
	/**
		Whether or not the index values only consist of dates.
	**/
	public var is_all_dates : Dynamic;
	/**
		Check if the Index only consists of booleans.
		
		Returns
		-------
		bool
		    Whether or not the Index only consists of booleans.
		
		See Also
		--------
		is_integer : Check if the Index only consists of integers.
		is_floating : Check if the Index is a floating type.
		is_numeric : Check if the Index only consists of numeric data.
		is_object : Check if the Index is of the object dtype.
		is_categorical : Check if the Index holds categorical data.
		is_interval : Check if the Index holds Interval objects.
		is_mixed : Check if the Index holds data with mixed data types.
		
		Examples
		--------
		>>> idx = pd.Index([True, False, True])
		>>> idx.is_boolean()
		True
		
		>>> idx = pd.Index(["True", "False", "True"])
		>>> idx.is_boolean()
		False
		
		>>> idx = pd.Index([True, False, "True"])
		>>> idx.is_boolean()
		False
	**/
	public function is_boolean():Dynamic;
	/**
		Check if the Index holds categorical data.
		
		Returns
		-------
		bool
		    True if the Index is categorical.
		
		See Also
		--------
		CategoricalIndex : Index for categorical data.
		is_boolean : Check if the Index only consists of booleans.
		is_integer : Check if the Index only consists of integers.
		is_floating : Check if the Index is a floating type.
		is_numeric : Check if the Index only consists of numeric data.
		is_object : Check if the Index is of the object dtype.
		is_interval : Check if the Index holds Interval objects.
		is_mixed : Check if the Index holds data with mixed data types.
		
		Examples
		--------
		>>> idx = pd.Index(["Watermelon", "Orange", "Apple",
		...                 "Watermelon"]).astype("category")
		>>> idx.is_categorical()
		True
		
		>>> idx = pd.Index([1, 3, 5, 7])
		>>> idx.is_categorical()
		False
		
		>>> s = pd.Series(["Peter", "Victor", "Elisabeth", "Mar"])
		>>> s
		0        Peter
		1       Victor
		2    Elisabeth
		3          Mar
		dtype: object
		>>> s.index.is_categorical()
		False
	**/
	public function is_categorical():Dynamic;
	/**
		Check if the Index is a floating type.
		
		The Index may consist of only floats, NaNs, or a mix of floats,
		integers, or NaNs.
		
		Returns
		-------
		bool
		    Whether or not the Index only consists of only consists of floats, NaNs, or
		    a mix of floats, integers, or NaNs.
		
		See Also
		--------
		is_boolean : Check if the Index only consists of booleans.
		is_integer : Check if the Index only consists of integers.
		is_numeric : Check if the Index only consists of numeric data.
		is_object : Check if the Index is of the object dtype.
		is_categorical : Check if the Index holds categorical data.
		is_interval : Check if the Index holds Interval objects.
		is_mixed : Check if the Index holds data with mixed data types.
		
		Examples
		--------
		>>> idx = pd.Index([1.0, 2.0, 3.0, 4.0])
		>>> idx.is_floating()
		True
		
		>>> idx = pd.Index([1.0, 2.0, np.nan, 4.0])
		>>> idx.is_floating()
		True
		
		>>> idx = pd.Index([1, 2, 3, 4, np.nan])
		>>> idx.is_floating()
		True
		
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx.is_floating()
		False
	**/
	public function is_floating():Dynamic;
	/**
		Check if the Index only consists of integers.
		
		Returns
		-------
		bool
		    Whether or not the Index only consists of integers.
		
		See Also
		--------
		is_boolean : Check if the Index only consists of booleans.
		is_floating : Check if the Index is a floating type.
		is_numeric : Check if the Index only consists of numeric data.
		is_object : Check if the Index is of the object dtype.
		is_categorical : Check if the Index holds categorical data.
		is_interval : Check if the Index holds Interval objects.
		is_mixed : Check if the Index holds data with mixed data types.
		
		Examples
		--------
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx.is_integer()
		True
		
		>>> idx = pd.Index([1.0, 2.0, 3.0, 4.0])
		>>> idx.is_integer()
		False
		
		>>> idx = pd.Index(["Apple", "Mango", "Watermelon"])
		>>> idx.is_integer()
		False
	**/
	public function is_integer():Dynamic;
	/**
		Check if the Index holds Interval objects.
		
		Returns
		-------
		bool
		    Whether or not the Index holds Interval objects.
		
		See Also
		--------
		IntervalIndex : Index for Interval objects.
		is_boolean : Check if the Index only consists of booleans.
		is_integer : Check if the Index only consists of integers.
		is_floating : Check if the Index is a floating type.
		is_numeric : Check if the Index only consists of numeric data.
		is_object : Check if the Index is of the object dtype.
		is_categorical : Check if the Index holds categorical data.
		is_mixed : Check if the Index holds data with mixed data types.
		
		Examples
		--------
		>>> idx = pd.Index([pd.Interval(left=0, right=5),
		...                 pd.Interval(left=5, right=10)])
		>>> idx.is_interval()
		True
		
		>>> idx = pd.Index([1, 3, 5, 7])
		>>> idx.is_interval()
		False
	**/
	public function is_interval():Dynamic;
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
		array([ True, False, False])
		
		>>> dates_series = pd.Series(idx)
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
		Check if the Index holds data with mixed data types.
		
		Returns
		-------
		bool
		    Whether or not the Index holds data with mixed data types.
		
		See Also
		--------
		is_boolean : Check if the Index only consists of booleans.
		is_integer : Check if the Index only consists of integers.
		is_floating : Check if the Index is a floating type.
		is_numeric : Check if the Index only consists of numeric data.
		is_object : Check if the Index is of the object dtype.
		is_categorical : Check if the Index holds categorical data.
		is_interval : Check if the Index holds Interval objects.
		
		Examples
		--------
		>>> idx = pd.Index(['a', np.nan, 'b'])
		>>> idx.is_mixed()
		True
		
		>>> idx = pd.Index([1.0, 2.0, 3.0, 5.0])
		>>> idx.is_mixed()
		False
	**/
	public function is_mixed():Dynamic;
	/**
		Alias for is_monotonic_increasing.
	**/
	public var is_monotonic : Dynamic;
	/**
		Return if the index is monotonic decreasing (only equal or
		decreasing) values.
		
		Examples
		--------
		>>> Index([3, 2, 1]).is_monotonic_decreasing
		True
		>>> Index([3, 2, 2]).is_monotonic_decreasing
		True
		>>> Index([3, 1, 2]).is_monotonic_decreasing
		False
	**/
	public var is_monotonic_decreasing : Dynamic;
	/**
		Return if the index is monotonic increasing (only equal or
		increasing) values.
		
		Examples
		--------
		>>> Index([1, 2, 3]).is_monotonic_increasing
		True
		>>> Index([1, 2, 2]).is_monotonic_increasing
		True
		>>> Index([1, 3, 2]).is_monotonic_increasing
		False
	**/
	public var is_monotonic_increasing : Dynamic;
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
		Check if the Index only consists of numeric data.
		
		Returns
		-------
		bool
		    Whether or not the Index only consists of numeric data.
		
		See Also
		--------
		is_boolean : Check if the Index only consists of booleans.
		is_integer : Check if the Index only consists of integers.
		is_floating : Check if the Index is a floating type.
		is_object : Check if the Index is of the object dtype.
		is_categorical : Check if the Index holds categorical data.
		is_interval : Check if the Index holds Interval objects.
		is_mixed : Check if the Index holds data with mixed data types.
		
		Examples
		--------
		>>> idx = pd.Index([1.0, 2.0, 3.0, 4.0])
		>>> idx.is_numeric()
		True
		
		>>> idx = pd.Index([1, 2, 3, 4.0])
		>>> idx.is_numeric()
		True
		
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx.is_numeric()
		True
		
		>>> idx = pd.Index([1, 2, 3, 4.0, np.nan])
		>>> idx.is_numeric()
		True
		
		>>> idx = pd.Index([1, 2, 3, 4.0, np.nan, "Apple"])
		>>> idx.is_numeric()
		False
	**/
	public function is_numeric():Dynamic;
	/**
		Check if the Index is of the object dtype.
		
		Returns
		-------
		bool
		    Whether or not the Index is of the object dtype.
		
		See Also
		--------
		is_boolean : Check if the Index only consists of booleans.
		is_integer : Check if the Index only consists of integers.
		is_floating : Check if the Index is a floating type.
		is_numeric : Check if the Index only consists of numeric data.
		is_categorical : Check if the Index holds categorical data.
		is_interval : Check if the Index holds Interval objects.
		is_mixed : Check if the Index holds data with mixed data types.
		
		Examples
		--------
		>>> idx = pd.Index(["Apple", "Mango", "Watermelon"])
		>>> idx.is_object()
		True
		
		>>> idx = pd.Index(["Apple", "Mango", 2.0])
		>>> idx.is_object()
		True
		
		>>> idx = pd.Index(["Watermelon", "Orange", "Apple",
		...                 "Watermelon"]).astype("category")
		>>> idx.is_object()
		False
		
		>>> idx = pd.Index([1.0, 2.0, 3.0, 4.0])
		>>> idx.is_object()
		False
	**/
	public function is_object():Dynamic;
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
		Whether the index type is compatible with the provided type.
	**/
	public function is_type_compatible(kind:Dynamic):Dynamic;
	/**
		Return if the index has unique values.
	**/
	public var is_unique : Dynamic;
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
		Return a boolean array where the index values are in `values`.
		
		Compute boolean array of whether each index value is found in the
		passed set of values. The length of the returned boolean array matches
		the length of the index.
		
		Parameters
		----------
		values : set or list-like
		    Sought values.
		level : str or int, optional
		    Name or position of the index level to use (if the index is a
		    `MultiIndex`).
		
		Returns
		-------
		np.ndarray[bool]
		    NumPy array of boolean values.
		
		See Also
		--------
		Series.isin : Same for Series.
		DataFrame.isin : Same method for DataFrames.
		
		Notes
		-----
		In the case of `MultiIndex` you must either specify `values` as a
		list-like object containing tuples that are the same length as the
		number of levels, or specify `level`. Otherwise it will raise a
		``ValueError``.
		
		If `level` is specified:
		
		- if it is the name of one *and only one* index level, use that level;
		- otherwise it should be a number indicating level position.
		
		Examples
		--------
		>>> idx = pd.Index([1,2,3])
		>>> idx
		Int64Index([1, 2, 3], dtype='int64')
		
		Check whether each index value in a list of values.
		
		>>> idx.isin([1, 4])
		array([ True, False, False])
		
		>>> midx = pd.MultiIndex.from_arrays([[1,2,3],
		...                                  ['red', 'blue', 'green']],
		...                                  names=('number', 'color'))
		>>> midx
		MultiIndex([(1,   'red'),
		            (2,  'blue'),
		            (3, 'green')],
		           names=['number', 'color'])
		
		Check whether the strings in the 'color' level of the MultiIndex
		are in a list of colors.
		
		>>> midx.isin(['red', 'orange', 'yellow'], level='color')
		array([ True, False, False])
		
		To check across the levels of a MultiIndex, pass a list of tuples:
		
		>>> midx.isin([(1, 'red'), (3, 'red')])
		array([ True, False, False])
		
		For a DatetimeIndex, string values in `values` are converted to
		Timestamps.
		
		>>> dates = ['2000-03-11', '2000-03-12', '2000-03-13']
		>>> dti = pd.to_datetime(dates)
		>>> dti
		DatetimeIndex(['2000-03-11', '2000-03-12', '2000-03-13'],
		dtype='datetime64[ns]', freq=None)
		
		>>> dti.isin(['2000-03-11'])
		array([ True, False, False])
	**/
	public function isin(values:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Detect missing values.
		
		Return a boolean same-sized object indicating if the values are NA.
		NA values, such as ``None``, :attr:`numpy.NaN` or :attr:`pd.NaT`, get
		mapped to ``True`` values.
		Everything else get mapped to ``False`` values. Characters such as
		empty strings `''` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		
		Returns
		-------
		numpy.ndarray[bool]
		    A boolean array of whether my values are NA.
		
		See Also
		--------
		Index.notna : Boolean inverse of isna.
		Index.dropna : Omit entries with missing values.
		isna : Top-level isna.
		Series.isna : Detect missing values in Series object.
		
		Examples
		--------
		Show which entries in a pandas.Index are NA. The result is an
		array.
		
		>>> idx = pd.Index([5.2, 6.0, np.NaN])
		>>> idx
		Float64Index([5.2, 6.0, nan], dtype='float64')
		>>> idx.isna()
		array([False, False,  True])
		
		Empty strings are not considered NA values. None is considered an NA
		value.
		
		>>> idx = pd.Index(['black', '', 'red', None])
		>>> idx
		Index(['black', '', 'red', None], dtype='object')
		>>> idx.isna()
		array([False, False, False,  True])
		
		For datetimes, `NaT` (Not a Time) is considered as an NA value.
		
		>>> idx = pd.DatetimeIndex([pd.Timestamp('1940-04-25'),
		...                         pd.Timestamp(''), None, pd.NaT])
		>>> idx
		DatetimeIndex(['1940-04-25', 'NaT', 'NaT', 'NaT'],
		              dtype='datetime64[ns]', freq=None)
		>>> idx.isna()
		array([False,  True,  True,  True])
	**/
	public function isna():Dynamic;
	/**
		Detect missing values.
		
		Return a boolean same-sized object indicating if the values are NA.
		NA values, such as ``None``, :attr:`numpy.NaN` or :attr:`pd.NaT`, get
		mapped to ``True`` values.
		Everything else get mapped to ``False`` values. Characters such as
		empty strings `''` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		
		Returns
		-------
		numpy.ndarray[bool]
		    A boolean array of whether my values are NA.
		
		See Also
		--------
		Index.notna : Boolean inverse of isna.
		Index.dropna : Omit entries with missing values.
		isna : Top-level isna.
		Series.isna : Detect missing values in Series object.
		
		Examples
		--------
		Show which entries in a pandas.Index are NA. The result is an
		array.
		
		>>> idx = pd.Index([5.2, 6.0, np.NaN])
		>>> idx
		Float64Index([5.2, 6.0, nan], dtype='float64')
		>>> idx.isna()
		array([False, False,  True])
		
		Empty strings are not considered NA values. None is considered an NA
		value.
		
		>>> idx = pd.Index(['black', '', 'red', None])
		>>> idx
		Index(['black', '', 'red', None], dtype='object')
		>>> idx.isna()
		array([False, False, False,  True])
		
		For datetimes, `NaT` (Not a Time) is considered as an NA value.
		
		>>> idx = pd.DatetimeIndex([pd.Timestamp('1940-04-25'),
		...                         pd.Timestamp(''), None, pd.NaT])
		>>> idx
		DatetimeIndex(['1940-04-25', 'NaT', 'NaT', 'NaT'],
		              dtype='datetime64[ns]', freq=None)
		>>> idx.isna()
		array([False,  True,  True,  True])
	**/
	public function isnull():Dynamic;
	/**
		Returns a DataFrame with the year, week, and day calculated according to
		the ISO 8601 standard.
		
		.. versionadded:: 1.1.0
		
		Returns
		-------
		DataFrame
		    with columns year, week and day
		
		See Also
		--------
		Timestamp.isocalendar : Function return a 3-tuple containing ISO year,
		    week number, and weekday for the given Timestamp object.
		datetime.date.isocalendar : Return a named tuple object with
		    three components: year, week and weekday.
		
		Examples
		--------
		>>> idx = pd.date_range(start='2019-12-29', freq='D', periods=4)
		>>> idx.isocalendar()
		            year  week  day
		2019-12-29  2019    52    7
		2019-12-30  2020     1    1
		2019-12-31  2020     1    2
		2020-01-01  2020     1    3
		>>> idx.isocalendar().week
		2019-12-29    52
		2019-12-30     1
		2019-12-31     1
		2020-01-01     1
		Freq: D, Name: week, dtype: UInt32
	**/
	public function isocalendar():Dynamic;
	/**
		Return the first element of the underlying data as a Python scalar.
		
		Returns
		-------
		scalar
		    The first element of %(klass)s.
		
		Raises
		------
		ValueError
		    If the data is not length-1.
	**/
	public function item():Dynamic;
	/**
		Compute join_index and indexers to conform data
		structures to the new index.
		
		Parameters
		----------
		other : Index
		how : {'left', 'right', 'inner', 'outer'}
		level : int or level name, default None
		return_indexers : bool, default False
		sort : bool, default False
		    Sort the join keys lexicographically in the result Index. If False,
		    the order of the join keys depends on the join type (how keyword).
		
		Returns
		-------
		join_index, (left_indexer, right_indexer)
	**/
	public function join(other:Dynamic, ?how:Dynamic, ?level:Dynamic, ?return_indexers:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Map values using an input mapping or function.
		
		Parameters
		----------
		mapper : function, dict, or Series
		    Mapping correspondence.
		na_action : {None, 'ignore'}
		    If 'ignore', propagate NA values, without passing them to the
		    mapping correspondence.
		
		Returns
		-------
		applied : Union[Index, MultiIndex], inferred
		    The output of the mapping function applied to the index.
		    If the function returns a tuple with more than one element
		    a MultiIndex will be returned.
	**/
	public function map(mapper:Dynamic, ?na_action:Dynamic):Dynamic;
	/**
		Return the maximum value of the Index.
		
		Parameters
		----------
		axis : int, optional
		    For compatibility with NumPy. Only 0 or None are allowed.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		scalar
		    Maximum value.
		
		See Also
		--------
		Index.min : Return the minimum value in an Index.
		Series.max : Return the maximum value in a Series.
		DataFrame.max : Return the maximum values in a DataFrame.
		
		Examples
		--------
		>>> idx = pd.Index([3, 2, 1])
		>>> idx.max()
		3
		
		>>> idx = pd.Index(['c', 'b', 'a'])
		>>> idx.max()
		'c'
		
		For a MultiIndex, the maximum is determined lexicographically.
		
		>>> idx = pd.MultiIndex.from_product([('a', 'b'), (2, 1)])
		>>> idx.max()
		('b', 2)
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function mean(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Memory usage of the values.
		
		Parameters
		----------
		deep : bool, default False
		    Introspect the data deeply, interrogate
		    `object` dtypes for system-level memory consumption.
		
		Returns
		-------
		bytes used
		
		See Also
		--------
		numpy.ndarray.nbytes : Total bytes consumed by the elements of the
		    array.
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array if deep=False or if used on PyPy
	**/
	public function memory_usage(?deep:Dynamic):Dynamic;
	/**
		The microseconds of the datetime.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="us")
		... )
		>>> datetime_series
		0   2000-01-01 00:00:00.000000
		1   2000-01-01 00:00:00.000001
		2   2000-01-01 00:00:00.000002
		dtype: datetime64[ns]
		>>> datetime_series.dt.microsecond
		0       0
		1       1
		2       2
		dtype: int64
	**/
	public var microsecond : Dynamic;
	/**
		Return the minimum value of the Index.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		scalar
		    Minimum value.
		
		See Also
		--------
		Index.max : Return the maximum value of the object.
		Series.min : Return the minimum value in a Series.
		DataFrame.min : Return the minimum values in a DataFrame.
		
		Examples
		--------
		>>> idx = pd.Index([3, 2, 1])
		>>> idx.min()
		1
		
		>>> idx = pd.Index(['c', 'b', 'a'])
		>>> idx.min()
		'a'
		
		For a MultiIndex, the minimum is determined lexicographically.
		
		>>> idx = pd.MultiIndex.from_product([('a', 'b'), (2, 1)])
		>>> idx.min()
		('a', 1)
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The minutes of the datetime.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="T")
		... )
		>>> datetime_series
		0   2000-01-01 00:00:00
		1   2000-01-01 00:01:00
		2   2000-01-01 00:02:00
		dtype: datetime64[ns]
		>>> datetime_series.dt.minute
		0    0
		1    1
		2    2
		dtype: int64
	**/
	public var minute : Dynamic;
	/**
		The month as January=1, December=12.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="M")
		... )
		>>> datetime_series
		0   2000-01-31
		1   2000-02-29
		2   2000-03-31
		dtype: datetime64[ns]
		>>> datetime_series.dt.month
		0    1
		1    2
		2    3
		dtype: int64
	**/
	public var month : Dynamic;
	/**
		Return the month names of the DateTimeIndex with specified locale.
		
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
	public function month_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return Index or MultiIndex name.
	**/
	public var name : Dynamic;
	public var names : Dynamic;
	/**
		The nanoseconds of the datetime.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="ns")
		... )
		>>> datetime_series
		0   2000-01-01 00:00:00.000000000
		1   2000-01-01 00:00:00.000000001
		2   2000-01-01 00:00:00.000000002
		dtype: datetime64[ns]
		>>> datetime_series.dt.nanosecond
		0       0
		1       1
		2       2
		dtype: int64
	**/
	public var nanosecond : Dynamic;
	/**
		Return the number of bytes in the underlying data.
	**/
	public var nbytes : Dynamic;
	/**
		Number of dimensions of the underlying data, by definition 1.
	**/
	public var ndim : Dynamic;
	/**
		Number of levels.
	**/
	public var nlevels : Dynamic;
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
	public function normalize(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Detect existing (non-missing) values.
		
		Return a boolean same-sized object indicating if the values are not NA.
		Non-missing values get mapped to ``True``. Characters such as empty
		strings ``''`` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		NA values, such as None or :attr:`numpy.NaN`, get mapped to ``False``
		values.
		
		Returns
		-------
		numpy.ndarray[bool]
		    Boolean array to indicate which entries are not NA.
		
		See Also
		--------
		Index.notnull : Alias of notna.
		Index.isna: Inverse of notna.
		notna : Top-level notna.
		
		Examples
		--------
		Show which entries in an Index are not NA. The result is an
		array.
		
		>>> idx = pd.Index([5.2, 6.0, np.NaN])
		>>> idx
		Float64Index([5.2, 6.0, nan], dtype='float64')
		>>> idx.notna()
		array([ True,  True, False])
		
		Empty strings are not considered NA values. None is considered a NA
		value.
		
		>>> idx = pd.Index(['black', '', 'red', None])
		>>> idx
		Index(['black', '', 'red', None], dtype='object')
		>>> idx.notna()
		array([ True,  True,  True, False])
	**/
	public function notna():Dynamic;
	/**
		Detect existing (non-missing) values.
		
		Return a boolean same-sized object indicating if the values are not NA.
		Non-missing values get mapped to ``True``. Characters such as empty
		strings ``''`` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		NA values, such as None or :attr:`numpy.NaN`, get mapped to ``False``
		values.
		
		Returns
		-------
		numpy.ndarray[bool]
		    Boolean array to indicate which entries are not NA.
		
		See Also
		--------
		Index.notnull : Alias of notna.
		Index.isna: Inverse of notna.
		notna : Top-level notna.
		
		Examples
		--------
		Show which entries in an Index are not NA. The result is an
		array.
		
		>>> idx = pd.Index([5.2, 6.0, np.NaN])
		>>> idx
		Float64Index([5.2, 6.0, nan], dtype='float64')
		>>> idx.notna()
		array([ True,  True, False])
		
		Empty strings are not considered NA values. None is considered a NA
		value.
		
		>>> idx = pd.Index(['black', '', 'red', None])
		>>> idx
		Index(['black', '', 'red', None], dtype='object')
		>>> idx.notna()
		array([ True,  True,  True, False])
	**/
	public function notnull():Dynamic;
	/**
		Return number of unique elements in the object.
		
		Excludes NA values by default.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't include NaN in the count.
		
		Returns
		-------
		int
		
		See Also
		--------
		DataFrame.nunique: Method nunique for DataFrame.
		Series.count: Count non-NA/null observations in the Series.
		
		Examples
		--------
		>>> s = pd.Series([1, 3, 5, 7, 7])
		>>> s
		0    1
		1    3
		2    5
		3    7
		4    7
		dtype: int64
		
		>>> s.nunique()
		4
	**/
	public function nunique(?dropna:Dynamic):Dynamic;
	/**
		Return a new Index of the values set with the mask.
		
		Returns
		-------
		Index
		
		See Also
		--------
		numpy.ndarray.putmask : Changes elements of an array
		    based on conditional and input values.
	**/
	public function putmask(mask:Dynamic, value:Dynamic):Dynamic;
	/**
		The quarter of the date.
	**/
	public var quarter : Dynamic;
	/**
		Return an ndarray of the flattened values of the underlying data.
		
		Returns
		-------
		numpy.ndarray
		    Flattened array.
		
		See Also
		--------
		numpy.ndarray.ravel : Return a flattened array.
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		Create index with target's values.
		
		Parameters
		----------
		target : an iterable
		method : {None, 'pad'/'ffill', 'backfill'/'bfill', 'nearest'}, optional
		    * default: exact matches only.
		    * pad / ffill: find the PREVIOUS index value if no exact match.
		    * backfill / bfill: use NEXT index value if no exact match
		    * nearest: use the NEAREST index value if no exact match. Tied
		      distances are broken by preferring the larger index value.
		level : int, optional
		    Level of multiindex.
		limit : int, optional
		    Maximum number of consecutive labels in ``target`` to match for
		    inexact matches.
		tolerance : int or float, optional
		    Maximum distance between original and new labels for inexact
		    matches. The values of the index at the matching locations must
		    satisfy the equation ``abs(index[indexer] - target) <= tolerance``.
		
		    Tolerance may be a scalar value, which applies the same tolerance
		    to all values, or list-like, which applies variable tolerance per
		    element. List-like includes list, tuple, array, Series, and must be
		    the same size as the index and its dtype must exactly match the
		    index's type.
		
		Returns
		-------
		new_index : pd.Index
		    Resulting index.
		indexer : np.ndarray[np.intp] or None
		    Indices of output values in original index.
		
		Raises
		------
		TypeError
		    If ``method`` passed along with ``level``.
		ValueError
		    If non-unique multi-index
		ValueError
		    If non-unique index and ``method`` or ``limit`` passed.
		
		See Also
		--------
		Series.reindex
		DataFrame.reindex
		
		Examples
		--------
		>>> idx = pd.Index(['car', 'bike', 'train', 'tractor'])
		>>> idx
		Index(['car', 'bike', 'train', 'tractor'], dtype='object')
		>>> idx.reindex(['car', 'bike'])
		(Index(['car', 'bike'], dtype='object'), array([0, 1]))
	**/
	public function reindex(target:Dynamic, ?method:Dynamic, ?level:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):pandas.Index;
	/**
		Alter Index or MultiIndex name.
		
		Able to set new names without level. Defaults to returning new index.
		Length of names must match number of levels in MultiIndex.
		
		Parameters
		----------
		name : label or list of labels
		    Name(s) to set.
		inplace : bool, default False
		    Modifies the object directly, instead of creating a new Index or
		    MultiIndex.
		
		Returns
		-------
		Index or None
		    The same type as the caller or None if ``inplace=True``.
		
		See Also
		--------
		Index.set_names : Able to set new names partially and by level.
		
		Examples
		--------
		>>> idx = pd.Index(['A', 'C', 'A', 'B'], name='score')
		>>> idx.rename('grade')
		Index(['A', 'C', 'A', 'B'], dtype='object', name='grade')
		
		>>> idx = pd.MultiIndex.from_product([['python', 'cobra'],
		...                                   [2018, 2019]],
		...                                   names=['kind', 'year'])
		>>> idx
		MultiIndex([('python', 2018),
		            ('python', 2019),
		            ( 'cobra', 2018),
		            ( 'cobra', 2019)],
		           names=['kind', 'year'])
		>>> idx.rename(['species', 'year'])
		MultiIndex([('python', 2018),
		            ('python', 2019),
		            ( 'cobra', 2018),
		            ( 'cobra', 2019)],
		           names=['species', 'year'])
		>>> idx.rename('species')
		Traceback (most recent call last):
		TypeError: Must pass list-like as `names`.
	**/
	public function rename(name:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Repeat elements of a Index.
		
		Returns a new Index where each element of the current Index
		is repeated consecutively a given number of times.
		
		Parameters
		----------
		repeats : int or array of ints
		    The number of repetitions for each element. This should be a
		    non-negative integer. Repeating 0 times will return an empty
		    Index.
		axis : None
		    Must be ``None``. Has no effect but is accepted for compatibility
		    with numpy.
		
		Returns
		-------
		repeated_index : Index
		    Newly created Index with repeated elements.
		
		See Also
		--------
		Series.repeat : Equivalent function for Series.
		numpy.repeat : Similar method for :class:`numpy.ndarray`.
		
		Examples
		--------
		>>> idx = pd.Index(['a', 'b', 'c'])
		>>> idx
		Index(['a', 'b', 'c'], dtype='object')
		>>> idx.repeat(2)
		Index(['a', 'a', 'b', 'b', 'c', 'c'], dtype='object')
		>>> idx.repeat([1, 2, 3])
		Index(['a', 'b', 'b', 'c', 'c', 'c'], dtype='object')
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):pandas.Index;
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
		      times.
		
		nonexistent : 'shift_forward', 'shift_backward', 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		DatetimeIndex, TimedeltaIndex, or Series
		    Index of the same type for a DatetimeIndex or TimedeltaIndex,
		    or a Series with the same index for a Series.
		
		Raises
		------
		ValueError if the `freq` cannot be converted.
		
		Notes
		-----
		If the timestamps have a timezone, rounding will take place relative to the
		local ("wall") time and re-localized to the same timezone. When rounding
		near daylight savings time, use ``nonexistent`` and ``ambiguous`` to
		control the re-localization behavior.
		
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
		
		When rounding near a daylight savings time transition, use ``ambiguous`` or
		``nonexistent`` to control how the timestamp should be re-localized.
		
		>>> rng_tz = pd.DatetimeIndex(["2021-10-31 03:30:00"], tz="Europe/Amsterdam")
		
		>>> rng_tz.floor("2H", ambiguous=False)
		DatetimeIndex(['2021-10-31 02:00:00+01:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
		
		>>> rng_tz.floor("2H", ambiguous=True)
		DatetimeIndex(['2021-10-31 02:00:00+02:00'],
		              dtype='datetime64[ns, Europe/Amsterdam]', freq=None)
	**/
	public function round(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted Index `self` such that, if the
		corresponding elements in `value` were inserted before the indices,
		the order of `self` would be preserved.
		
		.. note::
		
		    The Index *must* be monotonically sorted, otherwise
		    wrong locations will likely be returned. Pandas does *not*
		    check this for you.
		
		Parameters
		----------
		value : array-like or scalar
		    Values to insert into `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array-like, optional
		    Optional array of integer indices that sort `self` into ascending
		    order. They are typically the result of ``np.argsort``.
		
		Returns
		-------
		int or array of int
		    A scalar or array of insertion points with the
		    same shape as `value`.
		
		See Also
		--------
		sort_values : Sort by the values along either axis.
		numpy.searchsorted : Similar method from NumPy.
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		Examples
		--------
		>>> ser = pd.Series([1, 2, 3])
		>>> ser
		0    1
		1    2
		2    3
		dtype: int64
		
		>>> ser.searchsorted(4)
		3
		
		>>> ser.searchsorted([0, 4])
		array([0, 3])
		
		>>> ser.searchsorted([1, 3], side='left')
		array([0, 2])
		
		>>> ser.searchsorted([1, 3], side='right')
		array([1, 3])
		
		>>> ser = pd.Series(pd.to_datetime(['3/11/2000', '3/12/2000', '3/13/2000']))
		>>> ser
		0   2000-03-11
		1   2000-03-12
		2   2000-03-13
		dtype: datetime64[ns]
		
		>>> ser.searchsorted('3/14/2000')
		3
		
		>>> ser = pd.Categorical(
		...     ['apple', 'bread', 'bread', 'cheese', 'milk'], ordered=True
		... )
		>>> ser
		['apple', 'bread', 'bread', 'cheese', 'milk']
		Categories (4, object): ['apple' < 'bread' < 'cheese' < 'milk']
		
		>>> ser.searchsorted('bread')
		1
		
		>>> ser.searchsorted(['bread'], side='right')
		array([3])
		
		If the values are not monotonically sorted, wrong locations
		may be returned:
		
		>>> ser = pd.Series([2, 1, 3])
		>>> ser
		0    2
		1    1
		2    3
		dtype: int64
		
		>>> ser.searchsorted(1)  # doctest: +SKIP
		0  # wrong result, correct would be 1
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		The seconds of the datetime.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="s")
		... )
		>>> datetime_series
		0   2000-01-01 00:00:00
		1   2000-01-01 00:00:01
		2   2000-01-01 00:00:02
		dtype: datetime64[ns]
		>>> datetime_series.dt.second
		0    0
		1    1
		2    2
		dtype: int64
	**/
	public var second : Dynamic;
	/**
		Set Index or MultiIndex name.
		
		Able to set new names partially and by level.
		
		Parameters
		----------
		
		names : label or list of label or dict-like for MultiIndex
		    Name(s) to set.
		
		    .. versionchanged:: 1.3.0
		
		level : int, label or list of int or label, optional
		    If the index is a MultiIndex and names is not dict-like, level(s) to set
		    (None for all levels). Otherwise level must be None.
		
		    .. versionchanged:: 1.3.0
		
		inplace : bool, default False
		    Modifies the object directly, instead of creating a new Index or
		    MultiIndex.
		
		Returns
		-------
		Index or None
		    The same type as the caller or None if ``inplace=True``.
		
		See Also
		--------
		Index.rename : Able to set new names without level.
		
		Examples
		--------
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx
		Int64Index([1, 2, 3, 4], dtype='int64')
		>>> idx.set_names('quarter')
		Int64Index([1, 2, 3, 4], dtype='int64', name='quarter')
		
		>>> idx = pd.MultiIndex.from_product([['python', 'cobra'],
		...                                   [2018, 2019]])
		>>> idx
		MultiIndex([('python', 2018),
		            ('python', 2019),
		            ( 'cobra', 2018),
		            ( 'cobra', 2019)],
		           )
		>>> idx.set_names(['kind', 'year'], inplace=True)
		>>> idx
		MultiIndex([('python', 2018),
		            ('python', 2019),
		            ( 'cobra', 2018),
		            ( 'cobra', 2019)],
		           names=['kind', 'year'])
		>>> idx.set_names('species', level=0)
		MultiIndex([('python', 2018),
		            ('python', 2019),
		            ( 'cobra', 2018),
		            ( 'cobra', 2019)],
		           names=['species', 'year'])
		
		When renaming levels with a dict, levels can not be passed.
		
		>>> idx.set_names({'kind': 'snake'})
		MultiIndex([('python', 2018),
		            ('python', 2019),
		            ( 'cobra', 2018),
		            ( 'cobra', 2019)],
		           names=['snake', 'year'])
	**/
	public function set_names(names:Dynamic, ?level:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Fast lookup of value from 1-dimensional ndarray.
		
		.. deprecated:: 1.0
		
		Notes
		-----
		Only use this if you know what you're doing.
	**/
	public function set_value(arr:Dynamic, key:Dynamic, value:Dynamic):Dynamic;
	/**
		Return a tuple of the shape of the underlying data.
	**/
	public var shape : Dynamic;
	/**
		Shift index by desired number of time frequency increments.
		
		This method is for shifting the values of datetime-like indexes
		by a specified time increment a given number of times.
		
		Parameters
		----------
		periods : int, default 1
		    Number of periods (or increments) to shift by,
		    can be positive or negative.
		freq : pandas.DateOffset, pandas.Timedelta or string, optional
		    Frequency increment to shift by.
		    If None, the index is shifted by its own `freq` attribute.
		    Offset aliases are valid strings, e.g., 'D', 'W', 'M' etc.
		
		Returns
		-------
		pandas.DatetimeIndex
		    Shifted index.
		
		See Also
		--------
		Index.shift : Shift values of Index.
		PeriodIndex.shift : Shift values of PeriodIndex.
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Return the number of elements in the underlying data.
	**/
	public var size : Dynamic;
	/**
		Return indexer for specified label slice.
		Index.slice_indexer, customized to handle time slicing.
		
		In addition to functionality provided by Index.slice_indexer, does the
		following:
		
		- if both `start` and `end` are instances of `datetime.time`, it
		  invokes `indexer_between_time`
		- if `start` and `end` are both either string or None perform
		  value-based selection in non-monotonic cases.
	**/
	public function slice_indexer(?start:Dynamic, ?end:Dynamic, ?step:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Compute slice locations for input labels.
		
		Parameters
		----------
		start : label, default None
		    If None, defaults to the beginning.
		end : label, default None
		    If None, defaults to the end.
		step : int, defaults None
		    If None, defaults to 1.
		kind : {'loc', 'getitem'} or None
		
		    .. deprecated:: 1.4.0
		
		Returns
		-------
		start, end : int
		
		See Also
		--------
		Index.get_loc : Get location for a single label.
		
		Notes
		-----
		This method only works if the index is monotonic or unique.
		
		Examples
		--------
		>>> idx = pd.Index(list('abcd'))
		>>> idx.slice_locs(start='b', end='c')
		(1, 3)
	**/
	public function slice_locs(?start:Dynamic, ?end:Dynamic, ?step:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Snap time stamps to nearest occurring frequency.
		
		Returns
		-------
		DatetimeIndex
	**/
	public function snap(?freq:Dynamic):Dynamic;
	/**
		Use sort_values instead.
	**/
	public function sort(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a sorted copy of the index.
		
		Return a sorted copy of the index, and optionally return the indices
		that sorted the index itself.
		
		Parameters
		----------
		return_indexer : bool, default False
		    Should the indices that would sort the index be returned.
		ascending : bool, default True
		    Should the index values be sorted in an ascending order.
		na_position : {'first' or 'last'}, default 'last'
		    Argument 'first' puts NaNs at the beginning, 'last' puts NaNs at
		    the end.
		
		    .. versionadded:: 1.2.0
		
		key : callable, optional
		    If not None, apply the key function to the index values
		    before sorting. This is similar to the `key` argument in the
		    builtin :meth:`sorted` function, with the notable difference that
		    this `key` function should be *vectorized*. It should expect an
		    ``Index`` and return an ``Index`` of the same shape.
		
		    .. versionadded:: 1.1.0
		
		Returns
		-------
		sorted_index : pandas.Index
		    Sorted copy of the index.
		indexer : numpy.ndarray, optional
		    The indices that the index itself was sorted by.
		
		See Also
		--------
		Series.sort_values : Sort values of a Series.
		DataFrame.sort_values : Sort values in a DataFrame.
		
		Examples
		--------
		>>> idx = pd.Index([10, 100, 1, 1000])
		>>> idx
		Int64Index([10, 100, 1, 1000], dtype='int64')
		
		Sort values in ascending order (default behavior).
		
		>>> idx.sort_values()
		Int64Index([1, 10, 100, 1000], dtype='int64')
		
		Sort values in descending order, and also get the indices `idx` was
		sorted by.
		
		>>> idx.sort_values(ascending=False, return_indexer=True)
		(Int64Index([1000, 100, 10, 1], dtype='int64'), array([3, 1, 0, 2]))
	**/
	public function sort_values(?return_indexer:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic, ?key:Dynamic):Dynamic;
	/**
		For internal compatibility with the Index API.
		
		Sort the Index. This is for compat with MultiIndex
		
		Parameters
		----------
		ascending : bool, default True
		    False to sort in descending order
		
		level, sort_remaining are compat parameters
		
		Returns
		-------
		Index
	**/
	public function sortlevel(?level:Dynamic, ?ascending:Dynamic, ?sort_remaining:Dynamic):Dynamic;
	/**
		Return sample standard deviation over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : int optional, default None
		    Axis for the function to be applied on.
		ddof : int, default 1
		    Degrees of Freedom. The divisor used in calculations is N - ddof,
		    where N represents the number of elements.
		skipna : bool, default True
		    Exclude NA/null values. If an entire row/column is NA, the result will be
		    NA.
		
		Returns
		-------
		Timedelta
	**/
	public function std(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Vectorized string functions for Series and Index.
		
		NAs stay NA unless handled otherwise by a particular method.
		Patterned after Python's string methods, with some inspiration from
		R's stringr package.
		
		Examples
		--------
		>>> s = pd.Series(["A_Str_Series"])
		>>> s
		0    A_Str_Series
		dtype: object
		
		>>> s.str.split("_")
		0    [A, Str, Series]
		dtype: object
		
		>>> s.str.replace("_", "")
		0    AStrSeries
		dtype: object
	**/
	static public function str(data:Dynamic):Dynamic;
	/**
		Convert to Index using specified date_format.
		
		Return an Index of formatted strings specified by date_format, which
		supports the same string format as the python standard library. Details
		of the string format can be found in `python string format
		doc <https://docs.python.org/3/library/datetime.html#strftime-and-strptime-behavior>`__.
		
		Parameters
		----------
		date_format : str
		    Date format string (e.g. "%Y-%m-%d").
		
		Returns
		-------
		ndarray[object]
		    NumPy ndarray of formatted strings.
		
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
	public function strftime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the symmetric difference of two Index objects.
		
		Parameters
		----------
		other : Index or array-like
		result_name : str
		sort : False or None, default None
		    Whether to sort the resulting index. By default, the
		    values are attempted to be sorted, but any TypeError from
		    incomparable elements is caught by pandas.
		
		    * None : Attempt to sort the result, but catch any TypeErrors
		      from comparing incomparable elements.
		    * False : Do not sort the result.
		
		Returns
		-------
		symmetric_difference : Index
		
		Notes
		-----
		``symmetric_difference`` contains elements that appear in either
		``idx1`` or ``idx2`` but not both. Equivalent to the Index created by
		``idx1.difference(idx2) | idx2.difference(idx1)`` with duplicates
		dropped.
		
		Examples
		--------
		>>> idx1 = pd.Index([1, 2, 3, 4])
		>>> idx2 = pd.Index([2, 3, 4, 5])
		>>> idx1.symmetric_difference(idx2)
		Int64Index([1, 5], dtype='int64')
	**/
	public function symmetric_difference(other:Dynamic, ?result_name:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Return a new Index of the values selected by the indices.
		
		For internal compatibility with numpy arrays.
		
		Parameters
		----------
		indices : array-like
		    Indices to be taken.
		axis : int, optional
		    The axis over which to select values, always 0.
		allow_fill : bool, default True
		fill_value : scalar, default None
		    If allow_fill=True and fill_value is not None, indices specified by
		    -1 are regarded as NA. If Index doesn't hold NA, raise ValueError.
		
		Returns
		-------
		Index
		    An index formed of elements at the given indices. Will be the same
		    type as self, except for RangeIndex.
		
		See Also
		--------
		numpy.ndarray.take: Return an array formed from the
		    elements of a at the given indices.
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns numpy array of :class:`datetime.time` objects.
		
		The time part of the Timestamps.
	**/
	public var time : Dynamic;
	/**
		Returns numpy array of :class:`datetime.time` objects with timezone
		information.
		
		The time part of the Timestamps.
	**/
	public var timetz : Dynamic;
	/**
		Identity method.
		
		This is implemented for compatibility with subclass implementations
		when chaining.
		
		Returns
		-------
		pd.Index
		    Caller.
		
		See Also
		--------
		MultiIndex.to_flat_index : Subclass implementation.
	**/
	public function to_flat_index():Dynamic;
	/**
		Create a DataFrame with a column containing the Index.
		
		Parameters
		----------
		index : bool, default True
		    Set the index of the returned DataFrame as the original Index.
		
		name : object, default None
		    The passed name should substitute for the index name (if it has
		    one).
		
		Returns
		-------
		DataFrame
		    DataFrame containing the original Index data.
		
		See Also
		--------
		Index.to_series : Convert an Index to a Series.
		Series.to_frame : Convert Series to DataFrame.
		
		Examples
		--------
		>>> idx = pd.Index(['Ant', 'Bear', 'Cow'], name='animal')
		>>> idx.to_frame()
		       animal
		animal
		Ant       Ant
		Bear     Bear
		Cow       Cow
		
		By default, the original Index is reused. To enforce a new Index:
		
		>>> idx.to_frame(index=False)
		    animal
		0   Ant
		1  Bear
		2   Cow
		
		To override the name of the resulting column, specify `name`:
		
		>>> idx.to_frame(index=False, name='zoo')
		    zoo
		0   Ant
		1  Bear
		2   Cow
	**/
	public function to_frame(?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert Datetime Array to float64 ndarray of Julian Dates.
		0 Julian date is noon January 1, 4713 BC.
		https://en.wikipedia.org/wiki/Julian_day
	**/
	public function to_julian_date():Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		list
		
		See Also
		--------
		numpy.ndarray.tolist : Return the array as an a.ndim-levels deep
		    nested list of Python scalars.
	**/
	public function to_list():Dynamic;
	/**
		Format specified values of `self` and return them.
		
		.. deprecated:: 1.2.0
		
		Parameters
		----------
		slicer : int, array-like
		    An indexer into `self` that specifies which values
		    are used in the formatting process.
		kwargs : dict
		    Options for specifying how the values should be formatted.
		    These options include the following:
		
		    1) na_rep : str
		        The value that serves as a placeholder for NULL values
		    2) quoting : bool or None
		        Whether or not there are quoted values in `self`
		    3) date_format : str
		        The format used to represent date-like values.
		
		Returns
		-------
		numpy.ndarray
		    Formatted values.
	**/
	public function to_native_types(?slicer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A NumPy ndarray representing the values in this Series or Index.
		
		Parameters
		----------
		dtype : str or numpy.dtype, optional
		    The dtype to pass to :meth:`numpy.asarray`.
		copy : bool, default False
		    Whether to ensure that the returned value is not a view on
		    another array. Note that ``copy=False`` does not *ensure* that
		    ``to_numpy()`` is no-copy. Rather, ``copy=True`` ensure that
		    a copy is made, even if not strictly necessary.
		na_value : Any, optional
		    The value to use for missing values. The default value depends
		    on `dtype` and the type of the array.
		
		    .. versionadded:: 1.0.0
		
		**kwargs
		    Additional keywords passed through to the ``to_numpy`` method
		    of the underlying array (for extension arrays).
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		numpy.ndarray
		
		See Also
		--------
		Series.array : Get the actual data stored within.
		Index.array : Get the actual data stored within.
		DataFrame.to_numpy : Similar method for DataFrame.
		
		Notes
		-----
		The returned array will be the same up to equality (values equal
		in `self` will be equal in the returned array; likewise for values
		that are not equal). When `self` contains an ExtensionArray, the
		dtype may be different. For example, for a category-dtype Series,
		``to_numpy()`` will return a NumPy array and the categorical dtype
		will be lost.
		
		For NumPy dtypes, this will be a reference to the actual data stored
		in this Series or Index (assuming ``copy=False``). Modifying the result
		in place will modify the data stored in the Series or Index (not that
		we recommend doing that).
		
		For extension types, ``to_numpy()`` *may* require copying data and
		coercing the result to a NumPy type (possibly object), which may be
		expensive. When you need a no-copy reference to the underlying data,
		:attr:`Series.array` should be used instead.
		
		This table lays out the different dtypes and default return types of
		``to_numpy()`` for various dtypes within pandas.
		
		================== ================================
		dtype              array type
		================== ================================
		category[T]        ndarray[T] (same dtype as input)
		period             ndarray[object] (Periods)
		interval           ndarray[object] (Intervals)
		IntegerNA          ndarray[object]
		datetime64[ns]     datetime64[ns]
		datetime64[ns, tz] ndarray[object] (Timestamps)
		================== ================================
		
		Examples
		--------
		>>> ser = pd.Series(pd.Categorical(['a', 'b', 'a']))
		>>> ser.to_numpy()
		array(['a', 'b', 'a'], dtype=object)
		
		Specify the `dtype` to control how datetime-aware data is represented.
		Use ``dtype=object`` to return an ndarray of pandas :class:`Timestamp`
		objects, each with the correct ``tz``.
		
		>>> ser = pd.Series(pd.date_range('2000', periods=2, tz="CET"))
		>>> ser.to_numpy(dtype=object)
		array([Timestamp('2000-01-01 00:00:00+0100', tz='CET'),
		       Timestamp('2000-01-02 00:00:00+0100', tz='CET')],
		      dtype=object)
		
		Or ``dtype='datetime64[ns]'`` to return an ndarray of native
		datetime64 values. The values are converted to UTC and the timezone
		info is dropped.
		
		>>> ser.to_numpy(dtype="datetime64[ns]")
		... # doctest: +ELLIPSIS
		array(['1999-12-31T23:00:00.000000000', '2000-01-01T23:00:00...'],
		      dtype='datetime64[ns]')
	**/
	public function to_numpy(?dtype:Dynamic, ?copy:Dynamic, ?na_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cast to PeriodArray/Index at a particular frequency.
		
		Converts DatetimeArray/Index to PeriodArray/Index.
		
		Parameters
		----------
		freq : str or Offset, optional
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
		>>> df = pd.DataFrame({"y": [1, 2, 3]},
		...                   index=pd.to_datetime(["2000-03-31 00:00:00",
		...                                         "2000-05-31 00:00:00",
		...                                         "2000-08-31 00:00:00"]))
		>>> df.index.to_period("M")
		PeriodIndex(['2000-03', '2000-05', '2000-08'],
		            dtype='period[M]')
		
		Infer the daily frequency
		
		>>> idx = pd.date_range("2017-01-01", periods=2)
		>>> idx.to_period()
		PeriodIndex(['2017-01-01', '2017-01-02'],
		            dtype='period[D]')
	**/
	public function to_period(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate TimedeltaArray of difference between index
		values and index converted to PeriodArray at specified
		freq. Used for vectorized offsets.
		
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
		objects.
		
		Returns
		-------
		datetimes : ndarray[object]
	**/
	public function to_pydatetime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a Series with both index and values equal to the index keys
		useful with map for returning an indexer based on an index.
		
		Parameters
		----------
		keep_tz : optional, defaults True
		    Return the data keeping the timezone.
		
		    If keep_tz is True:
		
		      If the timezone is not set, the resulting
		      Series will have a datetime64[ns] dtype.
		
		      Otherwise the Series will have an datetime64[ns, tz] dtype; the
		      tz will be preserved.
		
		    If keep_tz is False:
		
		      Series will have a datetime64[ns] dtype. TZ aware
		      objects will have the tz removed.
		
		    .. versionchanged:: 1.0.0
		        The default value is now True.  In a future version,
		        this keyword will be removed entirely.  Stop passing the
		        argument to obtain the future behavior and silence the warning.
		
		index : Index, optional
		    Index of resulting Series. If None, defaults to original index.
		name : str, optional
		    Name of resulting Series. If None, defaults to name of original
		    index.
		
		Returns
		-------
		Series
	**/
	public function to_series(?keep_tz:Dynamic, ?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		list
		
		See Also
		--------
		numpy.ndarray.tolist : Return the array as an a.ndim-levels deep
		    nested list of Python scalars.
	**/
	public function tolist():Dynamic;
	/**
		Return the transpose, which is by definition self.
		
		Returns
		-------
		%(klass)s
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the timezone.
		
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
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time. Corresponding timestamps would be converted
		    to this time zone of the Datetime Array/Index. A `tz` of None will
		    convert to UTC and remove the timezone information.
		
		Returns
		-------
		Array or Index
		
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
		
		>>> dti = pd.date_range(start='2014-08-01 09:00', freq='H',
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
		
		This method can also be used to do the inverse -- to create a time
		zone unaware object from an aware object. To that end, pass `tz=None`.
		
		Parameters
		----------
		tz : str, pytz.timezone, dateutil.tz.tzfile or None
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
		      times.
		
		nonexistent : 'shift_forward', 'shift_backward, 'NaT', timedelta, default 'raise'
		    A nonexistent time does not exist in a particular timezone
		    where clocks moved forward due to DST.
		
		    - 'shift_forward' will shift the nonexistent time forward to the
		      closest existing time
		    - 'shift_backward' will shift the nonexistent time backward to the
		      closest existing time
		    - 'NaT' will return NaT where there are nonexistent times
		    - timedelta objects will shift nonexistent times by the timedelta
		    - 'raise' will raise an NonExistentTimeError if there are
		      nonexistent times.
		
		Returns
		-------
		Same type as self
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
		              dtype='datetime64[ns, US/Eastern]', freq=None)
		
		With the ``tz=None``, we can remove the time zone information
		while keeping the local time (not converted to UTC):
		
		>>> tz_aware.tz_localize(None)
		DatetimeIndex(['2018-03-01 09:00:00', '2018-03-02 09:00:00',
		               '2018-03-03 09:00:00'],
		              dtype='datetime64[ns]', freq=None)
		
		Be careful with DST changes. When there is sequential data, pandas can
		infer the DST time:
		
		>>> s = pd.to_datetime(pd.Series(['2018-10-28 01:30:00',
		...                               '2018-10-28 02:00:00',
		...                               '2018-10-28 02:30:00',
		...                               '2018-10-28 02:00:00',
		...                               '2018-10-28 02:30:00',
		...                               '2018-10-28 03:00:00',
		...                               '2018-10-28 03:30:00']))
		>>> s.dt.tz_localize('CET', ambiguous='infer')
		0   2018-10-28 01:30:00+02:00
		1   2018-10-28 02:00:00+02:00
		2   2018-10-28 02:30:00+02:00
		3   2018-10-28 02:00:00+01:00
		4   2018-10-28 02:30:00+01:00
		5   2018-10-28 03:00:00+01:00
		6   2018-10-28 03:30:00+01:00
		dtype: datetime64[ns, CET]
		
		In some cases, inferring the DST is impossible. In such cases, you can
		pass an ndarray to the ambiguous parameter to set the DST explicitly
		
		>>> s = pd.to_datetime(pd.Series(['2018-10-28 01:20:00',
		...                               '2018-10-28 02:36:00',
		...                               '2018-10-28 03:46:00']))
		>>> s.dt.tz_localize('CET', ambiguous=np.array([True, True, False]))
		0   2018-10-28 01:20:00+02:00
		1   2018-10-28 02:36:00+02:00
		2   2018-10-28 03:46:00+01:00
		dtype: datetime64[ns, CET]
		
		If the DST transition causes nonexistent times, you can shift these
		dates forward or backwards with a timedelta object or `'shift_forward'`
		or `'shift_backwards'`.
		
		>>> s = pd.to_datetime(pd.Series(['2015-03-29 02:30:00',
		...                               '2015-03-29 03:30:00']))
		>>> s.dt.tz_localize('Europe/Warsaw', nonexistent='shift_forward')
		0   2015-03-29 03:00:00+02:00
		1   2015-03-29 03:30:00+02:00
		dtype: datetime64[ns, Europe/Warsaw]
		
		>>> s.dt.tz_localize('Europe/Warsaw', nonexistent='shift_backward')
		0   2015-03-29 01:59:59.999999999+01:00
		1   2015-03-29 03:30:00+02:00
		dtype: datetime64[ns, Europe/Warsaw]
		
		>>> s.dt.tz_localize('Europe/Warsaw', nonexistent=pd.Timedelta('1H'))
		0   2015-03-29 03:30:00+02:00
		1   2015-03-29 03:30:00+02:00
		dtype: datetime64[ns, Europe/Warsaw]
	**/
	public function tz_localize(tz:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic):Dynamic;
	/**
		Alias for tz attribute
	**/
	public var tzinfo : Dynamic;
	/**
		Form the union of two Index objects.
		
		If the Index objects are incompatible, both Index objects will be
		cast to dtype('object') first.
		
		    .. versionchanged:: 0.25.0
		
		Parameters
		----------
		other : Index or array-like
		sort : bool or None, default None
		    Whether to sort the resulting Index.
		
		    * None : Sort the result, except when
		
		      1. `self` and `other` are equal.
		      2. `self` or `other` has length 0.
		      3. Some values in `self` or `other` cannot be compared.
		         A RuntimeWarning is issued in this case.
		
		    * False : do not sort the result.
		
		Returns
		-------
		union : Index
		
		Examples
		--------
		Union matching dtypes
		
		>>> idx1 = pd.Index([1, 2, 3, 4])
		>>> idx2 = pd.Index([3, 4, 5, 6])
		>>> idx1.union(idx2)
		Int64Index([1, 2, 3, 4, 5, 6], dtype='int64')
		
		Union mismatched dtypes
		
		>>> idx1 = pd.Index(['a', 'b', 'c', 'd'])
		>>> idx2 = pd.Index([1, 2, 3, 4])
		>>> idx1.union(idx2)
		Index(['a', 'b', 'c', 'd', 1, 2, 3, 4], dtype='object')
		
		MultiIndex case
		
		>>> idx1 = pd.MultiIndex.from_arrays(
		...     [[1, 1, 2, 2], ["Red", "Blue", "Red", "Blue"]]
		... )
		>>> idx1
		MultiIndex([(1,  'Red'),
		    (1, 'Blue'),
		    (2,  'Red'),
		    (2, 'Blue')],
		   )
		>>> idx2 = pd.MultiIndex.from_arrays(
		...     [[3, 3, 2, 2], ["Red", "Green", "Red", "Green"]]
		... )
		>>> idx2
		MultiIndex([(3,   'Red'),
		    (3, 'Green'),
		    (2,   'Red'),
		    (2, 'Green')],
		   )
		>>> idx1.union(idx2)
		MultiIndex([(1,  'Blue'),
		    (1,   'Red'),
		    (2,  'Blue'),
		    (2, 'Green'),
		    (2,   'Red'),
		    (3, 'Green'),
		    (3,   'Red')],
		   )
		>>> idx1.union(idx2, sort=False)
		MultiIndex([(1,   'Red'),
		    (1,  'Blue'),
		    (2,   'Red'),
		    (2,  'Blue'),
		    (3,   'Red'),
		    (3, 'Green'),
		    (2, 'Green')],
		   )
	**/
	public function union(other:Dynamic, ?sort:Dynamic):pandas.Index;
	/**
		A bit of a hack to accelerate unioning a collection of indexes.
	**/
	public function union_many(others:Dynamic):Dynamic;
	/**
		Return unique values in the index.
		
		Unique values are returned in order of appearance, this does NOT sort.
		
		Parameters
		----------
		level : int or hashable, optional
		    Only return values from specified level (for MultiIndex).
		    If int, gets the level by integer position, else by level name.
		
		Returns
		-------
		Index
		
		See Also
		--------
		unique : Numpy array of unique values in that column.
		Series.unique : Return unique values of Series object.
	**/
	public function unique(?level:Dynamic):Dynamic;
	/**
		Return a Series containing counts of unique values.
		
		The resulting object will be in descending order so that the
		first element is the most frequently-occurring element.
		Excludes NA values by default.
		
		Parameters
		----------
		normalize : bool, default False
		    If True then the object returned will contain the relative
		    frequencies of the unique values.
		sort : bool, default True
		    Sort by frequencies.
		ascending : bool, default False
		    Sort in ascending order.
		bins : int, optional
		    Rather than count values, group them into half-open bins,
		    a convenience for ``pd.cut``, only works with numeric data.
		dropna : bool, default True
		    Don't include counts of NaN.
		
		Returns
		-------
		Series
		
		See Also
		--------
		Series.count: Number of non-NA elements in a Series.
		DataFrame.count: Number of non-NA elements in a DataFrame.
		DataFrame.value_counts: Equivalent method on DataFrames.
		
		Examples
		--------
		>>> index = pd.Index([3, 1, 2, 3, 4, np.nan])
		>>> index.value_counts()
		3.0    2
		1.0    1
		2.0    1
		4.0    1
		dtype: int64
		
		With `normalize` set to `True`, returns the relative frequency by
		dividing all values by the sum of values.
		
		>>> s = pd.Series([3, 1, 2, 3, 4, np.nan])
		>>> s.value_counts(normalize=True)
		3.0    0.4
		1.0    0.2
		2.0    0.2
		4.0    0.2
		dtype: float64
		
		**bins**
		
		Bins can be useful for going from a continuous variable to a
		categorical variable; instead of counting unique
		apparitions of values, divide the index in the specified
		number of half-open bins.
		
		>>> s.value_counts(bins=3)
		(0.996, 2.0]    2
		(2.0, 3.0]      2
		(3.0, 4.0]      1
		dtype: int64
		
		**dropna**
		
		With `dropna` set to `False` we can also see NaN index values.
		
		>>> s.value_counts(dropna=False)
		3.0    2
		1.0    1
		2.0    1
		4.0    1
		NaN    1
		dtype: int64
	**/
	public function value_counts(?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Return an array representing the data in the Index.
		
		.. warning::
		
		   We recommend using :attr:`Index.array` or
		   :meth:`Index.to_numpy`, depending on whether you need
		   a reference to the underlying data or a NumPy array.
		
		Returns
		-------
		array: numpy.ndarray or ExtensionArray
		
		See Also
		--------
		Index.array : Reference to the underlying data.
		Index.to_numpy : A NumPy array representing the underlying data.
	**/
	public var values : Dynamic;
	public function view(?cls:Dynamic):Dynamic;
	/**
		The week ordinal of the year.
		
		.. deprecated:: 1.1.0
		
		weekofyear and week have been deprecated.
		Please use DatetimeIndex.isocalendar().week instead.
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
		The week ordinal of the year.
		
		.. deprecated:: 1.1.0
		
		weekofyear and week have been deprecated.
		Please use DatetimeIndex.isocalendar().week instead.
	**/
	public var weekofyear : Dynamic;
	/**
		Replace values where the condition is False.
		
		The replacement is taken from other.
		
		Parameters
		----------
		cond : bool array-like with the same length as self
		    Condition to select the values on.
		other : scalar, or array-like, default None
		    Replacement if the condition is False.
		
		Returns
		-------
		pandas.Index
		    A copy of self with values replaced from other
		    where the condition is False.
		
		See Also
		--------
		Series.where : Same method for Series.
		DataFrame.where : Same method for DataFrame.
		
		Examples
		--------
		>>> idx = pd.Index(['car', 'bike', 'train', 'tractor'])
		>>> idx
		Index(['car', 'bike', 'train', 'tractor'], dtype='object')
		>>> idx.where(idx.isin(['car', 'train']), 'other')
		Index(['car', 'other', 'train', 'other'], dtype='object')
	**/
	public function where(cond:Dynamic, ?other:Dynamic):Dynamic;
	/**
		The year of the datetime.
		
		Examples
		--------
		>>> datetime_series = pd.Series(
		...     pd.date_range("2000-01-01", periods=3, freq="Y")
		... )
		>>> datetime_series
		0   2000-12-31
		1   2001-12-31
		2   2002-12-31
		dtype: datetime64[ns]
		>>> datetime_series.dt.year
		0    2000
		1    2001
		2    2002
		dtype: int64
	**/
	public var year : Dynamic;
}