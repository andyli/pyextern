/* This file is generated, do not edit! */
package pandas.core.generic;
@:pythonImport("pandas.core.generic", "NDFrame") extern class NDFrame {
	public function __abs__():Dynamic;
	public function __array__(?dtype:Dynamic):Dynamic;
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
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Propagate metadata from other to self.
		
		Parameters
		----------
		other : the object from which to get the attributes that we are going
		    to propagate
		method : optional, a passed method name ; possibly to take different
		    types of propagation actions based on this
	**/
	public function __finalize__(other:Dynamic, ?method:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		After regular attribute access, try looking up the name
		This allows simpler access to columns for interactive use.
	**/
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(item:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
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
	public function ___init__(data:Dynamic, ?axes:Dynamic, ?copy:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, ?axes:Dynamic, ?copy:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Void;
	public function __invert__():Dynamic;
	/**
		Iterate over infor axis
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Returns length of info axis
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__():Dynamic;
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
	public function __round__(?decimals:Dynamic):Dynamic;
	/**
		After regular attribute access, try setting the name
		This allows simpler access to columns for interactive use.
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
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
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		Add the operations to the cls; evaluate the doc strings again
	**/
	static public function _add_numeric_operations():Dynamic;
	/**
		Add the series only operations to the cls; evaluate the doc
		strings again.
	**/
	static public function _add_series_only_operations():Dynamic;
	/**
		Add the series or dataframe only operations to the cls; evaluate
		the doc strings again.
	**/
	static public function _add_series_or_dataframe_operations():Dynamic;
	public function _agg_by_level(name:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _align_frame(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	public function _align_series(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	static public var _at : Dynamic;
	public function _box_item_values(key:Dynamic, values:Dynamic):Dynamic;
	/**
		check whether we allow in-place setting with this type of value 
	**/
	public function _check_inplace_setting(value:Dynamic):Dynamic;
	/**
		Check if we are a view, have a cacher, and are of mixed type.
		If so, then force a setitem_copy check.
		
		Should be called just near setting a value
		
		Will return a boolean if it we are a view and are cached, but a
		single-dtype meaning that the cacher should be updated following
		setting.
	**/
	public function _check_is_chained_assignment_possible():Dynamic;
	/**
		Validate percentiles (used by describe and quantile).
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
		a copy even WITH a multi-dtyped pandas object. In other words, some
		blocks may be views while other are not. Currently _is_view will ALWAYS
		return False for multi-blocks to avoid having to handle this case.
		
		df = DataFrame(np.arange(0,9), columns=['count'])
		df['group'] = 'b'
		
		# This technically need not raise SettingWithCopy if both are view
		# (which is not # generally guaranteed but is usually True.  However,
		# this is in general not a good practice and we recommend using .loc.
		df.iloc[0:5]['group'] = 'a'
	**/
	public function _check_setitem_copy(?stacklevel:Dynamic, ?t:Dynamic, ?force:Dynamic):Dynamic;
	public function _clear_item_cache(?i:Dynamic):Dynamic;
	/**
		Consolidate data in place and return None
	**/
	public function _consolidate_inplace():Dynamic;
	/**
		Return an axes dictionary for myself.
	**/
	public function _construct_axes_dict(?axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an axes dictionary for myself.
	**/
	public function _construct_axes_dict_for_slice(?axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an axes dictionary for the passed axes.
	**/
	static public function _construct_axes_dict_from(self:Dynamic, axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct and returns axes if supplied in args/kwargs.
		
		If require_all, raise if all axis arguments are not supplied
		return a tuple of (axes, kwargs).
	**/
	public function _construct_axes_from_arguments(args:Dynamic, kwargs:Dynamic, ?require_all:Dynamic):Dynamic;
	/**
		Used when a manipulation result has the same dimensions as the
		original.
	**/
	public var _constructor : Dynamic;
	/**
		Used when a manipulation result has one higher dimension as the
		original, such as Series.to_frame() and DataFrame.to_panel()
	**/
	public var _constructor_expanddim : Dynamic;
	/**
		Used when a manipulation result has one lower dimension(s) as the
		original, such as DataFrame single columns slicing.
	**/
	public var _constructor_sliced : Dynamic;
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
		Create an indexer like _name in the class.
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
	static public function _from_axes(data:Dynamic, axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _get_axis(axis:Dynamic):Dynamic;
	public function _get_axis_name(axis:Dynamic):Dynamic;
	public function _get_axis_number(axis:Dynamic):Dynamic;
	public function _get_axis_resolvers(axis:Dynamic):Dynamic;
	/**
		Map the axis to the block_manager axis.
	**/
	public function _get_block_manager_axis(axis:Dynamic):Dynamic;
	public function _get_bool_data():Dynamic;
	/**
		return my cacher or None
	**/
	public function _get_cacher():Dynamic;
	public function _get_index_resolvers():Dynamic;
	/**
		Return the cached item, item represents a label indexer.
	**/
	public function _get_item_cache(item:Dynamic):Dynamic;
	public function _get_numeric_data():Dynamic;
	public var _get_values : Dynamic;
	static public var _iat : Dynamic;
	/**
		Return the cached item, item represents a positional indexer.
	**/
	public function _iget_item_cache(item:Dynamic):Dynamic;
	static public var _iloc : Dynamic;
	public function _indexed_same(other:Dynamic):Dynamic;
	public var _info_axis : Dynamic;
	/**
		passed a manager and a axes dict 
	**/
	public function _init_mgr(mgr:Dynamic, ?axes:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		Return boolean indicating if self is cached or not.
	**/
	public var _is_cached : Dynamic;
	public var _is_datelike_mixed_type : Dynamic;
	public var _is_mixed_type : Dynamic;
	public var _is_numeric_mixed_type : Dynamic;
	/**
		Return boolean indicating if self is view of another array 
	**/
	public var _is_view : Dynamic;
	static public var _ix : Dynamic;
	static public var _loc : Dynamic;
	/**
		The object has called back to us saying maybe it has changed.
		
		numpy < 1.8 has an issue with object arrays and aliasing
		GH6026
	**/
	public function _maybe_cache_changed(item:Dynamic, value:Dynamic):Dynamic;
	/**
		See if we need to update our parent cacher if clear, then clear our
		cache.
		
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
		Check if we do need a multi reindex.
	**/
	public function _needs_reindex_multi(axes:Dynamic, method:Dynamic, level:Dynamic):Dynamic;
	/**
		Consolidate _data -- if the blocks have changed, then clear the
		cache
	**/
	public function _protect_consolidate(f:Dynamic):Dynamic;
	/**
		Perform the reindex for all the axes.
	**/
	public function _reindex_axes(axes:Dynamic, level:Dynamic, limit:Dynamic, tolerance:Dynamic, method:Dynamic, fill_value:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_axis(new_index:Dynamic, fill_method:Dynamic, axis:Dynamic, copy:Dynamic):Dynamic;
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
		Reset the cacher.
	**/
	public function _reset_cacher():Dynamic;
	/**
		Set the _cacher attribute on the calling object with a weakref to
		cacher.
	**/
	public function _set_as_cached(item:Dynamic, cacher:Dynamic):Dynamic;
	public function _set_axis(axis:Dynamic, labels:Dynamic):Dynamic;
	/**
		Alter the name or names of the axis, returning self.
		
		Parameters
		----------
		name : str or list of str
		    Name for the Index, or list of names for the MultiIndex
		axis : int or str
		   0 or 'index' for the index; 1 or 'columns' for the columns
		
		Returns
		-------
		renamed : type of caller
		
		See Also
		--------
		pandas.DataFrame.rename
		pandas.Series.rename
		pandas.Index.rename
		
		Examples
		--------
		>>> df._set_axis_name("foo")
		     A
		foo
		0    1
		1    2
		2    3
		>>> df.index = pd.MultiIndex.from_product([['A'], ['a', 'b', 'c']])
		>>> df._set_axis_name(["bar", "baz"])
		         A
		bar baz
		A   a    1
		    b    2
		    c    3
	**/
	public function _set_axis_name(name:Dynamic, ?axis:Dynamic):Dynamic;
	public function _set_is_copy(?ref:Dynamic, ?copy:Dynamic):Dynamic;
	public function _set_item(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Provide axes setup for the major PandasObjects.
		
		Parameters
		----------
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
	public var _stat_axis : Dynamic;
	/**
		Replace self internals with result.
		
		Parameters
		----------
		verify_is_copy : boolean, default True
		    provide is_copy checks
	**/
	public function _update_inplace(result:Dynamic, ?verify_is_copy:Dynamic):Dynamic;
	/**
		validate the passed dtype 
	**/
	public function _validate_dtype(dtype:Dynamic):Dynamic;
	/**
		internal implementation
	**/
	public var _values : Dynamic;
	/**
		Equivalent to public method `where`, except that `other` is not
		applied as a function even if callable. Used in __setitem__.
	**/
	public function _where(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?try_cast:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		Returns a cross-section (row(s) or column(s)) from the
		Series/DataFrame. Defaults to cross-section on the rows (axis=0).
		
		Parameters
		----------
		key : object
		    Some label contained in the index, or partially in a MultiIndex
		axis : int, default 0
		    Axis to retrieve cross-section on
		level : object, defaults to first n levels (n=1 or len(key))
		    In case of a key partially contained in a MultiIndex, indicate
		    which levels are used. Levels can be referred by label or position.
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
		
		MultiIndex Slicers is a generic way to get/set values on any level or
		levels.  It is a superset of xs functionality, see
		:ref:`MultiIndex Slicers <advanced.mi_slicers>`
	**/
	public function _xs(key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?drop_level:Dynamic):Dynamic;
	/**
		Return an object with absolute value taken--only applicable to objects
		that are all numeric.
		
		Returns
		-------
		abs: type of caller
	**/
	public function abs():Dynamic;
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
		Concatenate suffix string with panel items names.
		
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
		fill_axis : int or labels for object, default 0
		    Filling axis, method and limit
		broadcast_axis : int or labels for object, default None
		    Broadcast values along this axis, if aligning two objects of
		    different dimensions
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		(left, right) : (NDFrame, type of other)
		    Aligned objects
	**/
	public function align(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic, ?broadcast_axis:Dynamic):Dynamic;
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
		int32. By numpy.find_common_type convention, mixing int64 and uint64
		will result in a flot64 dtype.
		
		This method is provided for backwards compatibility. Generally,
		it is recommended to use '.values'.
		
		See Also
		--------
		pandas.DataFrame.values
	**/
	public function as_matrix(?columns:Dynamic):numpy.Ndarray;
	/**
		Convert TimeSeries to specified frequency.
		
		Optionally provide filling method to pad/backfill missing values.
		
		Parameters
		----------
		freq : DateOffset object, or string
		method : {'backfill'/'bfill', 'pad'/'ffill'}, default None
		    Method to use for filling holes in reindexed Series (note this
		    does not fill NaNs that already were present):
		
		    * 'pad' / 'ffill': propagate last valid observation forward to next
		      valid
		    * 'backfill' / 'bfill': use NEXT valid observation to fill
		how : {'start', 'end'}, default end
		    For PeriodIndex only, see PeriodIndex.asfreq
		normalize : bool, default False
		    Whether to reset output index to midnight
		
		Returns
		-------
		converted : type of caller
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	public function asfreq(freq:Dynamic, ?method:Dynamic, ?how:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		The last row without any NaN is taken (or the last row without
		NaN considering only the subset of columns in the case of a DataFrame)
		
		.. versionadded:: 0.19.0 For DataFrame
		
		If there is no good value, NaN is returned.
		
		Parameters
		----------
		where : date or array of dates
		subset : string or list of strings, default None
		   if not None use these columns for NaN propagation
		
		Notes
		-----
		Dates are assumed to be sorted
		Raises if this is not the case
		
		Returns
		-------
		where is scalar
		
		  - value or NaN if input is Series
		  - Series if input is DataFrame
		
		where is Index: same shape object as input
		
		See Also
		--------
		merge_asof
	**/
	public function asof(where:Dynamic, ?subset:Dynamic):Dynamic;
	/**
		Cast object to input numpy.dtype
		Return a copy when copy = True (be really careful with this!)
		
		Parameters
		----------
		dtype : data type, or dict of column name -> data type
		    Use a numpy.dtype or Python type to cast entire pandas object to
		    the same type. Alternatively, use {col: dtype, ...}, where col is a
		    column label and dtype is a numpy.dtype or Python type to cast one
		    or more of the DataFrame's columns to column-specific types.
		raise_on_error : raise on invalid input
		kwargs : keyword arguments to pass on to the constructor
		
		Returns
		-------
		casted : type of caller
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?raise_on_error:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fast label-based scalar accessor
		
		Similarly to ``loc``, ``at`` provides **label** based scalar lookups.
		You can also set using these indexers.
	**/
	public var at : Dynamic;
	/**
		Select values at particular time of day (e.g. 9:30AM).
		
		Parameters
		----------
		time : datetime.time or string
		
		Returns
		-------
		values_at_time : type of caller
	**/
	public function at_time(time:Dynamic, ?asof:Dynamic):Dynamic;
	/**
		Return index label(s) of the internal NDFrame
	**/
	public var axes : Dynamic;
	/**
		Select values between particular times of the day (e.g., 9:00-9:30 AM).
		
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
	public var blocks : Dynamic;
	/**
		Return the bool of a single element PandasObject.
		
		This must be a boolean scalar value, either True or False.  Raise a
		ValueError if the PandasObject does not have exactly 1 element, or that
		element is not boolean
	**/
	public function bool():Dynamic;
	/**
		Trim values at input threshold(s).
		
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
	public function clip(?lower:Dynamic, ?upper:Dynamic, ?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Return copy of the input with values below given value(s) truncated.
		
		Parameters
		----------
		threshold : float or array_like
		axis : int or string axis name, optional
		    Align object with threshold along the given axis.
		
		See Also
		--------
		clip
		
		Returns
		-------
		clipped : same type as input
	**/
	public function clip_lower(threshold:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return copy of input with values above given value(s) truncated.
		
		Parameters
		----------
		threshold : float or array_like
		axis : int or string axis name, optional
		    Align object with threshold along the given axis.
		
		See Also
		--------
		clip
		
		Returns
		-------
		clipped : same type as input
	**/
	public function clip_upper(threshold:Dynamic, ?axis:Dynamic):Dynamic;
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
		Deprecated.
		
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
		
		See Also
		--------
		pandas.to_datetime : Convert argument to datetime.
		pandas.to_timedelta : Convert argument to timedelta.
		pandas.to_numeric : Return a fixed frequency timedelta index,
		    with day as the default.
		
		Returns
		-------
		converted : same as input object
	**/
	public function convert_objects(?convert_dates:Dynamic, ?convert_numeric:Dynamic, ?convert_timedeltas:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Make a copy of this objects data.
		
		Parameters
		----------
		deep : boolean or string, default True
		    Make a deep copy, including a copy of the data and the indices.
		    With ``deep=False`` neither the indices or the data are copied.
		
		    Note that when ``deep=True`` data is copied, actual python objects
		    will not be copied recursively, only the reference to the object.
		    This is in contrast to ``copy.deepcopy`` in the Standard Library,
		    which recursively copies object data.
		
		Returns
		-------
		copy : type of caller
	**/
	public function copy(?deep:Dynamic):Dynamic;
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
		
		    - None to both (default). The result will include only
		      numeric-typed columns or, if none are, only categorical columns.
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
		
		See Also
		--------
		DataFrame.select_dtypes
	**/
	public function describe(?percentiles:Dynamic, ?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Return new object with labels in requested axis removed.
		
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
		Return the dtypes in this object.
	**/
	public var dtypes : Dynamic;
	/**
		True if NDFrame is entirely empty [no items], meaning any of the
		axes are of length 0.
		
		Notes
		-----
		If NDFrame contains only NaNs, it is still not considered empty. See
		the example below.
		
		Examples
		--------
		An example of an actual empty DataFrame. Notice the index is empty:
		
		>>> df_empty = pd.DataFrame({'A' : []})
		>>> df_empty
		Empty DataFrame
		Columns: [A]
		Index: []
		>>> df_empty.empty
		True
		
		If we only have NaNs in our DataFrame, it is not considered empty! We
		will need to drop the NaNs to make the DataFrame empty:
		
		>>> df = pd.DataFrame({'A' : [np.nan]})
		>>> df
		    A
		0 NaN
		>>> df.empty
		False
		>>> df.dropna().empty
		True
		
		See also
		--------
		pandas.Series.dropna
		pandas.DataFrame.dropna
	**/
	public var empty : Dynamic;
	/**
		Determines if two NDFrame objects contain the same elements. NaNs in
		the same location are considered equal.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Synonym for NDFrame.fillna(method='ffill')
	**/
	public function ffill(?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Fill NA/NaN values using the specified method
		
		Parameters
		----------
		value : scalar, dict, Series, or DataFrame
		    Value to use to fill holes (e.g. 0), alternately a
		    dict/Series/DataFrame of values specifying which value to use for
		    each index (for a Series) or column (for a DataFrame). (values not
		    in the dict/Series/DataFrame will not be filled). This value cannot
		    be a list.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill gap
		axis : int or labels for object
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
		
		See Also
		--------
		reindex, asfreq
		
		Returns
		-------
		filled : NDFrame
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic):pandas.core.frame.NDFrame;
	/**
		Subset rows or columns of dataframe according to labels in
		the specified index.
		
		Note that this routine does not filter a dataframe on its
		contents. The filter is applied to the labels of the index.
		
		Parameters
		----------
		items : list-like
		    List of info axis to restrict to (must not all be present)
		like : string
		    Keep info axis where "arg in col == True"
		regex : string (regular expression)
		    Keep info axis with re.search(regex, col) == True
		axis : int or string axis name
		    The axis to filter on.  By default this is the info axis,
		    'index' for Series, 'columns' for DataFrame
		
		Returns
		-------
		same type as input object
		
		Examples
		--------
		>>> df
		one  two  three
		mouse     1    2      3
		rabbit    4    5      6
		
		>>> # select columns by name
		>>> df.filter(items=['one', 'three'])
		one  three
		mouse     1      3
		rabbit    4      6
		
		>>> # select columns by regular expression
		>>> df.filter(regex='e$', axis=1)
		one  three
		mouse     1      3
		rabbit    4      6
		
		>>> # select rows containing 'bbi'
		>>> df.filter(like='bbi', axis=0)
		one  two  three
		rabbit    4    5      6
		
		See Also
		--------
		pandas.DataFrame.select
		
		Notes
		-----
		The ``items``, ``like``, and ``regex`` parameters are
		enforced to be mutually exclusive.
		
		``axis`` defaults to the info axis that is used when indexing
		with ``[]``.
	**/
	public function filter(?items:Dynamic, ?like:Dynamic, ?regex:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convenience method for subsetting initial periods of time series data
		based on a date offset.
		
		Parameters
		----------
		offset : string, DateOffset, dateutil.relativedelta
		
		Examples
		--------
		ts.first('10D') -> First 10 days
		
		Returns
		-------
		subset : type of caller
	**/
	public function first(offset:Dynamic):Dynamic;
	/**
		Return the ftypes (indication of sparse/dense and dtype)
		in this object.
	**/
	public var ftypes : Dynamic;
	/**
		Get item from object for given key (DataFrame column, Panel slice,
		etc.). Returns default value if not found.
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		value : type of items contained in object
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Return the counts of dtypes in this object.
	**/
	public function get_dtype_counts():Dynamic;
	/**
		Return the counts of ftypes in this object.
	**/
	public function get_ftype_counts():Dynamic;
	/**
		same as values (but handles sparseness conversions)
	**/
	public function get_values():Dynamic;
	/**
		Group series using mapper (dict or key function, apply given function
		to group, return result as series) or by a series of columns.
		
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
		    Note this does not influence the order of observations within each
		    group.  groupby preserves the order of rows within each group.
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
	public function groupby(?by:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns first n rows
	**/
	public function head(?n:Dynamic):Dynamic;
	/**
		Fast integer location scalar accessor.
		
		Similarly to ``iloc``, ``iat`` provides **integer** based lookups.
		You can also set using these indexers.
	**/
	public var iat : Dynamic;
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
		- A ``callable`` function with one argument (the calling Series, DataFrame
		  or Panel) and that returns valid output for indexing (one of the above)
		
		``.iloc`` will raise ``IndexError`` if a requested indexer is
		out-of-bounds, except *slice* indexers which allow out-of-bounds
		indexing (this conforms with python/numpy *slice* semantics).
		
		See more at :ref:`Selection by Position <indexing.integer>`
	**/
	public var iloc : Dynamic;
	/**
		Interpolate values according to different methods.
		
		Please note that only ``method='linear'`` is supported for
		DataFrames/Series with a MultiIndex.
		
		Parameters
		----------
		method : {'linear', 'time', 'index', 'values', 'nearest', 'zero',
		          'slinear', 'quadratic', 'cubic', 'barycentric', 'krogh',
		          'polynomial', 'spline', 'piecewise_polynomial',
		          'from_derivatives', 'pchip', 'akima'}
		
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
		    * 'krogh', 'piecewise_polynomial', 'spline', 'pchip' and 'akima' are all
		      wrappers around the scipy interpolation methods of similar
		      names. These use the actual numerical values of the index. See
		      the scipy documentation for more on their behavior
		      `here <http://docs.scipy.org/doc/scipy/reference/interpolate.html#univariate-interpolation>`__  # noqa
		      `and here <http://docs.scipy.org/doc/scipy/reference/tutorial/interpolate.html>`__  # noqa
		    * 'from_derivatives' refers to BPoly.from_derivatives which
		      replaces 'piecewise_polynomial' interpolation method in scipy 0.18
		
		    .. versionadded:: 0.18.1
		
		       Added support for the 'akima' method
		       Added interpolate method 'from_derivatives' which replaces
		       'piecewise_polynomial' in scipy 0.18; backwards-compatible with
		       scipy < 0.18
		
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
	public function interpolate(?method:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?inplace:Dynamic, ?limit_direction:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var is_copy : Dynamic;
	/**
		Return a boolean same-sized object indicating if the values are null.
		
		See Also
		--------
		notnull : boolean inverse of isnull
	**/
	public function isnull():Dynamic;
	/**
		Iterate over (label, values) on info axis
		
		This is index for Series, columns for DataFrame, major_axis for Panel,
		and so on.
	**/
	public function iteritems():Dynamic;
	/**
		iteritems alias used to get around 2to3. Deprecated
	**/
	public function iterkv(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public var ix : Dynamic;
	/**
		Get the 'info axis' (see Indexing for more)
		
		This is index for Series, columns for DataFrame and major_axis for
		Panel.
	**/
	public function keys():Dynamic;
	/**
		Convenience method for subsetting final periods of time series data
		based on a date offset.
		
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
		- A ``callable`` function with one argument (the calling Series, DataFrame
		  or Panel) and that returns valid output for indexing (one of the above)
		
		``.loc`` will raise a ``KeyError`` when the items are not found.
		
		See more at :ref:`Selection by Label <indexing.label>`
	**/
	public var loc : Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where cond is False and otherwise are from
		other.
		
		Parameters
		----------
		cond : boolean NDFrame, array or callable
		    If cond is callable, it is computed on the NDFrame and
		    should return boolean NDFrame or array.
		    The callable must not change input NDFrame
		    (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		
		    A callable can be used as cond.
		
		other : scalar, NDFrame, or callable
		    If other is callable, it is computed on the NDFrame and
		    should return scalar or NDFrame.
		    The callable must not change input NDFrame
		    (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		
		    A callable can be used as other.
		
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
		
		Notes
		-----
		The mask method is an application of the if-then idiom. For each
		element in the calling DataFrame, if ``cond`` is ``False`` the
		element is used; otherwise the corresponding element from the DataFrame
		``other`` is used.
		
		The signature for :func:`DataFrame.where` differs from
		:func:`numpy.where`. Roughly ``df1.where(m, df2)`` is equivalent to
		``np.where(m, df1, df2)``.
		
		For further details and examples see the ``mask`` documentation in
		:ref:`indexing <indexing.where_mask>`.
		
		Examples
		--------
		>>> s = pd.Series(range(5))
		>>> s.where(s > 0)
		0    NaN
		1    1.0
		2    2.0
		3    3.0
		4    4.0
		
		>>> df = pd.DataFrame(np.arange(10).reshape(-1, 2), columns=['A', 'B'])
		>>> m = df % 3 == 0
		>>> df.where(m, -df)
		   A  B
		0  0 -1
		1 -2  3
		2 -4 -5
		3  6 -7
		4 -8  9
		>>> df.where(m, -df) == np.where(m, df, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		>>> df.where(m, -df) == df.mask(~m, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		
		See Also
		--------
		:func:`DataFrame.where`
	**/
	public function mask(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?try_cast:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		Number of axes / array dimensions
	**/
	public var ndim : Dynamic;
	/**
		Return a boolean same-sized object indicating if the values are
		not null.
		
		See Also
		--------
		isnull : boolean inverse of notnull
	**/
	public function notnull():Dynamic;
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
	public function pct_change(?periods:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.core.frame.NDFrame;
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
	public function pipe(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return item and drop from frame. Raise KeyError if not found.
	**/
	public function pop(item:Dynamic):Dynamic;
	/**
		Compute numerical data ranks (1 through n) along axis. Equal values are
		assigned a rank that is the average of the ranks of those values
		
		Parameters
		----------
		axis: {0 or 'index', 1 or 'columns'}, default 0
		    index to direct ranking
		method : {'average', 'min', 'max', 'first', 'dense'}
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
		numeric_only : boolean, default None
		    Include only float, int, boolean data. Valid only for DataFrame or
		    Panel objects
		na_option : {'keep', 'top', 'bottom'}
		    * keep: leave NA values where they are
		    * top: smallest rank if ascending
		    * bottom: smallest rank if descending
		ascending : boolean, default True
		    False for ranks by high (1) to low (N)
		pct : boolean, default False
		    Computes percentage rank of data
		
		Returns
		-------
		ranks : same type as caller
	**/
	public function rank(?axis:Dynamic, ?method:Dynamic, ?numeric_only:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Conform NDFrame to new index with optional filling logic, placing
		NA/NaN in locations having no value in the previous index. A new object
		is produced unless the new index is equivalent to the current one and
		copy=False
		
		Parameters
		----------
		axes : array-like, optional (can be specified in order, or as
		    keywords)
		    New labels / index to conform to. Preferably an Index object to
		    avoid duplicating data
		method : {None, 'backfill'/'bfill', 'pad'/'ffill', 'nearest'}, optional
		    method to use for filling holes in reindexed DataFrame.
		    Please note: this is only  applicable to DataFrames/Series with a
		    monotonically increasing/decreasing index.
		
		    * default: don't fill gaps
		    * pad / ffill: propagate last valid observation forward to next
		      valid
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
		
		Create a dataframe with some fictional data.
		
		>>> index = ['Firefox', 'Chrome', 'Safari', 'IE10', 'Konqueror']
		>>> df = pd.DataFrame({
		...      'http_status': [200,200,404,404,301],
		...      'response_time': [0.04, 0.02, 0.07, 0.08, 1.0]},
		...       index=index)
		>>> df
		            http_status  response_time
		Firefox            200           0.04
		Chrome             200           0.02
		Safari             404           0.07
		IE10               404           0.08
		Konqueror          301           1.00
		
		Create a new index and reindex the dataframe. By default
		values in the new index that do not have corresponding
		records in the dataframe are assigned ``NaN``.
		
		>>> new_index= ['Safari', 'Iceweasel', 'Comodo Dragon', 'IE10',
		...             'Chrome']
		>>> df.reindex(new_index)
		               http_status  response_time
		Safari                 404           0.07
		Iceweasel              NaN            NaN
		Comodo Dragon          NaN            NaN
		IE10                   404           0.08
		Chrome                 200           0.02
		
		We can fill in the missing values by passing a value to
		the keyword ``fill_value``. Because the index is not monotonically
		increasing or decreasing, we cannot use arguments to the keyword
		``method`` to fill the ``NaN`` values.
		
		>>> df.reindex(new_index, fill_value=0)
		               http_status  response_time
		Safari                 404           0.07
		Iceweasel                0           0.00
		Comodo Dragon            0           0.00
		IE10                   404           0.08
		Chrome                 200           0.02
		
		>>> df.reindex(new_index, fill_value='missing')
		              http_status response_time
		Safari                404          0.07
		Iceweasel         missing       missing
		Comodo Dragon     missing       missing
		IE10                  404          0.08
		Chrome                200          0.02
		
		To further illustrate the filling functionality in
		``reindex``, we will create a dataframe with a
		monotonically increasing index (for example, a sequence
		of dates).
		
		>>> date_index = pd.date_range('1/1/2010', periods=6, freq='D')
		>>> df2 = pd.DataFrame({"prices": [100, 101, np.nan, 100, 89, 88]},
		...                    index=date_index)
		>>> df2
		            prices
		2010-01-01     100
		2010-01-02     101
		2010-01-03     NaN
		2010-01-04     100
		2010-01-05      89
		2010-01-06      88
		
		Suppose we decide to expand the dataframe to cover a wider
		date range.
		
		>>> date_index2 = pd.date_range('12/29/2009', periods=10, freq='D')
		>>> df2.reindex(date_index2)
		            prices
		2009-12-29     NaN
		2009-12-30     NaN
		2009-12-31     NaN
		2010-01-01     100
		2010-01-02     101
		2010-01-03     NaN
		2010-01-04     100
		2010-01-05      89
		2010-01-06      88
		2010-01-07     NaN
		
		The index entries that did not have a value in the original data frame
		(for example, '2009-12-29') are by default filled with ``NaN``.
		If desired, we can fill in the missing values using one of several
		options.
		
		For example, to backpropagate the last valid value to fill the ``NaN``
		values, pass ``bfill`` as an argument to the ``method`` keyword.
		
		>>> df2.reindex(date_index2, method='bfill')
		            prices
		2009-12-29     100
		2009-12-30     100
		2009-12-31     100
		2010-01-01     100
		2010-01-02     101
		2010-01-03     NaN
		2010-01-04     100
		2010-01-05      89
		2010-01-06      88
		2010-01-07     NaN
		
		Please note that the ``NaN`` value present in the original dataframe
		(at index value 2010-01-03) will not be filled by any of the
		value propagation schemes. This is because filling while reindexing
		does not look at dataframe values, but only compares the original and
		desired indexes. If you do want to fill in the ``NaN`` values present
		in the original dataframe, use the ``fillna()`` method.
		
		Returns
		-------
		reindexed : NDFrame
	**/
	public function reindex(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.core.frame.NDFrame;
	/**
		Conform input object to new index with optional
		filling logic, placing NA/NaN in locations having no value in the
		previous index. A new object is produced unless the new index is
		equivalent to the current one and copy=False
		
		Parameters
		----------
		labels : array-like
		    New labels / index to conform to. Preferably an Index object to
		    avoid duplicating data
		axis : int or labels for object
		method : {None, 'backfill'/'bfill', 'pad'/'ffill', 'nearest'}, optional
		    Method to use for filling holes in reindexed DataFrame:
		
		    * default: don't fill gaps
		    * pad / ffill: propagate last valid observation forward to next
		      valid
		    * backfill / bfill: use next valid observation to fill gap
		    * nearest: use nearest valid observations to fill gap
		
		copy : boolean, default True
		    Return a new object, even if the passed indexes are the same
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		limit : int, default None
		    Maximum number of consecutive elements to forward or backward fill
		tolerance : optional
		    Maximum distance between original and new labels for inexact
		    matches. The values of the index at the matching locations most
		    satisfy the equation ``abs(index[indexer] - target) <= tolerance``.
		
		    .. versionadded:: 0.17.0
		
		Examples
		--------
		>>> df.reindex_axis(['A', 'B', 'C'], axis=1)
		
		See Also
		--------
		reindex, reindex_like
		
		Returns
		-------
		reindexed : NDFrame
	**/
	public function reindex_axis(labels:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic):pandas.core.frame.NDFrame;
	/**
		Return an object with matching indices to myself.
		
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
		as-is. Extra labels listed don't throw an error. Alternatively, change
		``Series.name`` with a scalar value (Series only).
		
		Parameters
		----------
		%(axes)s : scalar, list-like, dict-like or function, optional
		    Scalar or list-like will alter the ``Series.name`` attribute,
		    and raise on DataFrame or Panel.
		    dict-like or functions are transformations to apply to
		    that axis' values
		copy : boolean, default True
		    Also copy underlying data
		inplace : boolean, default False
		    Whether to return a new %(klass)s. If True then value of copy is
		    ignored.
		
		Returns
		-------
		renamed : %(klass)s (new object)
		
		See Also
		--------
		pandas.NDFrame.rename_axis
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3])
		>>> s
		0    1
		1    2
		2    3
		dtype: int64
		>>> s.rename("my_name") # scalar, changes Series.name
		0    1
		1    2
		2    3
		Name: my_name, dtype: int64
		>>> s.rename(lambda x: x ** 2)  # function, changes labels
		0    1
		1    2
		4    3
		dtype: int64
		>>> s.rename({1: 3, 2: 5})  # mapping, changes labels
		0    1
		3    2
		5    3
		dtype: int64
		>>> df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6]})
		>>> df.rename(2)
		...
		TypeError: 'int' object is not callable
		>>> df.rename(index=str, columns={"A": "a", "B": "c"})
		   a  c
		0  1  4
		1  2  5
		2  3  6
		>>> df.rename(index=str, columns={"A": "a", "C": "c"})
		   a  B
		0  1  4
		1  2  5
		2  3  6
	**/
	public function rename(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alter index and / or columns using input function or functions.
		A scaler or list-like for ``mapper`` will alter the ``Index.name``
		or ``MultiIndex.names`` attribute.
		A function or dict for ``mapper`` will alter the labels.
		Function / dict values must be unique (1-to-1). Labels not contained in
		a dict / Series will be left as-is.
		
		Parameters
		----------
		mapper : scalar, list-like, dict-like or function, optional
		axis : int or string, default 0
		copy : boolean, default True
		    Also copy underlying data
		inplace : boolean, default False
		
		Returns
		-------
		renamed : type of caller
		
		See Also
		--------
		pandas.NDFrame.rename
		pandas.Index.rename
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6]})
		>>> df.rename_axis("foo")  # scalar, alters df.index.name
		     A  B
		foo
		0    1  4
		1    2  5
		2    3  6
		>>> df.rename_axis(lambda x: 2 * x)  # function: alters labels
		   A  B
		0  1  4
		2  2  5
		4  3  6
		>>> df.rename_axis({"A": "ehh", "C": "see"}, axis="columns")  # mapping
		   ehh  B
		0    1  4
		1    2  5
		2    3  6
	**/
	public function rename_axis(mapper:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?inplace:Dynamic):Dynamic;
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
		
		See Also
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
	public function replace(?to_replace:Dynamic, ?value:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?regex:Dynamic, ?method:Dynamic, ?axis:Dynamic):pandas.core.frame.NDFrame;
	/**
		Convenience method for frequency conversion and resampling of time
		series.  Object must have a datetime-like index (DatetimeIndex,
		PeriodIndex, or TimedeltaIndex), or pass datetime-like values
		to the on or level keyword.
		
		Parameters
		----------
		rule : string
		    the offset string or object representing target conversion
		axis : int, optional, default 0
		closed : {'right', 'left'}
		    Which side of bin interval is closed
		label : {'right', 'left'}
		    Which bin edge label to label bucket with
		convention : {'start', 'end', 's', 'e'}
		loffset : timedelta
		    Adjust the resampled time labels
		base : int, default 0
		    For frequencies that evenly subdivide 1 day, the "origin" of the
		    aggregated intervals. For example, for '5min' frequency, base could
		    range from 0 through 4. Defaults to 0
		on : string, optional
		    For a DataFrame, column to use instead of index for resampling.
		    Column must be datetime-like.
		
		    .. versionadded:: 0.19.0
		
		level : string or int, optional
		    For a MultiIndex, level (name or number) to use for
		    resampling.  Level must be datetime-like.
		
		    .. versionadded:: 0.19.0
		
		To learn more about the offset strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
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
		
		>>> series.resample('3T').sum()
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
		
		>>> series.resample('3T', label='right').sum()
		2000-01-01 00:03:00     3
		2000-01-01 00:06:00    12
		2000-01-01 00:09:00    21
		Freq: 3T, dtype: int64
		
		Downsample the series into 3 minute bins as above, but close the right
		side of the bin interval.
		
		>>> series.resample('3T', label='right', closed='right').sum()
		2000-01-01 00:00:00     0
		2000-01-01 00:03:00     6
		2000-01-01 00:06:00    15
		2000-01-01 00:09:00    15
		Freq: 3T, dtype: int64
		
		Upsample the series into 30 second bins.
		
		>>> series.resample('30S').asfreq()[0:5] #select first 5 rows
		2000-01-01 00:00:00     0
		2000-01-01 00:00:30   NaN
		2000-01-01 00:01:00     1
		2000-01-01 00:01:30   NaN
		2000-01-01 00:02:00     2
		Freq: 30S, dtype: float64
		
		Upsample the series into 30 second bins and fill the ``NaN``
		values using the ``pad`` method.
		
		>>> series.resample('30S').pad()[0:5]
		2000-01-01 00:00:00    0
		2000-01-01 00:00:30    0
		2000-01-01 00:01:00    1
		2000-01-01 00:01:30    1
		2000-01-01 00:02:00    2
		Freq: 30S, dtype: int64
		
		Upsample the series into 30 second bins and fill the
		``NaN`` values using the ``bfill`` method.
		
		>>> series.resample('30S').bfill()[0:5]
		2000-01-01 00:00:00    0
		2000-01-01 00:00:30    1
		2000-01-01 00:01:00    1
		2000-01-01 00:01:30    2
		2000-01-01 00:02:00    2
		Freq: 30S, dtype: int64
		
		Pass a custom function via ``apply``
		
		>>> def custom_resampler(array_like):
		...     return np.sum(array_like)+5
		
		>>> series.resample('3T').apply(custom_resampler)
		2000-01-01 00:00:00     8
		2000-01-01 00:03:00    17
		2000-01-01 00:06:00    26
		Freq: 3T, dtype: int64
	**/
	public function resample(rule:Dynamic, ?how:Dynamic, ?axis:Dynamic, ?fill_method:Dynamic, ?closed:Dynamic, ?label:Dynamic, ?convention:Dynamic, ?kind:Dynamic, ?loffset:Dynamic, ?limit:Dynamic, ?base:Dynamic, ?on:Dynamic, ?level:Dynamic):Dynamic;
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
		
		Examples
		--------
		
		Generate an example ``Series`` and ``DataFrame``:
		
		>>> s = pd.Series(np.random.randn(50))
		>>> s.head()
		0   -0.038497
		1    1.820773
		2   -0.972766
		3   -1.598270
		4   -1.095526
		dtype: float64
		>>> df = pd.DataFrame(np.random.randn(50, 4), columns=list('ABCD'))
		>>> df.head()
		          A         B         C         D
		0  0.016443 -2.318952 -0.566372 -1.028078
		1 -1.051921  0.438836  0.658280 -0.175797
		2 -1.243569 -0.364626 -0.215065  0.057736
		3  1.768216  0.404512 -0.385604 -1.457834
		4  1.072446 -1.137172  0.314194 -0.046661
		
		Next extract a random sample from both of these objects...
		
		3 random elements from the ``Series``:
		
		>>> s.sample(n=3)
		27   -0.994689
		55   -1.049016
		67   -0.224565
		dtype: float64
		
		And a random 10% of the ``DataFrame`` with replacement:
		
		>>> df.sample(frac=0.1, replace=True)
		           A         B         C         D
		35  1.981780  0.142106  1.817165 -0.290805
		49 -1.336199 -0.448634 -0.789640  0.217116
		40  0.823173 -0.078816  1.009536  1.015108
		15  1.421154 -0.055301 -1.922594 -0.019696
		6  -0.148339  0.832938  1.787600 -1.383767
	**/
	public function sample(?n:Dynamic, ?frac:Dynamic, ?replace:Dynamic, ?weights:Dynamic, ?random_state:Dynamic, ?axis:Dynamic):Dynamic;
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
		public verson of axis assignment 
	**/
	public function set_axis(axis:Dynamic, labels:Dynamic):Dynamic;
	/**
		Return a tuple of axis dimensions
	**/
	public var shape : Dynamic;
	/**
		Shift index by desired number of periods with an optional time freq
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		freq : DateOffset, timedelta, or time rule string, optional
		    Increment to use from the tseries module or time rule (e.g. 'EOM').
		    See Notes.
		axis : int or labels for object
		
		Notes
		-----
		If freq is specified then the index values are shifted but the data
		is not realigned. That is, use freq if you would like to extend the
		index when shifting and preserve the original data.
		
		Returns
		-------
		shifted : NDFrame
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):pandas.core.frame.NDFrame;
	/**
		number of elements in the NDFrame
	**/
	public var size : Dynamic;
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
		Sort object by labels (along an axis)
		
		Parameters
		----------
		axis : axes to direct sorting
		level : int or level name or list of ints or list of level names
		    if not None, sort on values in specified index level(s)
		ascending : boolean, default True
		    Sort ascending vs. descending
		inplace : bool, default False
		    if True, perform operation in-place
		kind : {'quicksort', 'mergesort', 'heapsort'}, default 'quicksort'
		     Choice of sorting algorithm. See also ndarray.np.sort for more
		     information.  `mergesort` is the only stable algorithm. For
		     DataFrames, this option is only applied when sorting on a single
		     column or label.
		na_position : {'first', 'last'}, default 'last'
		     `first` puts NaNs at the beginning, `last` puts NaNs at the end
		sort_remaining : bool, default True
		    if true and sorting by level and index is multilevel, sort by other
		    levels too (in order) after sorting by specified level
		
		Returns
		-------
		sorted_obj : NDFrame
	**/
	public function sort_index(?axis:Dynamic, ?level:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic, ?sort_remaining:Dynamic):Dynamic;
	public function sort_values(by:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Squeeze length 1 dimensions.
	**/
	public function squeeze(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Interchange axes and swap values axes appropriately
		
		Returns
		-------
		y : same as input
	**/
	public function swapaxes(axis1:Dynamic, axis2:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Swap levels i and j in a MultiIndex on a particular axis
		
		Parameters
		----------
		i, j : int, string (can be mixed)
		    Level of index to be swapped. Can pass level name as string.
		
		Returns
		-------
		swapped : type of caller (new object)
		
		.. versionchanged:: 0.18.1
		
		   The indexes ``i`` and ``j`` are now optional, and default to
		   the two innermost levels of the index.
	**/
	public function swaplevel(?i:Dynamic, ?j:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns last n rows
	**/
	public function tail(?n:Dynamic):Dynamic;
	/**
		Analogous to ndarray.take
		
		Parameters
		----------
		indices : list / array of ints
		axis : int, default 0
		convert : translate neg to pos indices (default)
		is_copy : mark the returned frame as a copy
		
		Returns
		-------
		taken : type of caller
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?convert:Dynamic, ?is_copy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function to_clipboard(?excel:Dynamic, ?sep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return dense representation of NDFrame (as opposed to sparse)
	**/
	public function to_dense():Dynamic;
	/**
		Write the contained data to an HDF5 file using HDFStore.
		
		Parameters
		----------
		path_or_buf : the path (string) or HDFStore object
		key : string
		    indentifier for the group in the store
		mode : optional, {'a', 'w', 'r+'}, default 'a'
		
		  ``'w'``
		      Write; a new file is created (an existing file with the same
		      name would be deleted).
		  ``'a'``
		      Append; an existing file is opened for reading and writing,
		      and if the file does not exist it is created.
		  ``'r+'``
		      It is similar to ``'a'``, but the file must already exist.
		format : 'fixed(f)|table(t)', default is 'fixed'
		    fixed(f) : Fixed format
		               Fast writing/reading. Not-appendable, nor searchable
		    table(t) : Table format
		               Write as a PyTables Table structure which may perform
		               worse but allow more flexible operations like searching
		               / selecting subsets of the data
		append : boolean, default False
		    For Table formats, append the input data to the existing
		data_columns :  list of columns, or True, default None
		    List of columns to create as indexed data columns for on-disk
		    queries, or True to use all columns. By default only the axes
		    of the object are indexed. See `here
		    <http://pandas.pydata.org/pandas-docs/stable/io.html#query-via-data-columns>`__.
		
		    Applicable only to format='table'.
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
	public function to_hdf(path_or_buf:Dynamic, key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		lines : boolean, defalut False
		    If 'orient' is 'records' write out line delimited json format. Will
		    throw ValueError if incorrect 'orient' since others are not list
		    like.
		
		    .. versionadded:: 0.19.0
		
		
		Returns
		-------
		same type as input object with filtered info axis
	**/
	public function to_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?date_format:Dynamic, ?double_precision:Dynamic, ?force_ascii:Dynamic, ?date_unit:Dynamic, ?default_handler:Dynamic, ?lines:Dynamic):Dynamic;
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
	public function to_msgpack(?path_or_buf:Dynamic, ?encoding:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pickle (serialize) object to input file path.
		
		Parameters
		----------
		path : string
		    File path
	**/
	public function to_pickle(path:Dynamic):Dynamic;
	/**
		Write records stored in a DataFrame to a SQL database.
		
		Parameters
		----------
		name : string
		    Name of SQL table
		con : SQLAlchemy engine or DBAPI2 connection (legacy mode)
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library. If a DBAPI2 object, only sqlite3 is supported.
		flavor : 'sqlite', default None
		    DEPRECATED: this parameter will be removed in a future version,
		    as 'sqlite' is the only supported option if SQLAlchemy is not
		    installed.
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
		Return an xarray object from the pandas object.
		
		Returns
		-------
		a DataArray for a Series
		a Dataset for a DataFrame
		a DataArray for higher dims
		
		Examples
		--------
		>>> df = pd.DataFrame({'A' : [1, 1, 2],
		                       'B' : ['foo', 'bar', 'foo'],
		                       'C' : np.arange(4.,7)})
		>>> df
		   A    B    C
		0  1  foo  4.0
		1  1  bar  5.0
		2  2  foo  6.0
		
		>>> df.to_xarray()
		<xarray.Dataset>
		Dimensions:  (index: 3)
		Coordinates:
		  * index    (index) int64 0 1 2
		Data variables:
		    A        (index) int64 1 1 2
		    B        (index) object 'foo' 'bar' 'foo'
		    C        (index) float64 4.0 5.0 6.0
		
		>>> df = pd.DataFrame({'A' : [1, 1, 2],
		                       'B' : ['foo', 'bar', 'foo'],
		                       'C' : np.arange(4.,7)}
		                     ).set_index(['B','A'])
		>>> df
		         C
		B   A
		foo 1  4.0
		bar 1  5.0
		foo 2  6.0
		
		>>> df.to_xarray()
		<xarray.Dataset>
		Dimensions:  (A: 2, B: 2)
		Coordinates:
		  * B        (B) object 'bar' 'foo'
		  * A        (A) int64 1 2
		Data variables:
		    C        (B, A) float64 5.0 nan 4.0 6.0
		
		>>> p = pd.Panel(np.arange(24).reshape(4,3,2),
		                 items=list('ABCD'),
		                 major_axis=pd.date_range('20130101', periods=3),
		                 minor_axis=['first', 'second'])
		>>> p
		<class 'pandas.core.panel.Panel'>
		Dimensions: 4 (items) x 3 (major_axis) x 2 (minor_axis)
		Items axis: A to D
		Major_axis axis: 2013-01-01 00:00:00 to 2013-01-03 00:00:00
		Minor_axis axis: first to second
		
		>>> p.to_xarray()
		<xarray.DataArray (items: 4, major_axis: 3, minor_axis: 2)>
		array([[[ 0,  1],
		        [ 2,  3],
		        [ 4,  5]],
		       [[ 6,  7],
		        [ 8,  9],
		        [10, 11]],
		       [[12, 13],
		        [14, 15],
		        [16, 17]],
		       [[18, 19],
		        [20, 21],
		        [22, 23]]])
		Coordinates:
		  * items       (items) object 'A' 'B' 'C' 'D'
		  * major_axis  (major_axis) datetime64[ns] 2013-01-01 2013-01-02 2013-01-03  # noqa
		  * minor_axis  (minor_axis) object 'first' 'second'
		
		Notes
		-----
		See the `xarray docs <http://xarray.pydata.org/en/stable/>`__
	**/
	public function to_xarray():Dynamic;
	/**
		Permute the dimensions of the NDFrame
		
		Parameters
		----------
		args : axes to permute (int or label for object)
		copy : boolean, default False
		    Make a copy of the underlying data. Mixed-dtype data will
		    always result in a copy
		
		Examples
		--------
		>>> p.transpose(2, 0, 1)
		>>> p.transpose(2, 0, 1, copy=True)
		
		Returns
		-------
		y : same as input
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Truncates a sorted NDFrame before and/or after some particular
		index value. If the axis contains only datetime values, before/after
		parameters are converted to datetime values.
		
		Parameters
		----------
		before : date
		    Truncate before index value
		after : date
		    Truncate after index value
		axis : the truncation axis, defaults to the stat axis
		copy : boolean, default is True,
		    return a copy of the truncated section
		
		Returns
		-------
		truncated : type of caller
	**/
	public function truncate(?before:Dynamic, ?after:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Shift the time index, using the index's frequency if available.
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		freq : DateOffset, timedelta, or time rule string, default None
		    Increment to use from the tseries module or time rule (e.g. 'EOM')
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
	public function tshift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):pandas.core.frame.NDFrame;
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
		Localize tz-naive TimeSeries to target time zone.
		
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
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
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
		Numpy representation of NDFrame
		
		Notes
		-----
		The dtype will be a lower-common-denominator dtype (implicit
		upcasting); that is to say if the dtypes (even of numeric types)
		are mixed, the one that accommodates all will be chosen. Use this
		with care if you are not dealing with the blocks.
		
		e.g. If the dtypes are float16 and float32, dtype will be upcast to
		float32.  If dtypes are int32 and uint8, dtype will be upcast to
		int32. By numpy.find_common_type convention, mixing int64 and uint64
		will result in a flot64 dtype.
	**/
	public var values : Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where cond is True and otherwise are from
		other.
		
		Parameters
		----------
		cond : boolean NDFrame, array or callable
		    If cond is callable, it is computed on the NDFrame and
		    should return boolean NDFrame or array.
		    The callable must not change input NDFrame
		    (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		
		    A callable can be used as cond.
		
		other : scalar, NDFrame, or callable
		    If other is callable, it is computed on the NDFrame and
		    should return scalar or NDFrame.
		    The callable must not change input NDFrame
		    (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		
		    A callable can be used as other.
		
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
		
		Notes
		-----
		The where method is an application of the if-then idiom. For each
		element in the calling DataFrame, if ``cond`` is ``True`` the
		element is used; otherwise the corresponding element from the DataFrame
		``other`` is used.
		
		The signature for :func:`DataFrame.where` differs from
		:func:`numpy.where`. Roughly ``df1.where(m, df2)`` is equivalent to
		``np.where(m, df1, df2)``.
		
		For further details and examples see the ``where`` documentation in
		:ref:`indexing <indexing.where_mask>`.
		
		Examples
		--------
		>>> s = pd.Series(range(5))
		>>> s.where(s > 0)
		0    NaN
		1    1.0
		2    2.0
		3    3.0
		4    4.0
		
		>>> df = pd.DataFrame(np.arange(10).reshape(-1, 2), columns=['A', 'B'])
		>>> m = df % 3 == 0
		>>> df.where(m, -df)
		   A  B
		0  0 -1
		1 -2  3
		2 -4 -5
		3  6 -7
		4 -8  9
		>>> df.where(m, -df) == np.where(m, df, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		>>> df.where(m, -df) == df.mask(~m, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		
		See Also
		--------
		:func:`DataFrame.mask`
	**/
	public function where(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?try_cast:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		Returns a cross-section (row(s) or column(s)) from the
		Series/DataFrame. Defaults to cross-section on the rows (axis=0).
		
		Parameters
		----------
		key : object
		    Some label contained in the index, or partially in a MultiIndex
		axis : int, default 0
		    Axis to retrieve cross-section on
		level : object, defaults to first n levels (n=1 or len(key))
		    In case of a key partially contained in a MultiIndex, indicate
		    which levels are used. Levels can be referred by label or position.
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
		
		MultiIndex Slicers is a generic way to get/set values on any level or
		levels.  It is a superset of xs functionality, see
		:ref:`MultiIndex Slicers <advanced.mi_slicers>`
	**/
	public function xs(key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?drop_level:Dynamic):Dynamic;
}