/* This file is generated, do not edit! */
package pandas.sparse.frame;
@:pythonImport("pandas.sparse.frame", "SparseDataFrame") extern class SparseDataFrame {
	/**
		Returns a DataFrame with the rows/columns switched.
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
	/**
		Binary operator __add__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __add__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __and__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __and__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function __array__(?dtype:Dynamic):Dynamic;
	public function __array_wrap__(result:Dynamic):Dynamic;
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
	/**
		Binary operator __truediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __div__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Wrapper for comparison method __eq__
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	/**
		Binary operator __floordiv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __floordiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrapper for comparison method __ge__
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		After regular attribute access, try looking up the name
		This allows simpler access to columns for interactive use.
	**/
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Retrieve column or slice from DataFrame
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Wrapper for comparison method __gt__
	**/
	public function __gt__(other:Dynamic):Dynamic;
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
	public function ___init__(?data:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?default_kind:Dynamic, ?default_fill_value:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	public function __invert__():Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	/**
		Iterate over infor axis
	**/
	public function __iter__():Dynamic;
	public function __itruediv__(other:Dynamic):Dynamic;
	/**
		Wrapper for comparison method __le__
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Returns length of info axis, but here we use the index 
	**/
	public function __len__():Dynamic;
	/**
		Wrapper for comparison method __lt__
	**/
	public function __lt__(other:Dynamic):Dynamic;
	/**
		Binary operator __mod__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __mod__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Binary operator __mul__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __mul__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Wrapper for comparison method __ne__
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function __nonzero__():Dynamic;
	/**
		Binary operator __or__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __or__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __pow__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __pow__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __radd__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __radd__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rand__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rand__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rtruediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rdiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
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
	/**
		Binary operator __rfloordiv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rfloordiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rmod__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rmod__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rmul__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rmul__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __ror__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __ror__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rpow__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rpow__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rsub__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rsub__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rtruediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rtruediv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Binary operator __rxor__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rxor__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
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
	/**
		Binary operator __sub__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __sub__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Binary operator __truediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __truediv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
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
	/**
		Binary operator __xor__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __xor__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public var _accessors : Dynamic;
	/**
		add the operations to the cls; evaluate the doc strings again 
	**/
	static public function _add_numeric_operations():Dynamic;
	public function _agg_by_level(name:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	public function _align_frame(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	public function _align_series(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	public function _apply_broadcast(func:Dynamic, axis:Dynamic):Dynamic;
	public function _apply_empty_result(func:Dynamic, axis:Dynamic, reduce:Dynamic, args:Dynamic, kwds:Dynamic):Dynamic;
	public function _apply_raw(func:Dynamic, axis:Dynamic):Dynamic;
	public function _apply_standard(func:Dynamic, axis:Dynamic, ?ignore_failures:Dynamic, ?reduce:Dynamic):Dynamic;
	static public var _at : Dynamic;
	/**
		provide boxed values for a column 
	**/
	public function _box_col_values(values:Dynamic, items:Dynamic):Dynamic;
	public function _box_item_values(key:Dynamic, values:Dynamic):Dynamic;
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
	public function _combine_const(other:Dynamic, func:Dynamic):Dynamic;
	public function _combine_frame(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?level:Dynamic):Dynamic;
	public function _combine_match_columns(other:Dynamic, func:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _combine_match_index(other:Dynamic, func:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _combine_series(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	public function _combine_series_infer(other:Dynamic, func:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _compare_frame(other:Dynamic, func:Dynamic, str_rep:Dynamic):Dynamic;
	public function _compare_frame_evaluate(other:Dynamic, func:Dynamic, str_rep:Dynamic):Dynamic;
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
	static public function _construct_axes_dict_from(self:Dynamic, axes:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		construct and returns axes if supplied in args/kwargs
		if require_all, raise if all axis arguments are not supplied
		return a tuple of (axes, kwargs) 
	**/
	public function _construct_axes_from_arguments(args:Dynamic, kwargs:Dynamic, ?require_all:Dynamic):Dynamic;
	static public var _constructor : Dynamic;
	static public var _constructor_expanddim : Dynamic;
	/**
		Data structure for labeled, sparse floating point data
		
		Parameters
		----------
		data : {array-like, Series, SparseSeries, dict}
		kind : {'block', 'integer'}
		fill_value : float
		    Defaults to NaN (code for missing)
		sparse_index : {BlockIndex, IntIndex}, optional
		    Only if you have one. Mainly used internally
		
		Notes
		-----
		SparseSeries objects are immutable via the typical Python means. If you
		must change values, convert to dense, make your changes, then convert back
		to sparse
	**/
	static public function _constructor_sliced(?data:Dynamic, ?index:Dynamic, ?sparse_index:Dynamic, ?kind:Dynamic, ?fill_value:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic):Dynamic;
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
	public function _count_level(level:Dynamic, ?axis:Dynamic, ?numeric_only:Dynamic):Dynamic;
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
	/**
		ensure that if we don't have an index, that we can create one from the
		passed value
	**/
	public function _ensure_valid_index(value:Dynamic):Dynamic;
	public function _expand_axes(key:Dynamic):Dynamic;
	public function _flex_compare_frame(other:Dynamic, func:Dynamic, str_rep:Dynamic, level:Dynamic):Dynamic;
	static public function _from_arrays(arrays:Dynamic, columns:Dynamic, index:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _from_axes(data:Dynamic, axes:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		let's be explict about this 
	**/
	public function _get_agg_axis(axis_num:Dynamic):Dynamic;
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
	static public var _get_values : Dynamic;
	public function _getitem_array(key:Dynamic):Dynamic;
	/**
		return the actual column 
	**/
	public function _getitem_column(key:Dynamic):Dynamic;
	public function _getitem_frame(key:Dynamic):Dynamic;
	public function _getitem_multilevel(key:Dynamic):Dynamic;
	public function _getitem_slice(key:Dynamic):Dynamic;
	static public var _iat : Dynamic;
	/**
		return the cached item, item represents a positional indexer 
	**/
	public function _iget_item_cache(item:Dynamic):Dynamic;
	static public var _iloc : Dynamic;
	public function _indexed_same(other:Dynamic):Dynamic;
	static public var _info_axis : Dynamic;
	static public var _info_axis_name : Dynamic;
	static public var _info_axis_number : Dynamic;
	/**
		True if the repr should show the info view.
	**/
	public function _info_repr():Dynamic;
	/**
		Segregate Series based on type and coerce into matrices.
		Needs to handle a lot of exceptional cases.
	**/
	public function _init_dict(data:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic):Dynamic;
	public function _init_matrix(data:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		passed a manager and a axes dict 
	**/
	public function _init_mgr(mgr:Dynamic, ?axes:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	public function _init_ndarray(values:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
		i : int, slice, or sequence of integers
		axis : int
	**/
	public function _ixs(i:Dynamic, ?axis:Dynamic):Dynamic;
	public function _join_compat(other:Dynamic, ?on:Dynamic, ?how:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic, ?sort:Dynamic):Dynamic;
	public function _join_index(other:Dynamic, how:Dynamic, lsuffix:Dynamic, rsuffix:Dynamic):Dynamic;
	static public var _loc : Dynamic;
	/**
		the object has called back to us saying
		maybe it has changed
		
		numpy < 1.8 has an issue with object arrays and aliasing
		GH6026
	**/
	public function _maybe_cache_changed(item:Dynamic, value:Dynamic):Dynamic;
	public function _maybe_rename_join(other:Dynamic, lsuffix:Dynamic, rsuffix:Dynamic):Dynamic;
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
		check if we do need a multi reindex 
	**/
	public function _needs_reindex_multi(axes:Dynamic, method:Dynamic, level:Dynamic):Dynamic;
	public function _nsorted(columns:Dynamic, n:Dynamic, method:Dynamic, keep:Dynamic):Dynamic;
	/**
		consolidate _data. if the blocks have changed, then clear the cache 
	**/
	public function _protect_consolidate(f:Dynamic):Dynamic;
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, kwds:Dynamic):Dynamic;
	/**
		perform the reinxed for all the axes 
	**/
	public function _reindex_axes(axes:Dynamic, level:Dynamic, limit:Dynamic, tolerance:Dynamic, method:Dynamic, fill_value:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_axis(new_index:Dynamic, fill_method:Dynamic, axis:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_columns(columns:Dynamic, copy:Dynamic, level:Dynamic, fill_value:Dynamic, ?limit:Dynamic, ?takeable:Dynamic):Dynamic;
	public function _reindex_index(index:Dynamic, method:Dynamic, copy:Dynamic, level:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?takeable:Dynamic):Dynamic;
	/**
		we are guaranteed non-Nones in the axes! 
	**/
	public function _reindex_multi(axes:Dynamic, copy:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		allow_dups indicates an internal call here 
	**/
	public function _reindex_with_indexers(reindexers:Dynamic, ?method:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?copy:Dynamic, ?allow_dups:Dynamic):Dynamic;
	/**
		Check if full repr fits in horizontal boundaries imposed by the display
		options width and max_columns. In case off non-interactive session, no
		boundaries apply.
		
		ignore_width is here so ipnb+HTML output can behave the way
		users expect. display.max_columns remains in effect.
		GH3541, GH3573
	**/
	public function _repr_fits_horizontal_(?ignore_width:Dynamic):Dynamic;
	/**
		Check length against max_rows.
	**/
	public function _repr_fits_vertical_():Dynamic;
	/**
		Return a html representation for a particular DataFrame.
		Mainly for IPython notebook.
	**/
	public function _repr_html_():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		reset the cacher 
	**/
	public function _reset_cacher():Dynamic;
	public function _sanitize_column(key:Dynamic, value:Dynamic):Dynamic;
	static public var _series : Dynamic;
	/**
		set the _cacher attribute on the calling object with
		a weakref to cacher 
	**/
	public function _set_as_cached(item:Dynamic, cacher:Dynamic):Dynamic;
	public function _set_axis(axis:Dynamic, labels:Dynamic):Dynamic;
	public function _set_is_copy(?ref:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Add series to DataFrame in specified column.
		
		If series is a numpy-array (not a Series/TimeSeries), it must be the
		same length as the DataFrames index or an error will be thrown.
		
		Series/TimeSeries will be conformed to the DataFrames index to
		ensure homogeneity.
	**/
	public function _set_item(key:Dynamic, value:Dynamic):Dynamic;
	public function _setitem_array(key:Dynamic, value:Dynamic):Dynamic;
	public function _setitem_frame(key:Dynamic, value:Dynamic):Dynamic;
	public function _setitem_slice(key:Dynamic, value:Dynamic):Dynamic;
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
	static public var _subtyp : Dynamic;
	static public var _typ : Dynamic;
	public function _unpickle_frame_compat(state:Dynamic):Dynamic;
	public function _unpickle_matrix_compat(state:Dynamic):Dynamic;
	/**
		original pickle format 
	**/
	public function _unpickle_sparse_frame_compat(state:Dynamic):Dynamic;
	/**
		replace self internals with result.
		
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
		Addition of dataframe and other, element-wise (binary operator `add`).
		
		Equivalent to ``dataframe + other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.radd
	**/
	public function add(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		fill_axis : {0, 1, 'index', 'columns'}, default 0
		    Filling axis, method and limit
		broadcast_axis : {0, 1, 'index', 'columns'}, default None
		    Broadcast values along this axis, if aligning two objects of
		    different dimensions
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		(left, right) : (DataFrame, type of other)
		    Aligned objects
	**/
	public function align(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic, ?broadcast_axis:Dynamic):Dynamic;
	/**
		Return whether all elements are True over requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		bool_only : boolean, default None
		    Include only boolean data. If None, will attempt to use everything,
		    then use only boolean data
		
		Returns
		-------
		all : Series or DataFrame (if level specified)
	**/
	public function all(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return whether any element is True over requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		bool_only : boolean, default None
		    Include only boolean data. If None, will attempt to use everything,
		    then use only boolean data
		
		Returns
		-------
		any : Series or DataFrame (if level specified)
	**/
	public function any(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Append rows of `other` to the end of this frame, returning a new
		object. Columns not in this frame are added as new columns.
		
		Parameters
		----------
		other : DataFrame or Series/dict-like object, or list of these
		    The data to append.
		ignore_index : boolean, default False
		    If True, do not use the index labels.
		verify_integrity : boolean, default False
		    If True, raise ValueError on creating index with duplicates.
		
		Returns
		-------
		appended : DataFrame
		
		Notes
		-----
		If a list of dict/series is passed and the keys are all contained in the
		DataFrame's index, the order of the columns in the resulting DataFrame
		will be unchanged.
		
		See also
		--------
		pandas.concat : General function to concatenate DataFrame, Series
		    or Panel objects
		
		Examples
		--------
		
		>>> df = pd.DataFrame([[1, 2], [3, 4]], columns=list('AB'))
		>>> df
		   A  B
		0  1  2
		1  3  4
		>>> df2 = pd.DataFrame([[5, 6], [7, 8]], columns=list('AB'))
		>>> df.append(df2)
		   A  B
		0  1  2
		1  3  4
		0  5  6
		1  7  8
		
		With `ignore_index` set to True:
		
		>>> df.append(df2, ignore_index=True)
		   A  B
		0  1  2
		1  3  4
		2  5  6
		3  7  8
	**/
	public function append(other:Dynamic, ?ignore_index:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	/**
		Analogous to DataFrame.apply, for SparseDataFrame
		
		Parameters
		----------
		func : function
		    Function to apply to each column
		axis : {0, 1, 'index', 'columns'}
		broadcast : bool, default False
		    For aggregation functions, return object of same size with values
		    propagated
		
		Returns
		-------
		applied : Series or SparseDataFrame
	**/
	public function apply(func:Dynamic, ?axis:Dynamic, ?broadcast:Dynamic, ?reduce:Dynamic):Dynamic;
	/**
		Apply a function to a DataFrame that is intended to operate
		elementwise, i.e. like doing map(func, series) for each series in the
		DataFrame
		
		Parameters
		----------
		func : function
		    Python function, returns a single value from a single value
		
		Returns
		-------
		applied : DataFrame
	**/
	public function applymap(func:Dynamic):Dynamic;
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
		Assign new columns to a DataFrame, returning a new object
		(a copy) with all the original columns in addition to the new ones.
		
		.. versionadded:: 0.16.0
		
		Parameters
		----------
		kwargs : keyword, value pairs
		    keywords are the column names. If the values are
		    callable, they are computed on the DataFrame and
		    assigned to the new columns. If the values are
		    not callable, (e.g. a Series, scalar, or array),
		    they are simply assigned.
		
		Returns
		-------
		df : DataFrame
		    A new DataFrame with the new columns in addition to
		    all the existing columns.
		
		Notes
		-----
		Since ``kwargs`` is a dictionary, the order of your
		arguments may not be preserved. The make things predicatable,
		the columns are inserted in alphabetical order, at the end of
		your DataFrame. Assigning multiple columns within the same
		``assign`` is possible, but you cannot reference other columns
		created within the same ``assign`` call.
		
		Examples
		--------
		>>> df = DataFrame({'A': range(1, 11), 'B': np.random.randn(10)})
		
		Where the value is a callable, evaluated on `df`:
		
		>>> df.assign(ln_A = lambda x: np.log(x.A))
		    A         B      ln_A
		0   1  0.426905  0.000000
		1   2 -0.780949  0.693147
		2   3 -0.418711  1.098612
		3   4 -0.269708  1.386294
		4   5 -0.274002  1.609438
		5   6 -0.500792  1.791759
		6   7  1.649697  1.945910
		7   8 -1.495604  2.079442
		8   9  0.549296  2.197225
		9  10 -0.758542  2.302585
		
		Where the value already exists and is inserted:
		
		>>> newcol = np.log(df['A'])
		>>> df.assign(ln_A=newcol)
		    A         B      ln_A
		0   1  0.426905  0.000000
		1   2 -0.780949  0.693147
		2   3 -0.418711  1.098612
		3   4 -0.269708  1.386294
		4   5 -0.274002  1.609438
		5   6 -0.500792  1.791759
		6   7  1.649697  1.945910
		7   8 -1.495604  2.079442
		8   9  0.549296  2.197225
		9  10 -0.758542  2.302585
	**/
	public function assign(kwargs:Dynamic):Dynamic;
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
	public function astype(dtype:Dynamic):Dynamic;
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
		Return a list with the row axis labels and column axis labels as the
		only members. They are returned in that order.
	**/
	static public var axes : Dynamic;
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
		Make a box plot from DataFrame column optionally grouped by some columns or
		other inputs
		
		Parameters
		----------
		data : the pandas object holding the data
		column : column name or list of names, or vector
		    Can be any valid input to groupby
		by : string or sequence
		    Column in the DataFrame to group by
		ax : Matplotlib axes object, optional
		fontsize : int or string
		rot : label rotation angle
		figsize : A tuple (width, height) in inches
		grid : Setting this to True will show the grid
		layout : tuple (optional)
		    (rows, columns) for the layout of the plot
		return_type : {'axes', 'dict', 'both'}, default 'dict'
		    The kind of object to return. 'dict' returns a dictionary
		    whose values are the matplotlib Lines of the boxplot;
		    'axes' returns the matplotlib axes the boxplot is drawn on;
		    'both' returns a namedtuple with the axes and dict.
		
		    When grouping with ``by``, a dict mapping columns to ``return_type``
		    is returned.
		
		kwds : other plotting keyword arguments to be passed to matplotlib boxplot
		       function
		
		Returns
		-------
		lines : dict
		ax : matplotlib Axes
		(ax, lines): namedtuple
		
		Notes
		-----
		Use ``return_type='dict'`` when you want to tweak the appearance
		of the lines after plotting. In this case a dict containing the Lines
		making up the boxes, caps, fliers, medians, and whiskers is returned.
	**/
	public function boxplot(?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, kwds:Dynamic):Dynamic;
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
	static public var columns : Dynamic;
	/**
		Add two DataFrame objects and do not propagate NaN values, so if for a
		(column, time) one frame is missing a value, it will default to the
		other frame's value (which might be NaN as well)
		
		Parameters
		----------
		other : DataFrame
		func : function
		fill_value : scalar value
		overwrite : boolean, default True
		    If True then overwrite values for common keys in the calling frame
		
		Returns
		-------
		result : DataFrame
	**/
	public function combine(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		DEPRECATED. Use ``DataFrame.add(other, fill_value=0.)`` instead.
		
		Add two DataFrame objects and do not propagate
		NaN values, so if for a (column, time) one frame is missing a
		value, it will default to the other frame's value (which might
		be NaN as well)
		
		Parameters
		----------
		other : DataFrame
		
		Returns
		-------
		DataFrame
		
		See also
		--------
		DataFrame.add
	**/
	public function combineAdd(other:Dynamic):Dynamic;
	/**
		DEPRECATED. Use ``DataFrame.mul(other, fill_value=1.)`` instead.
		
		Multiply two DataFrame objects and do not propagate NaN values, so if
		for a (column, time) one frame is missing a value, it will default to
		the other frame's value (which might be NaN as well)
		
		Parameters
		----------
		other : DataFrame
		
		Returns
		-------
		DataFrame
		
		See also
		--------
		DataFrame.mul
	**/
	public function combineMult(other:Dynamic):Dynamic;
	/**
		Combine two DataFrame objects and default to non-null values in frame
		calling the method. Result index columns will be the union of the
		respective indexes and columns
		
		Parameters
		----------
		other : DataFrame
		
		Examples
		--------
		a's values prioritized, use values from b to fill holes:
		
		>>> a.combine_first(b)
		
		
		Returns
		-------
		combined : DataFrame
	**/
	public function combine_first(other:Dynamic):Dynamic;
	/**
		Return the compound percentage of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		compounded : Series or DataFrame (if level specified)
	**/
	public function compound(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
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
		Make a copy of this SparseDataFrame
	**/
	public function copy(?deep:Dynamic):Dynamic;
	/**
		Compute pairwise correlation of columns, excluding NA/null values
		
		Parameters
		----------
		method : {'pearson', 'kendall', 'spearman'}
		    * pearson : standard correlation coefficient
		    * kendall : Kendall Tau correlation coefficient
		    * spearman : Spearman rank correlation
		min_periods : int, optional
		    Minimum number of observations required per pair of columns
		    to have a valid result. Currently only available for pearson
		    and spearman correlation
		
		Returns
		-------
		y : DataFrame
	**/
	public function corr(?method:Dynamic, ?min_periods:Dynamic):Dynamic;
	/**
		Compute pairwise correlation between rows or columns of two DataFrame
		objects.
		
		Parameters
		----------
		other : DataFrame
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    0 or 'index' to compute column-wise, 1 or 'columns' for row-wise
		drop : boolean, default False
		    Drop missing indices from result, default returns union of all
		
		Returns
		-------
		correls : Series
	**/
	public function corrwith(other:Dynamic, ?axis:Dynamic, ?drop:Dynamic):Dynamic;
	/**
		Return Series with number of non-NA/null observations over requested
		axis. Works with non-floating point data as well (detects NaN and None)
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a DataFrame
		numeric_only : boolean, default False
		    Include only float, int, boolean data
		
		Returns
		-------
		count : Series (or DataFrame if level specified)
	**/
	public function count(?axis:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Compute pairwise covariance of columns, excluding NA/null values
		
		Parameters
		----------
		min_periods : int, optional
		    Minimum number of observations required per pair of columns
		    to have a valid result.
		
		Returns
		-------
		y : DataFrame
		
		Notes
		-----
		`y` contains the covariance matrix of the DataFrame's time series.
		The covariance is normalized by N-1 (unbiased estimator).
	**/
	public function cov(?min_periods:Dynamic):Dynamic;
	/**
		Return cumulative max over requested axis.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		max : Series
	**/
	public function cummax(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return cumulative min over requested axis.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		min : Series
	**/
	public function cummin(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return cumulative prod over requested axis.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		prod : Series
	**/
	public function cumprod(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?skipna:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return SparseDataFrame of cumulative sums over requested axis.
		
		Parameters
		----------
		axis : {0, 1}
		    0 for row-wise, 1 for column-wise
		
		Returns
		-------
		y : SparseDataFrame
	**/
	public function cumsum(?axis:Dynamic):Dynamic;
	static public var default_fill_value : Dynamic;
	static public var default_kind : Dynamic;
	/**
		Ratio of non-sparse points to total (dense) data points
		represented in the frame
	**/
	static public var density : Dynamic;
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
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Take difference over rows (0) or columns (1).
		
		    .. versionadded: 0.16.1
		
		Returns
		-------
		diffed : DataFrame
	**/
	public function diff(?periods:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Floating division of dataframe and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``dataframe / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rtruediv
	**/
	public function div(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Floating division of dataframe and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``dataframe / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rtruediv
	**/
	public function divide(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Matrix multiplication with DataFrame or Series objects
		
		Parameters
		----------
		other : DataFrame or Series
		
		Returns
		-------
		dot_product : DataFrame or Series
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
		Return DataFrame with duplicate rows removed, optionally only
		considering certain columns
		
		Parameters
		----------
		subset : column label or sequence of labels, optional
		    Only consider certain columns for identifying duplicates, by
		    default use all of the columns
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Drop duplicates except for the first occurrence.
		    - ``last`` : Drop duplicates except for the last occurrence.
		    - False : Drop all duplicates.
		take_last : deprecated
		inplace : boolean, default False
		    Whether to drop duplicates in place or to return a copy
		cols : kwargs only argument of subset [deprecated]
		
		Returns
		-------
		deduplicated : DataFrame
	**/
	public function drop_duplicates(?subset:Dynamic, ?keep:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Return object with labels on given axis omitted where alternately any
		or all of the data are missing
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, or tuple/list thereof
		    Pass tuple or list to drop on multiple axes
		how : {'any', 'all'}
		    * any : if any NA values are present, drop that label
		    * all : if all values are NA, drop that label
		thresh : int, default None
		    int value : require that many non-NA values
		subset : array-like
		    Labels along other axis to consider, e.g. if you are dropping rows
		    these would be a list of columns to include
		inplace : boolean, defalt False
		    If True, do operation inplace and return None.
		
		Returns
		-------
		dropped : DataFrame
	**/
	public function dropna(?axis:Dynamic, ?how:Dynamic, ?thresh:Dynamic, ?subset:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Return the dtypes in this object 
	**/
	static public var dtypes : Dynamic;
	/**
		Return boolean Series denoting duplicate rows, optionally only
		considering certain columns
		
		Parameters
		----------
		subset : column label or sequence of labels, optional
		    Only consider certain columns for identifying duplicates, by
		    default use all of the columns
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Mark duplicates as ``True`` except for the
		      first occurrence.
		    - ``last`` : Mark duplicates as ``True`` except for the
		      last occurrence.
		    - False : Mark all duplicates as ``True``.
		take_last : deprecated
		cols : kwargs only argument of subset [deprecated]
		
		Returns
		-------
		duplicated : Series
	**/
	public function duplicated(?subset:Dynamic, ?keep:Dynamic):Dynamic;
	/**
		True if NDFrame is entirely empty [no items]
	**/
	static public var empty : Dynamic;
	/**
		Wrapper for flexible comparison methods eq
	**/
	public function eq(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Determines if two NDFrame objects contain the same elements. NaNs in the
		same location are considered equal.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Evaluate an expression in the context of the calling DataFrame
		instance.
		
		Parameters
		----------
		expr : string
		    The expression string to evaluate.
		kwargs : dict
		    See the documentation for :func:`~pandas.eval` for complete details
		    on the keyword arguments accepted by
		    :meth:`~pandas.DataFrame.query`.
		
		Returns
		-------
		ret : ndarray, scalar, or pandas object
		
		See Also
		--------
		pandas.DataFrame.query
		pandas.eval
		
		Notes
		-----
		For more details see the API documentation for :func:`~pandas.eval`.
		For detailed examples see :ref:`enhancing performance with eval
		<enhancingperf.eval>`.
		
		Examples
		--------
		>>> from numpy.random import randn
		>>> from pandas import DataFrame
		>>> df = DataFrame(randn(10, 2), columns=list('ab'))
		>>> df.eval('a + b')
		>>> df.eval('c = a + b')
	**/
	public function eval(expr:Dynamic, kwargs:Dynamic):Dynamic;
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
		axis : {0, 1, 'index', 'columns'}
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
		filled : DataFrame
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic):Dynamic;
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
		Integer division of dataframe and other, element-wise (binary operator `floordiv`).
		
		Equivalent to ``dataframe // other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rfloordiv
	**/
	public function floordiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Read CSV file (DISCOURAGED, please use :func:`pandas.read_csv` instead).
		
		It is preferable to use the more powerful :func:`pandas.read_csv`
		for most general purposes, but ``from_csv`` makes for an easy
		roundtrip to and from a file (the exact counterpart of
		``to_csv``), especially with a DataFrame of time series data.
		
		This method only differs from the preferred :func:`pandas.read_csv`
		in some defaults:
		
		- `index_col` is ``0`` instead of ``None`` (take first column as index
		  by default)
		- `parse_dates` is ``True`` instead of ``False`` (try parsing the index
		  as datetime by default)
		
		So a ``pd.DataFrame.from_csv(path)`` can be replaced by
		``pd.read_csv(path, index_col=0, parse_dates=True)``.
		
		Parameters
		----------
		path : string file path or file handle / StringIO
		header : int, default 0
		    Row to use as header (skip prior rows)
		sep : string, default ','
		    Field delimiter
		index_col : int or sequence, default 0
		    Column to use for index. If a sequence is given, a MultiIndex
		    is used. Different default from read_table
		parse_dates : boolean, default True
		    Parse dates. Different default from read_table
		tupleize_cols : boolean, default False
		    write multi_index columns as a list of tuples (if True)
		    or new (expanded format) if False)
		infer_datetime_format: boolean, default False
		    If True and `parse_dates` is True for a column, try to infer the
		    datetime format based on the first datetime string. If the format
		    can be inferred, there often will be a large parsing speed-up.
		
		See also
		--------
		pandas.read_csv
		
		Returns
		-------
		y : DataFrame
	**/
	static public function from_csv(path:Dynamic, ?header:Dynamic, ?sep:Dynamic, ?index_col:Dynamic, ?parse_dates:Dynamic, ?encoding:Dynamic, ?tupleize_cols:Dynamic, ?infer_datetime_format:Dynamic):Dynamic;
	/**
		Construct DataFrame from dict of array-like or dicts
		
		Parameters
		----------
		data : dict
		    {field : array-like} or {field : dict}
		orient : {'columns', 'index'}, default 'columns'
		    The "orientation" of the data. If the keys of the passed dict
		    should be the columns of the resulting DataFrame, pass 'columns'
		    (default). Otherwise if the keys should be rows, pass 'index'.
		dtype : dtype, default None
		    Data type to force, otherwise infer
		
		Returns
		-------
		DataFrame
	**/
	static public function from_dict(data:Dynamic, ?orient:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Convert (key, value) pairs to DataFrame. The keys will be the axis
		index (usually the columns, but depends on the specified
		orientation). The values should be arrays or Series.
		
		Parameters
		----------
		items : sequence of (key, value) pairs
		    Values should be arrays or Series.
		columns : sequence of column labels, optional
		    Must be passed if orient='index'.
		orient : {'columns', 'index'}, default 'columns'
		    The "orientation" of the data. If the keys of the
		    input correspond to column labels, pass 'columns'
		    (default). Otherwise if the keys correspond to the index,
		    pass 'index'.
		
		Returns
		-------
		frame : DataFrame
	**/
	static public function from_items(items:Dynamic, ?columns:Dynamic, ?orient:Dynamic):Dynamic;
	/**
		Convert structured or record ndarray to DataFrame
		
		Parameters
		----------
		data : ndarray (structured dtype), list of tuples, dict, or DataFrame
		index : string, list of fields, array-like
		    Field of array to use as the index, alternately a specific set of
		    input labels to use
		exclude : sequence, default None
		    Columns or fields to exclude
		columns : sequence, default None
		    Column names to use. If the passed data do not have names
		    associated with them, this argument provides names for the
		    columns. Otherwise this argument indicates the order of the columns
		    in the result (any names not found in the data will become all-NA
		    columns)
		coerce_float : boolean, default False
		    Attempt to convert values to non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets
		
		Returns
		-------
		df : DataFrame
	**/
	static public function from_records(data:Dynamic, ?index:Dynamic, ?exclude:Dynamic, ?columns:Dynamic, ?coerce_float:Dynamic, ?nrows:Dynamic):Dynamic;
	/**
		Return the ftypes (indication of sparse/dense and dtype)
		in this object.
	**/
	static public var ftypes : Dynamic;
	/**
		Wrapper for flexible comparison methods ge
	**/
	public function ge(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
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
		Quickly retrieve single value at passed column and index
		
		Parameters
		----------
		index : row label
		col : column label
		takeable : interpret the index/col as indexers, default False
		
		Returns
		-------
		value : scalar value
	**/
	public function get_value(index:Dynamic, col:Dynamic, ?takeable:Dynamic):Dynamic;
	/**
		same as values (but handles sparseness conversions) 
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
	/**
		Wrapper for flexible comparison methods gt
	**/
	public function gt(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Returns first n rows
	**/
	public function head(?n:Dynamic):Dynamic;
	/**
		Draw histogram of the DataFrame's series using matplotlib / pylab.
		
		Parameters
		----------
		data : DataFrame
		column : string or sequence
		    If passed, will be used to limit data to a subset of columns
		by : object, optional
		    If passed, then used to form histograms for separate groups
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
		ax : matplotlib axes object, default None
		sharex : boolean, default True if ax is None else False
		    In case subplots=True, share x axis and set some x axis labels to
		    invisible; defaults to True if ax is None otherwise False if an ax
		    is passed in; Be aware, that passing in both an ax and sharex=True
		    will alter all x axis labels for all subplots in a figure!
		sharey : boolean, default False
		    In case subplots=True, share y axis and set some y axis labels to
		    invisible
		figsize : tuple
		    The size of the figure to create in inches by default
		layout: (optional) a tuple (rows, columns) for the layout of the histograms
		bins: integer, default 10
		    Number of histogram bins to be used
		kwds : other plotting keyword arguments
		    To be passed to hist function
	**/
	public function hist(?column:Dynamic, ?by:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?ax:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?bins:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Fast integer location scalar accessor.
		
		Similarly to ``iloc``, ``iat`` provides **integer** based lookups.
		You can also set using these indexers.
	**/
	static public var iat : Dynamic;
	/**
		DEPRECATED. Use ``.iloc[:, i]`` instead
	**/
	public function icol(i:Dynamic):Dynamic;
	/**
		Return index of first occurrence of maximum over requested axis.
		NA/null values are excluded.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be first index.
		
		Returns
		-------
		idxmax : Series
		
		Notes
		-----
		This method is the DataFrame version of ``ndarray.argmax``.
		
		See Also
		--------
		Series.idxmax
	**/
	public function idxmax(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Return index of first occurrence of minimum over requested axis.
		NA/null values are excluded.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		idxmin : Series
		
		Notes
		-----
		This method is the DataFrame version of ``ndarray.argmin``.
		
		See Also
		--------
		Series.idxmin
	**/
	public function idxmin(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		DEPRECATED. Use ``.iat[i, j]`` instead
	**/
	public function iget_value(i:Dynamic, j:Dynamic):Dynamic;
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
	static public var index : Dynamic;
	/**
		Concise summary of a DataFrame.
		
		Parameters
		----------
		verbose : {None, True, False}, optional
		    Whether to print the full summary.
		    None follows the `display.max_info_columns` setting.
		    True or False overrides the `display.max_info_columns` setting.
		buf : writable buffer, defaults to sys.stdout
		max_cols : int, default None
		    Determines whether full summary or short summary is printed.
		    None follows the `display.max_info_columns` setting.
		memory_usage : boolean, default None
		    Specifies whether total memory usage of the DataFrame
		    elements (including index) should be displayed. None follows
		    the `display.memory_usage` setting. True or False overrides
		    the `display.memory_usage` setting. Memory usage is shown in
		    human-readable units (base-2 representation).
		null_counts : boolean, default None
		    Whether to show the non-null counts
		    If None, then only show if the frame is smaller than max_info_rows and max_info_columns.
		    If True, always show counts.
		    If False, never show counts.
	**/
	public function info(?verbose:Dynamic, ?buf:Dynamic, ?max_cols:Dynamic, ?memory_usage:Dynamic, ?null_counts:Dynamic):Dynamic;
	/**
		Insert column into DataFrame at specified location.
		
		If `allow_duplicates` is False, raises Exception if column
		is already contained in the DataFrame.
		
		Parameters
		----------
		loc : int
		    Must have 0 <= loc <= len(columns)
		column : object
		value : int, Series, or array-like
	**/
	public function insert(loc:Dynamic, column:Dynamic, value:Dynamic, ?allow_duplicates:Dynamic):Dynamic;
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
		DEPRECATED. Use ``.iloc[i]`` instead
	**/
	public function irow(i:Dynamic, ?copy:Dynamic):Dynamic;
	static public var is_copy : Dynamic;
	/**
		Return boolean DataFrame showing whether each element in the
		DataFrame is contained in values.
		
		Parameters
		----------
		values : iterable, Series, DataFrame or dictionary
		    The result will only be true at a location if all the
		    labels match. If `values` is a Series, that's the index. If
		    `values` is a dictionary, the keys must be the column names,
		    which must match. If `values` is a DataFrame,
		    then both the index and column labels must match.
		
		Returns
		-------
		
		DataFrame of booleans
		
		Examples
		--------
		When ``values`` is a list:
		
		>>> df = DataFrame({'A': [1, 2, 3], 'B': ['a', 'b', 'f']})
		>>> df.isin([1, 3, 12, 'a'])
		       A      B
		0   True   True
		1  False  False
		2   True  False
		
		When ``values`` is a dict:
		
		>>> df = DataFrame({'A': [1, 2, 3], 'B': [1, 4, 7]})
		>>> df.isin({'A': [1, 3], 'B': [4, 7, 12]})
		       A      B
		0   True  False  # Note that B didn't match the 1 here.
		1  False   True
		2   True   True
		
		When ``values`` is a Series or DataFrame:
		
		>>> df = DataFrame({'A': [1, 2, 3], 'B': ['a', 'b', 'f']})
		>>> other = DataFrame({'A': [1, 3, 3, 2], 'B': ['e', 'f', 'f', 'e']})
		>>> df.isin(other)
		       A      B
		0   True  False
		1  False  False  # Column A in `other` has a 3, but not at index 1.
		2   True   True
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
		Iterator over (column name, Series) pairs.
		
		See also
		--------
		iterrows : Iterate over the rows of a DataFrame as (index, Series) pairs.
		itertuples : Iterate over the rows of a DataFrame as tuples of the values.
	**/
	public function items():Dynamic;
	/**
		Iterator over (column name, Series) pairs.
		
		See also
		--------
		iterrows : Iterate over the rows of a DataFrame as (index, Series) pairs.
		itertuples : Iterate over the rows of a DataFrame as tuples of the values.
	**/
	public function iteritems():Dynamic;
	/**
		iteritems alias used to get around 2to3. Deprecated
	**/
	public function iterkv(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Iterate over the rows of a DataFrame as (index, Series) pairs.
		
		Notes
		-----
		
		1. Because ``iterrows`` returns a Series for each row,
		   it does **not** preserve dtypes across the rows (dtypes are
		   preserved across columns for DataFrames). For example,
		
		   >>> df = pd.DataFrame([[1, 1.5]], columns=['int', 'float'])
		   >>> row = next(df.iterrows())[1]
		   >>> row
		   int      1.0
		   float    1.5
		   Name: 0, dtype: float64
		   >>> print(row['int'].dtype)
		   float64
		   >>> print(df['int'].dtype)
		   int64
		
		   To preserve dtypes while iterating over the rows, it is better
		   to use :meth:`itertuples` which returns tuples of the values
		   and which is generally faster as ``iterrows``.
		
		2. You should **never modify** something you are iterating over.
		   This is not guaranteed to work in all cases. Depending on the
		   data types, the iterator returns a copy and not a view, and writing
		   to it will have no effect.
		
		Returns
		-------
		it : generator
		    A generator that iterates over the rows of the frame.
		
		See also
		--------
		itertuples : Iterate over the rows of a DataFrame as tuples of the values.
		iteritems : Iterate over (column name, Series) pairs.
	**/
	public function iterrows():Dynamic;
	/**
		Iterate over the rows of DataFrame as tuples, with index value
		as first element of the tuple.
		
		Parameters
		----------
		index : boolean, default True
		    If True, return the index as the first element of the tuple.
		
		See also
		--------
		iterrows : Iterate over the rows of a DataFrame as (index, Series) pairs.
		iteritems : Iterate over (column name, Series) pairs.
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [0.1, 0.2]}, index=['a', 'b'])
		>>> df
		   col1  col2
		a     1   0.1
		b     2   0.2
		>>> for row in df.itertuples():
		...     print(row)
		('a', 1, 0.10000000000000001)
		('b', 2, 0.20000000000000001)
	**/
	public function itertuples(?index:Dynamic):Dynamic;
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
		Join columns with other DataFrame either on index or on a key
		column. Efficiently Join multiple DataFrame objects by index at once by
		passing a list.
		
		Parameters
		----------
		other : DataFrame, Series with name field set, or list of DataFrame
		    Index should be similar to one of the columns in this one. If a
		    Series is passed, its name attribute must be set, and that will be
		    used as the column name in the resulting joined DataFrame
		on : column name, tuple/list of column names, or array-like
		    Column(s) to use for joining, otherwise join on index. If multiples
		    columns given, the passed DataFrame must have a MultiIndex. Can
		    pass an array as the join key if not already contained in the
		    calling DataFrame. Like an Excel VLOOKUP operation
		how : {'left', 'right', 'outer', 'inner'}
		    How to handle indexes of the two objects. Default: 'left'
		    for joining on index, None otherwise
		
		    * left: use calling frame's index
		    * right: use input frame's index
		    * outer: form union of indexes
		    * inner: use intersection of indexes
		lsuffix : string
		    Suffix to use from left frame's overlapping columns
		rsuffix : string
		    Suffix to use from right frame's overlapping columns
		sort : boolean, default False
		    Order result DataFrame lexicographically by the join key. If False,
		    preserves the index order of the calling (left) DataFrame
		
		Notes
		-----
		on, lsuffix, and rsuffix options are not supported when passing a list
		of DataFrame objects
		
		Returns
		-------
		joined : DataFrame
	**/
	public function join(other:Dynamic, ?on:Dynamic, ?how:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Get the 'info axis' (see Indexing for more)
		
		This is index for Series, columns for DataFrame and major_axis for
		Panel.
	**/
	public function keys():Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fishers definition of
		kurtosis (kurtosis of normal == 0.0). Normalized by N-1
		
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		kurt : Series or DataFrame (if level specified)
	**/
	public function kurt(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fishers definition of
		kurtosis (kurtosis of normal == 0.0). Normalized by N-1
		
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		kurt : Series or DataFrame (if level specified)
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
	/**
		Wrapper for flexible comparison methods le
	**/
	public function le(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
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
	/**
		Label-based "fancy indexing" function for DataFrame.
		Given equal-length arrays of row and column labels, return an
		array of the values corresponding to each (row, col) pair.
		
		Parameters
		----------
		row_labels : sequence
		    The row labels to use for lookup
		col_labels : sequence
		    The column labels to use for lookup
		
		Notes
		-----
		Akin to::
		
		    result = []
		    for row, col in zip(row_labels, col_labels):
		        result.append(df.get_value(row, col))
		
		Examples
		--------
		values : ndarray
		    The found values
	**/
	public function lookup(row_labels:Dynamic, col_labels:Dynamic):Dynamic;
	/**
		Wrapper for flexible comparison methods lt
	**/
	public function lt(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return the mean absolute deviation of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		mad : Series or DataFrame (if level specified)
	**/
	public function mad(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
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
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		max : Series or DataFrame (if level specified)
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the mean of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		mean : Series or DataFrame (if level specified)
	**/
	public function mean(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the median of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		median : Series or DataFrame (if level specified)
	**/
	public function median(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Memory usage of DataFrame columns.
		
		Parameters
		----------
		index : bool
		    Specifies whether to include memory usage of DataFrame's
		    index in returned Series. If `index=True` (default is False)
		    the first index of the Series is `Index`.
		
		Returns
		-------
		sizes : Series
		    A series with column names as index and memory usage of
		    columns with units of bytes.
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array.
		
		See Also
		--------
		numpy.ndarray.nbytes
	**/
	public function memory_usage(?index:Dynamic):Dynamic;
	/**
		Merge DataFrame objects by performing a database-style join operation by
		columns or indexes.
		
		If joining columns on columns, the DataFrame indexes *will be
		ignored*. Otherwise if joining indexes on indexes or indexes on a column or
		columns, the index will be passed on.
		
		Parameters
		----------
		right : DataFrame
		how : {'left', 'right', 'outer', 'inner'}, default 'inner'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		on : label or list
		    Field names to join on. Must be found in both DataFrames. If on is
		    None and not merging on indexes, then it merges on the intersection of
		    the columns by default.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_index : boolean, default False
		    Use the index from the left DataFrame as the join key(s). If it is a
		    MultiIndex, the number of keys in the other DataFrame (either the index
		    or a number of columns) must match the number of levels
		right_index : boolean, default False
		    Use the index from the right DataFrame as the join key. Same caveats as
		    left_index
		sort : boolean, default False
		    Sort the join keys lexicographically in the result DataFrame
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		indicator : boolean or string, default False
		    If True, adds a column to output DataFrame called "_merge" with
		    information on the source of each row.
		    If string, column with information on source of each row will be added to
		    output DataFrame, and column will be named value of string.
		    Information column is Categorical-type and takes on a value of "left_only"
		    for observations whose merge key only appears in 'left' DataFrame,
		    "right_only" for observations whose merge key only appears in 'right'
		    DataFrame, and "both" if the observation's merge key is found in both.
		
		    .. versionadded:: 0.17.0
		
		Examples
		--------
		
		>>> A              >>> B
		    lkey value         rkey value
		0   foo  1         0   foo  5
		1   bar  2         1   bar  6
		2   baz  3         2   qux  7
		3   foo  4         3   bar  8
		
		>>> merge(A, B, left_on='lkey', right_on='rkey', how='outer')
		   lkey  value_x  rkey  value_y
		0  foo   1        foo   5
		1  foo   4        foo   5
		2  bar   2        bar   6
		3  bar   2        bar   8
		4  baz   3        NaN   NaN
		5  NaN   NaN      qux   7
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
	**/
	public function merge(right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic):Dynamic;
	/**
		This method returns the minimum of the values in the object. If you
		want the *index* of the minimum, use ``idxmin``. This is the
		equivalent of the ``numpy.ndarray`` method ``argmin``.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		min : Series or DataFrame (if level specified)
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Modulo of dataframe and other, element-wise (binary operator `mod`).
		
		Equivalent to ``dataframe % other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rmod
	**/
	public function mod(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Gets the mode(s) of each element along the axis selected. Empty if nothing
		has 2+ occurrences. Adds a row for each mode per label, fills in gaps
		with nan.
		
		Note that there could be multiple values returned for the selected
		axis (when more than one item share the maximum frequency), which is the
		reason why a dataframe is returned. If you want to impute missing values
		with the mode in a dataframe ``df``, you can just do this:
		``df.fillna(df.mode().iloc[0])``
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    * 0 or 'index' : get mode of each column
		    * 1 or 'columns' : get mode of each row
		numeric_only : boolean, default False
		    if True, only apply to numeric columns
		
		Returns
		-------
		modes : DataFrame (sorted)
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 2, 1, 2, 1, 2, 3]})
		>>> df.mode()
		   A
		0  1
		1  2
	**/
	public function mode(?axis:Dynamic, ?numeric_only:Dynamic):Dynamic;
	/**
		Multiplication of dataframe and other, element-wise (binary operator `mul`).
		
		Equivalent to ``dataframe * other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rmul
	**/
	public function mul(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Multiplication of dataframe and other, element-wise (binary operator `mul`).
		
		Equivalent to ``dataframe * other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rmul
	**/
	public function multiply(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Number of axes / array dimensions
	**/
	static public var ndim : Dynamic;
	/**
		Wrapper for flexible comparison methods ne
	**/
	public function ne(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Get the rows of a DataFrame sorted by the `n` largest
		values of `columns`.
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		n : int
		    Number of items to retrieve
		columns : list or str
		    Column name or names to order by
		keep : {'first', 'last', False}, default 'first'
		    Where there are duplicate values:
		    - ``first`` : take the first occurrence.
		    - ``last`` : take the last occurrence.
		
		Returns
		-------
		DataFrame
		
		Examples
		--------
		>>> df = DataFrame({'a': [1, 10, 8, 11, -1],
		...                 'b': list('abdce'),
		...                 'c': [1.0, 2.0, np.nan, 3.0, 4.0]})
		>>> df.nlargest(3, 'a')
		    a  b   c
		3  11  c   3
		1  10  b   2
		2   8  d NaN
	**/
	public function nlargest(n:Dynamic, columns:Dynamic, ?keep:Dynamic):Dynamic;
	/**
		Return a boolean same-sized object indicating if the values are
		not null
		
		See also
		--------
		isnull : boolean inverse of notnull
	**/
	public function notnull():Dynamic;
	/**
		Get the rows of a DataFrame sorted by the `n` smallest
		values of `columns`.
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		n : int
		    Number of items to retrieve
		columns : list or str
		    Column name or names to order by
		keep : {'first', 'last', False}, default 'first'
		    Where there are duplicate values:
		    - ``first`` : take the first occurrence.
		    - ``last`` : take the last occurrence.
		
		Returns
		-------
		DataFrame
		
		Examples
		--------
		>>> df = DataFrame({'a': [1, 10, 8, 11, -1],
		...                 'b': list('abdce'),
		...                 'c': [1.0, 2.0, np.nan, 3.0, 4.0]})
		>>> df.nsmallest(3, 'a')
		   a  b   c
		4 -1  e   4
		0  1  a   1
		2  8  d NaN
	**/
	public function nsmallest(n:Dynamic, columns:Dynamic, ?keep:Dynamic):Dynamic;
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
		Reshape data (produce a "pivot" table) based on column values. Uses
		unique values from index / columns to form axes and return either
		DataFrame or Panel, depending on whether you request a single value
		column (DataFrame) or all columns (Panel)
		
		Parameters
		----------
		index : string or object, optional
		    Column name to use to make new frame's index. If None, uses
		    existing index.
		columns : string or object
		    Column name to use to make new frame's columns
		values : string or object, optional
		    Column name to use for populating new frame's values
		
		Notes
		-----
		For finer-tuned control, see hierarchical indexing documentation along
		with the related stack/unstack methods
		
		Examples
		--------
		>>> df
		    foo   bar  baz
		0   one   A    1.
		1   one   B    2.
		2   one   C    3.
		3   two   A    4.
		4   two   B    5.
		5   two   C    6.
		
		>>> df.pivot('foo', 'bar', 'baz')
		     A   B   C
		one  1   2   3
		two  4   5   6
		
		>>> df.pivot('foo', 'bar')['baz']
		     A   B   C
		one  1   2   3
		two  4   5   6
		
		Returns
		-------
		pivoted : DataFrame
		    If no values column specified, will have hierarchically indexed
		    columns
	**/
	public function pivot(?index:Dynamic, ?columns:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in the
		pivot table will be stored in MultiIndex objects (hierarchical indexes) on
		the index and columns of the result DataFrame
		
		Parameters
		----------
		data : DataFrame
		values : column to aggregate, optional
		index : a column, Grouper, array which has the same length as data, or list of them.
		    Keys to group by on the pivot table index.
		    If an array is passed, it is being used as the same manner as column values.
		columns : a column, Grouper, array which has the same length as data, or list of them.
		    Keys to group by on the pivot table column.
		    If an array is passed, it is being used as the same manner as column values.
		aggfunc : function, default numpy.mean, or list of functions
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names (inferred
		    from the function objects themselves)
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		
		Examples
		--------
		>>> df
		   A   B   C      D
		0  foo one small  1
		1  foo one large  2
		2  foo one large  2
		3  foo two small  3
		4  foo two small  3
		5  bar one large  4
		6  bar one small  5
		7  bar two small  6
		8  bar two large  7
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		          small  large
		foo  one  1      4
		     two  6      NaN
		bar  one  5      4
		     two  6      7
		
		Returns
		-------
		table : DataFrame
	**/
	public function pivot_table(?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		DataFrame plotting accessor and method
		
		Examples
		--------
		>>> df.plot.line()
		>>> df.plot.scatter('x', 'y')
		>>> df.plot.hexbin()
		
		These plotting methods can also be accessed by calling the accessor as a
		method with the ``kind`` argument:
		``df.plot(kind='line')`` is equivalent to ``df.plot.line()``
	**/
	static public function plot(data:Dynamic):Dynamic;
	/**
		Return item and drop from frame. Raise KeyError if not found.
	**/
	public function pop(item:Dynamic):Dynamic;
	/**
		Exponential power of dataframe and other, element-wise (binary operator `pow`).
		
		Equivalent to ``dataframe ** other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rpow
	**/
	public function pow(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return the product of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		prod : Series or DataFrame (if level specified)
	**/
	public function prod(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the product of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		prod : Series or DataFrame (if level specified)
	**/
	public function product(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return values at the given quantile over requested axis, a la
		numpy.percentile.
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		    0 <= q <= 1, the quantile(s) to compute
		axis : {0, 1, 'index', 'columns'} (default 0)
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		
		
		Returns
		-------
		quantiles : Series or DataFrame
		    If ``q`` is an array, a DataFrame will be returned where the
		    index is ``q``, the columns are the columns of self, and the
		    values are the quantiles.
		    If ``q`` is a float, a Series will be returned where the
		    index is the columns of self and the values are the quantiles.
		
		Examples
		--------
		
		>>> df = DataFrame(np.array([[1, 1], [2, 10], [3, 100], [4, 100]]),
		                  columns=['a', 'b'])
		>>> df.quantile(.1)
		a    1.3
		b    3.7
		dtype: float64
		>>> df.quantile([.1, .5])
		       a     b
		0.1  1.3   3.7
		0.5  2.5  55.0
	**/
	public function quantile(?q:Dynamic, ?axis:Dynamic, ?numeric_only:Dynamic):Dynamic;
	/**
		Query the columns of a frame with a boolean expression.
		
		.. versionadded:: 0.13
		
		Parameters
		----------
		expr : string
		    The query string to evaluate.  You can refer to variables
		    in the environment by prefixing them with an '@' character like
		    ``@a + b``.
		kwargs : dict
		    See the documentation for :func:`pandas.eval` for complete details
		    on the keyword arguments accepted by :meth:`DataFrame.query`.
		
		Returns
		-------
		q : DataFrame
		
		Notes
		-----
		The result of the evaluation of this expression is first passed to
		:attr:`DataFrame.loc` and if that fails because of a
		multidimensional key (e.g., a DataFrame) then the result will be passed
		to :meth:`DataFrame.__getitem__`.
		
		This method uses the top-level :func:`pandas.eval` function to
		evaluate the passed query.
		
		The :meth:`~pandas.DataFrame.query` method uses a slightly
		modified Python syntax by default. For example, the ``&`` and ``|``
		(bitwise) operators have the precedence of their boolean cousins,
		:keyword:`and` and :keyword:`or`. This *is* syntactically valid Python,
		however the semantics are different.
		
		You can change the semantics of the expression by passing the keyword
		argument ``parser='python'``. This enforces the same semantics as
		evaluation in Python space. Likewise, you can pass ``engine='python'``
		to evaluate an expression using Python itself as a backend. This is not
		recommended as it is inefficient compared to using ``numexpr`` as the
		engine.
		
		The :attr:`DataFrame.index` and
		:attr:`DataFrame.columns` attributes of the
		:class:`~pandas.DataFrame` instance are placed in the query namespace
		by default, which allows you to treat both the index and columns of the
		frame as a column in the frame.
		The identifier ``index`` is used for the frame index; you can also
		use the name of the index to identify it in a query.
		
		For further details and examples see the ``query`` documentation in
		:ref:`indexing <indexing.query>`.
		
		See Also
		--------
		pandas.eval
		DataFrame.eval
		
		Examples
		--------
		>>> from numpy.random import randn
		>>> from pandas import DataFrame
		>>> df = DataFrame(randn(10, 2), columns=list('ab'))
		>>> df.query('a > b')
		>>> df[df.a > df.b]  # same result as the previous expression
	**/
	public function query(expr:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Addition of dataframe and other, element-wise (binary operator `radd`).
		
		Equivalent to ``other + dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.add
	**/
	public function radd(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Compute numerical data ranks (1 through n) along axis. Equal values are
		assigned a rank that is the average of the ranks of those values
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Ranks over columns (0) or rows (1)
		numeric_only : boolean, default None
		    Include only float, int, boolean data
		method : {'average', 'min', 'max', 'first', 'dense'}
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
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
		ranks : DataFrame
	**/
	public function rank(?axis:Dynamic, ?numeric_only:Dynamic, ?method:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Floating division of dataframe and other, element-wise (binary operator `rtruediv`).
		
		Equivalent to ``other / dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.truediv
	**/
	public function rdiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Conform DataFrame to new index with optional filling logic, placing
		NA/NaN in locations having no value in the previous index. A new object
		is produced unless the new index is equivalent to the current one and
		copy=False
		
		Parameters
		----------
		index, columns : array-like, optional (can be specified in order, or as
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
		reindexed : DataFrame
	**/
	public function reindex(?index:Dynamic, ?columns:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Conform input object to new index with optional filling logic,
		placing NA/NaN in locations having no value in the previous index. A
		new object is produced unless the new index is equivalent to the
		current one and copy=False
		
		Parameters
		----------
		labels : array-like
		    New labels / index to conform to. Preferably an Index object to
		    avoid duplicating data
		axis : {0, 1, 'index', 'columns'}
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
		
		See also
		--------
		reindex, reindex_like
		
		Returns
		-------
		reindexed : DataFrame
	**/
	public function reindex_axis(labels:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		index, columns : dict-like or function, optional
		    Transformation to apply to that axis values
		
		copy : boolean, default True
		    Also copy underlying data
		inplace : boolean, default False
		    Whether to return a new DataFrame. If True then value of copy is
		    ignored.
		
		Returns
		-------
		renamed : DataFrame (new object)
	**/
	public function rename(?index:Dynamic, ?columns:Dynamic, kwargs:Dynamic):Dynamic;
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
		Rearrange index levels using input order.
		May not drop or duplicate levels
		
		Parameters
		----------
		order : list of int or list of str
		    List representing new level order. Reference level by number
		    (position) or by key (label).
		axis : int
		    Where to reorder levels.
		
		Returns
		-------
		type of caller (new object)
	**/
	public function reorder_levels(order:Dynamic, ?axis:Dynamic):Dynamic;
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
		For DataFrame with multi-level index, return new DataFrame with
		labeling information in the columns under the index names, defaulting
		to 'level_0', 'level_1', etc. if any are None. For a standard index,
		the index name will be used (if set), otherwise a default 'index' or
		'level_0' (if 'index' is already taken) will be used.
		
		Parameters
		----------
		level : int, str, tuple, or list, default None
		    Only remove the given levels from the index. Removes all levels by
		    default
		drop : boolean, default False
		    Do not try to insert index into dataframe columns. This resets
		    the index to the default integer index.
		inplace : boolean, default False
		    Modify the DataFrame in place (do not create a new object)
		col_level : int or str, default 0
		    If the columns have multiple levels, determines which level the
		    labels are inserted into. By default it is inserted into the first
		    level.
		col_fill : object, default ''
		    If the columns have multiple levels, determines how the other
		    levels are named. If None then the index name is repeated.
		
		Returns
		-------
		resetted : DataFrame
	**/
	public function reset_index(?level:Dynamic, ?drop:Dynamic, ?inplace:Dynamic, ?col_level:Dynamic, ?col_fill:Dynamic):Dynamic;
	/**
		Integer division of dataframe and other, element-wise (binary operator `rfloordiv`).
		
		Equivalent to ``other // dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.floordiv
	**/
	public function rfloordiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Modulo of dataframe and other, element-wise (binary operator `rmod`).
		
		Equivalent to ``other % dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.mod
	**/
	public function rmod(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Multiplication of dataframe and other, element-wise (binary operator `rmul`).
		
		Equivalent to ``other * dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.mul
	**/
	public function rmul(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Round a DataFrame to a variable number of decimal places.
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		decimals : int, dict, Series
		    Number of decimal places to round each column to. If an int is
		    given, round each column to the same number of places.
		    Otherwise dict and Series round to variable numbers of places.
		    Column names should be in the keys if `decimals` is a
		    dict-like, or in the index if `decimals` is a Series. Any
		    columns not included in `decimals` will be left as is. Elements
		    of `decimals` which are not columns of the input will be
		    ignored.
		
		Examples
		--------
		>>> df = pd.DataFrame(np.random.random([3, 3]),
		...     columns=['A', 'B', 'C'], index=['first', 'second', 'third'])
		>>> df
		               A         B         C
		first   0.028208  0.992815  0.173891
		second  0.038683  0.645646  0.577595
		third   0.877076  0.149370  0.491027
		>>> df.round(2)
		           A     B     C
		first   0.03  0.99  0.17
		second  0.04  0.65  0.58
		third   0.88  0.15  0.49
		>>> df.round({'A': 1, 'C': 2})
		          A         B     C
		first   0.0  0.992815  0.17
		second  0.0  0.645646  0.58
		third   0.9  0.149370  0.49
		>>> decimals = pd.Series([1, 0, 2], index=['A', 'B', 'C'])
		>>> df.round(decimals)
		          A  B     C
		first   0.0  1  0.17
		second  0.0  1  0.58
		third   0.9  0  0.49
		
		Returns
		-------
		DataFrame object
	**/
	public function round(?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Exponential power of dataframe and other, element-wise (binary operator `rpow`).
		
		Equivalent to ``other ** dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.pow
	**/
	public function rpow(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Subtraction of dataframe and other, element-wise (binary operator `rsub`).
		
		Equivalent to ``other - dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.sub
	**/
	public function rsub(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Floating division of dataframe and other, element-wise (binary operator `rtruediv`).
		
		Equivalent to ``other / dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.truediv
	**/
	public function rtruediv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		Return a subset of a DataFrame including/excluding columns based on
		their ``dtype``.
		
		Parameters
		----------
		include, exclude : list-like
		    A list of dtypes or strings to be included/excluded. You must pass
		    in a non-empty sequence for at least one of these.
		
		Raises
		------
		ValueError
		    * If both of ``include`` and ``exclude`` are empty
		    * If ``include`` and ``exclude`` have overlapping elements
		    * If any kind of string dtype is passed in.
		TypeError
		    * If either of ``include`` or ``exclude`` is not a sequence
		
		Returns
		-------
		subset : DataFrame
		    The subset of the frame including the dtypes in ``include`` and
		    excluding the dtypes in ``exclude``.
		
		Notes
		-----
		* To select all *numeric* types use the numpy dtype ``numpy.number``
		* To select strings you must use the ``object`` dtype, but note that
		  this will return *all* object dtype columns
		* See the `numpy dtype hierarchy
		  <http://docs.scipy.org/doc/numpy/reference/arrays.scalars.html>`__
		* To select Pandas categorical dtypes, use 'category'
		
		Examples
		--------
		>>> df = pd.DataFrame({'a': np.random.randn(6).astype('f4'),
		...                    'b': [True, False] * 3,
		...                    'c': [1.0, 2.0] * 3})
		>>> df
		        a      b  c
		0  0.3962   True  1
		1  0.1459  False  2
		2  0.2623   True  1
		3  0.0764  False  2
		4 -0.9703   True  1
		5 -1.2094  False  2
		>>> df.select_dtypes(include=['float64'])
		   c
		0  1
		1  2
		2  1
		3  2
		4  1
		5  2
		>>> df.select_dtypes(exclude=['floating'])
		       b
		0   True
		1  False
		2   True
		3  False
		4   True
		5  False
	**/
	public function select_dtypes(?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Return unbiased standard error of the mean over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		sem : Series or DataFrame (if level specified)
	**/
	public function sem(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		public verson of axis assignment 
	**/
	public function set_axis(axis:Dynamic, labels:Dynamic):Dynamic;
	/**
		Set the DataFrame index (row labels) using one or more existing
		columns. By default yields a new object.
		
		Parameters
		----------
		keys : column label or list of column labels / arrays
		drop : boolean, default True
		    Delete columns to be used as the new index
		append : boolean, default False
		    Whether to append columns to existing index
		inplace : boolean, default False
		    Modify the DataFrame in place (do not create a new object)
		verify_integrity : boolean, default False
		    Check the new index for duplicates. Otherwise defer the check until
		    necessary. Setting to False will improve the performance of this
		    method
		
		Examples
		--------
		>>> indexed_df = df.set_index(['A', 'B'])
		>>> indexed_df2 = df.set_index(['A', [0, 1, 2, 0, 1, 2]])
		>>> indexed_df3 = df.set_index([[0, 1, 2, 0, 1, 2]])
		
		Returns
		-------
		dataframe : DataFrame
	**/
	public function set_index(keys:Dynamic, ?drop:Dynamic, ?append:Dynamic, ?inplace:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	/**
		Put single value at passed column and index
		
		Parameters
		----------
		index : row label
		col : column label
		value : scalar value
		takeable : interpret the index/col as indexers, default False
		
		Notes
		-----
		This method *always* returns a new object. It is currently not
		particularly efficient (and potentially very expensive) but is provided
		for API compatibility with DataFrame
		
		Returns
		-------
		frame : DataFrame
	**/
	public function set_value(index:Dynamic, col:Dynamic, value:Dynamic, ?takeable:Dynamic):Dynamic;
	/**
		Return a tuple representing the dimensionality of the DataFrame.
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
		axis : {0, 1, 'index', 'columns'}
		
		Notes
		-----
		If freq is specified then the index values are shifted but the data
		is not realigned. That is, use freq if you would like to extend the
		index when shifting and preserve the original data.
		
		Returns
		-------
		shifted : DataFrame
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		number of elements in the NDFrame
	**/
	static public var size : Dynamic;
	/**
		Return unbiased skew over requested axis
		Normalized by N-1
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		skew : Series or DataFrame (if level specified)
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
		DEPRECATED: use :meth:`DataFrame.sort_values`
		
		Sort DataFrame either by labels (along either axis) or by the values in
		column(s)
		
		Parameters
		----------
		columns : object
		    Column name(s) in frame. Accepts a column name or a list
		    for a nested sort. A tuple will be interpreted as the
		    levels of a multi-index.
		ascending : boolean or list, default True
		    Sort ascending vs. descending. Specify list for multiple sort
		    orders
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Sort index/rows versus columns
		inplace : boolean, default False
		    Sort the DataFrame without creating a new instance
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    This option is only applied when sorting on a single column or label.
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		
		Examples
		--------
		>>> result = df.sort(['A', 'B'], ascending=[1, 0])
		
		Returns
		-------
		sorted : DataFrame
	**/
	public function sort(?columns:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Sort object by labels (along an axis)
		
		Parameters
		----------
		axis : index, columns to direct sorting
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
		sorted_obj : DataFrame
	**/
	public function sort_index(?axis:Dynamic, ?level:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic, ?sort_remaining:Dynamic, ?by:Dynamic):Dynamic;
	/**
		Sort by the values along either axis
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		by : string name or list of names which refer to the axis items
		axis : index, columns to direct sorting
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
		sorted_obj : DataFrame
	**/
	public function sort_values(by:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Sort multilevel index by chosen axis and primary level. Data will be
		lexicographically sorted by the chosen level followed by the other
		levels (in order)
		
		Parameters
		----------
		level : int
		axis : {0 or 'index', 1 or 'columns'}, default 0
		ascending : boolean, default True
		inplace : boolean, default False
		    Sort the DataFrame without creating a new instance
		sort_remaining : boolean, default True
		    Sort by the other levels too.
		
		Returns
		-------
		sorted : DataFrame
		
		See Also
		--------
		DataFrame.sort_index(level=...)
	**/
	public function sortlevel(?level:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?sort_remaining:Dynamic):Dynamic;
	/**
		squeeze length 1 dimensions 
	**/
	public function squeeze():Dynamic;
	/**
		Pivot a level of the (possibly hierarchical) column labels, returning a
		DataFrame (or Series in the case of an object with a single level of
		column labels) having a hierarchical index with a new inner-most level
		of row labels.
		The level involved will automatically get sorted.
		
		Parameters
		----------
		level : int, string, or list of these, default last level
		    Level(s) to stack, can pass level name
		dropna : boolean, default True
		    Whether to drop rows in the resulting Frame/Series with no valid
		    values
		
		Examples
		----------
		>>> s
		     a   b
		one  1.  2.
		two  3.  4.
		
		>>> s.stack()
		one a    1
		    b    2
		two a    3
		    b    4
		
		Returns
		-------
		stacked : DataFrame or Series
	**/
	public function stack(?level:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Return unbiased standard deviation over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		std : Series or DataFrame (if level specified)
	**/
	public function std(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Subtraction of dataframe and other, element-wise (binary operator `sub`).
		
		Equivalent to ``dataframe - other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rsub
	**/
	public function sub(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Subtraction of dataframe and other, element-wise (binary operator `sub`).
		
		Equivalent to ``dataframe - other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rsub
	**/
	public function subtract(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return the sum of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		sum : Series or DataFrame (if level specified)
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
		Swap levels i and j in a MultiIndex on a particular axis
		
		Parameters
		----------
		i, j : int, string (can be mixed)
		    Level of index to be swapped. Can pass level name as string.
		
		Returns
		-------
		swapped : type of caller (new object)
	**/
	public function swaplevel(i:Dynamic, j:Dynamic, ?axis:Dynamic):Dynamic;
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
		Write DataFrame to a comma-separated values (csv) file
		
		Parameters
		----------
		path_or_buf : string or file handle, default None
		    File path or object, if None is provided the result is returned as
		    a string.
		sep : character, default ','
		    Field delimiter for the output file.
		na_rep : string, default ''
		    Missing data representation
		float_format : string, default None
		    Format string for floating point numbers
		columns : sequence, optional
		    Columns to write
		header : boolean or list of string, default True
		    Write out column names. If a list of string is given it is assumed
		    to be aliases for the column names
		index : boolean, default True
		    Write row names (index)
		index_label : string or sequence, or False, default None
		    Column label for index column(s) if desired. If None is given, and
		    `header` and `index` are True, then the index names are used. A
		    sequence should be given if the DataFrame uses MultiIndex.  If
		    False do not print fields for index names. Use index_label=False
		    for easier importing in R
		nanRep : None
		    deprecated, use na_rep
		mode : str
		    Python write mode, default 'w'
		encoding : string, optional
		    A string representing the encoding to use in the output file,
		    defaults to 'ascii' on Python 2 and 'utf-8' on Python 3.
		line_terminator : string, default '\n'
		    The newline character or character sequence to use in the output
		    file
		quoting : optional constant from csv module
		    defaults to csv.QUOTE_MINIMAL
		quotechar : string (length 1), default '"'
		    character used to quote fields
		doublequote : boolean, default True
		    Control quoting of `quotechar` inside a field
		escapechar : string (length 1), default None
		    character used to escape `sep` and `quotechar` when appropriate
		chunksize : int or None
		    rows to write at a time
		tupleize_cols : boolean, default False
		    write multi_index columns as a list of tuples (if True)
		    or new (expanded format) if False)
		date_format : string, default None
		    Format string for datetime objects
		decimal: string, default '.'
		    Character recognized as decimal separator. E.g. use ',' for European data
		
		    .. versionadded:: 0.16.0
	**/
	public function to_csv(?path_or_buf:Dynamic, ?sep:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?columns:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?quoting:Dynamic, ?quotechar:Dynamic, ?line_terminator:Dynamic, ?chunksize:Dynamic, ?tupleize_cols:Dynamic, ?date_format:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?decimal:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Convert to dense DataFrame
		
		Returns
		-------
		df : DataFrame
	**/
	public function to_dense():Dynamic;
	/**
		Convert DataFrame to dictionary.
		
		Parameters
		----------
		orient : str {'dict', 'list', 'series', 'split', 'records', 'index'}
		    Determines the type of the values of the dictionary.
		
		    - dict (default) : dict like {column -> {index -> value}}
		    - list : dict like {column -> [values]}
		    - series : dict like {column -> Series(values)}
		    - split : dict like
		      {index -> [index], columns -> [columns], data -> [values]}
		    - records : list like
		      [{column -> value}, ... , {column -> value}]
		    - index : dict like {index -> {column -> value}}
		
		      .. versionadded:: 0.17.0
		
		    Abbreviations are allowed. `s` indicates `series` and `sp`
		    indicates `split`.
		
		Returns
		-------
		result : dict like {column -> {index -> value}}
	**/
	public function to_dict(?orient:Dynamic):Dynamic;
	/**
		Write DataFrame to a excel sheet
		
		Parameters
		----------
		excel_writer : string or ExcelWriter object
		    File path or existing ExcelWriter
		sheet_name : string, default 'Sheet1'
		    Name of sheet which will contain DataFrame
		na_rep : string, default ''
		    Missing data representation
		float_format : string, default None
		    Format string for floating point numbers
		columns : sequence, optional
		    Columns to write
		header : boolean or list of string, default True
		    Write out column names. If a list of string is given it is
		    assumed to be aliases for the column names
		index : boolean, default True
		    Write row names (index)
		index_label : string or sequence, default None
		    Column label for index column(s) if desired. If None is given, and
		    `header` and `index` are True, then the index names are used. A
		    sequence should be given if the DataFrame uses MultiIndex.
		startrow :
		    upper left cell row to dump data frame
		startcol :
		    upper left cell column to dump data frame
		engine : string, default None
		    write engine to use - you can also set this via the options
		    ``io.excel.xlsx.writer``, ``io.excel.xls.writer``, and
		    ``io.excel.xlsm.writer``.
		merge_cells : boolean, default True
		    Write MultiIndex and Hierarchical Rows as merged cells.
		encoding: string, default None
		    encoding of the resulting excel file. Only necessary for xlwt,
		    other writers support unicode natively.
		inf_rep : string, default 'inf'
		    Representation for infinity (there is no native representation for
		    infinity in Excel)
		
		Notes
		-----
		If passing an existing ExcelWriter object, then the sheet will be added
		to the existing workbook.  This can be used to save different
		DataFrames to one workbook:
		
		>>> writer = ExcelWriter('output.xlsx')
		>>> df1.to_excel(writer,'Sheet1')
		>>> df2.to_excel(writer,'Sheet2')
		>>> writer.save()
		
		For compatibility with to_csv, to_excel serializes lists and dicts to
		strings before writing.
	**/
	public function to_excel(excel_writer:Dynamic, ?sheet_name:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?columns:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?startrow:Dynamic, ?startcol:Dynamic, ?engine:Dynamic, ?merge_cells:Dynamic, ?encoding:Dynamic, ?inf_rep:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Write a DataFrame to a Google BigQuery table.
		
		THIS IS AN EXPERIMENTAL LIBRARY
		
		Parameters
		----------
		dataframe : DataFrame
		    DataFrame to be written
		destination_table : string
		    Name of table to be written, in the form 'dataset.tablename'
		project_id : str
		    Google BigQuery Account project ID.
		chunksize : int (default 10000)
		    Number of rows to be inserted in each chunk from the dataframe.
		verbose : boolean (default True)
		    Show percentage complete
		reauth : boolean (default False)
		    Force Google BigQuery to reauthenticate the user. This is useful
		    if multiple accounts are used.
		if_exists : {'fail', 'replace', 'append'}, default 'fail'
		    'fail': If table exists, do nothing.
		    'replace': If table exists, drop it, recreate it, and insert data.
		    'append': If table exists, insert data. Create if does not exist.
		
		    .. versionadded:: 0.17.0
	**/
	public function to_gbq(destination_table:Dynamic, project_id:Dynamic, ?chunksize:Dynamic, ?verbose:Dynamic, ?reauth:Dynamic, ?if_exists:Dynamic):Dynamic;
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
		Render a DataFrame as an HTML table.
		
		`to_html`-specific options:
		
		bold_rows : boolean, default True
		    Make the row labels bold in the output
		classes : str or list or tuple, default None
		    CSS class(es) to apply to the resulting html table
		escape : boolean, default True
		    Convert the characters <, >, and & to HTML-safe sequences.=
		max_rows : int, optional
		    Maximum number of rows to show before truncating. If None, show
		    all.
		max_cols : int, optional
		    Maximum number of columns to show before truncating. If None, show
		    all.
		
		
		Parameters
		----------
		buf : StringIO-like, optional
		    buffer to write to
		columns : sequence, optional
		    the subset of columns to write; default None writes all columns
		col_space : int, optional
		    the minimum width of each column
		header : bool, optional
		    whether to print column labels, default True
		index : bool, optional
		    whether to print index (row) labels, default True
		na_rep : string, optional
		    string representation of NAN to use, default 'NaN'
		formatters : list or dict of one-parameter functions, optional
		    formatter functions to apply to columns' elements by position or name,
		    default None. The result of each function must be a unicode string.
		    List must be of length equal to the number of columns.
		float_format : one-parameter function, optional
		    formatter function to apply to columns' elements if they are floats,
		    default None. The result of this function must be a unicode string.
		sparsify : bool, optional
		    Set to False for a DataFrame with a hierarchical index to print every
		    multiindex key at each row, default True
		index_names : bool, optional
		    Prints the names of the indexes, default True
		justify : {'left', 'right'}, default None
		    Left or right-justify the column labels. If None uses the option from
		    the print configuration (controlled by set_option), 'right' out
		    of the box.
		
		Returns
		-------
		formatted : string (or unicode, depending on data and options)
	**/
	public function to_html(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?colSpace:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?justify:Dynamic, ?bold_rows:Dynamic, ?classes:Dynamic, ?escape:Dynamic, ?max_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic, ?notebook:Dynamic):Dynamic;
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
		Render a DataFrame to a tabular environment table. You can splice
		this into a LaTeX document. Requires \usepackage{booktabs}.
		
		`to_latex`-specific options:
		
		bold_rows : boolean, default True
		    Make the row labels bold in the output
		column_format : str, default None
		    The columns format as specified in `LaTeX table format
		    <https://en.wikibooks.org/wiki/LaTeX/Tables>`__ e.g 'rcl' for 3 columns
		longtable : boolean, default False
		    Use a longtable environment instead of tabular. Requires adding
		    a \usepackage{longtable} to your LaTeX preamble.
		escape : boolean, default True
		    When set to False prevents from escaping latex special
		    characters in column names.
		
		
		Parameters
		----------
		buf : StringIO-like, optional
		    buffer to write to
		columns : sequence, optional
		    the subset of columns to write; default None writes all columns
		col_space : int, optional
		    the minimum width of each column
		header : bool, optional
		    whether to print column labels, default True
		index : bool, optional
		    whether to print index (row) labels, default True
		na_rep : string, optional
		    string representation of NAN to use, default 'NaN'
		formatters : list or dict of one-parameter functions, optional
		    formatter functions to apply to columns' elements by position or name,
		    default None. The result of each function must be a unicode string.
		    List must be of length equal to the number of columns.
		float_format : one-parameter function, optional
		    formatter function to apply to columns' elements if they are floats,
		    default None. The result of this function must be a unicode string.
		sparsify : bool, optional
		    Set to False for a DataFrame with a hierarchical index to print every
		    multiindex key at each row, default True
		index_names : bool, optional
		    Prints the names of the indexes, default True
		
		Returns
		-------
		formatted : string (or unicode, depending on data and options)
	**/
	public function to_latex(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?colSpace:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?bold_rows:Dynamic, ?column_format:Dynamic, ?longtable:Dynamic, ?escape:Dynamic):Dynamic;
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
		Transform long (stacked) format (DataFrame) into wide (3D, Panel)
		format.
		
		Currently the index of the DataFrame must be a 2-level MultiIndex. This
		may be generalized later
		
		Returns
		-------
		panel : Panel
	**/
	public function to_panel():Dynamic;
	/**
		Convert DataFrame from DatetimeIndex to PeriodIndex with desired
		frequency (inferred from index if not passed)
		
		Parameters
		----------
		freq : string, default
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to convert (the index by default)
		copy : boolean, default True
		    If False then underlying input data is not copied
		
		Returns
		-------
		ts : TimeSeries with PeriodIndex
	**/
	public function to_period(?freq:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to input file path
		
		Parameters
		----------
		path : string
		    File path
	**/
	public function to_pickle(path:Dynamic):Dynamic;
	/**
		Convert DataFrame to record array. Index will be put in the
		'index' field of the record array if requested
		
		Parameters
		----------
		index : boolean, default True
		    Include index in resulting record array, stored in 'index' field
		convert_datetime64 : boolean, default True
		    Whether to convert the index to datetime.datetime if it is a
		    DatetimeIndex
		
		Returns
		-------
		y : recarray
	**/
	public function to_records(?index:Dynamic, ?convert_datetime64:Dynamic):Dynamic;
	/**
		Convert to SparseDataFrame
		
		Parameters
		----------
		fill_value : float, default NaN
		kind : {'block', 'integer'}
		
		Returns
		-------
		y : SparseDataFrame
	**/
	public function to_sparse(?fill_value:Dynamic, ?kind:Dynamic):Dynamic;
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
		A class for writing Stata binary dta files from array-like objects
		
		Parameters
		----------
		fname : file path or buffer
		    Where to save the dta file.
		convert_dates : dict
		    Dictionary mapping column of datetime types to the stata internal
		    format that you want to use for the dates. Options are
		    'tc', 'td', 'tm', 'tw', 'th', 'tq', 'ty'. Column can be either a
		    number or a name.
		encoding : str
		    Default is latin-1. Note that Stata does not support unicode.
		byteorder : str
		    Can be ">", "<", "little", or "big". The default is None which uses
		    `sys.byteorder`
		
		Examples
		--------
		>>> writer = StataWriter('./data_file.dta', data)
		>>> writer.write_file()
		
		Or with dates
		
		>>> writer = StataWriter('./date_data_file.dta', data, {2 : 'tw'})
		>>> writer.write_file()
	**/
	public function to_stata(fname:Dynamic, ?convert_dates:Dynamic, ?write_index:Dynamic, ?encoding:Dynamic, ?byteorder:Dynamic, ?time_stamp:Dynamic, ?data_label:Dynamic):Dynamic;
	/**
		Render a DataFrame to a console-friendly tabular output.
		
		Parameters
		----------
		buf : StringIO-like, optional
		    buffer to write to
		columns : sequence, optional
		    the subset of columns to write; default None writes all columns
		col_space : int, optional
		    the minimum width of each column
		header : bool, optional
		    whether to print column labels, default True
		index : bool, optional
		    whether to print index (row) labels, default True
		na_rep : string, optional
		    string representation of NAN to use, default 'NaN'
		formatters : list or dict of one-parameter functions, optional
		    formatter functions to apply to columns' elements by position or name,
		    default None. The result of each function must be a unicode string.
		    List must be of length equal to the number of columns.
		float_format : one-parameter function, optional
		    formatter function to apply to columns' elements if they are floats,
		    default None. The result of this function must be a unicode string.
		sparsify : bool, optional
		    Set to False for a DataFrame with a hierarchical index to print every
		    multiindex key at each row, default True
		index_names : bool, optional
		    Prints the names of the indexes, default True
		justify : {'left', 'right'}, default None
		    Left or right-justify the column labels. If None uses the option from
		    the print configuration (controlled by set_option), 'right' out
		    of the box.
		
		Returns
		-------
		formatted : string (or unicode, depending on data and options)
	**/
	public function to_string(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?justify:Dynamic, ?line_width:Dynamic, ?max_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic):Dynamic;
	/**
		Cast to DatetimeIndex of timestamps, at *beginning* of period
		
		Parameters
		----------
		freq : string, default frequency of PeriodIndex
		    Desired frequency
		how : {'s', 'e', 'start', 'end'}
		    Convention for converting period to timestamp; start of period
		    vs. end
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to convert (the index by default)
		copy : boolean, default True
		    If false then underlying input data is not copied
		
		Returns
		-------
		df : DataFrame with DatetimeIndex
	**/
	public function to_timestamp(?freq:Dynamic, ?how:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
	public function to_wide(kwargs:Dynamic):Dynamic;
	/**
		Returns a DataFrame with the rows/columns switched.
	**/
	public function transpose():Dynamic;
	/**
		Floating division of dataframe and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``dataframe / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame locations are
		    missing, the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		See also
		--------
		DataFrame.rtruediv
	**/
	public function truediv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		Pivot a level of the (necessarily hierarchical) index labels, returning
		a DataFrame having a new level of column labels whose inner-most level
		consists of the pivoted index labels. If the index is not a MultiIndex,
		the output will be a Series (the analogue of stack when the columns are
		not a MultiIndex).
		The level involved will automatically get sorted.
		
		Parameters
		----------
		level : int, string, or list of these, default -1 (last level)
		    Level(s) of index to unstack, can pass level name
		
		See also
		--------
		DataFrame.pivot : Pivot a table based on column values.
		DataFrame.stack : Pivot a level of the column labels (inverse operation
		    from `unstack`).
		
		Examples
		--------
		>>> index = pd.MultiIndex.from_tuples([('one', 'a'), ('one', 'b'),
		...                                    ('two', 'a'), ('two', 'b')])
		>>> s = pd.Series(np.arange(1.0, 5.0), index=index)
		>>> s
		one  a   1
		     b   2
		two  a   3
		     b   4
		dtype: float64
		
		>>> s.unstack(level=-1)
		     a   b
		one  1  2
		two  3  4
		
		>>> s.unstack(level=0)
		   one  two
		a  1   3
		b  2   4
		
		>>> df = s.unstack(level=0)
		>>> df.unstack()
		one  a  1.
		     b  3.
		two  a  2.
		     b  4.
		
		Returns
		-------
		unstacked : DataFrame or Series
	**/
	public function unstack(?level:Dynamic):Dynamic;
	/**
		Modify DataFrame in place using non-NA values from passed
		DataFrame. Aligns on indices
		
		Parameters
		----------
		other : DataFrame, or object coercible into a DataFrame
		join : {'left'}, default 'left'
		overwrite : boolean, default True
		    If True then overwrite values for common keys in the calling frame
		filter_func : callable(1d-array) -> 1d-array<boolean>, default None
		    Can choose to replace values other than NA. Return True for values
		    that should be updated
		raise_conflict : boolean
		    If True, will raise an error if the DataFrame and other both
		    contain data in the same place.
	**/
	public function update(other:Dynamic, ?join:Dynamic, ?overwrite:Dynamic, ?filter_func:Dynamic, ?raise_conflict:Dynamic):Dynamic;
	/**
		Numpy representation of NDFrame
		
		Notes
		-----
		The dtype will be a lower-common-denominator dtype (implicit
		upcasting); that is to say if the dtypes (even of numeric types)
		are mixed, the one that accommodates all will be chosen. Use this
		with care if you are not dealing with the blocks.
		
		e.g. If the dtypes are float16 and float32, dtype will be upcast to
		float32.  If dtypes are int32 and uint8, dtype will be upcase to
		int32.
	**/
	static public var values : Dynamic;
	/**
		Return unbiased variance over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		        If the axis is a MultiIndex (hierarchical), count along a
		        particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean data. If None, will attempt to use
		    everything, then use only numeric data
		
		Returns
		-------
		var : Series or DataFrame (if level specified)
	**/
	@:native("var")
	public function _var(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, kwargs:Dynamic):Dynamic;
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
		Returns a row (cross-section) from the SparseDataFrame as a Series
		object.
		
		Parameters
		----------
		key : some index contained in the index
		
		Returns
		-------
		xs : Series
	**/
	public function xs(key:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
}