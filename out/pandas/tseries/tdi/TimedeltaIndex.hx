/* This file is generated, do not edit! */
package pandas.tseries.tdi;
@:pythonImport("pandas.tseries.tdi", "TimedeltaIndex") extern class TimedeltaIndex {
	/**
		return the transpose, which is by definition self
	**/
	public var T : Dynamic;
	public function __abs__():Dynamic;
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
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Make a copy of this object.  Name and dtype sets those attributes on
		the new object.
		
		Parameters
		----------
		name : string, optional
		dtype : numpy dtype or pandas type
		
		Returns
		-------
		copy : Index
		
		Notes
		-----
		In most cases, there should be no functional difference from using
		``deep``, but if ``deep`` is passed it will attempt to deepcopy.
	**/
	public function __copy__(?names:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?deep:Dynamic):Dynamic;
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
	static public var __doc__ : Dynamic;
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __inv__():Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	public function __le__(other:Dynamic):Dynamic;
	/**
		return the length of the Index
	**/
	public function __len__():Dynamic;
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, ?data:Dynamic, ?unit:Dynamic, ?freq:Dynamic, ?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?copy:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?verify_integrity:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pos__():Dynamic;
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
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
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
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
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
	/**
		add in comparison methods 
	**/
	static public function _add_comparison_methods():Dynamic;
	public function _add_datelike(other:Dynamic):Dynamic;
	/**
		add in the datetimelike methods (as we may have to override the superclass) 
	**/
	static public function _add_datetimelike_methods():Dynamic;
	public function _add_delta(delta:Dynamic):Dynamic;
	public function _add_delta_td(other:Dynamic):Dynamic;
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
		add in numeric methods 
	**/
	static public function _add_numeric_methods():Dynamic;
	/**
		add in numeric methods to disable 
	**/
	static public function _add_numeric_methods_disabled():Dynamic;
	/**
		add in the numeric set-like methods to disable 
	**/
	static public function _add_numericlike_set_methods_disabled():Dynamic;
	static public var _allow_datetime_index_ops : Dynamic;
	static public var _allow_index_ops : Dynamic;
	static public var _allow_period_index_ops : Dynamic;
	static public var _arrmap : Dynamic;
	public function _assert_can_do_setop(other:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	public var _box_func : Dynamic;
	static public var _box_scalars : Dynamic;
	/**
		apply box func to passed values
	**/
	public function _box_values(values:Dynamic):Dynamic;
	public function _can_fast_union(other:Dynamic):Dynamic;
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
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	public function _convert_can_do_setop(other:Dynamic):Dynamic;
	/**
		passed a key that is tuplesafe that is integer based
		and we have a mixed index (e.g. number/labels). figure out
		the indexer. return None if we can't help
	**/
	public function _convert_list_indexer(keyarr:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		we don't allow integer or float indexing on datetime-like when using loc
		
		Parameters
		----------
		key : label of the slice bound
		kind : optional, type of the indexing operation (loc/ix/iloc/None)
	**/
	public function _convert_scalar_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		convert a slice indexer. disallow floats in the start/stop/step
		
		Parameters
		----------
		key : label of the slice bound
		kind : optional, type of the indexing operation (loc/ix/iloc/None)
	**/
	public function _convert_slice_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		called from the getitem slicers, determine how to treat the key
		whether positional or not 
	**/
	public function _convert_slice_indexer_getitem(key:Dynamic, ?is_index_slice:Dynamic):Dynamic;
	public function _convert_tolerance(tolerance:Dynamic):Dynamic;
	static public var _data : Dynamic;
	static public var _datetimelike_ops : Dynamic;
	public function _dir_additions():Dynamic;
	public function _dir_deletions():Dynamic;
	static public var _engine : Dynamic;
	static public function _engine_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prepare the append
		
		Returns
		-------
		list of to_concat, name of result Index
	**/
	public function _ensure_compat_append(other:Dynamic):Dynamic;
	public function _ensure_compat_concat():Dynamic;
	public function _evaluate_with_datetime_like(other:Dynamic, op:Dynamic, opstr:Dynamic):Dynamic;
	public function _evaluate_with_timedelta_like(other:Dynamic, op:Dynamic, opstr:Dynamic):Dynamic;
	public function _fast_union(other:Dynamic):Dynamic;
	public function _filter_indexer_tolerance(target:Dynamic, indexer:Dynamic, tolerance:Dynamic):Dynamic;
	/**
		Return a list of tuples of the (attr,formatted_value)
	**/
	public function _format_attrs():Dynamic;
	/**
		Return the formatted data as a unicode string
	**/
	public function _format_data():Dynamic;
	/**
		actually format my specific types 
	**/
	public function _format_native_types(?na_rep:Dynamic, ?date_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _format_space():Dynamic;
	public function _format_with_header(header:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _formatter_func : Dynamic;
	static public function _generate(start:Dynamic, end:Dynamic, periods:Dynamic, name:Dynamic, offset:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		return an attributes dict for my class 
	**/
	public function _get_attributes_dict():Dynamic;
	public function _get_duplicates():Dynamic;
	public function _get_field(m:Dynamic):Dynamic;
	public function _get_fill_indexer(target:Dynamic, method:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Fallback pad/backfill get_indexer that works for monotonic decreasing
		indexes and non-monotonic targets
	**/
	public function _get_fill_indexer_searchsorted(target:Dynamic, method:Dynamic, ?limit:Dynamic):Dynamic;
	public function _get_level_number(level:Dynamic):Dynamic;
	public function _get_names():Dynamic;
	/**
		Get the indexer for the nearest index labels; requires an index with
		values that can be subtracted from each other (e.g., not strings or
		tuples).
	**/
	public function _get_nearest_indexer(target:Dynamic, limit:Dynamic, tolerance:Dynamic):Dynamic;
	public function _get_string_slice(key:Dynamic, ?use_lhs:Dynamic, ?use_rhs:Dynamic):Dynamic;
	static public function _groupby(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _has_complex_internals : Dynamic;
	static public var _id : Dynamic;
	static public function _inner_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		consistent invalid indexer message 
	**/
	public function _invalid_indexer(form:Dynamic, key:Dynamic):Dynamic;
	static public var _is_numeric_dtype : Dynamic;
	/**
		create the join wrapper methods 
	**/
	public function _join_i8_wrapper(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function _make_str_accessor():Dynamic;
	/**
		If label is a string, cast it to timedelta according to resolution.
		
		
		Parameters
		----------
		label : object
		side : {'left', 'right'}
		kind : string / None
		
		Returns
		-------
		label :  object
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
		
		mask the result if needed, convert to the provided dtype if its not None
		
		This is an internal routine
	**/
	public function _maybe_mask_results(result:Dynamic, ?fill_value:Dynamic, ?convert:Dynamic):Dynamic;
	/**
		Update Index attributes (e.g. freq) depending on op 
	**/
	public function _maybe_update_attributes(attrs:Dynamic):Dynamic;
	public function _mpl_repr():Dynamic;
	static public var _na_value : Dynamic;
	static public function _outer_indexer(left:Dynamic, right:Dynamic):Dynamic;
	public function _partial_td_slice(key:Dynamic, freq:Dynamic, ?use_lhs:Dynamic, ?use_rhs:Dynamic):Dynamic;
	public function _possibly_promote(other:Dynamic):Dynamic;
	/**
		perform the reduction type operation if we can 
	**/
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		*this is an internal non-public method*
		
		Create a new index with target's values (move/add/delete values as necessary)
		use with non-unique Index and a possibly non-unique target
		
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
	public function _reindex_non_unique(target:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Initializes or resets ``_id`` attribute with new object
	**/
	public function _reset_identity():Dynamic;
	static public var _resolution : Dynamic;
	static public function _scalar_data_error(data:Dynamic):Dynamic;
	public function _searchsorted_monotonic(label:Dynamic, ?side:Dynamic):Dynamic;
	public function _set_names(values:Dynamic, ?level:Dynamic):Dynamic;
	/**
		create a new Index, don't copy the data, use the same object attributes
		with passed in attributes taking precedence
		
		*this is an internal non-public method*
		
		Parameters
		----------
		values : the values to create the new Index, optional
		infer : boolean, default False
		    if True, infer the new type of the passed values
		kwargs : updates the default attributes for this Index
	**/
	public function _shallow_copy(?values:Dynamic, ?infer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		we require the we have a dtype compat for the values
		if we are passed a non-dtype compat, then coerce using the constructor
		
		Must be careful not to recurse.
	**/
	static public function _simple_new(values:Dynamic, ?name:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _string_data_error(data:Dynamic):Dynamic;
	public function _sub_datelike(other:Dynamic):Dynamic;
	/**
		*this is an internal non-public method*
		
		return an array repr of this object, potentially casting to object
	**/
	public function _to_embed(?keep_tz:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	/**
		Necessary for making this object picklable
	**/
	public function _unpickle_compat(state:Dynamic):Dynamic;
	public function _update_inplace(result:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Validate index level.
		
		For single-level Index getting level number is a no-op, but some
		verification must be done like in MultiIndex.
	**/
	public function _validate_index_level(level:Dynamic):Dynamic;
	/**
		the internal implementation 
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
	public function append(other:Dynamic):Dynamic;
	/**
		return a ndarray of the maximum argument indexer
		
		See also
		--------
		numpy.ndarray.argmax
	**/
	public function argmax(?axis:Dynamic):Dynamic;
	/**
		return a ndarray of the minimum argument indexer
		
		See also
		--------
		numpy.ndarray.argmin
	**/
	public function argmin(?axis:Dynamic):Dynamic;
	/**
		return an ndarray indexer of the underlying data
		
		See also
		--------
		numpy.ndarray.argsort
	**/
	public function argsort(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var asi8 : Dynamic;
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
	public function astype(dtype:Dynamic):Dynamic;
	/**
		return the base object if the memory of the underlying data is shared 
	**/
	public var base : Dynamic;
	/**
		Return a dataframe of the components (days, hours, minutes,
		seconds, milliseconds, microseconds, nanoseconds) of the Timedeltas.
		
		Returns
		-------
		a DataFrame
	**/
	public var components : Dynamic;
	/**
		Make a copy of this object.  Name and dtype sets those attributes on
		the new object.
		
		Parameters
		----------
		name : string, optional
		dtype : numpy dtype or pandas type
		
		Returns
		-------
		copy : Index
		
		Notes
		-----
		In most cases, there should be no functional difference from using
		``deep``, but if ``deep`` is passed it will attempt to deepcopy.
	**/
	public function copy(?names:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		return the data pointer of the underlying data 
	**/
	public var data : Dynamic;
	/**
		Number of days for each element. 
	**/
	public var days : Dynamic;
	/**
		Make a new DatetimeIndex with passed location(s) deleted.
		
		Parameters
		----------
		loc: int, slice or array of ints
		    Indicate which sub-arrays to remove.
		
		Returns
		-------
		new_index : TimedeltaIndex
	**/
	public function delete(loc:Dynamic):Dynamic;
	public function diff(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute sorted set difference of two Index objects
		
		Parameters
		----------
		other : Index or array-like
		
		Returns
		-------
		diff : Index
		
		Notes
		-----
		One can do either of these and achieve the same result
		
		>>> index.difference(index2)
	**/
	public function difference(other:Dynamic):Dynamic;
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
	**/
	public function drop(labels:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Return Index with duplicate values removed
		
		Parameters
		----------
		
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Drop duplicates except for the first occurrence.
		    - ``last`` : Drop duplicates except for the last occurrence.
		    - False : Drop all duplicates.
		take_last : deprecated
		
		
		Returns
		-------
		deduplicated : Index
	**/
	public function drop_duplicates(?keep:Dynamic):Dynamic;
	public var dtype : Dynamic;
	static public var dtype_str : Dynamic;
	/**
		Return boolean np.array denoting duplicate values
		
		Parameters
		----------
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Mark duplicates as ``True`` except for the first occurrence.
		    - ``last`` : Mark duplicates as ``True`` except for the last occurrence.
		    - False : Mark all duplicates as ``True``.
		take_last : deprecated
		
		Returns
		-------
		duplicated : np.array
	**/
	public function duplicated(?keep:Dynamic):Dynamic;
	/**
		Determines if two Index objects contain the same elements.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Encode the object as an enumerated type or categorical variable
		
		Parameters
		----------
		sort : boolean, default False
		    Sort by values
		na_sentinel: int, default -1
		    Value to mark "not found"
		
		Returns
		-------
		labels : the indexer to the original array
		uniques : the unique Index
	**/
	public function factorize(?sort:Dynamic, ?na_sentinel:Dynamic):Dynamic;
	/**
		return the ndarray.flags for the underlying data 
	**/
	public var flags : Dynamic;
	/**
		Render a string representation of the Index
	**/
	public function format(?name:Dynamic, ?formatter:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var freq : Dynamic;
	/**
		return the frequency object as a string if its set, otherwise None 
	**/
	public var freqstr : Dynamic;
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
		
		    .. versionadded:: 0.17.0
		
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
	**/
	public function get_indexer_for(target:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return an indexer suitable for taking from a non unique index
		return the labels in the same order as the target, and
		return a missing indexer into the target (missing are marked as -1
		in the indexer); target must be an iterable 
	**/
	public function get_indexer_non_unique(target:Dynamic):Dynamic;
	/**
		Return vector of label values for requested level, equal to the length
		of the index
		
		Parameters
		----------
		level : int
		
		Returns
		-------
		values : ndarray
	**/
	public function get_level_values(level:Dynamic):Dynamic;
	/**
		Get integer location for requested label
		
		Returns
		-------
		loc : int
	**/
	public function get_loc(key:Dynamic, ?method:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Calculate slice bound that corresponds to given label.
		
		Returns leftmost (one-past-the-rightmost if ``side=='right'``) position
		of given label.
		
		Parameters
		----------
		label : object
		side : {'left', 'right'}
		kind : string / None, the type of indexer
	**/
	public function get_slice_bound(label:Dynamic, side:Dynamic, kind:Dynamic):Dynamic;
	/**
		Fast lookup of value from 1-dimensional ndarray. Only use this if you
		know what you're doing
	**/
	public function get_value(series:Dynamic, key:Dynamic):Dynamic;
	public function get_value_maybe_box(series:Dynamic, key:Dynamic):Dynamic;
	/**
		return the underlying data as an ndarray 
	**/
	public function get_values():Dynamic;
	public function groupby(f:Dynamic):Dynamic;
	public var has_duplicates : Dynamic;
	static public var hasnans : Dynamic;
	public function holds_integer():Dynamic;
	/**
		Similar to equals, but check that other comparable attributes are
		also equal
	**/
	public function identical(other:Dynamic):Dynamic;
	static public var inferred_freq : Dynamic;
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
		Specialized intersection for TimedeltaIndex objects. May be much faster
		than Index.intersection
		
		Parameters
		----------
		other : TimedeltaIndex or array-like
		
		Returns
		-------
		y : Index or TimedeltaIndex
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
	public var is_all_dates : Dynamic;
	public function is_boolean():Dynamic;
	public function is_categorical():Dynamic;
	public function is_floating():Dynamic;
	public function is_integer():Dynamic;
	public function is_lexsorted_for_tuple(tup:Dynamic):Dynamic;
	public function is_mixed():Dynamic;
	/**
		alias for is_monotonic_increasing (deprecated) 
	**/
	public var is_monotonic : Dynamic;
	/**
		return if the index is monotonic decreasing (only equal or
		decreasing) values.
	**/
	public var is_monotonic_decreasing : Dynamic;
	/**
		return if the index is monotonic increasing (only equal or
		increasing) values.
	**/
	public var is_monotonic_increasing : Dynamic;
	public function is_numeric():Dynamic;
	public function is_object():Dynamic;
	public function is_type_compatible(typ:Dynamic):Dynamic;
	static public var is_unique : Dynamic;
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
		return the first element of the underlying data as a python scalar 
	**/
	public function item():Dynamic;
	/**
		return the size of the dtype of the item of the underlying data 
	**/
	public var itemsize : Dynamic;
	/**
		See Index.join
	**/
	public function join(other:Dynamic, ?how:Dynamic, ?level:Dynamic, ?return_indexers:Dynamic):Dynamic;
	public function map(f:Dynamic):Dynamic;
	/**
		return the maximum value of the Index
		
		See also
		--------
		numpy.ndarray.max
	**/
	public function max(?axis:Dynamic):Dynamic;
	/**
		Number of microseconds (>= 0 and less than 1 second) for each element. 
	**/
	public var microseconds : Dynamic;
	/**
		return the minimum value of the Index
		
		See also
		--------
		numpy.ndarray.min
	**/
	public function min(?axis:Dynamic):Dynamic;
	static public var name : Dynamic;
	public var names : Dynamic;
	/**
		Number of nanoseconds (>= 0 and less than 1 microsecond) for each element. 
	**/
	public var nanoseconds : Dynamic;
	/**
		return the number of bytes in the underlying data 
	**/
	public var nbytes : Dynamic;
	/**
		return the number of dimensions of the underlying data, by definition 1 
	**/
	public var ndim : Dynamic;
	public var nlevels : Dynamic;
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
	public function nunique(?dropna:Dynamic):Dynamic;
	/**
		Return sorted copy of Index
		
		DEPRECATED: use :meth:`Index.sort_values`
	**/
	public function order(?return_indexer:Dynamic, ?ascending:Dynamic):Dynamic;
	/**
		return a new Index of the values set with the mask
		
		See also
		--------
		numpy.ndarray.putmask
	**/
	public function putmask(mask:Dynamic, value:Dynamic):Dynamic;
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
	public function reindex(target:Dynamic, ?method:Dynamic, ?level:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
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
	public function repeat(repeats:Dynamic, ?axis:Dynamic):Dynamic;
	static public var resolution : Dynamic;
	/**
		np.ndarray searchsorted compat 
	**/
	public function searchsorted(key:Dynamic, ?side:Dynamic):Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day) for each element. 
	**/
	public var seconds : Dynamic;
	/**
		Set new names on index. Defaults to returning new index.
		
		Parameters
		----------
		names : str or sequence
		    name(s) to set
		level : int or level name, or sequence of int / level names (default None)
		    If the index is a MultiIndex (hierarchical), level(s) to set (None for all levels)
		    Otherwise level must be None
		inplace : bool
		    if True, mutates in place
		
		Returns
		-------
		new index (of same type and class...etc) [if inplace, returns None]
		
		Examples
		--------
		>>> Index([1, 2, 3, 4]).set_names('foo')
		Int64Index([1, 2, 3, 4], dtype='int64')
		>>> Index([1, 2, 3, 4]).set_names(['foo'])
		Int64Index([1, 2, 3, 4], dtype='int64')
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
	public function shift(n:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		return the number of elements in the underlying data 
	**/
	public var size : Dynamic;
	/**
		For an ordered Index, compute the slice indexer for input labels and
		step
		
		Parameters
		----------
		start : label, default None
		    If None, defaults to the beginning
		end : label, default None
		    If None, defaults to the end
		step : int, default None
		kind : string, default None
		
		Returns
		-------
		indexer : ndarray or slice
		
		Notes
		-----
		This function assumes that the data is sorted, so use at your own peril
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
		kind : string, defaults None
		
		Returns
		-------
		start, end : int
	**/
	public function slice_locs(?start:Dynamic, ?end:Dynamic, ?step:Dynamic, ?kind:Dynamic):Dynamic;
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
		
		level, sort_remaining are compat paramaters
		
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
	static public function str(series:Dynamic):Dynamic;
	/**
		return the strides of the underlying data 
	**/
	public var strides : Dynamic;
	/**
		return a summarized representation
	**/
	public function summary(?name:Dynamic):Dynamic;
	/**
		Compute the sorted symmetric difference of two Index objects.
		
		Parameters
		----------
		
		other : Index or array-like
		result_name : str
		
		Returns
		-------
		sym_diff : Index
		
		Notes
		-----
		``sym_diff`` contains elements that appear in either ``idx1`` or
		``idx2`` but not both. Equivalent to the Index created by
		``(idx1 - idx2) + (idx2 - idx1)`` with duplicates dropped.
		
		The sorting of a result containing ``NaN`` values is not guaranteed
		across Python versions. See GitHub issue #6444.
		
		Examples
		--------
		>>> idx1 = Index([1, 2, 3, 4])
		>>> idx2 = Index([2, 3, 4, 5])
		>>> idx1.sym_diff(idx2)
		Int64Index([1, 5], dtype='int64')
		
		You can also use the ``^`` operator:
		
		>>> idx1 ^ idx2
		Int64Index([1, 5], dtype='int64')
	**/
	public function sym_diff(other:Dynamic, ?result_name:Dynamic):Dynamic;
	/**
		Analogous to ndarray.take
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		For an Index containing strings or datetime.datetime objects, attempt
		conversion to DatetimeIndex
	**/
	public function to_datetime(?dayfirst:Dynamic):Dynamic;
	/**
		slice and dice then format 
	**/
	public function to_native_types(?slicer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return TimedeltaIndex as object ndarray of datetime.timedelta objects
		
		Returns
		-------
		datetimes : ndarray
	**/
	public function to_pytimedelta():Dynamic;
	/**
		Create a Series with both index and values equal to the index keys
		useful with map for returning an indexer based on an index
		
		Returns
		-------
		Series : dtype will be based on the type of the Index values.
	**/
	public function to_series(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a list of the underlying data
	**/
	public function tolist():Dynamic;
	/**
		Total duration of each element expressed in seconds.
		
		.. versionadded:: 0.17.0
	**/
	public function total_seconds():Dynamic;
	/**
		return the transpose, which is by definition self 
	**/
	public function transpose():Dynamic;
	/**
		Specialized union for TimedeltaIndex objects. If combine
		overlapping ranges with the same DateOffset, will be much
		faster than Index.union
		
		Parameters
		----------
		other : TimedeltaIndex or array-like
		
		Returns
		-------
		y : Index or TimedeltaIndex
	**/
	public function union(other:Dynamic):Dynamic;
	/**
		Index.unique with handling for DatetimeIndex/PeriodIndex metadata
		
		Returns
		-------
		result : DatetimeIndex or PeriodIndex
	**/
	public function unique():Dynamic;
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
	public function value_counts(?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		return the underlying data as an ndarray 
	**/
	public var values : Dynamic;
	public function view(?cls:Dynamic):Dynamic;
}