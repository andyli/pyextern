/* This file is generated, do not edit! */
package pandas.core.series;
@:pythonImport("pandas.core.series", "Series") extern class Series {
	/**
		return the transpose, which is by definition self
	**/
	static public var T : Dynamic;
	static public var _AXIS_ALIASES : Dynamic;
	static public var _AXIS_IALIASES : Dynamic;
	static public var _AXIS_LEN : Dynamic;
	static public var _AXIS_NAMES : Dynamic;
	static public var _AXIS_NUMBERS : Dynamic;
	static public var _AXIS_ORDERS : Dynamic;
	static public var _AXIS_REVERSED : Dynamic;
	static public var _AXIS_SLICEMAP : Dynamic;
	public function __abs__():Dynamic;
	public function __add__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	/**
		the array interface, return my values
	**/
	public function __array__(?result:Dynamic):Dynamic;
	/**
		Gets called prior to a ufunc
	**/
	public function __array_prepare__(result:Dynamic, ?context:Dynamic):Dynamic;
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
		True if the key is in the info axis 
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete item
	**/
	public function __delitem__(key:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
	public function __div__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	public function __eq__(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		propagate metadata from other to self
		
		Parameters
		----------
		other : the object from which to get the attributes that we are going
		    to propagate
		method : optional, a passed method name ; possibly to take different
		    types of propagation actions based on this
	**/
	public function __finalize__(other:Dynamic, ?method:Dynamic, kwargs:Dynamic):Dynamic;
	public function __float__():Dynamic;
	public function __floordiv__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ge__(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		After regular attribute access, try looking up the name
		This allows simpler access to columns for interactive use.
	**/
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	public function __gt__(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?data:Dynamic, ?index:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic):Dynamic;
	public function __int__():Dynamic;
	public function __invert__():Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	/**
		provide iteration over the values of the Series
		box values if necessary 
	**/
	public function __iter__():Dynamic;
	public function __itruediv__(other:Dynamic):Dynamic;
	public function __le__(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		return the length of the Series
	**/
	public function __len__():Dynamic;
	public function __long__():Dynamic;
	public function __lt__(other:Dynamic, ?axis:Dynamic):Dynamic;
	public function __mod__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __ne__(other:Dynamic, ?axis:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __radd__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdiv__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __rmod__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __rmul__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __rsub__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __rtruediv__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
	/**
		After regular attribute access, try setting the name
		This allows simpler access to columns for interactive use.
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	public function __sub__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(right:Dynamic, ?name:Dynamic, ?na_op:Dynamic):Dynamic;
	/**
		Return a string representation for a particular DataFrame
		
		Invoked by unicode(df) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	static public var _accessors : Dynamic;
	/**
		add the operations to the cls; evaluate the doc strings again 
	**/
	static public function _add_numeric_operations():Dynamic;
	public function _agg_by_level(name:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	public function _align_frame(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	public function _align_series(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	static public var _allow_index_ops : Dynamic;
	static public var _at : Dynamic;
	/**
		Perform generic binary operation with optional fill value
		
		Parameters
		----------
		other : Series
		func : binary operator
		fill_value : float or object
		    Value to substitute for NA/null values. If both Series are NA in a
		    location, the result will be NA regardless of the passed fill value
		level : int or level name, default None
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		combined : Series
	**/
	public function _binop(other:Dynamic, func:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _box_item_values(key:Dynamic, values:Dynamic):Dynamic;
	static public var _can_hold_na : Dynamic;
	/**
		check whether we allow in-place setting with this type of value 
	**/
	public function _check_inplace_setting(value:Dynamic):Dynamic;
	/**
		check if we are a view, have a cacher, and are of mixed type
		if so, then force a setitem_copy check
		
		should be called just near setting a value
		
		will return a boolean if it we are a view and are cached, but a single-dtype
		meaning that the cacher should be updated following setting
	**/
	public function _check_is_chained_assignment_possible():Dynamic;
	/**
		Validate percentiles. Used by describe and quantile 
	**/
	public function _check_percentile(q:Dynamic):Dynamic;
	/**
		Parameters
		----------
		stacklevel : integer, default 4
		   the level to show of the stack when the error is output
		t : string, the type of setting error
		force : boolean, default False
		   if True, then force showing an error
		
		validate if we are doing a settitem on a chained copy.
		
		If you call this function, be sure to set the stacklevel such that the
		user will see the error *at the level of setting*
		
		It is technically possible to figure out that we are setting on
		a copy even WITH a multi-dtyped pandas object. In other words, some blocks
		may be views while other are not. Currently _is_view will ALWAYS return False
		for multi-blocks to avoid having to handle this case.
		
		df = DataFrame(np.arange(0,9), columns=['count'])
		df['group'] = 'b'
		
		# this technically need not raise SettingWithCopy if both are view (which is not
		# generally guaranteed but is usually True
		# however, this is in general not a good practice and we recommend using .loc
		df.iloc[0:5]['group'] = 'a'
	**/
	public function _check_setitem_copy(?stacklevel:Dynamic, ?t:Dynamic, ?force:Dynamic):Dynamic;
	public function _clear_item_cache(?i:Dynamic):Dynamic;
	/**
		we are inplace consolidating; return None 
	**/
	public function _consolidate_inplace():Dynamic;
	/**
		return an axes dictionary for myself 
	**/
	public function _construct_axes_dict(?axes:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		return an axes dictionary for myself 
	**/
	public function _construct_axes_dict_for_slice(?axes:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		return an axes dictionary for the passed axes 
	**/
	public function _construct_axes_dict_from(axes:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		construct and returns axes if supplied in args/kwargs
		if require_all, raise if all axis arguments are not supplied
		return a tuple of (axes, kwargs) 
	**/
	public function _construct_axes_from_arguments(args:Dynamic, kwargs:Dynamic, ?require_all:Dynamic):Dynamic;
	static public var _constructor : Dynamic;
	static public var _constructor_expanddim : Dynamic;
	/**
		Used when a manipulation result has one lower dimension(s) as the
		original, such as DataFrame single columns slicing.
	**/
	static public var _constructor_sliced : Dynamic;
	/**
		Attempt to infer better dtype for object columns
		
		Parameters
		----------
		datetime : boolean, default False
		    If True, convert to date where possible.
		numeric : boolean, default False
		    If True, attempt to convert to numbers (including strings), with
		    unconvertible values becoming NaN.
		timedelta : boolean, default False
		    If True, convert to timedelta where possible.
		coerce : boolean, default False
		    If True, force conversion with unconvertible values converted to
		    nulls (NaN or NaT)
		copy : boolean, default True
		    If True, return a copy even if no copy is necessary (e.g. no
		    conversion was done). Note: This is meant for internal use, and
		    should not be confused with inplace.
		
		Returns
		-------
		converted : same as input object
	**/
	public function _convert(?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic, ?coerce:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		create an indexer like _name in the class 
	**/
	static public function _create_indexer(name:Dynamic, indexer:Dynamic):Dynamic;
	/**
		add the string-like attributes from the info_axis 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	public function _expand_axes(key:Dynamic):Dynamic;
	static public function _from_axes(data:Dynamic, axes:Dynamic, kwargs:Dynamic):Dynamic;
	public function _get_axis(axis:Dynamic):Dynamic;
	public function _get_axis_name(axis:Dynamic):Dynamic;
	public function _get_axis_number(axis:Dynamic):Dynamic;
	public function _get_axis_resolvers(axis:Dynamic):Dynamic;
	/**
		map the axis to the block_manager axis 
	**/
	public function _get_block_manager_axis(axis:Dynamic):Dynamic;
	public function _get_bool_data():Dynamic;
	/**
		return my cacher or None 
	**/
	public function _get_cacher():Dynamic;
	public function _get_index_resolvers():Dynamic;
	/**
		return the cached item, item represents a label indexer 
	**/
	public function _get_item_cache(item:Dynamic):Dynamic;
	public function _get_numeric_data():Dynamic;
	/**
		Internal function, should always return unicode string
	**/
	public function _get_repr(?name:Dynamic, ?header:Dynamic, ?length:Dynamic, ?dtype:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?max_rows:Dynamic):Dynamic;
	/**
		Return self[key].
	**/
	public function _get_val_at(key:Dynamic):Dynamic;
	public function _get_values(indexer:Dynamic):Dynamic;
	public function _get_values_tuple(key:Dynamic):Dynamic;
	public function _get_with(key:Dynamic):Dynamic;
	static public var _iat : Dynamic;
	/**
		return the cached item, item represents a positional indexer 
	**/
	public function _iget_item_cache(item:Dynamic):Dynamic;
	static public var _iloc : Dynamic;
	static public var _index : Dynamic;
	public function _indexed_same(other:Dynamic):Dynamic;
	static public var _info_axis : Dynamic;
	static public var _info_axis_name : Dynamic;
	static public var _info_axis_number : Dynamic;
	/**
		passed a manager and a axes dict 
	**/
	public function _init_mgr(mgr:Dynamic, ?axes:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		boolean : return if I am cached 
	**/
	static public var _is_cached : Dynamic;
	static public var _is_datelike_mixed_type : Dynamic;
	static public var _is_mixed_type : Dynamic;
	static public var _is_numeric_mixed_type : Dynamic;
	/**
		boolean : return if I am a view of another array 
	**/
	static public var _is_view : Dynamic;
	static public var _ix : Dynamic;
	/**
		Return the i-th value or values in the Series by location
		
		Parameters
		----------
		i : int, slice, or sequence of integers
		
		Returns
		-------
		value : scalar (int) or Series (slice, sequence)
	**/
	public function _ixs(i:Dynamic, ?axis:Dynamic):Dynamic;
	static public var _loc : Dynamic;
	public function _make_cat_accessor():Dynamic;
	public function _make_dt_accessor():Dynamic;
	public function _make_str_accessor():Dynamic;
	/**
		evaluate a function with possible input/output conversion if we are i8
		
		Parameters
		----------
		dropna : bool, default False
		   whether to drop values if necessary
	**/
	public function _maybe_box(func:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		the object has called back to us saying
		maybe it has changed
		
		numpy < 1.8 has an issue with object arrays and aliasing
		GH6026
	**/
	public function _maybe_cache_changed(item:Dynamic, value:Dynamic):Dynamic;
	/**
		see if we need to update our parent cacher
		if clear, then clear our cache
		
		Parameters
		----------
		clear : boolean, default False
		    clear the item cache
		verify_is_copy : boolean, default True
		    provide is_copy checks
	**/
	public function _maybe_update_cacher(?clear:Dynamic, ?verify_is_copy:Dynamic):Dynamic;
	static public var _metadata : Dynamic;
	/**
		check if we do need a multi reindex; this is for compat with
		higher dims
	**/
	public function _needs_reindex_multi(axes:Dynamic, method:Dynamic, level:Dynamic):Dynamic;
	/**
		consolidate _data. if the blocks have changed, then clear the cache 
	**/
	public function _protect_consolidate(f:Dynamic):Dynamic;
	/**
		perform a reduction operation
		
		if we have an ndarray as a value, then simply perform the operation,
		otherwise delegate to the object
	**/
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, kwds:Dynamic):Dynamic;
	/**
		perform the reinxed for all the axes 
	**/
	public function _reindex_axes(axes:Dynamic, level:Dynamic, limit:Dynamic, tolerance:Dynamic, method:Dynamic, fill_value:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_axis(new_index:Dynamic, fill_method:Dynamic, axis:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_indexer(new_index:Dynamic, indexer:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_multi(axes:Dynamic, copy:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		allow_dups indicates an internal call here 
	**/
	public function _reindex_with_indexers(reindexers:Dynamic, ?fill_value:Dynamic, ?copy:Dynamic, ?allow_dups:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		reset the cacher 
	**/
	public function _reset_cacher():Dynamic;
	/**
		set the _cacher attribute on the calling object with
		a weakref to cacher 
	**/
	public function _set_as_cached(item:Dynamic, cacher:Dynamic):Dynamic;
	/**
		override generic, we want to set the _typ here 
	**/
	public function _set_axis(axis:Dynamic, labels:Dynamic, ?fastpath:Dynamic):Dynamic;
	public function _set_is_copy(?ref:Dynamic, ?copy:Dynamic):Dynamic;
	public function _set_item(key:Dynamic, value:Dynamic):Dynamic;
	public function _set_labels(key:Dynamic, value:Dynamic):Dynamic;
	public function _set_subtyp(is_all_dates:Dynamic):Dynamic;
	public function _set_values(key:Dynamic, value:Dynamic):Dynamic;
	public function _set_with(key:Dynamic, value:Dynamic):Dynamic;
	public function _set_with_engine(key:Dynamic, value:Dynamic):Dynamic;
	/**
		provide axes setup for the major PandasObjects
		
		axes : the names of the axes in order (lowest to highest)
		info_axis_num : the axis of the selector dimension (int)
		stat_axis_num : the number of axis for the default stats (int)
		aliases : other names for a single axis (dict)
		slicers : how axes slice to others (dict)
		axes_are_reversed : boolean whether to treat passed axes as
		    reversed (DataFrame)
		build_axes : setup the axis properties (default True)
	**/
	static public function _setup_axes(axes:Dynamic, ?info_axis:Dynamic, ?stat_axis:Dynamic, ?aliases:Dynamic, ?slicers:Dynamic, ?axes_are_reversed:Dynamic, ?build_axes:Dynamic, ?ns:Dynamic):Dynamic;
	/**
		Construct a slice of this container.
		
		kind parameter is maintained for compatibility with Series slicing.
	**/
	public function _slice(slobj:Dynamic, ?axis:Dynamic, ?kind:Dynamic):Dynamic;
	static public var _stat_axis : Dynamic;
	static public var _stat_axis_name : Dynamic;
	static public var _stat_axis_number : Dynamic;
	static public var _typ : Dynamic;
	public function _unpickle_series_compat(state:Dynamic):Dynamic;
	/**
		replace self internals with result.
		
		Parameters
		----------
		verify_is_copy : boolean, default True
		    provide is_copy checks
	**/
	public function _update_inplace(result:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		validate the passed dtype 
	**/
	public function _validate_dtype(dtype:Dynamic):Dynamic;
	/**
		return the internal repr of this data 
	**/
	static public var _values : Dynamic;
	/**
		Returns a cross-section (row(s) or column(s)) from the Series/DataFrame.
		Defaults to cross-section on the rows (axis=0).
		
		Parameters
		----------
		key : object
		    Some label contained in the index, or partially in a MultiIndex
		axis : int, default 0
		    Axis to retrieve cross-section on
		level : object, defaults to first n levels (n=1 or len(key))
		    In case of a key partially contained in a MultiIndex, indicate
		    which levels are used. Levels can be referred by label or position.
		copy : boolean [deprecated]
		    Whether to make a copy of the data
		drop_level : boolean, default True
		    If False, returns object with same levels as self.
		
		Examples
		--------
		>>> df
		   A  B  C
		a  4  5  2
		b  4  0  9
		c  9  7  3
		>>> df.xs('a')
		A    4
		B    5
		C    2
		Name: a
		>>> df.xs('C', axis=1)
		a    2
		b    9
		c    3
		Name: C
		
		>>> df
		                    A  B  C  D
		first second third
		bar   one    1      4  1  8  9
		      two    1      7  5  5  0
		baz   one    1      6  6  8  0
		      three  2      5  3  5  3
		>>> df.xs(('baz', 'three'))
		       A  B  C  D
		third
		2      5  3  5  3
		>>> df.xs('one', level=1)
		             A  B  C  D
		first third
		bar   1      4  1  8  9
		baz   1      6  6  8  0
		>>> df.xs(('baz', 2), level=[0, 'third'])
		        A  B  C  D
		second
		three   5  3  5  3
		
		Returns
		-------
		xs : Series or DataFrame
		
		Notes
		-----
		xs is only for getting, not setting values.
		
		MultiIndex Slicers is a generic way to get/set values on any level or levels
		it is a superset of xs functionality, see :ref:`MultiIndex Slicers <advanced.mi_slicers>`
	**/
	public function _xs(key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?drop_level:Dynamic):Dynamic;
	/**
		Return an object with absolute value taken. Only applicable to objects
		that are all numeric
		
		Returns
		-------
		abs: type of caller
	**/
	public function abs():Dynamic;
	/**
		Addition of series and other, element-wise (binary operator `add`).
		
		Equivalent to ``series + other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.radd
	**/
	public function add(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Concatenate prefix string with panel items names.
		
		Parameters
		----------
		prefix : string
		
		Returns
		-------
		with_prefix : type of caller
	**/
	public function add_prefix(prefix:Dynamic):Dynamic;
	/**
		Concatenate suffix string with panel items names
		
		Parameters
		----------
		suffix : string
		
		Returns
		-------
		with_suffix : type of caller
	**/
	public function add_suffix(suffix:Dynamic):Dynamic;
	/**
		Align two object on their axes with the
		specified join method for each axis Index
		
		Parameters
		----------
		other : DataFrame or Series
		join : {'outer', 'inner', 'left', 'right'}, default 'outer'
		axis : allowed axis of the other object, default None
		    Align on index (0), columns (1), or both (None)
		level : int or level name, default None
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		copy : boolean, default True
		    Always returns new objects. If copy=False and no reindexing is
		    required then original objects are returned.
		fill_value : scalar, default np.NaN
		    Value to use for missing values. Defaults to NaN, but can be any
		    "compatible" value
		method : str, default None
		limit : int, default None
		fill_axis : {0, 'index'}, default 0
		    Filling axis, method and limit
		broadcast_axis : {0, 'index'}, default None
		    Broadcast values along this axis, if aligning two objects of
		    different dimensions
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		(left, right) : (Series, type of other)
		    Aligned objects
	**/
	public function align(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic, ?broadcast_axis:Dynamic):Dynamic;
	/**
		Return whether all elements are True over requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		bool_only : boolean, default None
		    Include only boolean data. If None, will attempt to use everything,
		    then use only boolean data
		
		Returns
		-------
		all : scalar or Series (if level specified)
	**/
	public function all(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return whether any element is True over requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		bool_only : boolean, default None
		    Include only boolean data. If None, will attempt to use everything,
		    then use only boolean data
		
		Returns
		-------
		any : scalar or Series (if level specified)
	**/
	public function any(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Concatenate two or more Series.
		
		Parameters
		----------
		to_append : Series or list/tuple of Series
		verify_integrity : boolean, default False
		    If True, raise Exception on creating index with duplicates
		
		Returns
		-------
		appended : Series
	**/
	public function append(to_append:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	/**
		Invoke function on values of Series. Can be ufunc (a NumPy function
		that applies to the entire Series) or a Python function that only works
		on single values
		
		Parameters
		----------
		func : function
		convert_dtype : boolean, default True
		    Try to find better dtype for elementwise function results. If
		    False, leave as dtype=object
		args : tuple
		    Positional arguments to pass to function in addition to the value
		Additional keyword arguments will be passed as keywords to the function
		
		Returns
		-------
		y : Series or DataFrame if func returns a Series
		
		See also
		--------
		Series.map: For element-wise operations
		
		Examples
		--------
		
		Create a series with typical summer temperatures for each city.
		
		>>> import pandas as pd
		>>> import numpy as np
		>>> series = pd.Series([20, 21, 12], index=['London',
		... 'New York','Helsinki'])
		London      20
		New York    21
		Helsinki    12
		dtype: int64
		
		Square the values by defining a function and passing it as an
		argument to ``apply()``.
		
		>>> def square(x):
		...     return x**2
		>>> series.apply(square)
		London      400
		New York    441
		Helsinki    144
		dtype: int64
		
		Square the values by passing an anonymous function as an
		argument to ``apply()``.
		
		>>> series.apply(lambda x: x**2)
		London      400
		New York    441
		Helsinki    144
		dtype: int64
		
		Define a custom function that needs additional positional
		arguments and pass these additional arguments using the
		``args`` keyword.
		
		>>> def subtract_custom_value(x, custom_value):
		...     return x-custom_value
		
		>>> series.apply(subtract_custom_value, args=(5,))
		London      15
		New York    16
		Helsinki     7
		dtype: int64
		
		Define a custom function that takes keyword arguments
		and pass these arguments to ``apply``.
		
		>>> def add_custom_values(x, **kwargs):
		...     for month in kwargs:
		...         x+=kwargs[month]
		...         return x
		
		>>> series.apply(add_custom_values, june=30, july=20, august=25)
		London      95
		New York    96
		Helsinki    87
		dtype: int64
		
		Use a function from the Numpy library.
		
		>>> series.apply(np.log)
		London      2.995732
		New York    3.044522
		Helsinki    2.484907
		dtype: float64
	**/
	public function apply(func:Dynamic, ?convert_dtype:Dynamic, ?args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Index of first occurrence of maximum of values.
		
		Parameters
		----------
		skipna : boolean, default True
		    Exclude NA/null values
		
		Returns
		-------
		idxmax : Index of maximum of values
		
		Notes
		-----
		This method is the Series version of ``ndarray.argmax``.
		
		See Also
		--------
		DataFrame.idxmax
		numpy.ndarray.argmax
	**/
	public function argmax(?axis:Dynamic, ?out:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Index of first occurrence of minimum of values.
		
		Parameters
		----------
		skipna : boolean, default True
		    Exclude NA/null values
		
		Returns
		-------
		idxmin : Index of minimum of values
		
		Notes
		-----
		This method is the Series version of ``ndarray.argmin``.
		
		See Also
		--------
		DataFrame.idxmin
		numpy.ndarray.argmin
	**/
	public function argmin(?axis:Dynamic, ?out:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Overrides ndarray.argsort. Argsorts the value, omitting NA/null values,
		and places the result in the same locations as the non-NA values
		
		Parameters
		----------
		axis : int (can only be zero)
		kind : {'mergesort', 'quicksort', 'heapsort'}, default 'quicksort'
		    Choice of sorting algorithm. See np.sort for more
		    information. 'mergesort' is the only stable algorithm
		order : ignored
		
		Returns
		-------
		argsorted : Series, with -1 indicated where nan values are present
		
		See also
		--------
		numpy.ndarray.argsort
	**/
	public function argsort(?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert the frame to a dict of dtype -> Constructor Types that each has
		a homogeneous dtype.
		
		NOTE: the dtypes of the blocks WILL BE PRESERVED HERE (unlike in
		      as_matrix)
		
		Parameters
		----------
		copy : boolean, default True
		
		       .. versionadded: 0.16.1
		
		Returns
		-------
		values : a dict of dtype -> Constructor Types
	**/
	public function as_blocks(?copy:Dynamic):Dynamic;
	/**
		Convert the frame to its Numpy-array representation.
		
		Parameters
		----------
		columns: list, optional, default:None
		    If None, return all columns, otherwise, returns specified columns.
		
		Returns
		-------
		values : ndarray
		    If the caller is heterogeneous and contains booleans or objects,
		    the result will be of dtype=object. See Notes.
		
		
		Notes
		-----
		Return is NOT a Numpy-matrix, rather, a Numpy-array.
		
		The dtype will be a lower-common-denominator dtype (implicit
		upcasting); that is to say if the dtypes (even of numeric types)
		are mixed, the one that accommodates all will be chosen. Use this
		with care if you are not dealing with the blocks.
		
		e.g. If the dtypes are float16 and float32, dtype will be upcast to
		float32.  If dtypes are int32 and uint8, dtype will be upcase to
		int32.
		
		This method is provided for backwards compatibility. Generally,
		it is recommended to use '.values'.
		
		See Also
		--------
		pandas.DataFrame.values
	**/
	public function as_matrix(?columns:Dynamic):Dynamic;
	/**
		Convert all TimeSeries inside to specified frequency using DateOffset
		objects. Optionally provide fill method to pad/backfill missing values.
		
		Parameters
		----------
		freq : DateOffset object, or string
		method : {'backfill', 'bfill', 'pad', 'ffill', None}
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill method
		how : {'start', 'end'}, default end
		    For PeriodIndex only, see PeriodIndex.asfreq
		normalize : bool, default False
		    Whether to reset output index to midnight
		
		Returns
		-------
		converted : type of caller
	**/
	public function asfreq(freq:Dynamic, ?method:Dynamic, ?how:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Return last good (non-NaN) value in Series if value is NaN for
		requested date.
		
		If there is no good value, NaN is returned.
		
		Parameters
		----------
		where : date or array of dates
		
		Notes
		-----
		Dates are assumed to be sorted
		
		Returns
		-------
		value or NaN
	**/
	public function asof(where:Dynamic):Dynamic;
	/**
		Cast object to input numpy.dtype
		Return a copy when copy = True (be really careful with this!)
		
		Parameters
		----------
		dtype : numpy.dtype or Python type
		raise_on_error : raise on invalid input
		kwargs : keyword arguments to pass on to the constructor
		
		Returns
		-------
		casted : type of caller
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?raise_on_error:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fast label-based scalar accessor
		
		Similarly to ``loc``, ``at`` provides **label** based scalar lookups.
		You can also set using these indexers.
	**/
	static public var at : Dynamic;
	/**
		Select values at particular time of day (e.g. 9:30AM)
		
		Parameters
		----------
		time : datetime.time or string
		
		Returns
		-------
		values_at_time : type of caller
	**/
	public function at_time(time:Dynamic, ?asof:Dynamic):Dynamic;
	/**
		Lag-N autocorrelation
		
		Parameters
		----------
		lag : int, default 1
		    Number of lags to apply before performing autocorrelation.
		
		Returns
		-------
		autocorr : float
	**/
	public function autocorr(?lag:Dynamic):Dynamic;
	/**
		Return a list of the row axis labels
	**/
	static public var axes : Dynamic;
	/**
		return the base object if the memory of the underlying data is shared 
	**/
	static public var base : Dynamic;
	/**
		Return boolean Series equivalent to left <= series <= right. NA values
		will be treated as False
		
		Parameters
		----------
		left : scalar
		    Left boundary
		right : scalar
		    Right boundary
		
		Returns
		-------
		is_between : Series
	**/
	public function between(left:Dynamic, right:Dynamic, ?inclusive:Dynamic):Dynamic;
	/**
		Select values between particular times of the day (e.g., 9:00-9:30 AM)
		
		Parameters
		----------
		start_time : datetime.time or string
		end_time : datetime.time or string
		include_start : boolean, default True
		include_end : boolean, default True
		
		Returns
		-------
		values_between_time : type of caller
	**/
	public function between_time(start_time:Dynamic, end_time:Dynamic, ?include_start:Dynamic, ?include_end:Dynamic):Dynamic;
	/**
		Synonym for NDFrame.fillna(method='bfill')
	**/
	public function bfill(?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Internal property, property synonym for as_blocks()
	**/
	static public var blocks : Dynamic;
	/**
		Return the bool of a single element PandasObject
		This must be a boolean scalar value, either True or False
		
		Raise a ValueError if the PandasObject does not have exactly
		1 element, or that element is not boolean 
	**/
	public function bool():Dynamic;
	/**
		Accessor object for categorical properties of the Series values.
		
		Be aware that assigning to `categories` is a inplace operation, while all methods return
		new categorical data per default (but can be called with `inplace=True`).
		
		Examples
		--------
		>>> s.cat.categories
		>>> s.cat.categories = list('abc')
		>>> s.cat.rename_categories(list('cab'))
		>>> s.cat.reorder_categories(list('cab'))
		>>> s.cat.add_categories(['d','e'])
		>>> s.cat.remove_categories(['d'])
		>>> s.cat.remove_unused_categories()
		>>> s.cat.set_categories(list('abcde'))
		>>> s.cat.as_ordered()
		>>> s.cat.as_unordered()
	**/
	static public function cat(values:Dynamic, index:Dynamic):Dynamic;
	/**
		Trim values at input threshold(s)
		
		Parameters
		----------
		lower : float or array_like, default None
		upper : float or array_like, default None
		axis : int or string axis name, optional
		    Align object with lower and upper along the given axis.
		
		Returns
		-------
		clipped : Series
		
		Examples
		--------
		>>> df
		  0         1
		0  0.335232 -1.256177
		1 -1.367855  0.746646
		2  0.027753 -1.176076
		3  0.230930 -0.679613
		4  1.261967  0.570967
		>>> df.clip(-1.0, 0.5)
		          0         1
		0  0.335232 -1.000000
		1 -1.000000  0.500000
		2  0.027753 -1.000000
		3  0.230930 -0.679613
		4  0.500000  0.500000
		>>> t
		0   -0.3
		1   -0.2
		2   -0.1
		3    0.0
		4    0.1
		dtype: float64
		>>> df.clip(t, t + 1, axis=0)
		          0         1
		0  0.335232 -0.300000
		1 -0.200000  0.746646
		2  0.027753 -0.100000
		3  0.230930  0.000000
		4  1.100000  0.570967
	**/
	public function clip(?lower:Dynamic, ?upper:Dynamic, ?out:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return copy of the input with values below given value(s) truncated
		
		Parameters
		----------
		threshold : float or array_like
		axis : int or string axis name, optional
		    Align object with threshold along the given axis.
		
		See also
		--------
		clip
		
		Returns
		-------
		clipped : same type as input
	**/
	public function clip_lower(threshold:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return copy of input with values above given value(s) truncated
		
		Parameters
		----------
		threshold : float or array_like
		axis : int or string axis name, optional
		    Align object with threshold along the given axis.
		
		See also
		--------
		clip
		
		Returns
		-------
		clipped : same type as input
	**/
	public function clip_upper(threshold:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Perform elementwise binary operation on two Series using given function
		with optional fill value when an index is missing from one Series or
		the other
		
		Parameters
		----------
		other : Series or scalar value
		func : function
		fill_value : scalar value
		
		Returns
		-------
		result : Series
	**/
	public function combine(other:Dynamic, func:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Combine Series values, choosing the calling Series's values
		first. Result index will be the union of the two indexes
		
		Parameters
		----------
		other : Series
		
		Returns
		-------
		y : Series
	**/
	public function combine_first(other:Dynamic):Dynamic;
	/**
		Return the compound percentage of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		compounded : scalar or Series (if level specified)
	**/
	public function compound(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return selected slices of an array along given axis as a Series
		
		See also
		--------
		numpy.ndarray.compress
	**/
	public function compress(condition:Dynamic, ?axis:Dynamic, ?out:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Compute NDFrame with "consolidated" internals (data of each dtype
		grouped together in a single ndarray). Mainly an internal API function,
		but available here to the savvy user
		
		Parameters
		----------
		inplace : boolean, default False
		    If False return new object, otherwise modify existing object
		
		Returns
		-------
		consolidated : type of caller
	**/
	public function consolidate(?inplace:Dynamic):Dynamic;
	/**
		Attempt to infer better dtype for object columns
		
		Parameters
		----------
		convert_dates : boolean, default True
		    If True, convert to date where possible. If 'coerce', force
		    conversion, with unconvertible values becoming NaT.
		convert_numeric : boolean, default False
		    If True, attempt to coerce to numbers (including strings), with
		    unconvertible values becoming NaN.
		convert_timedeltas : boolean, default True
		    If True, convert to timedelta where possible. If 'coerce', force
		    conversion, with unconvertible values becoming NaT.
		copy : boolean, default True
		    If True, return a copy even if no copy is necessary (e.g. no
		    conversion was done). Note: This is meant for internal use, and
		    should not be confused with inplace.
		
		Returns
		-------
		converted : same as input object
	**/
	public function convert_objects(?convert_dates:Dynamic, ?convert_numeric:Dynamic, ?convert_timedeltas:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Make a copy of this object
		
		Parameters
		----------
		deep : boolean or string, default True
		    Make a deep copy, i.e. also copy data
		
		Returns
		-------
		copy : type of caller
	**/
	public function copy(?deep:Dynamic):Dynamic;
	/**
		Compute correlation with `other` Series, excluding missing values
		
		Parameters
		----------
		other : Series
		method : {'pearson', 'kendall', 'spearman'}
		    * pearson : standard correlation coefficient
		    * kendall : Kendall Tau correlation coefficient
		    * spearman : Spearman rank correlation
		min_periods : int, optional
		    Minimum number of observations needed to have a valid result
		
		
		Returns
		-------
		correlation : float
	**/
	public function corr(other:Dynamic, ?method:Dynamic, ?min_periods:Dynamic):Dynamic;
	/**
		Return number of non-NA/null observations in the Series
		
		Parameters
		----------
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a smaller Series
		
		Returns
		-------
		nobs : int or Series (if level specified)
	**/
	public function count(?level:Dynamic):Dynamic;
	/**
		Compute covariance with Series, excluding missing values
		
		Parameters
		----------
		other : Series
		min_periods : int, optional
		    Minimum number of observations needed to have a valid result
		
		Returns
		-------
		covariance : float
		
		Normalized by N-1 (unbiased estimator).
	**/
	public function cov(other:Dynamic, ?min_periods:Dynamic):Dynamic;
	/**
		Return cumulative max over requested axis.
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		max : scalar
	**/
	public function cummax(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return cumulative min over requested axis.
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		min : scalar
	**/
	public function cummin(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return cumulative prod over requested axis.
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		prod : scalar
	**/
	public function cumprod(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return cumulative sum over requested axis.
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		sum : scalar
	**/
	public function cumsum(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		return the data pointer of the underlying data 
	**/
	static public var data : Dynamic;
	/**
		Generate various summary statistics, excluding NaN values.
		
		Parameters
		----------
		percentiles : array-like, optional
		    The percentiles to include in the output. Should all
		    be in the interval [0, 1]. By default `percentiles` is
		    [.25, .5, .75], returning the 25th, 50th, and 75th percentiles.
		include, exclude : list-like, 'all', or None (default)
		    Specify the form of the returned result. Either:
		
		    - None to both (default). The result will include only numeric-typed
		      columns or, if none are, only categorical columns.
		    - A list of dtypes or strings to be included/excluded.
		      To select all numeric types use numpy numpy.number. To select
		      categorical objects use type object. See also the select_dtypes
		      documentation. eg. df.describe(include=['O'])
		    - If include is the string 'all', the output column-set will
		      match the input one.
		
		Returns
		-------
		summary: NDFrame of summary statistics
		
		Notes
		-----
		The output DataFrame index depends on the requested dtypes:
		
		For numeric dtypes, it will include: count, mean, std, min,
		max, and lower, 50, and upper percentiles.
		
		For object dtypes (e.g. timestamps or strings), the index
		will include the count, unique, most common, and frequency of the
		most common. Timestamps also include the first and last items.
		
		For mixed dtypes, the index will be the union of the corresponding
		output types. Non-applicable entries will be filled with NaN.
		Note that mixed-dtype outputs can only be returned from mixed-dtype
		inputs and appropriate use of the include/exclude arguments.
		
		If multiple values have the highest count, then the
		`count` and `most common` pair will be arbitrarily chosen from
		among those with the highest count.
		
		The include, exclude arguments are ignored for Series.
		
		See also
		--------
		DataFrame.select_dtypes
	**/
	public function describe(?percentiles:Dynamic, ?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		1st discrete difference of object
		
		Parameters
		----------
		periods : int, default 1
		    Periods to shift for forming difference
		
		Returns
		-------
		diffed : Series
	**/
	public function diff(?periods:Dynamic):Dynamic;
	/**
		Floating division of series and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``series / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rtruediv
	**/
	public function div(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Floating division of series and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``series / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rtruediv
	**/
	public function divide(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Matrix multiplication with DataFrame or inner-product with Series
		objects
		
		Parameters
		----------
		other : Series or DataFrame
		
		Returns
		-------
		dot_product : scalar or Series
	**/
	public function dot(other:Dynamic):Dynamic;
	/**
		Return new object with labels in requested axis removed
		
		Parameters
		----------
		labels : single label or list-like
		axis : int or axis name
		level : int or level name, default None
		    For MultiIndex
		inplace : bool, default False
		    If True, do operation inplace and return None.
		errors : {'ignore', 'raise'}, default 'raise'
		    If 'ignore', suppress error and existing labels are dropped.
		
		    .. versionadded:: 0.16.1
		
		Returns
		-------
		dropped : type of caller
	**/
	public function drop(labels:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?inplace:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Return Series with duplicate values removed
		
		Parameters
		----------
		
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Drop duplicates except for the first occurrence.
		    - ``last`` : Drop duplicates except for the last occurrence.
		    - False : Drop all duplicates.
		take_last : deprecated
		inplace : boolean, default False
		    If True, performs operation inplace and returns None.
		
		Returns
		-------
		deduplicated : Series
	**/
	public function drop_duplicates(?keep:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Return Series without null values
		
		Returns
		-------
		valid : Series
		inplace : boolean, default False
		    Do operation in place.
	**/
	public function dropna(?axis:Dynamic, ?inplace:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Accessor object for datetimelike properties of the Series values.
		
		Examples
		--------
		>>> s.dt.hour
		>>> s.dt.second
		>>> s.dt.quarter
		
		Returns a Series indexed like the original Series.
		Raises TypeError if the Series does not contain datetimelike values.
	**/
	static public function dt(values:Dynamic, index:Dynamic, name:Dynamic):Dynamic;
	/**
		return the dtype object of the underlying data 
	**/
	static public var dtype : Dynamic;
	/**
		return the dtype object of the underlying data 
	**/
	static public var dtypes : Dynamic;
	/**
		Return boolean Series denoting duplicate values
		
		Parameters
		----------
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Mark duplicates as ``True`` except for the first occurrence.
		    - ``last`` : Mark duplicates as ``True`` except for the last occurrence.
		    - False : Mark all duplicates as ``True``.
		take_last : deprecated
		
		Returns
		-------
		duplicated : Series
	**/
	public function duplicated(?keep:Dynamic):Dynamic;
	/**
		True if NDFrame is entirely empty [no items]
	**/
	static public var empty : Dynamic;
	public function eq(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Determines if two NDFrame objects contain the same elements. NaNs in the
		same location are considered equal.
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
		Synonym for NDFrame.fillna(method='ffill')
	**/
	public function ffill(?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Fill NA/NaN values using the specified method
		
		Parameters
		----------
		value : scalar, dict, Series, or DataFrame
		    Value to use to fill holes (e.g. 0), alternately a dict/Series/DataFrame of
		    values specifying which value to use for each index (for a Series) or
		    column (for a DataFrame). (values not in the dict/Series/DataFrame will not be
		    filled). This value cannot be a list.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill gap
		axis : {0, 'index'}
		inplace : boolean, default False
		    If True, fill in place. Note: this will modify any
		    other views on this object, (e.g. a no-copy slice for a column in a
		    DataFrame).
		limit : int, default None
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled.
		downcast : dict, default is None
		    a dict of item->dtype of what to downcast if possible,
		    or the string 'infer' which will try to downcast to an appropriate
		    equal type (e.g. float64 to int64 if possible)
		
		See also
		--------
		reindex, asfreq
		
		Returns
		-------
		filled : Series
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Restrict the info axis to set of items or wildcard
		
		Parameters
		----------
		items : list-like
		    List of info axis to restrict to (must not all be present)
		like : string
		    Keep info axis where "arg in col == True"
		regex : string (regular expression)
		    Keep info axis with re.search(regex, col) == True
		axis : int or None
		    The axis to filter on. By default this is the info axis. The "info
		    axis" is the axis that is used when indexing with ``[]``. For
		    example, ``df = DataFrame({'a': [1, 2, 3, 4]]}); df['a']``. So,
		    the ``DataFrame`` columns are the info axis.
		
		Notes
		-----
		Arguments are mutually exclusive, but this is not checked for
	**/
	public function filter(?items:Dynamic, ?like:Dynamic, ?regex:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convenience method for subsetting initial periods of time series data
		based on a date offset
		
		Parameters
		----------
		offset : string, DateOffset, dateutil.relativedelta
		
		Examples
		--------
		ts.last('10D') -> First 10 days
		
		Returns
		-------
		subset : type of caller
	**/
	public function first(offset:Dynamic):Dynamic;
	/**
		Return label for first non-NA/null value
	**/
	public function first_valid_index():Dynamic;
	/**
		return the ndarray.flags for the underlying data 
	**/
	static public var flags : Dynamic;
	/**
		Integer division of series and other, element-wise (binary operator `floordiv`).
		
		Equivalent to ``series // other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rfloordiv
	**/
	public function floordiv(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	static public function from_array(arr:Dynamic, ?index:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Read CSV file (DISCOURAGED, please use :func:`pandas.read_csv` instead).
		
		It is preferable to use the more powerful :func:`pandas.read_csv`
		for most general purposes, but ``from_csv`` makes for an easy
		roundtrip to and from a file (the exact counterpart of
		``to_csv``), especially with a time Series.
		
		This method only differs from :func:`pandas.read_csv` in some defaults:
		
		- `index_col` is ``0`` instead of ``None`` (take first column as index
		  by default)
		- `header` is ``None`` instead of ``0`` (the first row is not used as
		  the column names)
		- `parse_dates` is ``True`` instead of ``False`` (try parsing the index
		  as datetime by default)
		
		With :func:`pandas.read_csv`, the option ``squeeze=True`` can be used
		to return a Series like ``from_csv``.
		
		Parameters
		----------
		path : string file path or file handle / StringIO
		sep : string, default ','
		    Field delimiter
		parse_dates : boolean, default True
		    Parse dates. Different default from read_table
		header : int, default None
		    Row to use as header (skip prior rows)
		index_col : int or sequence, default 0
		    Column to use for index. If a sequence is given, a MultiIndex
		    is used. Different default from read_table
		encoding : string, optional
		    a string representing the encoding to use if the contents are
		    non-ascii, for python versions prior to 3
		infer_datetime_format: boolean, default False
		    If True and `parse_dates` is True for a column, try to infer the
		    datetime format based on the first datetime string. If the format
		    can be inferred, there often will be a large parsing speed-up.
		
		See also
		--------
		pandas.read_csv
		
		Returns
		-------
		y : Series
	**/
	static public function from_csv(path:Dynamic, ?sep:Dynamic, ?parse_dates:Dynamic, ?header:Dynamic, ?index_col:Dynamic, ?encoding:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
	/**
		return if the data is sparse|dense 
	**/
	static public var ftype : Dynamic;
	/**
		return if the data is sparse|dense 
	**/
	static public var ftypes : Dynamic;
	public function ge(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Get item from object for given key (DataFrame column, Panel slice,
		etc.). Returns default value if not found
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		value : type of items contained in object
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Return the counts of dtypes in this object 
	**/
	public function get_dtype_counts():Dynamic;
	/**
		Return the counts of ftypes in this object 
	**/
	public function get_ftype_counts():Dynamic;
	/**
		Quickly retrieve single value at passed index label
		
		Parameters
		----------
		index : label
		takeable : interpret the index as indexers, default False
		
		Returns
		-------
		value : scalar value
	**/
	public function get_value(label:Dynamic, ?takeable:Dynamic):Dynamic;
	/**
		same as values (but handles sparseness conversions); is a view 
	**/
	public function get_values():Dynamic;
	/**
		Group series using mapper (dict or key function, apply given function
		to group, return result as series) or by a series of columns
		
		Parameters
		----------
		by : mapping function / list of functions, dict, Series, or tuple /
		    list of column names.
		    Called on each element of the object index to determine the groups.
		    If a dict or Series is passed, the Series or dict VALUES will be
		    used to determine the groups
		axis : int, default 0
		level : int, level name, or sequence of such, default None
		    If the axis is a MultiIndex (hierarchical), group by a particular
		    level or levels
		as_index : boolean, default True
		    For aggregated output, return object with group labels as the
		    index. Only relevant for DataFrame input. as_index=False is
		    effectively "SQL-style" grouped output
		sort : boolean, default True
		    Sort group keys. Get better performance by turning this off.
		    Note this does not influence the order of observations within each group.
		    groupby preserves the order of rows within each group.
		group_keys : boolean, default True
		    When calling apply, add group keys to index to identify pieces
		squeeze : boolean, default False
		    reduce the dimensionality of the return type if possible,
		    otherwise return a consistent type
		
		Examples
		--------
		DataFrame results
		
		>>> data.groupby(func, axis=0).mean()
		>>> data.groupby(['col1', 'col2'])['col3'].mean()
		
		DataFrame with hierarchical index
		
		>>> data.groupby(['col1', 'col2']).mean()
		
		Returns
		-------
		GroupBy object
	**/
	public function groupby(?by:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic):Dynamic;
	public function gt(other:Dynamic, ?axis:Dynamic):Dynamic;
	static public var hasnans : Dynamic;
	/**
		Returns first n rows
	**/
	public function head(?n:Dynamic):Dynamic;
	/**
		Draw histogram of the input series using matplotlib
		
		Parameters
		----------
		by : object, optional
		    If passed, then used to form histograms for separate groups
		ax : matplotlib axis object
		    If not passed, uses gca()
		grid : boolean, default True
		    Whether to show axis grid lines
		xlabelsize : int, default None
		    If specified changes the x-axis label size
		xrot : float, default None
		    rotation of x axis labels
		ylabelsize : int, default None
		    If specified changes the y-axis label size
		yrot : float, default None
		    rotation of y axis labels
		figsize : tuple, default None
		    figure size in inches by default
		bins: integer, default 10
		    Number of histogram bins to be used
		kwds : keywords
		    To be passed to the actual plotting function
		
		Notes
		-----
		See matplotlib documentation online for more on this
	**/
	public function hist(?by:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?figsize:Dynamic, ?bins:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Fast integer location scalar accessor.
		
		Similarly to ``iloc``, ``iat`` provides **integer** based lookups.
		You can also set using these indexers.
	**/
	static public var iat : Dynamic;
	/**
		Index of first occurrence of maximum of values.
		
		Parameters
		----------
		skipna : boolean, default True
		    Exclude NA/null values
		
		Returns
		-------
		idxmax : Index of maximum of values
		
		Notes
		-----
		This method is the Series version of ``ndarray.argmax``.
		
		See Also
		--------
		DataFrame.idxmax
		numpy.ndarray.argmax
	**/
	public function idxmax(?axis:Dynamic, ?out:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Index of first occurrence of minimum of values.
		
		Parameters
		----------
		skipna : boolean, default True
		    Exclude NA/null values
		
		Returns
		-------
		idxmin : Index of minimum of values
		
		Notes
		-----
		This method is the Series version of ``ndarray.argmin``.
		
		See Also
		--------
		DataFrame.idxmin
		numpy.ndarray.argmin
	**/
	public function idxmin(?axis:Dynamic, ?out:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		DEPRECATED. Use ``.iloc[i]`` or ``.iat[i]`` instead
	**/
	public function iget(i:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		DEPRECATED. Use ``.iloc[i]`` or ``.iat[i]`` instead
	**/
	public function iget_value(i:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Purely integer-location based indexing for selection by position.
		
		``.iloc[]`` is primarily integer position based (from ``0`` to
		``length-1`` of the axis), but may also be used with a boolean
		array.
		
		Allowed inputs are:
		
		- An integer, e.g. ``5``.
		- A list or array of integers, e.g. ``[4, 3, 0]``.
		- A slice object with ints, e.g. ``1:7``.
		- A boolean array.
		
		``.iloc`` will raise ``IndexError`` if a requested indexer is
		out-of-bounds, except *slice* indexers which allow out-of-bounds
		indexing (this conforms with python/numpy *slice* semantics).
		
		See more at :ref:`Selection by Position <indexing.integer>`
	**/
	static public var iloc : Dynamic;
	static public var imag : Dynamic;
	static public var index : Dynamic;
	/**
		Interpolate values according to different methods.
		
		Please note that only ``method='linear'`` is supported for DataFrames/Series
		with a MultiIndex.
		
		Parameters
		----------
		method : {'linear', 'time', 'index', 'values', 'nearest', 'zero',
		          'slinear', 'quadratic', 'cubic', 'barycentric', 'krogh',
		          'polynomial', 'spline' 'piecewise_polynomial', 'pchip'}
		
		    * 'linear': ignore the index and treat the values as equally
		      spaced. This is the only method supported on MultiIndexes.
		      default
		    * 'time': interpolation works on daily and higher resolution
		      data to interpolate given length of interval
		    * 'index', 'values': use the actual numerical values of the index
		    * 'nearest', 'zero', 'slinear', 'quadratic', 'cubic',
		      'barycentric', 'polynomial' is passed to
		      ``scipy.interpolate.interp1d``. Both 'polynomial' and 'spline'
		      require that you also specify an `order` (int),
		      e.g. df.interpolate(method='polynomial', order=4).
		      These use the actual numerical values of the index.
		    * 'krogh', 'piecewise_polynomial', 'spline', and 'pchip' are all
		      wrappers around the scipy interpolation methods of similar
		      names. These use the actual numerical values of the index. See
		      the scipy documentation for more on their behavior
		      `here <http://docs.scipy.org/doc/scipy/reference/interpolate.html#univariate-interpolation>`__
		      `and here <http://docs.scipy.org/doc/scipy/reference/tutorial/interpolate.html>`__
		
		axis : {0, 1}, default 0
		    * 0: fill column-by-column
		    * 1: fill row-by-row
		limit : int, default None.
		    Maximum number of consecutive NaNs to fill.
		limit_direction : {'forward', 'backward', 'both'}, defaults to 'forward'
		    If limit is specified, consecutive NaNs will be filled in this
		    direction.
		
		    .. versionadded:: 0.17.0
		
		inplace : bool, default False
		    Update the NDFrame in place if possible.
		downcast : optional, 'infer' or None, defaults to None
		    Downcast dtypes if possible.
		kwargs : keyword arguments to pass on to the interpolating function.
		
		Returns
		-------
		Series or DataFrame of same shape interpolated at the NaNs
		
		See Also
		--------
		reindex, replace, fillna
		
		Examples
		--------
		
		Filling in NaNs
		
		>>> s = pd.Series([0, 1, np.nan, 3])
		>>> s.interpolate()
		0    0
		1    1
		2    2
		3    3
		dtype: float64
	**/
	public function interpolate(?method:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?inplace:Dynamic, ?limit_direction:Dynamic, ?downcast:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		DEPRECATED. Use ``.iloc[i]`` or ``.iat[i]`` instead
	**/
	public function irow(i:Dynamic, ?axis:Dynamic):Dynamic;
	static public var is_copy : Dynamic;
	static public var is_time_series : Dynamic;
	/**
		Return a boolean :class:`~pandas.Series` showing whether each element
		in the :class:`~pandas.Series` is exactly contained in the passed
		sequence of ``values``.
		
		Parameters
		----------
		values : list-like
		    The sequence of values to test. Passing in a single string will
		    raise a ``TypeError``. Instead, turn a single string into a
		    ``list`` of one element.
		
		Returns
		-------
		isin : Series (bool dtype)
		
		Raises
		------
		TypeError
		  * If ``values`` is a string
		
		See Also
		--------
		pandas.DataFrame.isin
		
		Examples
		--------
		
		>>> s = pd.Series(list('abc'))
		>>> s.isin(['a', 'c', 'e'])
		0     True
		1    False
		2     True
		dtype: bool
		
		Passing a single string as ``s.isin('a')`` will raise an error. Use
		a list of one element instead:
		
		>>> s.isin(['a'])
		0     True
		1    False
		2    False
		dtype: bool
	**/
	public function isin(values:Dynamic):Dynamic;
	/**
		Return a boolean same-sized object indicating if the values are null
		
		See also
		--------
		notnull : boolean inverse of isnull
	**/
	public function isnull():Dynamic;
	/**
		return the first element of the underlying data as a python scalar 
	**/
	public function item():Dynamic;
	/**
		Lazily iterate over (index, value) tuples
	**/
	public function items():Dynamic;
	/**
		return the size of the dtype of the item of the underlying data 
	**/
	static public var itemsize : Dynamic;
	/**
		Lazily iterate over (index, value) tuples
	**/
	public function iteritems():Dynamic;
	/**
		iteritems alias used to get around 2to3. Deprecated
	**/
	public function iterkv(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		A primarily label-location based indexer, with integer position
		fallback.
		
		``.ix[]`` supports mixed integer and label based access. It is
		primarily label based, but will fall back to integer positional
		access unless the corresponding axis is of integer type.
		
		``.ix`` is the most general indexer and will support any of the
		inputs in ``.loc`` and ``.iloc``. ``.ix`` also supports floating
		point label schemes. ``.ix`` is exceptionally useful when dealing
		with mixed positional and label based hierachical indexes.
		
		However, when an axis is integer based, ONLY label based access
		and not positional access is supported. Thus, in such cases, it's
		usually better to be explicit and use ``.iloc`` or ``.loc``.
		
		See more at :ref:`Advanced Indexing <advanced>`.
	**/
	static public var ix : Dynamic;
	/**
		Alias for index
	**/
	public function keys():Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fishers definition of
		kurtosis (kurtosis of normal == 0.0). Normalized by N-1
		
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		kurt : scalar or Series (if level specified)
	**/
	public function kurt(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fishers definition of
		kurtosis (kurtosis of normal == 0.0). Normalized by N-1
		
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		kurt : scalar or Series (if level specified)
	**/
	public function kurtosis(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Convenience method for subsetting final periods of time series data
		based on a date offset
		
		Parameters
		----------
		offset : string, DateOffset, dateutil.relativedelta
		
		Examples
		--------
		ts.last('5M') -> Last 5 months
		
		Returns
		-------
		subset : type of caller
	**/
	public function last(offset:Dynamic):Dynamic;
	/**
		Return label for last non-NA/null value
	**/
	public function last_valid_index():Dynamic;
	public function le(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Purely label-location based indexer for selection by label.
		
		``.loc[]`` is primarily label based, but may also be used with a
		boolean array.
		
		Allowed inputs are:
		
		- A single label, e.g. ``5`` or ``'a'``, (note that ``5`` is
		  interpreted as a *label* of the index, and **never** as an
		  integer position along the index).
		- A list or array of labels, e.g. ``['a', 'b', 'c']``.
		- A slice object with labels, e.g. ``'a':'f'`` (note that contrary
		  to usual python slices, **both** the start and the stop are included!).
		- A boolean array.
		
		``.loc`` will raise a ``KeyError`` when the items are not found.
		
		See more at :ref:`Selection by Label <indexing.label>`
	**/
	static public var loc : Dynamic;
	public function lt(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the mean absolute deviation of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		mad : scalar or Series (if level specified)
	**/
	public function mad(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Map values of Series using input correspondence (which can be
		a dict, Series, or function)
		
		Parameters
		----------
		arg : function, dict, or Series
		na_action : {None, 'ignore'}
		    If 'ignore', propagate NA values
		
		Examples
		--------
		>>> x
		one   1
		two   2
		three 3
		
		>>> y
		1  foo
		2  bar
		3  baz
		
		>>> x.map(y)
		one   foo
		two   bar
		three baz
		
		Returns
		-------
		y : Series
		    same index as caller
	**/
	public function map(arg:Dynamic, ?na_action:Dynamic):Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where cond is False and otherwise are from other.
		
		Parameters
		----------
		cond : boolean NDFrame or array
		other : scalar or NDFrame
		inplace : boolean, default False
		    Whether to perform the operation in place on the data
		axis : alignment axis if needed, default None
		level : alignment level if needed, default None
		try_cast : boolean, default False
		    try to cast the result back to the input type (if possible),
		raise_on_error : boolean, default True
		    Whether to raise on invalid data types (e.g. trying to where on
		    strings)
		
		Returns
		-------
		wh : same type as caller
	**/
	public function mask(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?try_cast:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		This method returns the maximum of the values in the object. If you
		want the *index* of the maximum, use ``idxmax``. This is the
		equivalent of the ``numpy.ndarray`` method ``argmax``.
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		max : scalar or Series (if level specified)
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the mean of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		mean : scalar or Series (if level specified)
	**/
	public function mean(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the median of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		median : scalar or Series (if level specified)
	**/
	public function median(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This method returns the minimum of the values in the object. If you
		want the *index* of the minimum, use ``idxmin``. This is the
		equivalent of the ``numpy.ndarray`` method ``argmin``.
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		min : scalar or Series (if level specified)
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Modulo of series and other, element-wise (binary operator `mod`).
		
		Equivalent to ``series % other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rmod
	**/
	public function mod(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns the mode(s) of the dataset.
		
		Empty if nothing occurs at least 2 times.  Always returns Series even
		if only one value.
		
		Parameters
		----------
		sort : bool, default True
		    If True, will lexicographically sort values, if False skips
		    sorting. Result ordering when ``sort=False`` is not defined.
		
		Returns
		-------
		modes : Series (sorted)
	**/
	public function mode():Dynamic;
	/**
		Multiplication of series and other, element-wise (binary operator `mul`).
		
		Equivalent to ``series * other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rmul
	**/
	public function mul(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Multiplication of series and other, element-wise (binary operator `mul`).
		
		Equivalent to ``series * other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rmul
	**/
	public function multiply(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		return the number of bytes in the underlying data 
	**/
	static public var nbytes : Dynamic;
	/**
		return the number of dimensions of the underlying data, by definition 1 
	**/
	static public var ndim : Dynamic;
	public function ne(other:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the largest `n` elements.
		
		Parameters
		----------
		n : int
		    Return this many descending sorted values
		keep : {'first', 'last', False}, default 'first'
		    Where there are duplicate values:
		    - ``first`` : take the first occurrence.
		    - ``last`` : take the last occurrence.
		take_last : deprecated
		
		Returns
		-------
		top_n : Series
		    The n largest values in the Series, in sorted order
		
		Notes
		-----
		Faster than ``.sort_values(ascending=False).head(n)`` for small `n` relative
		to the size of the ``Series`` object.
		
		See Also
		--------
		Series.nsmallest
		
		Examples
		--------
		>>> import pandas as pd
		>>> import numpy as np
		>>> s = pd.Series(np.random.randn(1e6))
		>>> s.nlargest(10)  # only sorts up to the N requested
	**/
	public function nlargest(?n:Dynamic, ?keep:Dynamic):Dynamic;
	/**
		Return the indices of the elements that are non-zero
		
		This method is equivalent to calling `numpy.nonzero` on the
		series data. For compatability with NumPy, the return value is
		the same (a tuple with an array of indices for each dimension),
		but it will always be a one-item tuple because series only have
		one dimension.
		
		Examples
		--------
		>>> s = pd.Series([0, 3, 0, 4])
		>>> s.nonzero()
		(array([1, 3]),)
		>>> s.iloc[s.nonzero()[0]]
		1    3
		3    4
		dtype: int64
		
		See Also
		--------
		numpy.nonzero
	**/
	public function nonzero():Dynamic;
	/**
		Return a boolean same-sized object indicating if the values are
		not null
		
		See also
		--------
		isnull : boolean inverse of notnull
	**/
	public function notnull():Dynamic;
	/**
		Return the smallest `n` elements.
		
		Parameters
		----------
		n : int
		    Return this many ascending sorted values
		keep : {'first', 'last', False}, default 'first'
		    Where there are duplicate values:
		    - ``first`` : take the first occurrence.
		    - ``last`` : take the last occurrence.
		take_last : deprecated
		
		Returns
		-------
		bottom_n : Series
		    The n smallest values in the Series, in sorted order
		
		Notes
		-----
		Faster than ``.sort_values().head(n)`` for small `n` relative to
		the size of the ``Series`` object.
		
		See Also
		--------
		Series.nlargest
		
		Examples
		--------
		>>> import pandas as pd
		>>> import numpy as np
		>>> s = pd.Series(np.random.randn(1e6))
		>>> s.nsmallest(10)  # only sorts up to the N requested
	**/
	public function nsmallest(?n:Dynamic, ?keep:Dynamic):Dynamic;
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
		DEPRECATED: use :meth:`Series.sort_values`
		
		Sorts Series object, by value, maintaining index-value link.
		This will return a new Series by default. Series.sort is the equivalent but as an inplace method.
		
		Parameters
		----------
		na_last : boolean (optional, default=True) (DEPRECATED; use na_position)
		    Put NaN's at beginning or end
		ascending : boolean, default True
		    Sort ascending. Passing False sorts descending
		kind : {'mergesort', 'quicksort', 'heapsort'}, default 'quicksort'
		    Choice of sorting algorithm. See np.sort for more
		    information. 'mergesort' is the only stable algorithm
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		inplace : boolean, default False
		    Do operation in place.
		
		Returns
		-------
		y : Series
		
		See Also
		--------
		Series.sort_values
	**/
	public function order(?na_last:Dynamic, ?ascending:Dynamic, ?kind:Dynamic, ?na_position:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Percent change over given number of periods.
		
		Parameters
		----------
		periods : int, default 1
		    Periods to shift for forming percent change
		fill_method : str, default 'pad'
		    How to handle NAs before computing percent changes
		limit : int, default None
		    The number of consecutive NAs to fill before stopping
		freq : DateOffset, timedelta, or offset alias string, optional
		    Increment to use from time series API (e.g. 'M' or BDay())
		
		Returns
		-------
		chg : NDFrame
		
		Notes
		-----
		
		By default, the percentage change is calculated along the stat
		axis: 0, or ``Index``, for ``DataFrame`` and 1, or ``minor`` for
		``Panel``. You can change this with the ``axis`` keyword argument.
	**/
	public function pct_change(?periods:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?freq:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Apply func(self, \*args, \*\*kwargs)
		
		.. versionadded:: 0.16.2
		
		Parameters
		----------
		func : function
		    function to apply to the NDFrame.
		    ``args``, and ``kwargs`` are passed into ``func``.
		    Alternatively a ``(callable, data_keyword)`` tuple where
		    ``data_keyword`` is a string indicating the keyword of
		    ``callable`` that expects the NDFrame.
		args : positional arguments passed into ``func``.
		kwargs : a dictionary of keyword arguments passed into ``func``.
		
		Returns
		-------
		object : the return type of ``func``.
		
		Notes
		-----
		
		Use ``.pipe`` when chaining together functions that expect
		on Series or DataFrames. Instead of writing
		
		>>> f(g(h(df), arg1=a), arg2=b, arg3=c)
		
		You can write
		
		>>> (df.pipe(h)
		...    .pipe(g, arg1=a)
		...    .pipe(f, arg2=b, arg3=c)
		... )
		
		If you have a function that takes the data as (say) the second
		argument, pass a tuple indicating which keyword expects the
		data. For example, suppose ``f`` takes its data as ``arg2``:
		
		>>> (df.pipe(h)
		...    .pipe(g, arg1=a)
		...    .pipe((f, 'arg2'), arg1=a, arg3=c)
		...  )
		
		See Also
		--------
		pandas.DataFrame.apply
		pandas.DataFrame.applymap
		pandas.Series.map
	**/
	public function pipe(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Series plotting accessor and method
		
		Examples
		--------
		>>> s.plot.line()
		>>> s.plot.bar()
		>>> s.plot.hist()
		
		Plotting methods can also be accessed by calling the accessor as a method
		with the ``kind`` argument:
		``s.plot(kind='line')`` is equivalent to ``s.plot.line()``
	**/
	static public function plot(data:Dynamic):Dynamic;
	/**
		Return item and drop from frame. Raise KeyError if not found.
	**/
	public function pop(item:Dynamic):Dynamic;
	/**
		Exponential power of series and other, element-wise (binary operator `pow`).
		
		Equivalent to ``series ** other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rpow
	**/
	public function pow(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the product of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		prod : scalar or Series (if level specified)
	**/
	public function prod(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the product of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		prod : scalar or Series (if level specified)
	**/
	public function product(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	public function ptp(?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		return a ndarray with the values put
		
		See also
		--------
		numpy.ndarray.put
	**/
	public function put(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return value at the given quantile, a la numpy.percentile.
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		    0 <= q <= 1, the quantile(s) to compute
		
		Returns
		-------
		quantile : float or Series
		    if ``q`` is an array, a Series will be returned where the
		    index is ``q`` and the values are the quantiles.
		
		Examples
		--------
		
		>>> s = Series([1, 2, 3, 4])
		>>> s.quantile(.5)
		    2.5
		>>> s.quantile([.25, .5, .75])
		0.25    1.75
		0.50    2.50
		0.75    3.25
		dtype: float64
	**/
	public function quantile(?q:Dynamic):Dynamic;
	/**
		Addition of series and other, element-wise (binary operator `radd`).
		
		Equivalent to ``other + series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.add
	**/
	public function radd(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute data ranks (1 through n). Equal values are assigned a rank that
		is the average of the ranks of those values
		
		Parameters
		----------
		method : {'average', 'min', 'max', 'first', 'dense'}
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
		na_option : {'keep'}
		    keep: leave NA values where they are
		ascending : boolean, default True
		    False for ranks by high (1) to low (N)
		pct : boolean, default False
		    Computes percentage rank of data
		
		Returns
		-------
		ranks : Series
	**/
	public function rank(?method:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Return the flattened underlying data as an ndarray
		
		See also
		--------
		numpy.ndarray.ravel
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		Floating division of series and other, element-wise (binary operator `rtruediv`).
		
		Equivalent to ``other / series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.truediv
	**/
	public function rdiv(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	static public var real : Dynamic;
	/**
		Conform Series to new index with optional filling logic, placing
		NA/NaN in locations having no value in the previous index. A new object
		is produced unless the new index is equivalent to the current one and
		copy=False
		
		Parameters
		----------
		index : array-like, optional (can be specified in order, or as
		    keywords)
		    New labels / index to conform to. Preferably an Index object to
		    avoid duplicating data
		method : {None, 'backfill'/'bfill', 'pad'/'ffill', 'nearest'}, optional
		    Method to use for filling holes in reindexed DataFrame:
		      * default: don't fill gaps
		      * pad / ffill: propagate last valid observation forward to next valid
		      * backfill / bfill: use next valid observation to fill gap
		      * nearest: use nearest valid observations to fill gap
		copy : boolean, default True
		    Return a new object, even if the passed indexes are the same
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : scalar, default np.NaN
		    Value to use for missing values. Defaults to NaN, but can be any
		    "compatible" value
		limit : int, default None
		    Maximum number of consecutive elements to forward or backward fill
		tolerance : optional
		    Maximum distance between original and new labels for inexact
		    matches. The values of the index at the matching locations most
		    satisfy the equation ``abs(index[indexer] - target) <= tolerance``.
		
		    .. versionadded:: 0.17.0
		
		Examples
		--------
		>>> df.reindex(index=[date1, date2, date3], columns=['A', 'B', 'C'])
		
		Returns
		-------
		reindexed : Series
	**/
	public function reindex(?index:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		for compatibility with higher dims 
	**/
	public function reindex_axis(labels:Dynamic, ?axis:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		return an object with matching indicies to myself
		
		Parameters
		----------
		other : Object
		method : string or None
		copy : boolean, default True
		limit : int, default None
		    Maximum number of consecutive labels to fill for inexact matches.
		tolerance : optional
		    Maximum distance between labels of the other object and this
		    object for inexact matches.
		
		    .. versionadded:: 0.17.0
		
		Notes
		-----
		Like calling s.reindex(index=other.index, columns=other.columns,
		                       method=...)
		
		Returns
		-------
		reindexed : same as input
	**/
	public function reindex_like(other:Dynamic, ?method:Dynamic, ?copy:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Alter axes input function or functions. Function / dict values must be
		unique (1-to-1). Labels not contained in a dict / Series will be left
		as-is.
		
		Parameters
		----------
		index : dict-like or function, optional
		    Transformation to apply to that axis values
		
		copy : boolean, default True
		    Also copy underlying data
		inplace : boolean, default False
		    Whether to return a new Series. If True then value of copy is
		    ignored.
		
		Returns
		-------
		renamed : Series (new object)
	**/
	public function rename(?index:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Alter index and / or columns using input function or functions.
		Function / dict values must be unique (1-to-1). Labels not contained in
		a dict / Series will be left as-is.
		
		Parameters
		----------
		mapper : dict-like or function, optional
		axis : int or string, default 0
		copy : boolean, default True
		    Also copy underlying data
		inplace : boolean, default False
		
		Returns
		-------
		renamed : type of caller
	**/
	public function rename_axis(mapper:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Rearrange index levels using input order. May not drop or duplicate
		levels
		
		Parameters
		----------
		order: list of int representing new level order.
		       (reference level by number or key)
		axis: where to reorder levels
		
		Returns
		-------
		type of caller (new object)
	**/
	public function reorder_levels(order:Dynamic):Dynamic;
	/**
		return a new Series with the values repeated reps times
		
		See also
		--------
		numpy.ndarray.repeat
	**/
	public function repeat(reps:Dynamic):Dynamic;
	/**
		Replace values given in 'to_replace' with 'value'.
		
		Parameters
		----------
		to_replace : str, regex, list, dict, Series, numeric, or None
		
		    * str or regex:
		
		        - str: string exactly matching `to_replace` will be replaced
		          with `value`
		        - regex: regexs matching `to_replace` will be replaced with
		          `value`
		
		    * list of str, regex, or numeric:
		
		        - First, if `to_replace` and `value` are both lists, they
		          **must** be the same length.
		        - Second, if ``regex=True`` then all of the strings in **both**
		          lists will be interpreted as regexs otherwise they will match
		          directly. This doesn't matter much for `value` since there
		          are only a few possible substitution regexes you can use.
		        - str and regex rules apply as above.
		
		    * dict:
		
		        - Nested dictionaries, e.g., {'a': {'b': nan}}, are read as
		          follows: look in column 'a' for the value 'b' and replace it
		          with nan. You can nest regular expressions as well. Note that
		          column names (the top-level dictionary keys in a nested
		          dictionary) **cannot** be regular expressions.
		        - Keys map to column names and values map to substitution
		          values. You can treat this as a special case of passing two
		          lists except that you are specifying the column to search in.
		
		    * None:
		
		        - This means that the ``regex`` argument must be a string,
		          compiled regular expression, or list, dict, ndarray or Series
		          of such elements. If `value` is also ``None`` then this
		          **must** be a nested dictionary or ``Series``.
		
		    See the examples section for examples of each of these.
		value : scalar, dict, list, str, regex, default None
		    Value to use to fill holes (e.g. 0), alternately a dict of values
		    specifying which value to use for each column (columns not in the
		    dict will not be filled). Regular expressions, strings and lists or
		    dicts of such objects are also allowed.
		inplace : boolean, default False
		    If True, in place. Note: this will modify any
		    other views on this object (e.g. a column form a DataFrame).
		    Returns the caller if this is True.
		limit : int, default None
		    Maximum size gap to forward or backward fill
		regex : bool or same types as `to_replace`, default False
		    Whether to interpret `to_replace` and/or `value` as regular
		    expressions. If this is ``True`` then `to_replace` *must* be a
		    string. Otherwise, `to_replace` must be ``None`` because this
		    parameter will be interpreted as a regular expression or a list,
		    dict, or array of regular expressions.
		method : string, optional, {'pad', 'ffill', 'bfill'}
		    The method to use when for replacement, when ``to_replace`` is a
		    ``list``.
		
		See also
		--------
		NDFrame.reindex
		NDFrame.asfreq
		NDFrame.fillna
		
		Returns
		-------
		filled : NDFrame
		
		Raises
		------
		AssertionError
		    * If `regex` is not a ``bool`` and `to_replace` is not ``None``.
		TypeError
		    * If `to_replace` is a ``dict`` and `value` is not a ``list``,
		      ``dict``, ``ndarray``, or ``Series``
		    * If `to_replace` is ``None`` and `regex` is not compilable into a
		      regular expression or is a list, dict, ndarray, or Series.
		ValueError
		    * If `to_replace` and `value` are ``list`` s or ``ndarray`` s, but
		      they are not the same length.
		
		Notes
		-----
		* Regex substitution is performed under the hood with ``re.sub``. The
		  rules for substitution for ``re.sub`` are the same.
		* Regular expressions will only substitute on strings, meaning you
		  cannot provide, for example, a regular expression matching floating
		  point numbers and expect the columns in your frame that have a
		  numeric dtype to be matched. However, if those floating point numbers
		  *are* strings, then you can do this.
		* This method has *a lot* of options. You are encouraged to experiment
		  and play with this method to gain intuition about how it works.
	**/
	public function replace(?to_replace:Dynamic, ?value:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?regex:Dynamic, ?method:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convenience method for frequency conversion and resampling of regular
		time-series data.
		
		Parameters
		----------
		rule : string
		    the offset string or object representing target conversion
		how : string
		    method for down- or re-sampling, default to 'mean' for
		    downsampling
		axis : int, optional, default 0
		fill_method : string, default None
		    fill_method for upsampling
		closed : {'right', 'left'}
		    Which side of bin interval is closed
		label : {'right', 'left'}
		    Which bin edge label to label bucket with
		convention : {'start', 'end', 's', 'e'}
		kind : "period"/"timestamp"
		loffset : timedelta
		    Adjust the resampled time labels
		limit : int, default None
		    Maximum size gap to when reindexing with fill_method
		base : int, default 0
		    For frequencies that evenly subdivide 1 day, the "origin" of the
		    aggregated intervals. For example, for '5min' frequency, base could
		    range from 0 through 4. Defaults to 0
		
		
		Examples
		--------
		
		Start by creating a series with 9 one minute timestamps.
		
		>>> index = pd.date_range('1/1/2000', periods=9, freq='T')
		>>> series = pd.Series(range(9), index=index)
		>>> series
		2000-01-01 00:00:00    0
		2000-01-01 00:01:00    1
		2000-01-01 00:02:00    2
		2000-01-01 00:03:00    3
		2000-01-01 00:04:00    4
		2000-01-01 00:05:00    5
		2000-01-01 00:06:00    6
		2000-01-01 00:07:00    7
		2000-01-01 00:08:00    8
		Freq: T, dtype: int64
		
		Downsample the series into 3 minute bins and sum the values
		of the timestamps falling into a bin.
		
		>>> series.resample('3T', how='sum')
		2000-01-01 00:00:00     3
		2000-01-01 00:03:00    12
		2000-01-01 00:06:00    21
		Freq: 3T, dtype: int64
		
		Downsample the series into 3 minute bins as above, but label each
		bin using the right edge instead of the left. Please note that the
		value in the bucket used as the label is not included in the bucket,
		which it labels. For example, in the original series the
		bucket ``2000-01-01 00:03:00`` contains the value 3, but the summed
		value in the resampled bucket with the label``2000-01-01 00:03:00``
		does not include 3 (if it did, the summed value would be 6, not 3).
		To include this value close the right side of the bin interval as
		illustrated in the example below this one.
		
		>>> series.resample('3T', how='sum', label='right')
		2000-01-01 00:03:00     3
		2000-01-01 00:06:00    12
		2000-01-01 00:09:00    21
		Freq: 3T, dtype: int64
		
		Downsample the series into 3 minute bins as above, but close the right
		side of the bin interval.
		
		>>> series.resample('3T', how='sum', label='right', closed='right')
		2000-01-01 00:00:00     0
		2000-01-01 00:03:00     6
		2000-01-01 00:06:00    15
		2000-01-01 00:09:00    15
		Freq: 3T, dtype: int64
		
		Upsample the series into 30 second bins.
		
		>>> series.resample('30S')[0:5] #select first 5 rows
		2000-01-01 00:00:00     0
		2000-01-01 00:00:30   NaN
		2000-01-01 00:01:00     1
		2000-01-01 00:01:30   NaN
		2000-01-01 00:02:00     2
		Freq: 30S, dtype: float64
		
		Upsample the series into 30 second bins and fill the ``NaN``
		values using the ``pad`` method.
		
		>>> series.resample('30S', fill_method='pad')[0:5]
		2000-01-01 00:00:00    0
		2000-01-01 00:00:30    0
		2000-01-01 00:01:00    1
		2000-01-01 00:01:30    1
		2000-01-01 00:02:00    2
		Freq: 30S, dtype: int64
		
		Upsample the series into 30 second bins and fill the
		``NaN`` values using the ``bfill`` method.
		
		>>> series.resample('30S', fill_method='bfill')[0:5]
		2000-01-01 00:00:00    0
		2000-01-01 00:00:30    1
		2000-01-01 00:01:00    1
		2000-01-01 00:01:30    2
		2000-01-01 00:02:00    2
		Freq: 30S, dtype: int64
		
		Pass a custom function to ``how``.
		
		>>> def custom_resampler(array_like):
		...     return np.sum(array_like)+5
		
		>>> series.resample('3T', how=custom_resampler)
		2000-01-01 00:00:00     8
		2000-01-01 00:03:00    17
		2000-01-01 00:06:00    26
		Freq: 3T, dtype: int64
	**/
	public function resample(rule:Dynamic, ?how:Dynamic, ?axis:Dynamic, ?fill_method:Dynamic, ?closed:Dynamic, ?label:Dynamic, ?convention:Dynamic, ?kind:Dynamic, ?loffset:Dynamic, ?limit:Dynamic, ?base:Dynamic):Dynamic;
	/**
		Analogous to the :meth:`pandas.DataFrame.reset_index` function, see
		docstring there.
		
		Parameters
		----------
		level : int, str, tuple, or list, default None
		    Only remove the given levels from the index. Removes all levels by
		    default
		drop : boolean, default False
		    Do not try to insert index into dataframe columns
		name : object, default None
		    The name of the column corresponding to the Series values
		inplace : boolean, default False
		    Modify the Series in place (do not create a new object)
		
		Returns
		----------
		resetted : DataFrame, or Series if drop == True
	**/
	public function reset_index(?level:Dynamic, ?drop:Dynamic, ?name:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		return an ndarray with the values shape
		if the specified shape matches exactly the current shape, then
		return self (for compat)
		
		See also
		--------
		numpy.ndarray.take
	**/
	public function reshape(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Integer division of series and other, element-wise (binary operator `rfloordiv`).
		
		Equivalent to ``other // series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.floordiv
	**/
	public function rfloordiv(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Modulo of series and other, element-wise (binary operator `rmod`).
		
		Equivalent to ``other % series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.mod
	**/
	public function rmod(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Multiplication of series and other, element-wise (binary operator `rmul`).
		
		Equivalent to ``other * series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.mul
	**/
	public function rmul(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		    a.round(decimals=0, out=None)
		
		Return `a` with each element rounded to the given number of decimals.
		
		Refer to `numpy.around` for full documentation.
		
		See Also
		--------
		numpy.around : equivalent function
	**/
	public function round(?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Exponential power of series and other, element-wise (binary operator `rpow`).
		
		Equivalent to ``other ** series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.pow
	**/
	public function rpow(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Subtraction of series and other, element-wise (binary operator `rsub`).
		
		Equivalent to ``other - series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.sub
	**/
	public function rsub(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Floating division of series and other, element-wise (binary operator `rtruediv`).
		
		Equivalent to ``other / series``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.truediv
	**/
	public function rtruediv(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns a random sample of items from an axis of object.
		
		.. versionadded:: 0.16.1
		
		Parameters
		----------
		n : int, optional
		    Number of items from axis to return. Cannot be used with `frac`.
		    Default = 1 if `frac` = None.
		frac : float, optional
		    Fraction of axis items to return. Cannot be used with `n`.
		replace : boolean, optional
		    Sample with or without replacement. Default = False.
		weights : str or ndarray-like, optional
		    Default 'None' results in equal probability weighting.
		    If passed a Series, will align with target object on index. Index
		    values in weights not found in sampled object will be ignored and
		    index values in sampled object not in weights will be assigned
		    weights of zero.
		    If called on a DataFrame, will accept the name of a column
		    when axis = 0.
		    Unless weights are a Series, weights must be same length as axis
		    being sampled.
		    If weights do not sum to 1, they will be normalized to sum to 1.
		    Missing values in the weights column will be treated as zero.
		    inf and -inf values not allowed.
		random_state : int or numpy.random.RandomState, optional
		    Seed for the random number generator (if int), or numpy RandomState
		    object.
		axis : int or string, optional
		    Axis to sample. Accepts axis number or name. Default is stat axis
		    for given data type (0 for Series and DataFrames, 1 for Panels).
		
		Returns
		-------
		A new object of same type as caller.
	**/
	public function sample(?n:Dynamic, ?frac:Dynamic, ?replace:Dynamic, ?weights:Dynamic, ?random_state:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted Series `self` such that, if the
		corresponding elements in `v` were inserted before the indices, the
		order of `self` would be preserved.
		
		Parameters
		----------
		v : array_like
		    Values to insert into `a`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `a`).
		sorter : 1-D array_like, optional
		    Optional array of integer indices that sort `self` into ascending
		    order. They are typically the result of ``np.argsort``.
		
		Returns
		-------
		indices : array of ints
		    Array of insertion points with the same shape as `v`.
		
		See Also
		--------
		Series.sort_values
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
		>>> x.searchsorted([1, 2], side='right', sorter=[0, 2, 1])
		array([1, 3])
	**/
	public function searchsorted(v:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Return data corresponding to axis labels matching criteria
		
		Parameters
		----------
		crit : function
		    To be called on each index (label). Should return True or False
		axis : int
		
		Returns
		-------
		selection : type of caller
	**/
	public function select(crit:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return unbiased standard error of the mean over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		sem : scalar or Series (if level specified)
	**/
	public function sem(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		public verson of axis assignment 
	**/
	public function set_axis(axis:Dynamic, labels:Dynamic):Dynamic;
	/**
		Quickly set single value at passed label. If label is not contained, a
		new object is created with the label placed at the end of the result
		index
		
		Parameters
		----------
		label : object
		    Partial indexing with MultiIndex not allowed
		value : object
		    Scalar value
		takeable : interpret the index as indexers, default False
		
		Returns
		-------
		series : Series
		    If label is contained, will be reference to calling Series,
		    otherwise a new object
	**/
	public function set_value(label:Dynamic, value:Dynamic, ?takeable:Dynamic):Dynamic;
	/**
		return a tuple of the shape of the underlying data 
	**/
	static public var shape : Dynamic;
	/**
		Shift index by desired number of periods with an optional time freq
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		freq : DateOffset, timedelta, or time rule string, optional
		    Increment to use from datetools module or time rule (e.g. 'EOM').
		    See Notes.
		axis : {0, 'index'}
		
		Notes
		-----
		If freq is specified then the index values are shifted but the data
		is not realigned. That is, use freq if you would like to extend the
		index when shifting and preserve the original data.
		
		Returns
		-------
		shifted : Series
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		return the number of elements in the underlying data 
	**/
	static public var size : Dynamic;
	/**
		Return unbiased skew over requested axis
		Normalized by N-1
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		skew : scalar or Series (if level specified)
	**/
	public function skew(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Equivalent to `shift` without copying data. The shifted data will
		not include the dropped periods and the shifted axis will be smaller
		than the original.
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		
		Notes
		-----
		While the `slice_shift` is faster than `shift`, you may pay for it
		later during alignment.
		
		Returns
		-------
		shifted : same type as caller
	**/
	public function slice_shift(?periods:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		DEPRECATED: use :meth:`Series.sort_values(inplace=True)` for INPLACE sorting
		
		Sort values and index labels by value. This is an inplace sort by default.
		Series.order is the equivalent but returns a new Series.
		
		Parameters
		----------
		axis : int (can only be zero)
		ascending : boolean, default True
		    Sort ascending. Passing False sorts descending
		kind : {'mergesort', 'quicksort', 'heapsort'}, default 'quicksort'
		    Choice of sorting algorithm. See np.sort for more
		    information. 'mergesort' is the only stable algorithm
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		inplace : boolean, default True
		    Do operation in place.
		
		See Also
		--------
		Series.sort_values
	**/
	public function sort(?axis:Dynamic, ?ascending:Dynamic, ?kind:Dynamic, ?na_position:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Sort object by labels (along an axis)
		
		Parameters
		----------
		axis : index to direct sorting
		level : int or level name or list of ints or list of level names
		    if not None, sort on values in specified index level(s)
		ascending : boolean, default True
		    Sort ascending vs. descending
		inplace : bool
		    if True, perform operation in-place
		kind : {`quicksort`, `mergesort`, `heapsort`}
		     Choice of sorting algorithm. See also ndarray.np.sort for more information.
		     `mergesort` is the only stable algorithm. For DataFrames, this option is
		     only applied when sorting on a single column or label.
		na_position : {'first', 'last'}
		     `first` puts NaNs at the beginning, `last` puts NaNs at the end
		sort_remaining : bool
		    if true and sorting by level and index is multilevel, sort by other levels
		    too (in order) after sorting by specified level
		
		Returns
		-------
		sorted_obj : Series
	**/
	public function sort_index(?axis:Dynamic, ?level:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?sort_remaining:Dynamic):Dynamic;
	/**
		Sort by the values along either axis
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		by : string name or list of names which refer to the axis items
		axis : index to direct sorting
		ascending : bool or list of bool
		     Sort ascending vs. descending. Specify list for multiple sort orders.
		     If this is a list of bools, must match the length of the by
		inplace : bool
		     if True, perform operation in-place
		kind : {`quicksort`, `mergesort`, `heapsort`}
		     Choice of sorting algorithm. See also ndarray.np.sort for more information.
		     `mergesort` is the only stable algorithm. For DataFrames, this option is
		     only applied when sorting on a single column or label.
		na_position : {'first', 'last'}
		     `first` puts NaNs at the beginning, `last` puts NaNs at the end
		
		Returns
		-------
		sorted_obj : Series
	**/
	public function sort_values(?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Sort Series with MultiIndex by chosen level. Data will be
		lexicographically sorted by the chosen level followed by the other
		levels (in order)
		
		Parameters
		----------
		level : int or level name, default None
		ascending : bool, default True
		
		Returns
		-------
		sorted : Series
		
		See Also
		--------
		Series.sort_index(level=...)
	**/
	public function sortlevel(?level:Dynamic, ?ascending:Dynamic, ?sort_remaining:Dynamic):Dynamic;
	/**
		squeeze length 1 dimensions 
	**/
	public function squeeze():Dynamic;
	/**
		Return unbiased standard deviation over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		std : scalar or Series (if level specified)
	**/
	public function std(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var strides : Dynamic;
	/**
		Subtraction of series and other, element-wise (binary operator `sub`).
		
		Equivalent to ``series - other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rsub
	**/
	public function sub(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Subtraction of series and other, element-wise (binary operator `sub`).
		
		Equivalent to ``series - other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rsub
	**/
	public function subtract(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the sum of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		sum : scalar or Series (if level specified)
	**/
	public function sum(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Interchange axes and swap values axes appropriately
		
		Returns
		-------
		y : same as input
	**/
	public function swapaxes(axis1:Dynamic, axis2:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Swap levels i and j in a MultiIndex
		
		Parameters
		----------
		i, j : int, string (can be mixed)
		    Level of index to be swapped. Can pass level name as string.
		
		Returns
		-------
		swapped : Series
	**/
	public function swaplevel(i:Dynamic, j:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Returns last n rows
	**/
	public function tail(?n:Dynamic):Dynamic;
	/**
		return Series corresponding to requested indices
		
		Parameters
		----------
		indices : list / array of ints
		convert : translate negative to positive indices (default)
		
		Returns
		-------
		taken : Series
		
		See also
		--------
		numpy.ndarray.take
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?convert:Dynamic, ?is_copy:Dynamic):Dynamic;
	/**
		Attempt to write text representation of object to the system clipboard
		This can be pasted into Excel, for example.
		
		Parameters
		----------
		excel : boolean, defaults to True
		        if True, use the provided separator, writing in a csv
		        format for allowing easy pasting into excel.
		        if False, write a string representation of the object
		        to the clipboard
		sep : optional, defaults to tab
		other keywords are passed to to_csv
		
		Notes
		-----
		Requirements for your platform
		  - Linux: xclip, or xsel (with gtk or PyQt4 modules)
		  - Windows: none
		  - OS X: none
	**/
	public function to_clipboard(?excel:Dynamic, ?sep:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Write Series to a comma-separated values (csv) file
		
		Parameters
		----------
		path : string file path or file handle / StringIO. If None is provided
		    the result is returned as a string.
		na_rep : string, default ''
		    Missing data representation
		float_format : string, default None
		    Format string for floating point numbers
		header : boolean, default False
		    Write out series name
		index : boolean, default True
		    Write row names (index)
		index_label : string or sequence, default None
		    Column label for index column(s) if desired. If None is given, and
		    `header` and `index` are True, then the index names are used. A
		    sequence should be given if the DataFrame uses MultiIndex.
		mode : Python write mode, default 'w'
		sep : character, default ","
		    Field delimiter for the output file.
		encoding : string, optional
		    a string representing the encoding to use if the contents are
		    non-ascii, for python versions prior to 3
		date_format: string, default None
		    Format string for datetime objects.
		decimal: string, default '.'
		    Character recognized as decimal separator. E.g. use ',' for European data
	**/
	public function to_csv(path:Dynamic, ?index:Dynamic, ?sep:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?header:Dynamic, ?index_label:Dynamic, ?mode:Dynamic, ?nanRep:Dynamic, ?encoding:Dynamic, ?date_format:Dynamic, ?decimal:Dynamic):Dynamic;
	/**
		Return dense representation of NDFrame (as opposed to sparse)
	**/
	public function to_dense():Dynamic;
	/**
		Convert Series to {label -> value} dict
		
		Returns
		-------
		value_dict : dict
	**/
	public function to_dict():Dynamic;
	/**
		Convert Series to DataFrame
		
		Parameters
		----------
		name : object, default None
		    The passed name should substitute for the series name (if it has
		    one).
		
		Returns
		-------
		data_frame : DataFrame
	**/
	public function to_frame(?name:Dynamic):Dynamic;
	/**
		activate the HDFStore
		
		Parameters
		----------
		path_or_buf : the path (string) or HDFStore object
		key : string
		    indentifier for the group in the store
		mode : optional, {'a', 'w', 'r', 'r+'}, default 'a'
		
		  ``'r'``
		      Read-only; no data can be modified.
		  ``'w'``
		      Write; a new file is created (an existing file with the same
		      name would be deleted).
		  ``'a'``
		      Append; an existing file is opened for reading and writing,
		      and if the file does not exist it is created.
		  ``'r+'``
		      It is similar to ``'a'``, but the file must already exist.
		format   : 'fixed(f)|table(t)', default is 'fixed'
		    fixed(f) : Fixed format
		               Fast writing/reading. Not-appendable, nor searchable
		    table(t) : Table format
		               Write as a PyTables Table structure which may perform
		               worse but allow more flexible operations like searching
		               / selecting subsets of the data
		append   : boolean, default False
		    For Table formats, append the input data to the existing
		complevel : int, 1-9, default 0
		    If a complib is specified compression will be applied
		    where possible
		complib : {'zlib', 'bzip2', 'lzo', 'blosc', None}, default None
		    If complevel is > 0 apply compression to objects written
		    in the store wherever possible
		fletcher32 : bool, default False
		    If applying compression use the fletcher32 checksum
		dropna : boolean, default False.
		    If true, ALL nan rows will not be written to store.
	**/
	public function to_hdf(path_or_buf:Dynamic, key:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Convert the object to a JSON string.
		
		Note NaN's and None will be converted to null and datetime objects
		will be converted to UNIX timestamps.
		
		Parameters
		----------
		path_or_buf : the path or buffer to write the result string
		    if this is None, return a StringIO of the converted string
		orient : string
		
		    * Series
		
		      - default is 'index'
		      - allowed values are: {'split','records','index'}
		
		    * DataFrame
		
		      - default is 'columns'
		      - allowed values are:
		        {'split','records','index','columns','values'}
		
		    * The format of the JSON string
		
		      - split : dict like
		        {index -> [index], columns -> [columns], data -> [values]}
		      - records : list like
		        [{column -> value}, ... , {column -> value}]
		      - index : dict like {index -> {column -> value}}
		      - columns : dict like {column -> {index -> value}}
		      - values : just the values array
		
		date_format : {'epoch', 'iso'}
		    Type of date conversion. `epoch` = epoch milliseconds,
		    `iso`` = ISO8601, default is epoch.
		double_precision : The number of decimal places to use when encoding
		    floating point values, default 10.
		force_ascii : force encoded string to be ASCII, default True.
		date_unit : string, default 'ms' (milliseconds)
		    The time unit to encode to, governs timestamp and ISO8601
		    precision.  One of 's', 'ms', 'us', 'ns' for second, millisecond,
		    microsecond, and nanosecond respectively.
		default_handler : callable, default None
		    Handler to call if object cannot otherwise be converted to a
		    suitable format for JSON. Should receive a single argument which is
		    the object to convert and return a serialisable object.
		
		Returns
		-------
		same type as input object with filtered info axis
	**/
	public function to_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?date_format:Dynamic, ?double_precision:Dynamic, ?force_ascii:Dynamic, ?date_unit:Dynamic, ?default_handler:Dynamic):Dynamic;
	/**
		msgpack (serialize) object to input file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path : string File path, buffer-like, or None
		    if None, return generated string
		append : boolean whether to append to an existing msgpack
		    (default is False)
		compress : type of compressor (zlib or blosc), default to None (no
		    compression)
	**/
	public function to_msgpack(?path_or_buf:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Convert Series from DatetimeIndex to PeriodIndex with desired
		frequency (inferred from index if not passed)
		
		Parameters
		----------
		freq : string, default
		
		Returns
		-------
		ts : Series with PeriodIndex
	**/
	public function to_period(?freq:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to input file path
		
		Parameters
		----------
		path : string
		    File path
	**/
	public function to_pickle(path:Dynamic):Dynamic;
	/**
		Convert Series to SparseSeries
		
		Parameters
		----------
		kind : {'block', 'integer'}
		fill_value : float, defaults to NaN (missing)
		
		Returns
		-------
		sp : SparseSeries
	**/
	public function to_sparse(?kind:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Write records stored in a DataFrame to a SQL database.
		
		Parameters
		----------
		name : string
		    Name of SQL table
		con : SQLAlchemy engine or DBAPI2 connection (legacy mode)
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library.
		    If a DBAPI2 object, only sqlite3 is supported.
		flavor : {'sqlite', 'mysql'}, default 'sqlite'
		    The flavor of SQL to use. Ignored when using SQLAlchemy engine.
		    'mysql' is deprecated and will be removed in future versions, but it
		    will be further supported through SQLAlchemy engines.
		schema : string, default None
		    Specify the schema (if database flavor supports this). If None, use
		    default schema.
		if_exists : {'fail', 'replace', 'append'}, default 'fail'
		    - fail: If table exists, do nothing.
		    - replace: If table exists, drop it, recreate it, and insert data.
		    - append: If table exists, insert data. Create if does not exist.
		index : boolean, default True
		    Write DataFrame index as a column.
		index_label : string or sequence, default None
		    Column label for index column(s). If None is given (default) and
		    `index` is True, then the index names are used.
		    A sequence should be given if the DataFrame uses MultiIndex.
		chunksize : int, default None
		    If not None, then rows will be written in batches of this size at a
		    time.  If None, all rows will be written at once.
		dtype : dict of column name to SQL type, default None
		    Optional specifying the datatype for columns. The SQL type should
		    be a SQLAlchemy type, or a string for sqlite3 fallback connection.
	**/
	public function to_sql(name:Dynamic, con:Dynamic, ?flavor:Dynamic, ?schema:Dynamic, ?if_exists:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Render a string representation of the Series
		
		Parameters
		----------
		buf : StringIO-like, optional
		    buffer to write to
		na_rep : string, optional
		    string representation of NAN to use, default 'NaN'
		float_format : one-parameter function, optional
		    formatter function to apply to columns' elements if they are floats
		    default None
		header: boolean, default True
		    Add the Series header (index name)
		length : boolean, default False
		    Add the Series length
		dtype : boolean, default False
		    Add the Series dtype
		name : boolean, default False
		    Add the Series name if not None
		max_rows : int, optional
		    Maximum number of rows to show before truncating. If None, show
		    all.
		
		Returns
		-------
		formatted : string (if not buffer passed)
	**/
	public function to_string(?buf:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?header:Dynamic, ?length:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?max_rows:Dynamic):Dynamic;
	/**
		Cast to datetimeindex of timestamps, at *beginning* of period
		
		Parameters
		----------
		freq : string, default frequency of PeriodIndex
		    Desired frequency
		how : {'s', 'e', 'start', 'end'}
		    Convention for converting period to timestamp; start of period
		    vs. end
		
		Returns
		-------
		ts : Series with DatetimeIndex
	**/
	public function to_timestamp(?freq:Dynamic, ?how:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Convert Series to a nested list 
	**/
	public function tolist():Dynamic;
	/**
		return the transpose, which is by definition self 
	**/
	public function transpose():Dynamic;
	/**
		Floating division of series and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``series / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other: Series or scalar value
		fill_value : None or float value, default None (NaN)
		    Fill missing (NaN) values with this value. If both Series are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Returns
		-------
		result : Series
		
		See also
		--------
		Series.rtruediv
	**/
	public function truediv(other:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Truncates a sorted NDFrame before and/or after some particular
		dates.
		
		Parameters
		----------
		before : date
		    Truncate before date
		after : date
		    Truncate after date
		axis : the truncation axis, defaults to the stat axis
		copy : boolean, default is True,
		    return a copy of the truncated section
		
		Returns
		-------
		truncated : type of caller
	**/
	public function truncate(?before:Dynamic, ?after:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Shift the time index, using the index's frequency if available
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		freq : DateOffset, timedelta, or time rule string, default None
		    Increment to use from datetools module or time rule (e.g. 'EOM')
		axis : int or basestring
		    Corresponds to the axis that contains the Index
		
		Notes
		-----
		If freq is not specified then tries to use the freq or inferred_freq
		attributes of the index. If neither of those attributes exist, a
		ValueError is thrown
		
		Returns
		-------
		shifted : NDFrame
	**/
	public function tshift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convert tz-aware axis to target time zone.
		
		Parameters
		----------
		tz : string or pytz.timezone object
		axis : the axis to convert
		level : int, str, default None
		    If axis ia a MultiIndex, convert a specific level. Otherwise
		    must be None
		copy : boolean, default True
		    Also make a copy of the underlying data
		
		Returns
		-------
		
		Raises
		------
		TypeError
		    If the axis is tz-naive.
	**/
	public function tz_convert(tz:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Localize tz-naive TimeSeries to target time zone
		
		Parameters
		----------
		tz : string or pytz.timezone object
		axis : the axis to localize
		level : int, str, default None
		    If axis ia a MultiIndex, localize a specific level. Otherwise
		    must be None
		copy : boolean, default True
		    Also make a copy of the underlying data
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    - 'infer' will attempt to infer fall dst-transition hours based on order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous times
		infer_dst : boolean, default False (DEPRECATED)
		    Attempt to infer fall dst-transition hours based on order
		
		Returns
		-------
		
		Raises
		------
		TypeError
		    If the TimeSeries is tz-aware and tz is not None.
	**/
	public function tz_localize(tz:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?ambiguous:Dynamic):Dynamic;
	/**
		Return array of unique values in the object. Significantly faster than
		numpy.unique. Includes NA values.
		
		Returns
		-------
		uniques : ndarray
	**/
	public function unique():Dynamic;
	/**
		Unstack, a.k.a. pivot, Series with MultiIndex to produce DataFrame.
		The level involved will automatically get sorted.
		
		Parameters
		----------
		level : int, string, or list of these, default last level
		    Level(s) to unstack, can pass level name
		
		Examples
		--------
		>>> s
		one  a   1.
		one  b   2.
		two  a   3.
		two  b   4.
		
		>>> s.unstack(level=-1)
		     a   b
		one  1.  2.
		two  3.  4.
		
		>>> s.unstack(level=0)
		   one  two
		a  1.   2.
		b  3.   4.
		
		Returns
		-------
		unstacked : DataFrame
	**/
	public function unstack(?level:Dynamic):Dynamic;
	/**
		Modify Series in place using non-NA values from passed
		Series. Aligns on index
		
		Parameters
		----------
		other : Series
	**/
	public function update(other:Dynamic):Dynamic;
	public function valid(?inplace:Dynamic, kwargs:Dynamic):Dynamic;
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
		Return Series as ndarray or ndarray-like
		depending on the dtype
		
		Returns
		-------
		arr : numpy.ndarray or ndarray-like
		
		Examples
		--------
		>>> pd.Series([1, 2, 3]).values
		array([1, 2, 3])
		
		>>> pd.Series(list('aabc')).values
		array(['a', 'a', 'b', 'c'], dtype=object)
		
		>>> pd.Series(list('aabc')).astype('category').values
		[a, a, b, c]
		Categories (3, object): [a, b, c]
		
		Timezone aware datetime data is converted to UTC:
		
		>>> pd.Series(pd.date_range('20130101',periods=3,tz='US/Eastern')).values
		array(['2013-01-01T00:00:00.000000000-0500',
		       '2013-01-02T00:00:00.000000000-0500',
		       '2013-01-03T00:00:00.000000000-0500'], dtype='datetime64[ns]')
	**/
	static public var values : Dynamic;
	/**
		Return unbiased variance over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a scalar
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		var : scalar or Series (if level specified)
	**/
	@:native("var")
	public function _var(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	public function view(?dtype:Dynamic):Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where cond is True and otherwise are from other.
		
		Parameters
		----------
		cond : boolean NDFrame or array
		other : scalar or NDFrame
		inplace : boolean, default False
		    Whether to perform the operation in place on the data
		axis : alignment axis if needed, default None
		level : alignment level if needed, default None
		try_cast : boolean, default False
		    try to cast the result back to the input type (if possible),
		raise_on_error : boolean, default True
		    Whether to raise on invalid data types (e.g. trying to where on
		    strings)
		
		Returns
		-------
		wh : same type as caller
	**/
	public function where(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?try_cast:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		Returns a cross-section (row(s) or column(s)) from the Series/DataFrame.
		Defaults to cross-section on the rows (axis=0).
		
		Parameters
		----------
		key : object
		    Some label contained in the index, or partially in a MultiIndex
		axis : int, default 0
		    Axis to retrieve cross-section on
		level : object, defaults to first n levels (n=1 or len(key))
		    In case of a key partially contained in a MultiIndex, indicate
		    which levels are used. Levels can be referred by label or position.
		copy : boolean [deprecated]
		    Whether to make a copy of the data
		drop_level : boolean, default True
		    If False, returns object with same levels as self.
		
		Examples
		--------
		>>> df
		   A  B  C
		a  4  5  2
		b  4  0  9
		c  9  7  3
		>>> df.xs('a')
		A    4
		B    5
		C    2
		Name: a
		>>> df.xs('C', axis=1)
		a    2
		b    9
		c    3
		Name: C
		
		>>> df
		                    A  B  C  D
		first second third
		bar   one    1      4  1  8  9
		      two    1      7  5  5  0
		baz   one    1      6  6  8  0
		      three  2      5  3  5  3
		>>> df.xs(('baz', 'three'))
		       A  B  C  D
		third
		2      5  3  5  3
		>>> df.xs('one', level=1)
		             A  B  C  D
		first third
		bar   1      4  1  8  9
		baz   1      6  6  8  0
		>>> df.xs(('baz', 2), level=[0, 'third'])
		        A  B  C  D
		second
		three   5  3  5  3
		
		Returns
		-------
		xs : Series or DataFrame
		
		Notes
		-----
		xs is only for getting, not setting values.
		
		MultiIndex Slicers is a generic way to get/set values on any level or levels
		it is a superset of xs functionality, see :ref:`MultiIndex Slicers <advanced.mi_slicers>`
	**/
	public function xs(key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?drop_level:Dynamic):Dynamic;
}