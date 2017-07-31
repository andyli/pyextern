/* This file is generated, do not edit! */
package pandas.core.indexes.numeric;
@:pythonImport("pandas.core.indexes.numeric", "UInt64Index") extern class UInt64Index {
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
	public function __divmod__(other:Dynamic):Dynamic;
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
	/**
		Override numpy.ndarray's __getitem__ method to work as desired.
		
		This function adds lists and Series as valid boolean indexers
		(ndarrays only supports ndarray with dtype=bool).
		
		If resulting ndim != 1, plain ndarray is returned instead of
		corresponding `Index` subclass.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
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
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __inv__():Dynamic;
	public function __iter__():Dynamic;
	public function __le__(other:Dynamic):Dynamic;
	/**
		return the length of the Index
	**/
	public function __len__():Dynamic;
	public function __lt__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, ?data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?name:Dynamic, ?fastpath:Dynamic):Dynamic;
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pos__():Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
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
	public function __rpow__(other:Dynamic):Dynamic;
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
		Generates the total memory usage for a object that returns
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
	/**
		add in logical methods 
	**/
	static public function _add_logical_methods():Dynamic;
	/**
		add in logical methods to disable 
	**/
	static public function _add_logical_methods_disabled():Dynamic;
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
	static public var _allow_datetime_index_ops : Dynamic;
	static public var _allow_index_ops : Dynamic;
	static public var _allow_period_index_ops : Dynamic;
	/**
		Concatenate to_concat which has the same class
	**/
	public function _append_same_dtype(to_concat:Dynamic, name:Dynamic):Dynamic;
	static public function _arrmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check value is valid for scalar op 
	**/
	public function _assert_can_do_op(value:Dynamic):Dynamic;
	public function _assert_can_do_setop(other:Dynamic):Dynamic;
	/**
		Ensure incoming data can be represented as uints.
	**/
	static public function _assert_safe_casting(data:Dynamic, subarr:Dynamic):Dynamic;
	/**
		Internal method to handle NA filling of take 
	**/
	public function _assert_take_fillable(values:Dynamic, indices:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?na_value:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	static public var _box_scalars : Dynamic;
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
	static public var _constructor : Dynamic;
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
		Convert a scalar indexer.
		
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
	public function _convert_tolerance(tolerance:Dynamic):Dynamic;
	static public var _data : Dynamic;
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
		Base class for numpy scalar types.
		
		Class from which most (all?) numpy scalar types are derived.  For
		consistency, exposes the same API as `ndarray`, despite many
		consequent attributes being either "get-only," or completely irrelevant.
		This is the class from which it is strongly suggested users should derive
		custom scalar types.
	**/
	static public function _default_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _defer_to_indexing : Dynamic;
	public function _dir_additions():Dynamic;
	public function _dir_deletions():Dynamic;
	static public var _engine : Dynamic;
	static public function _engine_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _evaluate_with_datetime_like(other:Dynamic, op:Dynamic, opstr:Dynamic):Dynamic;
	public function _evaluate_with_timedelta_like(other:Dynamic, op:Dynamic, opstr:Dynamic):Dynamic;
	public function _evalute_compare(op:Dynamic):Dynamic;
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
	public function _format_native_types(?na_rep:Dynamic, ?quoting:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _format_space():Dynamic;
	public function _format_with_header(header:Dynamic, ?na_rep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the formatted data as a unicode string
	**/
	public var _formatter_func : Dynamic;
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
	public function _get_duplicates():Dynamic;
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
		of the index
		
		Parameters
		----------
		level : int
		
		Returns
		-------
		values : Index
	**/
	public function _get_level_values(level:Dynamic):pandas.Index;
	/**
		This is overriden on subclasses (namely, IntervalIndex) to control
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
	static public var _id : Dynamic;
	static public var _infer_as_myclass : Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function _inner_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		consistent invalid indexer message 
	**/
	public function _invalid_indexer(form:Dynamic, key:Dynamic):Dynamic;
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
	static public var _isnan : Dynamic;
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
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function _left_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _left_indexer_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _make_str_accessor():Dynamic;
	/**
		If we have a float key and are not a floating index
		then try to cast to an int if equivalent
	**/
	public function _maybe_cast_indexer(key:Dynamic):Dynamic;
	/**
		This function should be overloaded in subclasses that allow non-trivial
		casting on label-slice bounds, e.g. datetime-like indices allowing
		strings containing formatted datetimes.
		
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
	public function _maybe_promote(other:Dynamic):Dynamic;
	/**
		Update Index attributes (e.g. freq) depending on op 
	**/
	public function _maybe_update_attributes(attrs:Dynamic):Dynamic;
	public function _mpl_repr():Dynamic;
	static public var _na_value : Dynamic;
	static public var _nan_idxs : Dynamic;
	static public function _outer_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function _scalar_data_error(data:Dynamic):Dynamic;
	public function _searchsorted_monotonic(label:Dynamic, ?side:Dynamic):Dynamic;
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
		
		Must be careful not to recurse.
	**/
	static public function _simple_new(values:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		compat with MultiIndex 
	**/
	public function _sort_levels_monotonic():Dynamic;
	static public function _string_data_error(data:Dynamic):Dynamic;
	/**
		*this is an internal non-public method*
		
		return an array repr of this object, potentially casting to object
	**/
	public function _to_embed(?keep_tz:Dynamic):Dynamic;
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
	static public function _try_convert_to_int_index(data:Dynamic, copy:Dynamic, name:Dynamic):Dynamic;
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
	public function _validate_for_numeric_binop(other:Dynamic, op:Dynamic, opstr:Dynamic):Dynamic;
	/**
		validate if we can perform a numeric unary operation 
	**/
	public function _validate_for_numeric_unaryop(op:Dynamic, opstr:Dynamic):Dynamic;
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
		the internal implementation 
	**/
	public var _values : Dynamic;
	public function _wrap_joined_index(joined:Dynamic, other:Dynamic):Dynamic;
	public function _wrap_union_result(other:Dynamic, result:Dynamic):Dynamic;
	/**
		Return whether all elements are True
		
		Parameters
		----------
		All arguments to numpy.all are accepted.
		
		Returns
		-------
		all : bool or array_like (if axis is specified)
		    A single element array_like may be converted to bool.
	**/
	public function all(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether any element is True
		
		Parameters
		----------
		All arguments to numpy.any are accepted.
		
		Returns
		-------
		any : bool or array_like (if axis is specified)
		    A single element array_like may be converted to bool.
	**/
	public function any(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Returns the indices that would sort the index and its
		underlying data.
		
		Returns
		-------
		argsorted : numpy array
		
		See also
		--------
		numpy.ndarray.argsort
	**/
	public function argsort(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var asi8 : Dynamic;
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
		Make new Index with passed location(-s) deleted
		
		Returns
		-------
		new_index : Index
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
	**/
	public function drop(labels:Dynamic, ?errors:Dynamic):pandas.Index;
	/**
		Return Index with duplicate values removed
		
		Parameters
		----------
		
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Drop duplicates except for the first occurrence.
		    - ``last`` : Drop duplicates except for the last occurrence.
		    - False : Drop all duplicates.
		
		
		Returns
		-------
		deduplicated : Index
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
	static public var dtype : Dynamic;
	static public var dtype_str : Dynamic;
	/**
		Return boolean np.ndarray denoting duplicate values
		
		Parameters
		----------
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Mark duplicates as ``True`` except for the first
		      occurrence.
		    - ``last`` : Mark duplicates as ``True`` except for the last
		      occurrence.
		    - False : Mark all duplicates as ``True``.
		
		Returns
		-------
		duplicated : np.ndarray
	**/
	public function duplicated(?keep:Dynamic):Dynamic;
	public var empty : Dynamic;
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
		Render a string representation of the Index
	**/
	public function format(?name:Dynamic, ?formatter:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		of the index
		
		Parameters
		----------
		level : int
		
		Returns
		-------
		values : Index
	**/
	public function get_level_values(level:Dynamic):pandas.Index;
	/**
		Get integer location for requested label.
		
		Parameters
		----------
		key : label
		method : {None, 'pad'/'ffill', 'backfill'/'bfill', 'nearest'}, optional
		    * default: exact matches only.
		    * pad / ffill: find the PREVIOUS index value if no exact match.
		    * backfill / bfill: use NEXT index value if no exact match
		    * nearest: use the NEAREST index value if no exact match. Tied
		      distances are broken by preferring the larger index value.
		tolerance : optional
		    Maximum distance from index value for inexact matches. The value of
		    the index at the matching location most satisfy the equation
		    ``abs(index[loc] - key) <= tolerance``.
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		loc : int if unique index, possibly slice or mask if not
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
		kind : {'ix', 'loc', 'getitem'}
	**/
	public function get_slice_bound(label:Dynamic, side:Dynamic, kind:Dynamic):Dynamic;
	/**
		Fast lookup of value from 1-dimensional ndarray. Only use this if you
		know what you're doing
	**/
	public function get_value(series:Dynamic, key:Dynamic):Dynamic;
	/**
		return the underlying data as an ndarray 
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
	static public var hasnans : Dynamic;
	public function holds_integer():Dynamic;
	/**
		Similar to equals, but check that other comparable attributes are
		also equal
	**/
	public function identical(other:Dynamic):Dynamic;
	public var inferred_type : Dynamic;
	/**
		Make new Index inserting new item at location. Follows
		Python list.append semantics for negative values
		
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
		
		This returns a new Index with elements common to the index and `other`,
		preserving the order of the calling index.
		
		Parameters
		----------
		other : Index or array-like
		
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
	public function intersection(other:Dynamic):pandas.Index;
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
	public function is_categorical():Dynamic;
	public function is_floating():Dynamic;
	public function is_integer():Dynamic;
	public function is_interval():Dynamic;
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
	public function is_numeric():Dynamic;
	public function is_object():Dynamic;
	public function is_type_compatible(kind:Dynamic):Dynamic;
	static public var is_unique : Dynamic;
	/**
		Compute boolean array of whether each index value is found in the
		passed set of values.
		
		Parameters
		----------
		values : set or list-like
		    Sought values.
		
		    .. versionadded:: 0.18.1
		
		    Support for values as a set
		
		level : str or int, optional
		    Name or position of the index level to use (if the index is a
		    MultiIndex).
		
		Notes
		-----
		If `level` is specified:
		
		- if it is the name of one *and only one* index level, use that level;
		- otherwise it should be a number indicating level position.
		
		Returns
		-------
		is_contained : ndarray (boolean dtype)
	**/
	public function isin(values:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Detect missing values
		
		.. versionadded:: 0.20.0
		
		Returns
		-------
		a boolean array of whether my values are null
		
		See also
		--------
		pandas.isnull : pandas version
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
		*this is an internal non-public method*
		
		Compute join_index and indexers to conform data
		structures to the new index.
		
		Parameters
		----------
		other : Index
		how : {'left', 'right', 'inner', 'outer'}
		level : int or level name, default None
		return_indexers : boolean, default False
		sort : boolean, default False
		    Sort the join keys lexicographically in the result Index. If False,
		    the order of the join keys depends on the join type (how keyword)
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		join_index, (left_indexer, right_indexer)
	**/
	public function join(other:Dynamic, ?how:Dynamic, ?level:Dynamic, ?return_indexers:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Apply mapper function to an index.
		
		Parameters
		----------
		mapper : callable
		    Function to be applied.
		
		Returns
		-------
		applied : Union[Index, MultiIndex], inferred
		    The output of the mapping function applied to the index.
		    If the function returns a tuple with more than one element
		    a MultiIndex will be returned.
	**/
	public function map(mapper:Dynamic):Dynamic;
	/**
		The maximum value of the object 
	**/
	public function max():Dynamic;
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
		The minimum value of the object 
	**/
	public function min():Dynamic;
	static public var name : Dynamic;
	public var names : Dynamic;
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
		Reverse of isnull
		
		.. versionadded:: 0.20.0
		
		Returns
		-------
		a boolean array of whether my values are not null
		
		See also
		--------
		pandas.notnull : pandas version
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
		Repeat elements of an Index. Refer to `numpy.ndarray.repeat`
		for more information about the `repeats` argument.
		
		See also
		--------
		numpy.ndarray.repeat
	**/
	public function repeat(repeats:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		NOT IMPLEMENTED: do not call this method, as reshaping is not
		supported for Index objects and will raise an error.
		
		Reshape an Index.
	**/
	public function reshape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted IndexOpsMixin `self` such that, if the
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
		
		>>> x = pd.Categorical(['apple', 'bread', 'bread', 'cheese', 'milk' ])
		[apple, bread, bread, cheese, milk]
		Categories (4, object): [apple < bread < cheese < milk]
		
		>>> x.searchsorted('bread')
		array([1])     # Note: an array, not a scalar
		
		>>> x.searchsorted(['bread'])
		array([1])
		
		>>> x.searchsorted(['bread', 'eggs'])
		array([1, 4])
		
		>>> x.searchsorted(['bread', 'eggs'], side='right')
		array([3, 4])    # eggs before milk
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
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
		Shift Index containing datetime objects by input number of periods and
		DateOffset
		
		Returns
		-------
		shifted : Index
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic):pandas.Index;
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
		kind : {'ix', 'loc', 'getitem'} or None
		
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
		return the strides of the underlying data 
	**/
	public var strides : Dynamic;
	public function summary(?name:Dynamic):Dynamic;
	public function sym_diff(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		DEPRECATED: use :meth:`pandas.to_datetime` instead.
		
		For an Index containing strings or datetime.datetime objects, attempt
		conversion to DatetimeIndex
	**/
	public function to_datetime(?dayfirst:Dynamic):Dynamic;
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
		Create a Series with both index and values equal to the index keys
		useful with map for returning an indexer based on an index
		
		Returns
		-------
		Series : dtype will be based on the type of the Index values.
	**/
	public function to_series(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a list of the Index values
	**/
	public function tolist():Dynamic;
	/**
		return the transpose, which is by definition self 
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Form the union of two Index objects and sorts if possible.
		
		Parameters
		----------
		other : Index or array-like
		
		Returns
		-------
		union : Index
		
		Examples
		--------
		
		>>> idx1 = pd.Index([1, 2, 3, 4])
		>>> idx2 = pd.Index([3, 4, 5, 6])
		>>> idx1.union(idx2)
		Int64Index([1, 2, 3, 4, 5, 6], dtype='int64')
	**/
	public function union(other:Dynamic):pandas.Index;
	/**
		Return unique values in the object. Uniques are returned in order
		of appearance, this does NOT sort. Hash table-based unique.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		See Also
		--------
		unique
		Index.unique
		Series.unique
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
	public function value_counts(?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):pandas.Series;
	/**
		return the underlying data as an ndarray 
	**/
	public var values : Dynamic;
	public function view(?cls:Dynamic):Dynamic;
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
}