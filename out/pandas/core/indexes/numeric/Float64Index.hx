/* This file is generated, do not edit! */
package pandas.core.indexes.numeric;
@:pythonImport("pandas.core.indexes.numeric", "Float64Index") extern class Float64Index {
	/**
		Return the transpose, which is by definition self.
	**/
	public var T : Dynamic;
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	/**
		The array interface, return my values.
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Gets called after a ufunc.
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
		Return a boolean indicating whether the provided key is in the index.
		
		Parameters
		----------
		key : label
		    The key to check if it is present in the index.
		
		Returns
		-------
		bool
		    Whether the key search is in the index.
		
		See Also
		--------
		Index.isin : Returns an ndarray of boolean dtype indicating whether the
		    list-like key is in the index.
		
		Examples
		--------
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx
		Int64Index([1, 2, 3, 4], dtype='int64')
		
		>>> idx.contains(2)
		True
		>>> idx.contains(6)
		False
		
		This is equivalent to:
		
		>>> 2 in idx
		True
		>>> 6 in idx
		False
	**/
	public function __contains__(other:Dynamic):Dynamic;
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
		Provide method name lookup and completion
		Only provide 'public' methods
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
	public function __inv__():Dynamic;
	/**
		Return an iterator of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
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
		Necessary for making this object picklable.
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
	static public var _accessors : Dynamic;
	/**
		Add in comparison methods.
	**/
	static public function _add_comparison_methods():Dynamic;
	/**
		Add in logical methods.
	**/
	static public function _add_logical_methods():Dynamic;
	/**
		Add in logical methods to disable.
	**/
	static public function _add_logical_methods_disabled():Dynamic;
	static public function _add_numeric_methods():Dynamic;
	/**
		Add in the numeric add/sub methods to disable.
	**/
	static public function _add_numeric_methods_add_sub_disabled():Dynamic;
	/**
		Add in numeric methods.
	**/
	static public function _add_numeric_methods_binary():Dynamic;
	/**
		Add in numeric methods to disable other than add/sub.
	**/
	static public function _add_numeric_methods_disabled():Dynamic;
	/**
		Add in numeric unary methods.
	**/
	static public function _add_numeric_methods_unary():Dynamic;
	/**
		Check value is valid for scalar op.
	**/
	public function _assert_can_do_op(value:Dynamic):Dynamic;
	public function _assert_can_do_setop(other:Dynamic):Dynamic;
	/**
		Subclasses need to override this only if the process of casting data
		from some accepted dtype to the internal dtype(s) bears the risk of
		truncation (e.g. float to int).
	**/
	static public function _assert_safe_casting(data:Dynamic, subarr:Dynamic):Dynamic;
	/**
		Internal method to handle NA filling of take.
	**/
	public function _assert_take_fillable(values:Dynamic, indices:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?na_value:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
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
		Check if we are allowing reindexing with this particular indexer.
		
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
		We need to coerce a scalar to a compat for our index type.
		
		Parameters
		----------
		item : scalar item to coerce
	**/
	public function _coerce_scalar_to_index(item:Dynamic):Dynamic;
	/**
		Coerces data to ndarray.
		
		Converts other iterables to list first and then to array.
		Does not touch ndarrays.
		
		Raises
		------
		TypeError
		    When the data passed in is a scalar.
	**/
	static public function _coerce_to_ndarray(data:Dynamic):Dynamic;
	static public var _comparables : Dynamic;
	public function _concat(to_concat:Dynamic, name:Dynamic):Dynamic;
	/**
		Concatenate to_concat which has the same class.
	**/
	public function _concat_same_dtype(indexes:Dynamic, name:Dynamic):Dynamic;
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
	public function _convert_tolerance(tolerance:Dynamic, target:Dynamic):Dynamic;
	static public var _data : Dynamic;
	/**
		Double-precision floating-point number type, compatible with Python `float`
		and C ``double``.
		Character code: ``'d'``.
		Canonical name: ``np.double``.
		Alias: ``np.float_``.
		Alias *on this platform*: ``np.float64``: 64-bit precision floating-point number type: sign bit, 11 bits exponent, 52 bits mantissa.
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
	public function _evaluate_with_datetime_like(other:Dynamic, op:Dynamic):Dynamic;
	public function _evaluate_with_timedelta_like(other:Dynamic, op:Dynamic):Dynamic;
	public function _filter_indexer_tolerance(target:Dynamic, indexer:Dynamic, tolerance:Dynamic):Dynamic;
	/**
		Return a list of tuples of the (attr,formatted_value).
	**/
	public function _format_attrs():Dynamic;
	/**
		Return the formatted data as a unicode string.
	**/
	public function _format_data(?name:Dynamic):Dynamic;
	/**
		Actually format specific types of the index.
	**/
	public function _format_native_types(?na_rep:Dynamic, ?float_format:Dynamic, ?decimal:Dynamic, ?quoting:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _format_space():Dynamic;
	public function _format_with_header(header:Dynamic, ?na_rep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the formatter function.
	**/
	public var _formatter_func : Dynamic;
	/**
		Return an attributes dict for my class.
	**/
	public function _get_attributes_dict():Dynamic;
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
		Return an Index of values for requested level.
		
		This is primarily useful to get an individual level of values from a
		MultiIndex, but is provided on Index as well for compatability.
		
		Parameters
		----------
		level : int or str
		    It is either the integer position or the name of the level.
		
		Returns
		-------
		values : Index
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
	/**
		If the result of a set operation will be self,
		return self, unless the name changes, in which
		case make a shallow copy of self.
	**/
	public function _get_reconciled_name_object(other:Dynamic):Dynamic;
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
	public function _inner_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Consistent invalid indexer message.
	**/
	public function _invalid_indexer(form:Dynamic, key:Dynamic):Dynamic;
	/**
		Whether the object has a single dtype.
		
		By definition, Series and Index are always considered homogeneous.
		A MultiIndex may or may not be homogeneous, depending on the
		dtypes of the levels.
		
		See Also
		--------
		DataFrame._is_homogeneous_type
		MultiIndex._is_homogeneous_type
	**/
	public var _is_homogeneous_type : Dynamic;
	/**
		Return a boolean if we need a qualified .info display.
	**/
	public function _is_memory_usage_qualified():Dynamic;
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
		Return if each value is NaN.
	**/
	public var _isnan : Dynamic;
	/**
		The join method *only* affects the level of the resulting
		MultiIndex. Otherwise it just exactly aligns the Index data to the
		labels of the level in the MultiIndex.
		
		If ```keep_order == True```, the order of the data indexed by the
		MultiIndex will not be changed; otherwise, it will tie out
		with `other`.
	**/
	public function _join_level(other:Dynamic, level:Dynamic, ?how:Dynamic, ?return_indexers:Dynamic, ?keep_order:Dynamic):Dynamic;
	public function _join_monotonic(other:Dynamic, ?how:Dynamic, ?return_indexers:Dynamic):Dynamic;
	public function _join_multi(other:Dynamic, how:Dynamic, ?return_indexers:Dynamic):Dynamic;
	public function _join_non_unique(other:Dynamic, ?how:Dynamic, ?return_indexers:Dynamic):Dynamic;
	static public var _join_precedence : Dynamic;
	public function _left_indexer(left:Dynamic, right:Dynamic):Dynamic;
	public function _left_indexer_unique(left:Dynamic, right:Dynamic):Dynamic;
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
		If we have a float key and are not a floating index, then try to cast
		to an int if equivalent.
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
		Update Index attributes (e.g. freq) depending on op.
	**/
	public function _maybe_update_attributes(attrs:Dynamic):Dynamic;
	public function _mpl_repr():Dynamic;
	static public var _na_value : Dynamic;
	public var _nan_idxs : Dynamic;
	/**
		The data as an ndarray, possibly losing information.
		
		The expectation is that this is cheap to compute, and is primarily
		used for interacting with our indexers.
		
		- categorical -> codes
	**/
	public var _ndarray_values : Dynamic;
	public function _outer_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		perform the reduction type operation if we can 
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
		Initializes or resets ``_id`` attribute with new object.
	**/
	public function _reset_identity():Dynamic;
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
		kwargs : updates the default attributes for this Index
	**/
	public function _shallow_copy(?values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new Index inferring the class with passed value, don't copy
		the data, use the same object attributes with passed in attributes
		taking precedence.
		
		*this is an internal non-public method*
		
		Parameters
		----------
		values : the values to create the new Index, optional
		kwargs : updates the default attributes for this Index
	**/
	public function _shallow_copy_with_infer(values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		We require that we have a dtype compat for the values. If we are passed
		a non-dtype compat, then coerce using the constructor.
		
		Must be careful not to recurse.
	**/
	static public function _simple_new(values:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Convert to object if we are a categorical.
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
		Necessary for making this object picklable.
	**/
	public function _unpickle_compat(state:Dynamic):Dynamic;
	public function _update_inplace(result:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return valid other; evaluate or raise TypeError if we are not of
		the appropriate type.
		
		Notes
		-----
		This is an internal method called by ops.
	**/
	public function _validate_for_numeric_binop(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Validate if we can perform a numeric unary operation.
	**/
	public function _validate_for_numeric_unaryop(op:Dynamic, opstr:Dynamic):Dynamic;
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
	public function _validate_sort_keyword(sort:Dynamic):Dynamic;
	/**
		The best array representation.
		
		This is an ndarray, ExtensionArray, or Index subclass. This differs
		from ``_ndarray_values``, which always returns an ndarray.
		
		Both ``_values`` and ``_ndarray_values`` are consistent between
		``Series`` and ``Index``.
		
		It may differ from the public '.values' method.
		
		index             | values          | _values       | _ndarray_values |
		----------------- | --------------- | ------------- | --------------- |
		Index             | ndarray         | ndarray       | ndarray         |
		CategoricalIndex  | Categorical     | Categorical   | ndarray[int]    |
		DatetimeIndex     | ndarray[M8ns]   | ndarray[M8ns] | ndarray[M8ns]   |
		DatetimeIndex[tz] | ndarray[M8ns]   | DTI[tz]       | ndarray[M8ns]   |
		PeriodIndex       | ndarray[object] | PeriodArray   | ndarray[int]    |
		IntervalIndex     | IntervalArray   | IntervalArray | ndarray[object] |
		
		See Also
		--------
		values
		_ndarray_values
	**/
	public var _values : Dynamic;
	public function _wrap_joined_index(joined:Dynamic, other:Dynamic):Dynamic;
	public function _wrap_setop_result(other:Dynamic, result:Dynamic):Dynamic;
	public function all(?other:Dynamic):Dynamic;
	public function any(?other:Dynamic):Dynamic;
	/**
		Append a collection of Index options together.
		
		Parameters
		----------
		other : Index or list/tuple of indices
		
		Returns
		-------
		appended : Index
	**/
	public function append(other:Dynamic):pandas.Index;
	/**
		Return a ndarray of the maximum argument indexer.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series
		skipna : bool, default True
		
		See Also
		--------
		numpy.ndarray.argmax
	**/
	public function argmax(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Return a ndarray of the minimum argument indexer.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series
		skipna : bool, default True
		
		See Also
		--------
		numpy.ndarray.argmin
	**/
	public function argmin(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
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
		numpy.ndarray
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
		
		.. versionadded:: 0.24.0
		
		Returns
		-------
		array : ExtensionArray
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
		[a, b, a]
		Categories (2, object): [a, b]
	**/
	public var array : Dynamic;
	static public var asi8 : Dynamic;
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
		Finds the locations (indices) of the labels from the index for
		every entry in the `where` argument.
		
		As in the `asof` function, if the label (a particular entry in
		`where`) is not in the index, the latest index label upto the
		passed label is chosen and its index returned.
		
		If all of the labels in the index are later than a label in `where`,
		-1 is returned.
		
		`mask` is used to ignore NA values in the index during calculation.
		
		Parameters
		----------
		where : Index
		    An Index consisting of an array of timestamps.
		mask : array-like
		    Array of booleans denoting where values in the original
		    data are not NA.
		
		Returns
		-------
		numpy.ndarray
		    An array of locations (indices) of the labels from the Index
		    which correspond to the return values of the `asof` function
		    for every element in `where`.
	**/
	public function asof_locs(where:Dynamic, mask:Dynamic):Dynamic;
	/**
		Create an Index with values cast to dtypes. The class of a new Index
		is determined by dtype. When conversion is impossible, a ValueError
		exception is raised.
		
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
		
		    .. versionadded:: 0.19.0
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return the base object if the memory of the underlying data is shared.
	**/
	public var base : Dynamic;
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
		
		See Also
		--------
		Index.isin : Returns an ndarray of boolean dtype indicating whether the
		    list-like key is in the index.
		
		Examples
		--------
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx
		Int64Index([1, 2, 3, 4], dtype='int64')
		
		>>> idx.contains(2)
		True
		>>> idx.contains(6)
		False
		
		This is equivalent to:
		
		>>> 2 in idx
		True
		>>> 6 in idx
		False
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
		Return the data pointer of the underlying data.
	**/
	public var data : Dynamic;
	/**
		Make new Index with passed location(-s) deleted.
		
		Returns
		-------
		new_index : Index
	**/
	public function delete(loc:Dynamic):Dynamic;
	/**
		Return a new Index with elements from the index that are not in
		`other`.
		
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
		
		    .. versionadded:: 0.24.0
		
		    .. versionchanged:: 0.24.1
		
		       Changed the default value from ``True`` to ``None``
		       (without change in behaviour).
		
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
		
		.. versionadded:: 0.23.1 (support for non-MultiIndex)
		
		Parameters
		----------
		level : int, str, or list-like, default 0
		    If a string is given, must be the name of a level
		    If list-like, elements must be names or indexes of levels.
		
		Returns
		-------
		index : Index or MultiIndex
	**/
	public function droplevel(?level:Dynamic):Dynamic;
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
	/**
		Return the dtype object of the underlying data.
	**/
	public var dtype : Dynamic;
	/**
		Return the dtype str of the underlying data.
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
		
		Returns
		-------
		numpy.ndarray
		
		See Also
		--------
		pandas.Series.duplicated : Equivalent method on pandas.Series.
		pandas.DataFrame.duplicated : Equivalent method on pandas.DataFrame.
		pandas.Index.drop_duplicates : Remove duplicate values from Index.
		
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
		cut : Discretize continuous-valued array.
		unique : Find the unique value in an array.
		
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
		
		Notice that ``'b'`` is in ``uniques.categories``, despite not being
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
		filled : Index
	**/
	public function fillna(?value:Dynamic, ?downcast:Dynamic):pandas.Index;
	/**
		Return the ndarray.flags for the underlying data.
	**/
	public var flags : Dynamic;
	/**
		Render a string representation of the Index.
	**/
	public function format(?name:Dynamic, ?formatter:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Extract duplicated index elements.
		
		.. deprecated:: 0.23.0
		    Use idx[idx.duplicated()].unique() instead
		
		Returns a sorted list of index elements which appear more than once in
		the index.
		
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
		
		>>> pd.Index([1, 2, 2, 3, 3, 3, 4]).get_duplicates()  # doctest: +SKIP
		[2, 3]
		
		Note that for a DatetimeIndex, it does not return a list but a new
		DatetimeIndex:
		
		>>> dates = pd.to_datetime(['2018-01-01', '2018-01-02', '2018-01-03',
		...                         '2018-01-03', '2018-01-04', '2018-01-04'],
		...                        format='%Y-%m-%d')
		>>> pd.Index(dates).get_duplicates()  # doctest: +SKIP
		DatetimeIndex(['2018-01-03', '2018-01-04'],
		              dtype='datetime64[ns]', freq=None)
		
		Sorts duplicated elements even when indexes are unordered.
		
		>>> pd.Index([1, 2, 3, 2, 3, 4, 3]).get_duplicates()  # doctest: +SKIP
		[2, 3]
		
		Return empty array-like structure when all elements are unique.
		
		>>> pd.Index([1, 2, 3, 4]).get_duplicates()  # doctest: +SKIP
		[]
		>>> dates = pd.to_datetime(['2018-01-01', '2018-01-02', '2018-01-03'],
		...                        format='%Y-%m-%d')
		>>> pd.Index(dates).get_duplicates()  # doctest: +SKIP
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
		
		Returns
		-------
		indexer : ndarray of int
		    Integers from 0 to n - 1 indicating that the index at these
		    positions matches the corresponding target values. Missing values
		    in the target are marked by -1.
		
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
		
		This dispatches to get_indexer or get_indexer_nonunique
		as appropriate.
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
		Return an Index of values for requested level.
		
		This is primarily useful to get an individual level of values from a
		MultiIndex, but is provided on Index as well for compatability.
		
		Parameters
		----------
		level : int or str
		    It is either the integer position or the name of the level.
		
		Returns
		-------
		values : Index
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
	public function get_level_values(level:Dynamic):pandas.Index;
	/**
		Get integer location, slice or boolean mask for requested label.
		
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
		
		    Tolerance may be a scalar
		    value, which applies the same tolerance to all values, or
		    list-like, which applies variable tolerance per element. List-like
		    includes list, tuple, array, Series, and must be the same size as
		    the index and its dtype must exactly match the index's type.
		
		    .. versionadded:: 0.21.0 (list-like tolerance)
		
		Returns
		-------
		loc : int if unique index, slice if monotonic index, else mask
		
		Examples
		---------
		>>> unique_index = pd.Index(list('abc'))
		>>> unique_index.get_loc('b')
		1
		
		>>> monotonic_index = pd.Index(list('abbc'))
		>>> monotonic_index.get_loc('b')
		slice(1, 3, None)
		
		>>> non_monotonic_index = pd.Index(list('abcb'))
		>>> non_monotonic_index.get_loc('b')
		array([False,  True, False,  True], dtype=bool)
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
		we always want to get an index value, never a value 
	**/
	public function get_value(series:Dynamic, key:Dynamic):Dynamic;
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
		Return if I have any nans; enables various perf speedups.
	**/
	public var hasnans : Dynamic;
	public function holds_integer():Dynamic;
	/**
		Similar to equals, but check that other comparable attributes are
		also equal.
	**/
	public function identical(other:Dynamic):Dynamic;
	/**
		Always 'floating' for ``Float64Index``
	**/
	public var inferred_type : Dynamic;
	/**
		Make new Index inserting new item at location.
		
		Follows Python list.append semantics for negative values.
		
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
		
		    .. versionadded:: 0.24.0
		
		    .. versionchanged:: 0.24.1
		
		       Changed the default from ``True`` to ``False``, to match
		       the behaviour of 0.23.4 and earlier.
		
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
	public function is_lexsorted_for_tuple(tup:Dynamic):Dynamic;
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
	public function is_numeric():Dynamic;
	public function is_object():Dynamic;
	public function is_type_compatible(kind:Dynamic):Dynamic;
	public var is_unique : Dynamic;
	/**
		Return a boolean array where the index values are in `values`.
		
		Compute boolean array of whether each index value is found in the
		passed set of values. The length of the returned boolean array matches
		the length of the index.
		
		Parameters
		----------
		values : set or list-like
		    Sought values.
		
		    .. versionadded:: 0.18.1
		
		       Support for values as a set.
		
		level : str or int, optional
		    Name or position of the index level to use (if the index is a
		    `MultiIndex`).
		
		Returns
		-------
		is_contained : ndarray
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
		MultiIndex(levels=[[1, 2, 3], ['blue', 'green', 'red']],
		           codes=[[0, 1, 2], [2, 0, 1]],
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
	public function isin(values:Dynamic, ?level:Dynamic):numpy.Ndarray;
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
		pandas.Index.notna : Boolean inverse of isna.
		pandas.Index.dropna : Omit entries with missing values.
		pandas.isna : Top-level isna.
		Series.isna : Detect missing values in Series object.
		
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
		pandas.Index.notna : Boolean inverse of isna.
		pandas.Index.dropna : Omit entries with missing values.
		pandas.isna : Top-level isna.
		Series.isna : Detect missing values in Series object.
		
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
		Return the first element of the underlying data as a python scalar.
	**/
	public function item():Dynamic;
	/**
		Return the size of the dtype of the item of the underlying data.
	**/
	public var itemsize : Dynamic;
	/**
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
		Map values using input correspondence (a dict, Series, or function).
		
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
	public function max(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
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
		
		See Also
		--------
		numpy.ndarray.nbytes
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array if deep=False or if used on PyPy
	**/
	public function memory_usage(?deep:Dynamic):Dynamic;
	/**
		Return the minimum value of the Index.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series
		skipna : bool, default True
		
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
	public function min(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public var name : Dynamic;
	public var names : Dynamic;
	/**
		Return the number of bytes in the underlying data.
	**/
	public var nbytes : Dynamic;
	/**
		Number of dimensions of the underlying data, by definition 1.
	**/
	public var ndim : Dynamic;
	public var nlevels : Dynamic;
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
		
		See Also
		--------
		Index.notnull : Alias of notna.
		Index.isna: Inverse of notna.
		pandas.notna : Top-level notna.
		
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
		
		See Also
		--------
		Index.notnull : Alias of notna.
		Index.isna: Inverse of notna.
		pandas.notna : Top-level notna.
		
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
		Return a new Index of the values set with the mask.
		
		See Also
		--------
		numpy.ndarray.putmask
	**/
	public function putmask(mask:Dynamic, value:Dynamic):Dynamic;
	/**
		Return an ndarray of the flattened values of the underlying data.
		
		See Also
		--------
		numpy.ndarray.ravel
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		Create index with target's values (move/add/delete values
		as necessary).
		
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
		Alter Index or MultiIndex name.
		
		Able to set new names without level. Defaults to returning new index.
		Length of names must match number of levels in MultiIndex.
		
		Parameters
		----------
		name : label or list of labels
		    Name(s) to set.
		inplace : boolean, default False
		    Modifies the object directly, instead of creating a new Index or
		    MultiIndex.
		
		Returns
		-------
		Index
		    The same type as the caller or None if inplace is True.
		
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
		MultiIndex(levels=[['cobra', 'python'], [2018, 2019]],
		           codes=[[1, 1, 0, 0], [0, 1, 0, 1]],
		           names=['kind', 'year'])
		>>> idx.rename(['species', 'year'])
		MultiIndex(levels=[['cobra', 'python'], [2018, 2019]],
		           codes=[[1, 1, 0, 0], [0, 1, 0, 1]],
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
		int or array of int
		    A scalar or array of insertion points with the
		    same shape as `value`.
		
		    .. versionchanged :: 0.24.0
		        If `value` is a scalar, an int is now always returned.
		        Previously, scalar inputs returned an 1-item array for
		        :class:`Series` and :class:`Categorical`.
		
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
		3
		
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
		1
		
		>>> x.searchsorted(['bread'], side='right')
		array([3])
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Set Index or MultiIndex name.
		
		Able to set new names partially and by level.
		
		Parameters
		----------
		names : label or list of label
		    Name(s) to set.
		level : int, label or list of int or label, optional
		    If the index is a MultiIndex, level(s) to set (None for all
		    levels). Otherwise level must be None.
		inplace : bool, default False
		    Modifies the object directly, instead of creating a new Index or
		    MultiIndex.
		
		Returns
		-------
		Index
		    The same type as the caller or None if inplace is True.
		
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
		MultiIndex(levels=[['cobra', 'python'], [2018, 2019]],
		           codes=[[1, 1, 0, 0], [0, 1, 0, 1]])
		>>> idx.set_names(['kind', 'year'], inplace=True)
		>>> idx
		MultiIndex(levels=[['cobra', 'python'], [2018, 2019]],
		           codes=[[1, 1, 0, 0], [0, 1, 0, 1]],
		           names=['kind', 'year'])
		>>> idx.set_names('species', level=0)
		MultiIndex(levels=[['cobra', 'python'], [2018, 2019]],
		           codes=[[1, 1, 0, 0], [0, 1, 0, 1]],
		           names=['species', 'year'])
	**/
	public function set_names(names:Dynamic, ?level:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Fast lookup of value from 1-dimensional ndarray.
		
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
		pandas.Index
		    shifted index
		
		See Also
		--------
		Series.shift : Shift values of Series.
		
		Notes
		-----
		This method is only implemented for datetime-like index classes,
		i.e., DatetimeIndex, PeriodIndex and TimedeltaIndex.
		
		Examples
		--------
		Put the first 5 month starts of 2011 into an index.
		
		>>> month_starts = pd.date_range('1/1/2011', periods=5, freq='MS')
		>>> month_starts
		DatetimeIndex(['2011-01-01', '2011-02-01', '2011-03-01', '2011-04-01',
		               '2011-05-01'],
		              dtype='datetime64[ns]', freq='MS')
		
		Shift the index by 10 days.
		
		>>> month_starts.shift(10, freq='D')
		DatetimeIndex(['2011-01-11', '2011-02-11', '2011-03-11', '2011-04-11',
		               '2011-05-11'],
		              dtype='datetime64[ns]', freq=None)
		
		The default value of `freq` is the `freq` attribute of the index,
		which is 'MS' (month start) in this example.
		
		>>> month_starts.shift(10)
		DatetimeIndex(['2011-11-01', '2011-12-01', '2012-01-01', '2012-02-01',
		               '2012-03-01'],
		              dtype='datetime64[ns]', freq='MS')
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Return the number of elements in the underlying data.
	**/
	public var size : Dynamic;
	/**
		For an ordered or unique index, compute the slice indexer for input
		labels and step.
		
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
		indexer : slice
		
		Raises
		------
		KeyError : If key does not exist, or key is not unique and index is
		    not ordered.
		
		Notes
		-----
		This function assumes that the data is sorted, so use at your own peril
		
		Examples
		---------
		This is a method on all index types. For example you can do:
		
		>>> idx = pd.Index(list('abcd'))
		>>> idx.slice_indexer(start='b', end='c')
		slice(1, 3)
		
		>>> idx = pd.MultiIndex.from_arrays([list('abcd'), list('efgh')])
		>>> idx.slice_indexer(start='b', end=('c', 'g'))
		slice(1, 3)
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
		
		See Also
		--------
		Index.get_loc : Get location for a single label.
		
		Notes
		-----
		This method only works if the index is monotonic or unique.
		
		Examples
		---------
		>>> idx = pd.Index(list('abcd'))
		>>> idx.slice_locs(start='b', end='c')
		(1, 3)
	**/
	public function slice_locs(?start:Dynamic, ?end:Dynamic, ?step:Dynamic, ?kind:Dynamic):Dynamic;
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
		
		Returns
		-------
		sorted_index : pandas.Index
		    Sorted copy of the index.
		indexer : numpy.ndarray, optional
		    The indices that the index itself was sorted by.
		
		See Also
		--------
		pandas.Series.sort_values : Sort values of a Series.
		pandas.DataFrame.sort_values : Sort values in a DataFrame.
		
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
	public function sort_values(?return_indexer:Dynamic, ?ascending:Dynamic):Dynamic;
	/**
		For internal compatibility with with the Index API.
		
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
		Return the strides of the underlying data.
	**/
	public var strides : Dynamic;
	/**
		Return a summarized representation.
		
		.. deprecated:: 0.23.0
	**/
	public function summary(?name:Dynamic):Dynamic;
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
		
		    .. versionadded:: 0.24.0
		
		    .. versionchanged:: 0.24.1
		
		       Changed the default value from ``True`` to ``None``
		       (without change in behaviour).
		
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
		
		You can also use the ``^`` operator:
		
		>>> idx1 ^ idx2
		Int64Index([1, 5], dtype='int64')
	**/
	public function symmetric_difference(other:Dynamic, ?result_name:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Return a new Index of the values selected by the indices.
		
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
		
		See Also
		--------
		numpy.ndarray.take
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Identity method.
		
		.. versionadded:: 0.24.0
		
		This is implemented for compatability with subclass implementations
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
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		index : boolean, default True
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
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		See Also
		--------
		numpy.ndarray.tolist
	**/
	public function to_list():Dynamic;
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
		A NumPy ndarray representing the values in this Series or Index.
		
		.. versionadded:: 0.24.0
		
		
		Parameters
		----------
		dtype : str or numpy.dtype, optional
		    The dtype to pass to :meth:`numpy.asarray`
		copy : bool, default False
		    Whether to ensure that the returned value is a not a view on
		    another array. Note that ``copy=False`` does not *ensure* that
		    ``to_numpy()`` is no-copy. Rather, ``copy=True`` ensure that
		    a copy is made, even if not strictly necessary.
		
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
		array([Timestamp('2000-01-01 00:00:00+0100', tz='CET', freq='D'),
		       Timestamp('2000-01-02 00:00:00+0100', tz='CET', freq='D')],
		      dtype=object)
		
		Or ``dtype='datetime64[ns]'`` to return an ndarray of native
		datetime64 values. The values are converted to UTC and the timezone
		info is dropped.
		
		>>> ser.to_numpy(dtype="datetime64[ns]")
		... # doctest: +ELLIPSIS
		array(['1999-12-31T23:00:00.000000000', '2000-01-01T23:00:00...'],
		      dtype='datetime64[ns]')
	**/
	public function to_numpy(?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Create a Series with both index and values equal to the index keys
		useful with map for returning an indexer based on an index.
		
		Parameters
		----------
		index : Index, optional
		    index of resulting Series. If None, defaults to original index
		name : string, optional
		    name of resulting Series. If None, defaults to name of original
		    index
		
		Returns
		-------
		Series : dtype will be based on the type of the Index values.
	**/
	public function to_series(?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		See Also
		--------
		numpy.ndarray.tolist
	**/
	public function tolist():Dynamic;
	/**
		Return the transpose, which is by definition self.
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Form the union of two Index objects.
		
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
		
		    .. versionadded:: 0.24.0
		
		    .. versionchanged:: 0.24.1
		
		       Changed the default value from ``True`` to ``None``
		       (without change in behaviour).
		
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
	public function union(other:Dynamic, ?sort:Dynamic):pandas.Index;
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
		Return a Series containing counts of unique values.
		
		The resulting object will be in descending order so that the
		first element is the most frequently-occurring element.
		Excludes NA values by default.
		
		Parameters
		----------
		normalize : boolean, default False
		    If True then the object returned will contain the relative
		    frequencies of the unique values.
		sort : boolean, default True
		    Sort by values.
		ascending : boolean, default False
		    Sort in ascending order.
		bins : integer, optional
		    Rather than count values, group them into half-open bins,
		    a convenience for ``pd.cut``, only works with numeric data.
		dropna : boolean, default True
		    Don't include counts of NaN.
		
		Returns
		-------
		counts : Series
		
		See Also
		--------
		Series.count: Number of non-NA elements in a Series.
		DataFrame.count: Number of non-NA elements in a DataFrame.
		
		Examples
		--------
		>>> index = pd.Index([3, 1, 2, 3, 4, np.nan])
		>>> index.value_counts()
		3.0    2
		4.0    1
		2.0    1
		1.0    1
		dtype: int64
		
		With `normalize` set to `True`, returns the relative frequency by
		dividing all values by the sum of values.
		
		>>> s = pd.Series([3, 1, 2, 3, 4, np.nan])
		>>> s.value_counts(normalize=True)
		3.0    0.4
		4.0    0.2
		2.0    0.2
		1.0    0.2
		dtype: float64
		
		**bins**
		
		Bins can be useful for going from a continuous variable to a
		categorical variable; instead of counting unique
		apparitions of values, divide the index in the specified
		number of half-open bins.
		
		>>> s.value_counts(bins=3)
		(2.0, 3.0]      2
		(0.996, 2.0]    2
		(3.0, 4.0]      1
		dtype: int64
		
		**dropna**
		
		With `dropna` set to `False` we can also see NaN index values.
		
		>>> s.value_counts(dropna=False)
		3.0    2
		NaN    1
		4.0    1
		2.0    1
		1.0    1
		dtype: int64
	**/
	public function value_counts(?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):pandas.Series;
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
		
		Return the underlying data as an ndarray.
	**/
	public var values : Dynamic;
	public function view(?cls:Dynamic):Dynamic;
	/**
		Return an Index of same shape as self and whose corresponding
		entries are from self where cond is True and otherwise are from
		other.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		cond : boolean array-like with the same length as self
		other : scalar, or array-like
	**/
	public function where(cond:Dynamic, ?other:Dynamic):Dynamic;
}