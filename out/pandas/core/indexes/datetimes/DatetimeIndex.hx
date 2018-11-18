/* This file is generated, do not edit! */
package pandas.core.indexes.datetimes;
@:pythonImport("pandas.core.indexes.datetimes", "DatetimeIndex") extern class DatetimeIndex {
	/**
		return the transpose, which is by definition self
	**/
	public var T : Dynamic;
	public function __abs__(?other:Dynamic):Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	/**
		the array interface, return my values 
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Gets called after a ufunc
	**/
	public function __array_wrap__(result:Dynamic, ?context:Dynamic):Dynamic;
	public function __bool__():Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return a boolean if this key is IN the index
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		boolean
	**/
	public function __contains__(key:Dynamic):Dynamic;
	public function __copy__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __deepcopy__(?memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
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
	public function __inv__(?other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	/**
		Return an iterator over the boxed values
		
		Returns
		-------
		Timestamps : ndarray
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		return the length of the Index
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
	public function __neg__(?other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, ?data:Dynamic, ?freq:Dynamic, ?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?closed:Dynamic, ?ambiguous:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?name:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pos__(?other:Dynamic):Dynamic;
	public function __pow__(?other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(?other:Dynamic):Dynamic;
	public function __rmul__(?other:Dynamic):Dynamic;
	public function __rpow__(?other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(?other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Necessary for making this object picklable
	**/
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for this object.
		
		Invoked by unicode(df) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	static public var _accessors : Dynamic;
	/**
		add in comparison methods 
	**/
	static public function _add_comparison_methods():Dynamic;
	public function _add_datelike(other:Dynamic):Dynamic;
	/**
		add in the datetimelike methods (as we may have to override the
		superclass)
	**/
	static public function _add_datetimelike_methods():Dynamic;
	/**
		Add a timedelta-like, DateOffset, or TimedeltaIndex-like object
		to self.
		
		Parameters
		----------
		delta : {timedelta, np.timedelta64, DateOffset,
		         TimedelaIndex, ndarray[timedelta64]}
		
		Returns
		-------
		result : DatetimeIndex
		
		Notes
		-----
		The result's name is set outside of _add_delta by the calling
		method (__add__ or __sub__)
	**/
	public function _add_delta(delta:Dynamic):pandas.DatetimeIndex;
	/**
		Add a delta of a timedeltalike
		return the i8 result view
	**/
	public function _add_delta_td(other:Dynamic):Dynamic;
	/**
		Add a delta of a TimedeltaIndex
		return the i8 result view
	**/
	public function _add_delta_tdi(other:Dynamic):Dynamic;
	/**
		add in logical methods 
	**/
	static public function _add_logical_methods():Dynamic;
	/**
		add in logical methods to disable 
	**/
	static public function _add_logical_methods_disabled():Dynamic;
	/**
		Add pd.NaT to self
	**/
	public function _add_nat():Dynamic;
	static public function _add_numeric_methods():Dynamic;
	/**
		add in the numeric add/sub methods to disable 
	**/
	static public function _add_numeric_methods_add_sub_disabled():Dynamic;
	/**
		add in numeric methods 
	**/
	static public function _add_numeric_methods_binary():Dynamic;
	/**
		add in numeric methods to disable other than add/sub 
	**/
	static public function _add_numeric_methods_disabled():Dynamic;
	/**
		add in numeric unary methods 
	**/
	static public function _add_numeric_methods_unary():Dynamic;
	public function _add_offset(offset:Dynamic):Dynamic;
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
	/**
		Check value is valid for scalar op 
	**/
	public function _assert_can_do_op(value:Dynamic):Dynamic;
	public function _assert_can_do_setop(other:Dynamic):Dynamic;
	/**
		Ensure incoming data can be represented as ints.
	**/
	static public function _assert_safe_casting(data:Dynamic, subarr:Dynamic):Dynamic;
	/**
		Internal method to handle NA filling of take 
	**/
	public function _assert_take_fillable(values:Dynamic, indices:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?na_value:Dynamic):Dynamic;
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
	/**
		return object Index which contains boxed values
	**/
	public function _box_values_as_index():Dynamic;
	static public function _cached_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		*this is an internal non-public method*
		
		Check if we are allowing reindexing with this particular indexer
		
		Parameters
		----------
		indexer : an integer indexer
		
		Raises
		------
		ValueError if its a duplicate axis
	**/
	public function _can_reindex(indexer:Dynamic):Dynamic;
	static public var _ceil_example : Dynamic;
	public function _cleanup():Dynamic;
	/**
		we need to coerce a scalar to a compat for our index type
		
		Parameters
		----------
		item : scalar item to coerce
	**/
	public function _coerce_scalar_to_index(item:Dynamic):Dynamic;
	/**
		coerces data to ndarray, raises on scalar data. Converts other
		iterables to list first and then to array. Does not touch ndarrays.
	**/
	static public function _coerce_to_ndarray(data:Dynamic):Dynamic;
	static public var _comparables : Dynamic;
	public function _concat(to_concat:Dynamic, name:Dynamic):Dynamic;
	/**
		Concatenate to_concat which has the same class
	**/
	public function _concat_same_dtype(to_concat:Dynamic, name:Dynamic):Dynamic;
	public var _constructor : Dynamic;
	/**
		Convert an array-like indexer to the appropriate dtype.
		
		Parameters
		----------
		keyarr : array-like
		    Indexer to convert.
		
		Returns
		-------
		converted_keyarr : array-like
	**/
	public function _convert_arr_indexer(keyarr:Dynamic):Dynamic;
	public function _convert_can_do_setop(other:Dynamic):Dynamic;
	/**
		Convert value to be insertable to ndarray 
	**/
	public function _convert_for_op(value:Dynamic):Dynamic;
	/**
		Convert an Index indexer to the appropriate dtype.
		
		Parameters
		----------
		keyarr : Index (or sub-class)
		    Indexer to convert.
		
		Returns
		-------
		converted_keyarr : Index (or sub-class)
	**/
	public function _convert_index_indexer(keyarr:Dynamic):Dynamic;
	/**
		Convert a list-like indexer to the appropriate dtype.
		
		Parameters
		----------
		keyarr : Index (or sub-class)
		    Indexer to convert.
		kind : iloc, ix, loc, optional
		
		Returns
		-------
		positional indexer or None
	**/
	public function _convert_list_indexer(keyarr:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Parameters
		----------
		keyarr : list-like
		    Indexer to convert.
		
		Returns
		-------
		tuple (indexer, keyarr)
		    indexer is an ndarray or None if cannot convert
		    keyarr are tuple-safe keys
	**/
	public function _convert_listlike_indexer(keyarr:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		we don't allow integer or float indexing on datetime-like when using
		loc
		
		Parameters
		----------
		key : label of the slice bound
		kind : {'ix', 'loc', 'getitem', 'iloc'} or None
	**/
	public function _convert_scalar_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Convert a slice indexer.
		
		By definition, these are labels unless 'iloc' is passed in.
		Floats are not allowed as the start, step, or stop of the slice.
		
		Parameters
		----------
		key : label of the slice bound
		kind : {'ix', 'loc', 'getitem', 'iloc'} or None
	**/
	public function _convert_slice_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	public function _convert_tolerance(tolerance:Dynamic, target:Dynamic):Dynamic;
	static public var _data : Dynamic;
	static public var _datetimelike_methods : Dynamic;
	static public var _datetimelike_ops : Dynamic;
	/**
		.. versionadded:: 0.19.0
		
		Make a copy of self if data coincides (in memory) with orig.
		Subclasses should override this if self._base is not an ndarray.
		
		Parameters
		----------
		orig : ndarray
		    other ndarray to compare self._data against
		copy : boolean, default False
		    when False, do not run any check, just return self
		
		Returns
		-------
		A copy of self if needed, otherwise self : Index
	**/
	public function _deepcopy_if_needed(orig:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		64-bit integer. Character code 'l'. Python int compatible.
	**/
	public function _default_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _defer_to_indexing : Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add additional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	public var _engine : Dynamic;
	public function _engine_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ensure that we are re-localized
		
		This is for compat as we can then call this on all datetimelike
		indexes generally (ignored for Period/Timedelta)
		
		Parameters
		----------
		result : DatetimeIndex / i8 ndarray
		
		Returns
		-------
		localized DTI
	**/
	public function _ensure_localized(result:Dynamic):Dynamic;
	/**
		We have been called because a comparison between
		8 aware arrays. numpy >= 1.11 will
		now warn about NaT comparisons
	**/
	public function _evaluate_compare(other:Dynamic, op:Dynamic):Dynamic;
	public function _evaluate_with_datetime_like(other:Dynamic, op:Dynamic):Dynamic;
	public function _evaluate_with_timedelta_like(other:Dynamic, op:Dynamic):Dynamic;
	public function _fast_union(other:Dynamic):Dynamic;
	static public var _field_ops : Dynamic;
	public function _filter_indexer_tolerance(target:Dynamic, indexer:Dynamic, tolerance:Dynamic):Dynamic;
	static public var _floor_example : Dynamic;
	/**
		Return a list of tuples of the (attr,formatted_value)
	**/
	public function _format_attrs():Dynamic;
	/**
		Return the formatted data as a unicode string
	**/
	public function _format_data(?name:Dynamic):Dynamic;
	/**
		actually format my specific types 
	**/
	public function _format_native_types(?na_rep:Dynamic, ?date_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _format_space():Dynamic;
	public function _format_with_header(header:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the formatted data as a unicode string
	**/
	public var _formatter_func : Dynamic;
	static public var _freq : Dynamic;
	static public function _generate(start:Dynamic, end:Dynamic, periods:Dynamic, name:Dynamic, freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?ambiguous:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		return an attributes dict for my class 
	**/
	public function _get_attributes_dict():Dynamic;
	/**
		Given 2 indexes, give a consensus name meaning
		we take the not None one, or None if the names differ.
		Return a new object if we are resetting the name
	**/
	public function _get_consensus_name(other:Dynamic):Dynamic;
	public function _get_fill_indexer(target:Dynamic, method:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Fallback pad/backfill get_indexer that works for monotonic decreasing
		indexes and non-monotonic targets
	**/
	public function _get_fill_indexer_searchsorted(target:Dynamic, method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Get index grouper corresponding to an index level
		
		Parameters
		----------
		mapper: Group mapping function or None
		    Function mapping index values to groups
		level : int or None
		    Index level
		
		Returns
		-------
		grouper : Index
		    Index of values to group on
		labels : ndarray of int or None
		    Array of locations in level_index
		uniques : Index or None
		    Index of unique values for level
	**/
	public function _get_grouper_for_level(mapper:Dynamic, ?level:Dynamic):pandas.Index;
	public function _get_level_number(level:Dynamic):Dynamic;
	/**
		Return an Index of values for requested level, equal to the length
		of the index.
		
		Parameters
		----------
		level : int or str
		    ``level`` is either the integer position of the level in the
		    MultiIndex, or the name of the level.
		
		Returns
		-------
		values : Index
		    ``self``, as there is only one level in the Index.
		
		See also
		---------
		pandas.MultiIndex.get_level_values : get values for a level of a
		                                     MultiIndex
	**/
	public function _get_level_values(level:Dynamic):pandas.Index;
	/**
		This is overridden on subclasses (namely, IntervalIndex) to control
		get_slice_bound.
	**/
	public function _get_loc_only_exact_matches(key:Dynamic):Dynamic;
	public function _get_names():Dynamic;
	/**
		Get the indexer for the nearest index labels; requires an index with
		values that can be subtracted from each other (e.g., not strings or
		tuples).
	**/
	public function _get_nearest_indexer(target:Dynamic, limit:Dynamic, tolerance:Dynamic):Dynamic;
	public function _get_string_slice(key:Dynamic, ?use_lhs:Dynamic, ?use_rhs:Dynamic):Dynamic;
	public function _get_time_micros():Dynamic;
	/**
		Returns an index containing unique values.
		
		Parameters
		----------
		dropna : bool
		    If True, NaN values are dropped.
		
		Returns
		-------
		uniques : index
	**/
	public function _get_unique_index(?dropna:Dynamic):Dynamic;
	public var _has_complex_internals : Dynamic;
	public function _has_same_tz(other:Dynamic):Dynamic;
	static public var _id : Dynamic;
	static public var _infer_as_myclass : Dynamic;
	static public function _inner_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		consistent invalid indexer message 
	**/
	public function _invalid_indexer(form:Dynamic, key:Dynamic):Dynamic;
	public var _is_dates_only : Dynamic;
	/**
		return a boolean if we need a qualified .info display 
	**/
	public function _is_memory_usage_qualified():Dynamic;
	static public var _is_numeric_dtype : Dynamic;
	/**
		return if the index is strictly monotonic decreasing
		(only decreasing) values
		
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
		return if the index is strictly monotonic increasing
		(only increasing) values
		
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
		return if each value is nan
	**/
	public var _isnan : Dynamic;
	/**
		create the join wrapper methods 
	**/
	static public function _join_i8_wrapper(joinf:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The join method *only* affects the level of the resulting
		MultiIndex. Otherwise it just exactly aligns the Index data to the
		labels of the level in the MultiIndex. If `keep_order` == True, the
		order of the data indexed by the MultiIndex will not be changed;
		otherwise, it will tie out with `other`.
	**/
	public function _join_level(other:Dynamic, level:Dynamic, ?how:Dynamic, ?return_indexers:Dynamic, ?keep_order:Dynamic):Dynamic;
	public function _join_monotonic(other:Dynamic, ?how:Dynamic, ?return_indexers:Dynamic):Dynamic;
	public function _join_multi(other:Dynamic, how:Dynamic, ?return_indexers:Dynamic):Dynamic;
	public function _join_non_unique(other:Dynamic, ?how:Dynamic, ?return_indexers:Dynamic):Dynamic;
	static public var _join_precedence : Dynamic;
	static public function _left_indexer(left:Dynamic, right:Dynamic):Dynamic;
	static public function _left_indexer_unique(left:Dynamic, right:Dynamic):Dynamic;
	public function _local_timestamps():Dynamic;
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
		applied : Union[Index, MultiIndex], inferred
		    The output of the mapping function applied to the index.
		    If the function returns a tuple with more than one element
		    a MultiIndex will be returned.
	**/
	public function _map_values(mapper:Dynamic, ?na_action:Dynamic):Dynamic;
	/**
		If we have a float key and are not a floating index
		then try to cast to an int if equivalent
	**/
	public function _maybe_cast_indexer(key:Dynamic):Dynamic;
	/**
		If label is a string, cast it to datetime according to resolution.
		
		Parameters
		----------
		label : object
		side : {'left', 'right'}
		kind : {'ix', 'loc', 'getitem'}
		
		Returns
		-------
		label :  object
		
		Notes
		-----
		Value of `side` parameter should be validated in caller.
	**/
	public function _maybe_cast_slice_bound(label:Dynamic, side:Dynamic, kind:Dynamic):Dynamic;
	/**
		Parameters
		----------
		result : a ndarray
		convert : string/dtype or None
		
		Returns
		-------
		result : ndarray with values replace by the fill_value
		
		mask the result if needed, convert to the provided dtype if its not
		None
		
		This is an internal routine
	**/
	public function _maybe_mask_results(result:Dynamic, ?fill_value:Dynamic, ?convert:Dynamic):Dynamic;
	public function _maybe_promote(other:Dynamic):Dynamic;
	/**
		Update Index attributes (e.g. freq) depending on op 
	**/
	public function _maybe_update_attributes(attrs:Dynamic):Dynamic;
	public function _maybe_utc_convert(other:Dynamic):Dynamic;
	public function _mpl_repr():Dynamic;
	static public var _na_value : Dynamic;
	public var _nan_idxs : Dynamic;
	/**
		Return Index or ndarray filled with NaT which has the same
		length as the caller.
		
		Parameters
		----------
		box : boolean, default True
		    - If True returns a Index as the same as caller.
		    - If False returns ndarray of np.int64.
	**/
	public function _nat_new(?box:Dynamic):Dynamic;
	/**
		The data as an ndarray, possibly losing information.
		
		The expectation is that this is cheap to compute, and is primarily
		used for interacting with our indexers.
		
		- categorical -> codes
	**/
	public var _ndarray_values : Dynamic;
	static public var _object_ops : Dynamic;
	static public var _other_ops : Dynamic;
	static public function _outer_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Calculate datetime bounds for parsed time string and its resolution.
		
		Parameters
		----------
		reso : Resolution
		    Resolution provided by parsed string.
		parsed : datetime
		    Datetime from parsed string.
		
		Returns
		-------
		lower, upper: pd.Timestamp
	**/
	public function _parsed_string_to_bounds(reso:Dynamic, parsed:Dynamic):Dynamic;
	public function _partial_date_slice(reso:Dynamic, parsed:Dynamic, ?use_lhs:Dynamic, ?use_rhs:Dynamic):Dynamic;
	/**
		perform the reduction type operation if we can 
	**/
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		*this is an internal non-public method*
		
		Create a new index with target's values (move/add/delete values as
		necessary) use with non-unique Index and a possibly non-unique target
		
		Parameters
		----------
		target : an iterable
		
		Returns
		-------
		new_index : pd.Index
		    Resulting index
		indexer : np.ndarray or None
		    Indices of output values in original index
	**/
	public function _reindex_non_unique(target:Dynamic):pandas.Index;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Initializes or resets ``_id`` attribute with new object
	**/
	public function _reset_identity():Dynamic;
	public var _resolution : Dynamic;
	public function _round(freq:Dynamic, rounder:Dynamic):Dynamic;
	static public var _round_doc : Dynamic;
	static public var _round_example : Dynamic;
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
		create a new Index with the same class as the caller, don't copy the
		data, use the same object attributes with passed in attributes taking
		precedence
		
		*this is an internal non-public method*
		
		Parameters
		----------
		values : the values to create the new Index, optional
		kwargs : updates the default attributes for this Index
	**/
	public function _shallow_copy(?values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		create a new Index inferring the class with passed value, don't copy
		the data, use the same object attributes with passed in attributes
		taking precedence
		
		*this is an internal non-public method*
		
		Parameters
		----------
		values : the values to create the new Index, optional
		kwargs : updates the default attributes for this Index
	**/
	public function _shallow_copy_with_infer(?values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		we require the we have a dtype compat for the values
		if we are passed a non-dtype compat, then coerce using the constructor
	**/
	static public function _simple_new(values:Dynamic, ?name:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		compat with MultiIndex 
	**/
	public function _sort_levels_monotonic():Dynamic;
	static public function _string_data_error(data:Dynamic):Dynamic;
	public function _sub_datelike(other:Dynamic):Dynamic;
	/**
		subtraction of two DatetimeIndexes
	**/
	public function _sub_datelike_dti(other:Dynamic):Dynamic;
	/**
		Subtract pd.NaT from self
	**/
	public function _sub_nat():Dynamic;
	public function _sub_period(other:Dynamic):Dynamic;
	/**
		Return a summarized representation
		
		Parameters
		----------
		name : str
		    name to use in the summary representation
		
		Returns
		-------
		String with a summarized representation of the index
	**/
	public function _summary(?name:Dynamic):Dynamic;
	/**
		Comparable timezone both for pytz / dateutil
	**/
	public var _timezone : Dynamic;
	/**
		return an array repr of this object, potentially casting to object
		
		This is for internal compat
	**/
	public function _to_embed(?keep_tz:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		convert to object if we are a categorical 
	**/
	public function _to_safe_for_reshape():Dynamic;
	/**
		Attempt to convert an array of data into an integer index.
		
		Parameters
		----------
		data : The data to convert.
		copy : Whether to copy the data or not.
		name : The name of the index returned.
		
		Returns
		-------
		int_index : data converted to either an Int64Index or a
		            UInt64Index
		
		Raises
		------
		ValueError if the conversion was not successful.
	**/
	static public function _try_convert_to_int_index(data:Dynamic, copy:Dynamic, name:Dynamic, dtype:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	/**
		Necessary for making this object picklable
	**/
	public function _unpickle_compat(state:Dynamic):Dynamic;
	public function _update_inplace(result:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return valid other, evaluate or raise TypeError
		if we are not of the appropriate type
		
		internal method called by ops
	**/
	public function _validate_for_numeric_binop(other:Dynamic, op:Dynamic):Dynamic;
	/**
		validate if we can perform a numeric unary operation 
	**/
	public function _validate_for_numeric_unaryop(op:Dynamic, opstr:Dynamic):Dynamic;
	/**
		Validate that a frequency is compatible with the values of a given
		DatetimeIndex or TimedeltaIndex
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		    The index on which to determine if the given frequency is valid
		freq : DateOffset
		    The frequency to validate
	**/
	static public function _validate_frequency(index:Dynamic, freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Validate index level.
		
		For single-level Index getting level number is a no-op, but some
		verification must be done like in MultiIndex.
	**/
	public function _validate_index_level(level:Dynamic):Dynamic;
	/**
		if we are positional indexer
		validate that we have appropriate typed bounds
		must be an integer
	**/
	public function _validate_indexer(form:Dynamic, key:Dynamic, kind:Dynamic):Dynamic;
	/**
		Handles the quirks of having a singular 'name' parameter for general
		Index and plural 'names' parameter for MultiIndex.
	**/
	public function _validate_names(?name:Dynamic, ?names:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		The best array representation.
		
		This is an ndarray, ExtensionArray, or Index subclass. This differs
		from ``_ndarray_values``, which always returns an ndarray.
		
		Both ``_values`` and ``_ndarray_values`` are consistent between
		``Series`` and ``Index``.
		
		It may differ from the public '.values' method.
		
		index             | values          | _values     | _ndarray_values |
		----------------- | -------------- -| ----------- | --------------- |
		CategoricalIndex  | Categorical     | Categorical | codes           |
		DatetimeIndex[tz] | ndarray[M8ns]   | DTI[tz]     | ndarray[M8ns]   |
		
		For the following, the ``._values`` is currently ``ndarray[object]``,
		but will soon be an ``ExtensionArray``
		
		index             | values          | _values      | _ndarray_values |
		----------------- | --------------- | ------------ | --------------- |
		PeriodIndex       | ndarray[object] | ndarray[obj] | ndarray[int]    |
		IntervalIndex     | ndarray[object] | ndarray[obj] | ndarray[object] |
		
		See Also
		--------
		values
		_ndarray_values
	**/
	public var _values : Dynamic;
	public function _wrap_joined_index(joined:Dynamic, other:Dynamic):Dynamic;
	public function _wrap_union_result(other:Dynamic, result:Dynamic):Dynamic;
	public function all(?other:Dynamic):Dynamic;
	public function any(?other:Dynamic):Dynamic;
	/**
		Append a collection of Index options together
		
		Parameters
		----------
		other : Index or list/tuple of indices
		
		Returns
		-------
		appended : Index
	**/
	public function append(other:Dynamic):pandas.Index;
	/**
		Returns the indices of the maximum values along an axis.
		See `numpy.ndarray.argmax` for more information on the
		`axis` parameter.
		
		See also
		--------
		numpy.ndarray.argmax
	**/
	public function argmax(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the indices of the minimum values along an axis.
		See `numpy.ndarray.argmin` for more information on the
		`axis` parameter.
		
		See also
		--------
		numpy.ndarray.argmin
	**/
	public function argmin(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the integer indicies that would sort the index.
		
		Parameters
		----------
		*args
		    Passed to `numpy.ndarray.argsort`.
		**kwargs
		    Passed to `numpy.ndarray.argsort`.
		
		Returns
		-------
		numpy.ndarray
		    Integer indicies that would sort the index if used as
		    an indexer.
		
		See also
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
	public var asi8 : Dynamic;
	/**
		Return object Index which contains boxed values.
		
		.. deprecated:: 0.23.0
		    Use ``astype(object)`` instead.
		
		*this is an internal non-public method*
	**/
	public var asobject : Dynamic;
	/**
		For a sorted index, return the most recent label up to and including
		the passed label. Return NaN if not found.
		
		See also
		--------
		get_loc : asof is a thin wrapper around get_loc with method='pad'
	**/
	public function asof(label:Dynamic):Dynamic;
	/**
		where : array of timestamps
		mask : array of booleans where data is not NA
	**/
	public function asof_locs(where:Dynamic, mask:Dynamic):Dynamic;
	/**
		Create an Index with values cast to dtypes. The class of a new Index
		is determined by dtype. When conversion is impossible, a ValueError
		exception is raised.
		
		Parameters
		----------
		dtype : numpy dtype or pandas type
		copy : bool, default True
		    By default, astype always returns a newly allocated object.
		    If copy is set to False and internal requirements on dtype are
		    satisfied, the original data is used to create a new Index
		    or the original Index is returned.
		
		    .. versionadded:: 0.19.0
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		return the base object if the memory of the underlying data is
		shared
	**/
	public var base : Dynamic;
	/**
		ceil the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to ceil the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		
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
	public function ceil(freq:Dynamic):Dynamic;
	/**
		return a boolean if this key is IN the index
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		boolean
	**/
	public function contains(key:Dynamic):Dynamic;
	/**
		Make a copy of this object.  Name and dtype sets those attributes on
		the new object.
		
		Parameters
		----------
		name : string, optional
		deep : boolean, default False
		dtype : numpy dtype or pandas type
		
		Returns
		-------
		copy : Index
		
		Notes
		-----
		In most cases, there should be no functional difference from using
		``deep``, but if ``deep`` is passed it will attempt to deepcopy.
	**/
	public function copy(?name:Dynamic, ?deep:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.Index;
	/**
		return the data pointer of the underlying data 
	**/
	public var data : Dynamic;
	/**
		Returns numpy array of python datetime.date objects (namely, the date
		part of Timestamps without timezone information).
	**/
	public var date : Dynamic;
	/**
		The days of the datetime
	**/
	public var day : Dynamic;
	/**
		Return the day names of the DateTimeIndex with specified locale.
		
		Parameters
		----------
		locale : string, default None (English locale)
		    locale determining the language in which to return the day name
		
		Returns
		-------
		month_names : Index
		    Index of day names
		
		.. versionadded:: 0.23.0
	**/
	public function day_name(?locale:Dynamic):pandas.Index;
	/**
		The day of the week with Monday=0, Sunday=6
	**/
	public var dayofweek : Dynamic;
	/**
		The ordinal day of the year
	**/
	public var dayofyear : Dynamic;
	/**
		The number of days in the month
	**/
	public var days_in_month : Dynamic;
	/**
		The number of days in the month
	**/
	public var daysinmonth : Dynamic;
	/**
		Make a new DatetimeIndex with passed location(s) deleted.
		
		Parameters
		----------
		loc: int, slice or array of ints
		    Indicate which sub-arrays to remove.
		
		Returns
		-------
		new_index : DatetimeIndex
	**/
	public function delete(loc:Dynamic):Dynamic;
	/**
		Return a new Index with elements from the index that are not in
		`other`.
		
		This is the set difference of two Index objects.
		It's sorted if sorting is possible.
		
		Parameters
		----------
		other : Index or array-like
		
		Returns
		-------
		difference : Index
		
		Examples
		--------
		
		>>> idx1 = pd.Index([1, 2, 3, 4])
		>>> idx2 = pd.Index([3, 4, 5, 6])
		>>> idx1.difference(idx2)
		Int64Index([1, 2], dtype='int64')
	**/
	public function difference(other:Dynamic):pandas.Index;
	/**
		Make new Index with passed list of labels deleted
		
		Parameters
		----------
		labels : array-like
		errors : {'ignore', 'raise'}, default 'raise'
		    If 'ignore', suppress error and existing labels are dropped.
		
		Returns
		-------
		dropped : Index
		
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
		Series.drop_duplicates : equivalent method on Series
		DataFrame.drop_duplicates : equivalent method on DataFrame
		Index.duplicated : related method on Index, indicating duplicate
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
		Return Index without NA/NaN values
		
		Parameters
		----------
		how :  {'any', 'all'}, default 'any'
		    If the Index is a MultiIndex, drop the value when any or all levels
		    are NaN.
		
		Returns
		-------
		valid : Index
	**/
	public function dropna(?how:Dynamic):pandas.Index;
	public var dtype : Dynamic;
	/**
		return the dtype str of the underlying data 
	**/
	public var dtype_str : Dynamic;
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
		
		Returns
		-------
		numpy.ndarray
		
		See Also
		--------
		pandas.Series.duplicated : Equivalent method on pandas.Series
		pandas.DataFrame.duplicated : Equivalent method on pandas.DataFrame
		pandas.Index.drop_duplicates : Remove duplicate values from Index
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
		sort : boolean, default False
		    Sort `uniques` and shuffle `labels` to maintain the
		    relationship.
		
		na_sentinel : int, default -1
		    Value to mark "not found".
		
		Returns
		-------
		labels : ndarray
		    An integer ndarray that's an indexer into `uniques`.
		    ``uniques.take(labels)`` will have the same values as `values`.
		uniques : ndarray, Index, or Categorical
		    The unique valid values. When `values` is Categorical, `uniques`
		    is a Categorical. When `values` is some other pandas object, an
		    `Index` is returned. Otherwise, a 1-D ndarray is returned.
		
		    .. note ::
		
		       Even if there's a missing value in `values`, `uniques` will
		       *not* contain an entry for it.
		
		See Also
		--------
		pandas.cut : Discretize continuous-valued array.
		pandas.unique : Find the unique valuse in an array.
		
		Examples
		--------
		These examples all show factorize as a top-level method like
		``pd.factorize(values)``. The results are identical for methods like
		:meth:`Series.factorize`.
		
		>>> labels, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'])
		>>> labels
		array([0, 0, 1, 2, 0])
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		With ``sort=True``, the `uniques` will be sorted, and `labels` will be
		shuffled so that the relationship is the maintained.
		
		>>> labels, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'], sort=True)
		>>> labels
		array([1, 1, 0, 2, 1])
		>>> uniques
		array(['a', 'b', 'c'], dtype=object)
		
		Missing values are indicated in `labels` with `na_sentinel`
		(``-1`` by default). Note that missing values are never
		included in `uniques`.
		
		>>> labels, uniques = pd.factorize(['b', None, 'a', 'c', 'b'])
		>>> labels
		array([ 0, -1,  1,  2,  0])
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		Thus far, we've only factorized lists (which are internally coerced to
		NumPy arrays). When factorizing pandas objects, the type of `uniques`
		will differ. For Categoricals, a `Categorical` is returned.
		
		>>> cat = pd.Categorical(['a', 'a', 'c'], categories=['a', 'b', 'c'])
		>>> labels, uniques = pd.factorize(cat)
		>>> labels
		array([0, 0, 1])
		>>> uniques
		[a, c]
		Categories (3, object): [a, b, c]
		
		Notice that ``'b'`` is in ``uniques.categories``, desipite not being
		present in ``cat.values``.
		
		For all other pandas objects, an Index of the appropriate type is
		returned.
		
		>>> cat = pd.Series(['a', 'a', 'c'])
		>>> labels, uniques = pd.factorize(cat)
		>>> labels
		array([0, 0, 1])
		>>> uniques
		Index(['a', 'c'], dtype='object')
	**/
	public function factorize(?sort:Dynamic, ?na_sentinel:Dynamic):numpy.Ndarray;
	/**
		Fill NA/NaN values with the specified value
		
		Parameters
		----------
		value : scalar
		    Scalar value to use to fill holes (e.g. 0).
		    This value cannot be a list-likes.
		downcast : dict, default is None
		    a dict of item->dtype of what to downcast if possible,
		    or the string 'infer' which will try to downcast to an appropriate
		    equal type (e.g. float64 to int64 if possible)
		
		Returns
		-------
		filled : %(klass)s
	**/
	public function fillna(?value:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		return the ndarray.flags for the underlying data 
	**/
	public var flags : Dynamic;
	/**
		floor the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to floor the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		
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
	public function floor(freq:Dynamic):Dynamic;
	/**
		Render a string representation of the Index
	**/
	public function format(?name:Dynamic, ?formatter:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the frequency object if it is set, otherwise None
	**/
	public var freq : Dynamic;
	/**
		Return the frequency object as a string if it is set, otherwise None
	**/
	public var freqstr : Dynamic;
	/**
		Extract duplicated index elements.
		
		Returns a sorted list of index elements which appear more than once in
		the index.
		
		.. deprecated:: 0.23.0
		    Use idx[idx.duplicated()].unique() instead
		
		Returns
		-------
		array-like
		    List of duplicated indexes.
		
		See Also
		--------
		Index.duplicated : Return boolean array denoting duplicates.
		Index.drop_duplicates : Return Index with duplicates removed.
		
		Examples
		--------
		
		Works on different Index of types.
		
		>>> pd.Index([1, 2, 2, 3, 3, 3, 4]).get_duplicates()
		[2, 3]
		>>> pd.Index([1., 2., 2., 3., 3., 3., 4.]).get_duplicates()
		[2.0, 3.0]
		>>> pd.Index(['a', 'b', 'b', 'c', 'c', 'c', 'd']).get_duplicates()
		['b', 'c']
		
		Note that for a DatetimeIndex, it does not return a list but a new
		DatetimeIndex:
		
		>>> dates = pd.to_datetime(['2018-01-01', '2018-01-02', '2018-01-03',
		...                         '2018-01-03', '2018-01-04', '2018-01-04'],
		...                        format='%Y-%m-%d')
		>>> pd.Index(dates).get_duplicates()
		DatetimeIndex(['2018-01-03', '2018-01-04'],
		              dtype='datetime64[ns]', freq=None)
		
		Sorts duplicated elements even when indexes are unordered.
		
		>>> pd.Index([1, 2, 3, 2, 3, 4, 3]).get_duplicates()
		[2, 3]
		
		Return empty array-like structure when all elements are unique.
		
		>>> pd.Index([1, 2, 3, 4]).get_duplicates()
		[]
		>>> dates = pd.to_datetime(['2018-01-01', '2018-01-02', '2018-01-03'],
		...                        format='%Y-%m-%d')
		>>> pd.Index(dates).get_duplicates()
		DatetimeIndex([], dtype='datetime64[ns]', freq=None)
	**/
	public function get_duplicates():Dynamic;
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
		    matches. The values of the index at the matching locations most
		    satisfy the equation ``abs(index[indexer] - target) <= tolerance``.
		
		    Tolerance may be a scalar value, which applies the same tolerance
		    to all values, or list-like, which applies variable tolerance per
		    element. List-like includes list, tuple, array, Series, and must be
		    the same size as the index and its dtype must exactly match the
		    index's type.
		
		    .. versionadded:: 0.21.0 (list-like tolerance)
		
		Examples
		--------
		>>> indexer = index.get_indexer(new_index)
		>>> new_values = cur_values.take(indexer)
		
		Returns
		-------
		indexer : ndarray of int
		    Integers from 0 to n - 1 indicating that the index at these
		    positions matches the corresponding target values. Missing values
		    in the target are marked by -1.
	**/
	public function get_indexer(target:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		guaranteed return of an indexer even when non-unique
		This dispatches to get_indexer or get_indexer_nonunique as appropriate
	**/
	public function get_indexer_for(target:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute indexer and mask for new index given the current index. The
		indexer should be then used as an input to ndarray.take to align the
		current data to the new index.
		
		Parameters
		----------
		target : Index
		
		Returns
		-------
		indexer : ndarray of int
		    Integers from 0 to n - 1 indicating that the index at these
		    positions matches the corresponding target values. Missing values
		    in the target are marked by -1.
		missing : ndarray of int
		    An indexer into the target of the values not found.
		    These correspond to the -1 in the indexer array
	**/
	public function get_indexer_non_unique(target:Dynamic):Dynamic;
	/**
		Return an Index of values for requested level, equal to the length
		of the index.
		
		Parameters
		----------
		level : int or str
		    ``level`` is either the integer position of the level in the
		    MultiIndex, or the name of the level.
		
		Returns
		-------
		values : Index
		    ``self``, as there is only one level in the Index.
		
		See also
		---------
		pandas.MultiIndex.get_level_values : get values for a level of a
		                                     MultiIndex
	**/
	public function get_level_values(level:Dynamic):pandas.Index;
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
		kind : {'ix', 'loc', 'getitem'}
	**/
	public function get_slice_bound(label:Dynamic, side:Dynamic, kind:Dynamic):Dynamic;
	/**
		Fast lookup of value from 1-dimensional ndarray. Only use this if you
		know what you're doing
	**/
	public function get_value(series:Dynamic, key:Dynamic):Dynamic;
	public function get_value_maybe_box(series:Dynamic, key:Dynamic):Dynamic;
	/**
		Return `Index` data as an `numpy.ndarray`.
		
		Returns
		-------
		numpy.ndarray
		    A one-dimensional numpy array of the `Index` values.
		
		See Also
		--------
		Index.values : The attribute that get_values wraps.
		
		Examples
		--------
		Getting the `Index` values of a `DataFrame`:
		
		>>> df = pd.DataFrame([[1, 2, 3], [4, 5, 6], [7, 8, 9]],
		...                    index=['a', 'b', 'c'], columns=['A', 'B', 'C'])
		>>> df
		   A  B  C
		a  1  2  3
		b  4  5  6
		c  7  8  9
		>>> df.index.get_values()
		array(['a', 'b', 'c'], dtype=object)
		
		Standalone `Index` values:
		
		>>> idx = pd.Index(['1', '2', '3'])
		>>> idx.get_values()
		array(['1', '2', '3'], dtype=object)
		
		`MultiIndex` arrays also have only one dimension:
		
		>>> midx = pd.MultiIndex.from_arrays([[1, 2, 3], ['a', 'b', 'c']],
		...                                  names=('number', 'letter'))
		>>> midx.get_values()
		array([(1, 'a'), (2, 'b'), (3, 'c')], dtype=object)
		>>> midx.get_values().ndim
		1
	**/
	public function get_values():Dynamic;
	/**
		Group the index labels by a given array of values.
		
		Parameters
		----------
		values : array
		    Values used to determine the groups.
		
		Returns
		-------
		groups : dict
		    {group name -> group labels}
	**/
	public function groupby(values:Dynamic):python.Dict<Dynamic, Dynamic>;
	public var has_duplicates : Dynamic;
	/**
		return if I have any nans; enables various perf speedups 
	**/
	public var hasnans : Dynamic;
	public function holds_integer():Dynamic;
	/**
		The hours of the datetime
	**/
	public var hour : Dynamic;
	/**
		Similar to equals, but check that other comparable attributes are
		also equal
	**/
	public function identical(other:Dynamic):Dynamic;
	/**
		Returns index locations of index values at particular time of day
		(e.g. 9:30AM).
		
		Parameters
		----------
		time : datetime.time or string
		    datetime.time or string in appropriate format ("%H:%M", "%H%M",
		    "%I:%M%p", "%I%M%p", "%H:%M:%S", "%H%M%S", "%I:%M:%S%p",
		    "%I%M%S%p").
		
		Returns
		-------
		values_at_time : array of integers
		
		See Also
		--------
		indexer_between_time, DataFrame.at_time
	**/
	public function indexer_at_time(time:Dynamic, ?asof:Dynamic):Dynamic;
	/**
		Return index locations of values between particular times of day
		(e.g., 9:00-9:30AM).
		
		Parameters
		----------
		start_time, end_time : datetime.time, str
		    datetime.time or string in appropriate format ("%H:%M", "%H%M",
		    "%I:%M%p", "%I%M%p", "%H:%M:%S", "%H%M%S", "%I:%M:%S%p",
		    "%I%M%S%p").
		include_start : boolean, default True
		include_end : boolean, default True
		
		Returns
		-------
		values_between_time : array of integers
		
		See Also
		--------
		indexer_at_time, DataFrame.between_time
	**/
	public function indexer_between_time(start_time:Dynamic, end_time:Dynamic, ?include_start:Dynamic, ?include_end:Dynamic):Dynamic;
	/**
		Tries to return a string representing a frequency guess,
		generated by infer_freq.  Returns None if it can't autodetect the
		frequency.
	**/
	public var inferred_freq : Dynamic;
	/**
		Always 'integer' for ``Int64Index``
	**/
	public var inferred_type : Dynamic;
	/**
		Make new Index inserting new item at location
		
		Parameters
		----------
		loc : int
		item : object
		    if not either a Python datetime or a numpy integer-like, returned
		    Index dtype will be object rather than datetime.
		
		Returns
		-------
		new_index : Index
	**/
	public function insert(loc:Dynamic, item:Dynamic):Dynamic;
	/**
		Specialized intersection for DatetimeIndex objects. May be much faster
		than Index.intersection
		
		Parameters
		----------
		other : DatetimeIndex or array-like
		
		Returns
		-------
		y : Index or DatetimeIndex
	**/
	public function intersection(other:Dynamic):Dynamic;
	/**
		More flexible, faster check like ``is`` but that works through views
		
		Note: this is *not* the same as ``Index.identical()``, which checks
		that metadata is also the same.
		
		Parameters
		----------
		other : object
		    other object to compare against.
		
		Returns
		-------
		True if both have same underlying data, False otherwise : bool
	**/
	public function is_(other:Dynamic):Dynamic;
	/**
		Checks that all the labels are datetime objects
	**/
	public var is_all_dates : Dynamic;
	public function is_boolean():Dynamic;
	/**
		Check if the Index holds categorical data.
		
		Returns
		-------
		boolean
		    True if the Index is categorical.
		
		See Also
		--------
		CategoricalIndex : Index for categorical data.
		
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
	public function is_floating():Dynamic;
	public function is_integer():Dynamic;
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
	public function is_lexsorted_for_tuple(tup:Dynamic):Dynamic;
	public function is_mixed():Dynamic;
	/**
		alias for is_monotonic_increasing (deprecated) 
	**/
	public var is_monotonic : Dynamic;
	/**
		return if the index is monotonic decreasing (only equal or
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
		return if the index is monotonic increasing (only equal or
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
		Indicator for whether the date is the last day of the month.
		
		Returns
		-------
		Series or array
		    For Series, returns a Series with boolean values. For
		    DatetimeIndex, returns a boolean array.
		
		See Also
		--------
		is_month_start : Indicator for whether the date is the first day
		    of the month.
		
		Examples
		--------
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		>>> dates = pd.Series(pd.date_range("2018-02-27", periods=3))
		>>> dates
		0   2018-02-27
		1   2018-02-28
		2   2018-03-01
		dtype: datetime64[ns]
		>>> dates.dt.is_month_end
		0    False
		1    True
		2    False
		dtype: bool
		
		>>> idx = pd.date_range("2018-02-27", periods=3)
		>>> idx.is_month_end
		array([False,  True, False], dtype=bool)
	**/
	public var is_month_end : Dynamic;
	/**
		Logical indicating if first day of month (defined by frequency)
	**/
	public var is_month_start : Dynamic;
	/**
		Returns True if all of the dates are at midnight ("no time")
	**/
	public var is_normalized : Dynamic;
	public function is_numeric():Dynamic;
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
	public function is_type_compatible(typ:Dynamic):Dynamic;
	/**
		return if the index has unique values 
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
		Compute boolean array of whether each index value is found in the
		passed set of values
		
		Parameters
		----------
		values : set or sequence of values
		
		Returns
		-------
		is_contained : ndarray (boolean dtype)
	**/
	public function isin(values:Dynamic):Dynamic;
	/**
		Detect missing values.
		
		Return a boolean same-sized object indicating if the values are NA.
		NA values, such as ``None``, :attr:`numpy.NaN` or :attr:`pd.NaT`, get
		mapped to ``True`` values.
		Everything else get mapped to ``False`` values. Characters such as
		empty strings `''` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		
		.. versionadded:: 0.20.0
		
		Returns
		-------
		numpy.ndarray
		    A boolean array of whether my values are NA
		
		See Also
		--------
		pandas.Index.notna : boolean inverse of isna.
		pandas.Index.dropna : omit entries with missing values.
		pandas.isna : top-level isna.
		Series.isna : detect missing values in Series object.
		
		Examples
		--------
		Show which entries in a pandas.Index are NA. The result is an
		array.
		
		>>> idx = pd.Index([5.2, 6.0, np.NaN])
		>>> idx
		Float64Index([5.2, 6.0, nan], dtype='float64')
		>>> idx.isna()
		array([False, False,  True], dtype=bool)
		
		Empty strings are not considered NA values. None is considered an NA
		value.
		
		>>> idx = pd.Index(['black', '', 'red', None])
		>>> idx
		Index(['black', '', 'red', None], dtype='object')
		>>> idx.isna()
		array([False, False, False,  True], dtype=bool)
		
		For datetimes, `NaT` (Not a Time) is considered as an NA value.
		
		>>> idx = pd.DatetimeIndex([pd.Timestamp('1940-04-25'),
		...                         pd.Timestamp(''), None, pd.NaT])
		>>> idx
		DatetimeIndex(['1940-04-25', 'NaT', 'NaT', 'NaT'],
		              dtype='datetime64[ns]', freq=None)
		>>> idx.isna()
		array([False,  True,  True,  True], dtype=bool)
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
		
		.. versionadded:: 0.20.0
		
		Returns
		-------
		numpy.ndarray
		    A boolean array of whether my values are NA
		
		See Also
		--------
		pandas.Index.notna : boolean inverse of isna.
		pandas.Index.dropna : omit entries with missing values.
		pandas.isna : top-level isna.
		Series.isna : detect missing values in Series object.
		
		Examples
		--------
		Show which entries in a pandas.Index are NA. The result is an
		array.
		
		>>> idx = pd.Index([5.2, 6.0, np.NaN])
		>>> idx
		Float64Index([5.2, 6.0, nan], dtype='float64')
		>>> idx.isna()
		array([False, False,  True], dtype=bool)
		
		Empty strings are not considered NA values. None is considered an NA
		value.
		
		>>> idx = pd.Index(['black', '', 'red', None])
		>>> idx
		Index(['black', '', 'red', None], dtype='object')
		>>> idx.isna()
		array([False, False, False,  True], dtype=bool)
		
		For datetimes, `NaT` (Not a Time) is considered as an NA value.
		
		>>> idx = pd.DatetimeIndex([pd.Timestamp('1940-04-25'),
		...                         pd.Timestamp(''), None, pd.NaT])
		>>> idx
		DatetimeIndex(['1940-04-25', 'NaT', 'NaT', 'NaT'],
		              dtype='datetime64[ns]', freq=None)
		>>> idx.isna()
		array([False,  True,  True,  True], dtype=bool)
	**/
	public function isnull():Dynamic;
	/**
		return the first element of the underlying data as a python
		scalar
	**/
	public function item():Dynamic;
	/**
		return the size of the dtype of the item of the underlying data 
	**/
	public var itemsize : Dynamic;
	/**
		See Index.join
	**/
	public function join(other:Dynamic, ?how:Dynamic, ?level:Dynamic, ?return_indexers:Dynamic, ?sort:Dynamic):Dynamic;
	public function map(f:Dynamic):Dynamic;
	/**
		Return the maximum value of the Index or maximum along
		an axis.
		
		See also
		--------
		numpy.ndarray.max
	**/
	public function max(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Memory usage of the values
		
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
		are not components of the array if deep=False or if used on PyPy
		
		See Also
		--------
		numpy.ndarray.nbytes
	**/
	public function memory_usage(?deep:Dynamic):Dynamic;
	/**
		The microseconds of the datetime
	**/
	public var microsecond : Dynamic;
	/**
		Return the minimum value of the Index or minimum along
		an axis.
		
		See also
		--------
		numpy.ndarray.min
	**/
	public function min(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The minutes of the datetime
	**/
	public var minute : Dynamic;
	/**
		The month as January=1, December=12
	**/
	public var month : Dynamic;
	/**
		Return the month names of the DateTimeIndex with specified locale.
		
		Parameters
		----------
		locale : string, default None (English locale)
		    locale determining the language in which to return the month name
		
		Returns
		-------
		month_names : Index
		    Index of month names
		
		.. versionadded:: 0.23.0
	**/
	public function month_name(?locale:Dynamic):pandas.Index;
	static public var name : Dynamic;
	public var names : Dynamic;
	/**
		The nanoseconds of the datetime
	**/
	public var nanosecond : Dynamic;
	/**
		return the number of bytes in the underlying data 
	**/
	public var nbytes : Dynamic;
	/**
		return the number of dimensions of the underlying data,
		by definition 1
	**/
	public var ndim : Dynamic;
	public var nlevels : Dynamic;
	/**
		Convert times to midnight.
		
		The time component of the date-timeise converted to midnight i.e.
		00:00:00. This is useful in cases, when the time does not matter.
		Length is unaltered. The timezones are unaffected.
		
		This method is available on Series with datetime values under
		the ``.dt`` accessor, and directly on DatetimeIndex.
		
		Returns
		-------
		DatetimeIndex or Series
		    The same type as the original data. Series will have the same
		    name and index. DatetimeIndex will have the same name.
		
		See Also
		--------
		floor : Floor the datetimes to the specified freq.
		ceil : Ceil the datetimes to the specified freq.
		round : Round the datetimes to the specified freq.
		
		Examples
		--------
		>>> idx = pd.DatetimeIndex(start='2014-08-01 10:00', freq='H',
		...                        periods=3, tz='Asia/Calcutta')
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
		Detect existing (non-missing) values.
		
		Return a boolean same-sized object indicating if the values are not NA.
		Non-missing values get mapped to ``True``. Characters such as empty
		strings ``''`` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		NA values, such as None or :attr:`numpy.NaN`, get mapped to ``False``
		values.
		
		.. versionadded:: 0.20.0
		
		Returns
		-------
		numpy.ndarray
		    Boolean array to indicate which entries are not NA.
		
		See also
		--------
		Index.notnull : alias of notna
		Index.isna: inverse of notna
		pandas.notna : top-level notna
		
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
		
		.. versionadded:: 0.20.0
		
		Returns
		-------
		numpy.ndarray
		    Boolean array to indicate which entries are not NA.
		
		See also
		--------
		Index.notnull : alias of notna
		Index.isna: inverse of notna
		pandas.notna : top-level notna
		
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
		dropna : boolean, default True
		    Don't include NaN in the count.
		
		Returns
		-------
		nunique : int
	**/
	public function nunique(?dropna:Dynamic):Int;
	/**
		get/set the frequency of the Index
	**/
	public var offset : Dynamic;
	/**
		return a new Index of the values set with the mask
		
		See also
		--------
		numpy.ndarray.putmask
	**/
	public function putmask(mask:Dynamic, value:Dynamic):Dynamic;
	/**
		The quarter of the date
	**/
	public var quarter : Dynamic;
	/**
		return an ndarray of the flattened values of the underlying data
		
		See also
		--------
		numpy.ndarray.ravel
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		Create index with target's values (move/add/delete values as necessary)
		
		Parameters
		----------
		target : an iterable
		
		Returns
		-------
		new_index : pd.Index
		    Resulting index
		indexer : np.ndarray or None
		    Indices of output values in original index
	**/
	public function reindex(target:Dynamic, ?method:Dynamic, ?level:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):pandas.Index;
	/**
		Set new names on index. Defaults to returning new index.
		
		Parameters
		----------
		name : str or list
		    name to set
		inplace : bool
		    if True, mutates in place
		
		Returns
		-------
		new index (of same type and class...etc) [if inplace, returns None]
	**/
	public function rename(name:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Analogous to ndarray.repeat
	**/
	public function repeat(repeats:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns day, hour, minute, second, millisecond or microsecond
	**/
	public var resolution : Dynamic;
	/**
		round the data to the specified `freq`.
		
		Parameters
		----------
		freq : str or Offset
		    The frequency level to round the index to. Must be a fixed
		    frequency like 'S' (second) not 'ME' (month end). See
		    :ref:`frequency aliases <timeseries.offset_aliases>` for
		    a list of possible `freq` values.
		
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
	public function round(freq:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted DatetimeIndex `self` such that, if the
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
		
		See Also
		--------
		numpy.searchsorted
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		Examples
		--------
		
		>>> x = pd.Series([1, 2, 3])
		>>> x
		0    1
		1    2
		2    3
		dtype: int64
		
		>>> x.searchsorted(4)
		array([3])
		
		>>> x.searchsorted([0, 4])
		array([0, 3])
		
		>>> x.searchsorted([1, 3], side='left')
		array([0, 2])
		
		>>> x.searchsorted([1, 3], side='right')
		array([1, 3])
		
		>>> x = pd.Categorical(['apple', 'bread', 'bread',
		                        'cheese', 'milk'], ordered=True)
		[apple, bread, bread, cheese, milk]
		Categories (4, object): [apple < bread < cheese < milk]
		
		>>> x.searchsorted('bread')
		array([1])     # Note: an array, not a scalar
		
		>>> x.searchsorted(['bread'], side='right')
		array([3])
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		The seconds of the datetime
	**/
	public var second : Dynamic;
	/**
		Set new names on index. Defaults to returning new index.
		
		Parameters
		----------
		names : str or sequence
		    name(s) to set
		level : int, level name, or sequence of int/level names (default None)
		    If the index is a MultiIndex (hierarchical), level(s) to set (None
		    for all levels).  Otherwise level must be None
		inplace : bool
		    if True, mutates in place
		
		Returns
		-------
		new index (of same type and class...etc) [if inplace, returns None]
		
		Examples
		--------
		>>> Index([1, 2, 3, 4]).set_names('foo')
		Int64Index([1, 2, 3, 4], dtype='int64', name='foo')
		>>> Index([1, 2, 3, 4]).set_names(['foo'])
		Int64Index([1, 2, 3, 4], dtype='int64', name='foo')
		>>> idx = MultiIndex.from_tuples([(1, u'one'), (1, u'two'),
		                                  (2, u'one'), (2, u'two')],
		                                  names=['foo', 'bar'])
		>>> idx.set_names(['baz', 'quz'])
		MultiIndex(levels=[[1, 2], [u'one', u'two']],
		           labels=[[0, 0, 1, 1], [0, 1, 0, 1]],
		           names=[u'baz', u'quz'])
		>>> idx.set_names('baz', level=0)
		MultiIndex(levels=[[1, 2], [u'one', u'two']],
		           labels=[[0, 0, 1, 1], [0, 1, 0, 1]],
		           names=[u'baz', u'bar'])
	**/
	public function set_names(names:Dynamic, ?level:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Fast lookup of value from 1-dimensional ndarray. Only use this if you
		know what you're doing
	**/
	public function set_value(arr:Dynamic, key:Dynamic, value:Dynamic):Dynamic;
	/**
		return a tuple of the shape of the underlying data 
	**/
	public var shape : Dynamic;
	/**
		Specialized shift which produces a DatetimeIndex
		
		Parameters
		----------
		n : int
		    Periods to shift by
		freq : DateOffset or timedelta-like, optional
		
		Returns
		-------
		shifted : DatetimeIndex
	**/
	public function shift(n:Dynamic, ?freq:Dynamic):pandas.DatetimeIndex;
	/**
		return the number of elements in the underlying data 
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
		    If None, defaults to the beginning
		end : label, default None
		    If None, defaults to the end
		step : int, defaults None
		    If None, defaults to 1
		kind : {'ix', 'loc', 'getitem'} or None
		
		Returns
		-------
		start, end : int
		
		Notes
		-----
		This method only works if the index is monotonic or unique.
		
		Examples
		---------
		>>> idx = pd.Index(list('abcd'))
		>>> idx.slice_locs(start='b', end='c')
		(1, 3)
		
		See Also
		--------
		Index.get_loc : Get location for a single label
	**/
	public function slice_locs(?start:Dynamic, ?end:Dynamic, ?step:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Snap time stamps to nearest occurring frequency
	**/
	public function snap(?freq:Dynamic):Dynamic;
	public function sort(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return sorted copy of Index
	**/
	public function sort_values(?return_indexer:Dynamic, ?ascending:Dynamic):Dynamic;
	/**
		For internal compatibility with with the Index API
		
		Sort the Index. This is for compat with MultiIndex
		
		Parameters
		----------
		ascending : boolean, default True
		    False to sort in descending order
		
		level, sort_remaining are compat parameters
		
		Returns
		-------
		sorted_index : Index
	**/
	public function sortlevel(?level:Dynamic, ?ascending:Dynamic, ?sort_remaining:Dynamic):Dynamic;
	/**
		Vectorized string functions for Series and Index. NAs stay NA unless
		handled otherwise by a particular method. Patterned after Python's string
		methods, with some inspiration from R's stringr package.
		
		Examples
		--------
		>>> s.str.split('_')
		>>> s.str.replace('_', '')
	**/
	static public function str(data:Dynamic):Dynamic;
	/**
		Convert to Index using specified date_format.
		
		Return an Index of formatted strings specified by date_format, which
		supports the same string format as the python standard library. Details
		of the string format can be found in `python string format doc <https://docs.python.org/3/library/datetime.html#strftime-and-strptime-behavior>`__
		
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
		pandas.to_datetime : Convert the given argument to datetime
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
		return the strides of the underlying data 
	**/
	public var strides : Dynamic;
	/**
		Return a summarized representation
		.. deprecated:: 0.23.0
	**/
	public function summary(?name:Dynamic):Dynamic;
	/**
		Compute the symmetric difference of two Index objects.
		It's sorted if sorting is possible.
		
		Parameters
		----------
		other : Index or array-like
		result_name : str
		
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
		>>> idx1 = Index([1, 2, 3, 4])
		>>> idx2 = Index([2, 3, 4, 5])
		>>> idx1.symmetric_difference(idx2)
		Int64Index([1, 5], dtype='int64')
		
		You can also use the ``^`` operator:
		
		>>> idx1 ^ idx2
		Int64Index([1, 5], dtype='int64')
	**/
	public function symmetric_difference(other:Dynamic, ?result_name:Dynamic):Dynamic;
	/**
		return a new Index of the values selected by the indices
		
		For internal compatibility with numpy arrays.
		
		Parameters
		----------
		indices : list
		    Indices to be taken
		axis : int, optional
		    The axis over which to select values, always 0.
		allow_fill : bool, default True
		fill_value : bool, default None
		    If allow_fill=True and fill_value is not None, indices specified by
		    -1 is regarded as NA. If Index doesn't hold NA, raise ValueError
		
		See also
		--------
		numpy.ndarray.take
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns numpy array of datetime.time. The time part of the Timestamps.
	**/
	public var time : Dynamic;
	/**
		Create a DataFrame with a column containing the Index.
		
		.. versionadded:: 0.21.0
		
		Parameters
		----------
		index : boolean, default True
		    Set the index of the returned DataFrame as the original Index.
		
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
	**/
	public function to_frame(?index:Dynamic):Dynamic;
	/**
		Convert DatetimeIndex to Float64Index of Julian Dates.
		0 Julian date is noon January 1, 4713 BC.
		http://en.wikipedia.org/wiki/Julian_day
	**/
	public function to_julian_date():Dynamic;
	/**
		Format specified values of `self` and return them.
		
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
		        The format used to represent date-like values
	**/
	public function to_native_types(?slicer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cast to PeriodIndex at a particular frequency.
		
		Converts DatetimeIndex to PeriodIndex.
		
		Parameters
		----------
		freq : string or Offset, optional
		    One of pandas' :ref:`offset strings <timeseries.offset_aliases>`
		    or an Offset object. Will be inferred by default.
		
		Returns
		-------
		PeriodIndex
		
		Raises
		------
		ValueError
		    When converting a DatetimeIndex with non-regular values, so that a
		    frequency cannot be inferred.
		
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
		
		See also
		--------
		pandas.PeriodIndex: Immutable ndarray holding ordinal values
		pandas.DatetimeIndex.to_pydatetime: Return DatetimeIndex as object
	**/
	public function to_period(?freq:Dynamic):Dynamic;
	/**
		Calculate TimedeltaIndex of difference between index
		values and index converted to periodIndex at specified
		freq. Used for vectorized offsets
		
		Parameters
		----------
		freq: Period frequency
		
		Returns
		-------
		y: TimedeltaIndex
	**/
	public function to_perioddelta(freq:Dynamic):pandas.TimedeltaIndex;
	/**
		Return DatetimeIndex as object ndarray of datetime.datetime objects
		
		Returns
		-------
		datetimes : ndarray
	**/
	public function to_pydatetime():numpy.Ndarray;
	/**
		Create a Series with both index and values equal to the index keys
		useful with map for returning an indexer based on an index
		
		Parameters
		----------
		keep_tz : optional, defaults False.
		    return the data keeping the timezone.
		
		    If keep_tz is True:
		
		      If the timezone is not set, the resulting
		      Series will have a datetime64[ns] dtype.
		
		      Otherwise the Series will have an datetime64[ns, tz] dtype; the
		      tz will be preserved.
		
		    If keep_tz is False:
		
		      Series will have a datetime64[ns] dtype. TZ aware
		      objects will have the tz removed.
		index : Index, optional
		    index of resulting Series. If None, defaults to original index
		name : string, optional
		    name of resulting Series. If None, defaults to name of original
		    index
		
		Returns
		-------
		Series
	**/
	public function to_series(?keep_tz:Dynamic, ?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		return a list of the underlying data
	**/
	public function tolist():Dynamic;
	/**
		return the transpose, which is by definition self 
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var tz : Dynamic;
	/**
		Convert tz-aware DatetimeIndex from one time zone to another.
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time. Corresponding timestamps would be converted
		    to this time zone of the DatetimeIndex. A `tz` of None will
		    convert to UTC and remove the timezone information.
		
		Returns
		-------
		normalized : DatetimeIndex
		
		Raises
		------
		TypeError
		    If DatetimeIndex is tz-naive.
		
		See Also
		--------
		DatetimeIndex.tz : A timezone that has a variable offset from UTC
		DatetimeIndex.tz_localize : Localize tz-naive DatetimeIndex to a
		    given time zone, or remove timezone from a tz-aware DatetimeIndex.
		
		Examples
		--------
		With the `tz` parameter, we can change the DatetimeIndex
		to other time zones:
		
		>>> dti = pd.DatetimeIndex(start='2014-08-01 09:00',
		...                        freq='H', periods=3, tz='Europe/Berlin')
		
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
		
		>>> dti = pd.DatetimeIndex(start='2014-08-01 09:00',freq='H',
		...                        periods=3, tz='Europe/Berlin')
		
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
	public function tz_convert(tz:Dynamic):pandas.DatetimeIndex;
	/**
		Localize tz-naive DatetimeIndex to tz-aware DatetimeIndex.
		
		This method takes a time zone (tz) naive DatetimeIndex object and
		makes this time zone aware. It does not move the time to another
		time zone.
		Time zone localization helps to switch from time zone aware to time
		zone unaware objects.
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone to convert timestamps to. Passing ``None`` will
		    remove the time zone information preserving local time.
		ambiguous : str {'infer', 'NaT', 'raise'} or bool array, default 'raise'
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False signifies a
		      non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
		errors : {'raise', 'coerce'}, default 'raise'
		    - 'raise' will raise a NonExistentTimeError if a timestamp is not
		       valid in the specified time zone (e.g. due to a transition from
		       or to DST time)
		    - 'coerce' will return NaT if the timestamp can not be converted
		      to the specified time zone
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		DatetimeIndex
		    Index converted to the specified time zone.
		
		Raises
		------
		TypeError
		    If the DatetimeIndex is tz-aware and tz is not None.
		
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
	**/
	public function tz_localize(tz:Dynamic, ?ambiguous:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Alias for tz attribute
	**/
	public var tzinfo : Dynamic;
	/**
		Specialized union for DatetimeIndex objects. If combine
		overlapping ranges with the same DateOffset, will be much
		faster than Index.union
		
		Parameters
		----------
		other : DatetimeIndex or array-like
		
		Returns
		-------
		y : Index or DatetimeIndex
	**/
	public function union(other:Dynamic):Dynamic;
	/**
		A bit of a hack to accelerate unioning a collection of indexes
	**/
	public function union_many(others:Dynamic):Dynamic;
	/**
		Return unique values in the index. Uniques are returned in order
		of appearance, this does NOT sort.
		
		Parameters
		----------
		level : int or str, optional, default None
		    Only return values from specified level (for MultiIndex)
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		Index without duplicates
		
		See Also
		--------
		unique
		Series.unique
	**/
	public function unique(?level:Dynamic):Dynamic;
	/**
		Returns object containing counts of unique values.
		
		The resulting object will be in descending order so that the
		first element is the most frequently-occurring element.
		Excludes NA values by default.
		
		Parameters
		----------
		normalize : boolean, default False
		    If True then the object returned will contain the relative
		    frequencies of the unique values.
		sort : boolean, default True
		    Sort by values
		ascending : boolean, default False
		    Sort in ascending order
		bins : integer, optional
		    Rather than count values, group them into half-open bins,
		    a convenience for pd.cut, only works with numeric data
		dropna : boolean, default True
		    Don't include counts of NaN.
		
		Returns
		-------
		counts : Series
	**/
	public function value_counts(?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):pandas.Series;
	/**
		return the underlying data as an ndarray 
	**/
	public var values : Dynamic;
	public function view(?cls:Dynamic):Dynamic;
	/**
		The week ordinal of the year
	**/
	public var week : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6
	**/
	public var weekday : Dynamic;
	/**
		The name of day in a week (ex: Friday)
		
		.. deprecated:: 0.23.0
	**/
	public var weekday_name : Dynamic;
	/**
		The week ordinal of the year
	**/
	public var weekofyear : Dynamic;
	/**
		.. versionadded:: 0.19.0
		
		Return an Index of same shape as self and whose corresponding
		entries are from self where cond is True and otherwise are from
		other.
		
		Parameters
		----------
		cond : boolean array-like with the same length as self
		other : scalar, or array-like
	**/
	public function where(cond:Dynamic, ?other:Dynamic):Dynamic;
	/**
		The year of the datetime
	**/
	public var year : Dynamic;
}