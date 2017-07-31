/* This file is generated, do not edit! */
package pandas.core.frame;
@:pythonImport("pandas.core.frame", "DataFrame") extern class DataFrame {
	/**
		Transpose index and columns
	**/
	public var T : Dynamic;
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
	public function __add__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __and__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __copy__(?deep:Dynamic):Dynamic;
	public function __deepcopy__(?memo:Dynamic):Dynamic;
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
	public function __div__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	static public var __doc__ : Dynamic;
	/**
		Wrapper for comparison method __eq__
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	public function __floordiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function ___init__(?data:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?data:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __mod__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __mul__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Wrapper for comparison method __ne__
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __or__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __pow__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __radd__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rand__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rdiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rfloordiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rmod__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rmul__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __ror__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	public function __round__(?decimals:Dynamic):Dynamic;
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
	public function __rpow__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rsub__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rtruediv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __rxor__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		After regular attribute access, try setting the name
		This allows simpler access to columns for interactive use.
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	public function __sub__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	public function __truediv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Return a string representation for a particular DataFrame
		
		Invoked by unicode(df) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
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
	public function __xor__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
	static public var _agg_doc : Dynamic;
	/**
		provide an implementation for the aggregators
		
		Parameters
		----------
		arg : string, dict, function
		*args : args to pass on to the function
		**kwargs : kwargs to pass on to the function
		
		Returns
		-------
		tuple of result, how
		
		Notes
		-----
		how can be a string describe the required post-processing, or
		None if not required
	**/
	public function _aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _aggregate_multiple_funcs(arg:Dynamic, _level:Dynamic, _axis:Dynamic):Dynamic;
	public function _align_frame(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	public function _align_series(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	public function _apply_broadcast(func:Dynamic, axis:Dynamic):Dynamic;
	public function _apply_empty_result(func:Dynamic, axis:Dynamic, reduce:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public function _apply_raw(func:Dynamic, axis:Dynamic):Dynamic;
	public function _apply_standard(func:Dynamic, axis:Dynamic, ?ignore_failures:Dynamic, ?reduce:Dynamic):Dynamic;
	static public var _at : Dynamic;
	/**
		provide boxed values for a column 
	**/
	public function _box_col_values(values:Dynamic, items:Dynamic):Dynamic;
	public function _box_item_values(key:Dynamic, values:Dynamic):Dynamic;
	static public var _builtin_table : Dynamic;
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
	public function _clip_with_scalar(lower:Dynamic, upper:Dynamic):Dynamic;
	public function _combine_const(other:Dynamic, func:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	public function _combine_frame(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?level:Dynamic):Dynamic;
	public function _combine_match_columns(other:Dynamic, func:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _combine_match_index(other:Dynamic, func:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _combine_series(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	public function _combine_series_infer(other:Dynamic, func:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _compare_frame(other:Dynamic, func:Dynamic, str_rep:Dynamic):Dynamic;
	public function _compare_frame_evaluate(other:Dynamic, func:Dynamic, str_rep:Dynamic):Dynamic;
	/**
		Compute NDFrame with "consolidated" internals (data of each dtype
		grouped together in a single ndarray).
		
		Parameters
		----------
		inplace : boolean, default False
		    If False return new object, otherwise modify existing object
		
		Returns
		-------
		consolidated : type of caller
	**/
	public function _consolidate(?inplace:Dynamic):Dynamic;
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
		One-dimensional ndarray with axis labels (including time series).
		
		Labels need not be unique but must be a hashable type. The object
		supports both integer- and label-based indexing and provides a host of
		methods for performing operations involving the index. Statistical
		methods from ndarray have been overridden to automatically exclude
		missing data (currently represented as NaN).
		
		Operations between Series (+, -, /, *, **) align values based on their
		associated index values-- they need not be the same length. The result
		index will be the sorted union of the two indexes.
		
		Parameters
		----------
		data : array-like, dict, or scalar value
		    Contains data stored in Series
		index : array-like or Index (1d)
		    Values must be hashable and have the same length as `data`.
		    Non-unique index values are allowed. Will default to
		    RangeIndex(len(data)) if not provided. If both a dict and index
		    sequence are used, the index will override the keys found in the
		    dict.
		dtype : numpy.dtype or None
		    If None, dtype will be inferred
		copy : boolean, default False
		    Copy input data
	**/
	static public function _constructor_sliced(?data:Dynamic, ?index:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic):Dynamic;
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
		Create an indexer like _name in the class.
	**/
	static public function _create_indexer(name:Dynamic, indexer:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
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
	static public function _from_axes(data:Dynamic, axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		let's be explict about this 
	**/
	public function _get_agg_axis(axis_num:Dynamic):Dynamic;
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
	public function _getitem_array(key:Dynamic):Dynamic;
	/**
		return the actual column 
	**/
	public function _getitem_column(key:Dynamic):Dynamic;
	public function _getitem_frame(key:Dynamic):Dynamic;
	public function _getitem_multilevel(key:Dynamic):Dynamic;
	public function _getitem_slice(key:Dynamic):Dynamic;
	/**
		sub-classes to define
		return a sliced object
		
		Parameters
		----------
		key : string / list of selections
		ndim : 1,2
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	static public var _iat : Dynamic;
	/**
		Return the cached item, item represents a positional indexer.
	**/
	public function _iget_item_cache(item:Dynamic):Dynamic;
	static public var _iloc : Dynamic;
	public function _indexed_same(other:Dynamic):Dynamic;
	public var _info_axis : Dynamic;
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
	/**
		passed a manager and a axes dict 
	**/
	public function _init_mgr(mgr:Dynamic, ?axes:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	public function _init_ndarray(values:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	public function _is_builtin_func(arg:Dynamic):Dynamic;
	/**
		Return boolean indicating if self is cached or not.
	**/
	public var _is_cached : Dynamic;
	/**
		if we define an internal function for this argument, return it 
	**/
	public function _is_cython_func(arg:Dynamic):Dynamic;
	public var _is_datelike_mixed_type : Dynamic;
	public var _is_mixed_type : Dynamic;
	public var _is_numeric_mixed_type : Dynamic;
	/**
		Return boolean indicating if self is view of another array 
	**/
	public var _is_view : Dynamic;
	static public var _ix : Dynamic;
	/**
		i : int, slice, or sequence of integers
		axis : int
	**/
	public function _ixs(i:Dynamic, ?axis:Dynamic):Dynamic;
	public function _join_compat(other:Dynamic, ?on:Dynamic, ?how:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic, ?sort:Dynamic):Dynamic;
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
		internal compat with SelectionMixin 
	**/
	public var _obj_with_exclusions : Dynamic;
	/**
		Consolidate _data -- if the blocks have changed, then clear the
		cache
	**/
	public function _protect_consolidate(f:Dynamic):Dynamic;
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the reindex for all the axes.
	**/
	public function _reindex_axes(axes:Dynamic, level:Dynamic, limit:Dynamic, tolerance:Dynamic, method:Dynamic, fill_value:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_axis(new_index:Dynamic, fill_method:Dynamic, axis:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_columns(new_columns:Dynamic, method:Dynamic, copy:Dynamic, level:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	public function _reindex_index(new_index:Dynamic, method:Dynamic, copy:Dynamic, level:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		we are guaranteed non-Nones in the axes! 
	**/
	public function _reindex_multi(axes:Dynamic, copy:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		allow_dups indicates an internal call here 
	**/
	public function _reindex_with_indexers(reindexers:Dynamic, ?fill_value:Dynamic, ?copy:Dynamic, ?allow_dups:Dynamic):Dynamic;
	/**
		Not a real Jupyter special repr method, but we use the same
		naming convention.
	**/
	public function _repr_data_resource_():Dynamic;
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
		Returns a LaTeX representation for a particular object.
		Mainly for use with nbconvert (jupyter notebook conversion to pdf).
	**/
	public function _repr_latex_():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Reset the cacher.
	**/
	public function _reset_cacher():Dynamic;
	/**
		Ensures new columns (which go into the BlockManager as new blocks) are
		always copied and converted into an array.
		
		Parameters
		----------
		key : object
		value : scalar, Series, or array-like
		broadcast : bool, default True
		    If ``key`` matches multiple duplicate column names in the
		    DataFrame, this parameter indicates whether ``value`` should be
		    tiled so that the returned array contains a (duplicated) column for
		    each occurrence of the key. If False, ``value`` will not be tiled.
		
		Returns
		-------
		sanitized_column : numpy-array
	**/
	public function _sanitize_column(key:Dynamic, value:Dynamic, ?broadcast:Dynamic):Dynamic;
	/**
		internal compat with SelectionMixin 
	**/
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		return a name for myself; this would ideally be called
		the 'name' property, but we cannot conflict with the
		Series.name property which can be set
	**/
	public var _selection_name : Dynamic;
	public var _series : Dynamic;
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
		return a new object with the replacement attributes 
	**/
	public function _shallow_copy(?obj:Dynamic, ?obj_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct a slice of this container.
		
		kind parameter is maintained for compatibility with Series slicing.
	**/
	public function _slice(slobj:Dynamic, ?axis:Dynamic, ?kind:Dynamic):Dynamic;
	public var _stat_axis : Dynamic;
	static public var _stat_axis_name : Dynamic;
	static public var _stat_axis_number : Dynamic;
	/**
		if arg is a string, then try to operate on it:
		- try to find a function (or attribute) on ourselves
		- try to find a numpy function
		- raise
	**/
	public function _try_aggregate_string_function(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _typ : Dynamic;
	public function _unpickle_frame_compat(state:Dynamic):Dynamic;
	public function _unpickle_matrix_compat(state:Dynamic):Dynamic;
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
		Addition of dataframe and other, element-wise (binary operator `add`).
		
		Equivalent to ``dataframe + other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function add(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		Aggregate using callable, string, dict, or list of string/callables
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		func : callable, string, dictionary, or list of string/callables
		    Function to use for aggregating the data. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted Combinations are:
		
		    - string function name
		    - function
		    - list of functions
		    - dict of column names -> functions (or list of functions)
		
		Notes
		-----
		Numpy functions mean/median/prod/sum/std/var are special cased so the
		default behavior is applying the function along axis=0
		(e.g., np.mean(arr_2d, axis=0)) as opposed to
		mimicking the default Numpy behavior (e.g., np.mean(arr_2d)).
		
		agg is an alias for aggregate. Use it.
		
		Returns
		-------
		aggregated : DataFrame
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'],
		...                   index=pd.date_range('1/1/2000', periods=10))
		>>> df.iloc[3:7] = np.nan
		
		Aggregate these functions across all columns
		
		>>> df.agg(['sum', 'min'])
		            A         B         C
		sum -0.182253 -0.614014 -2.909534
		min -1.916563 -1.460076 -1.568297
		
		Different aggregations per column
		
		>>> df.agg({'A' : ['sum', 'min'], 'B' : ['min', 'max']})
		            A         B
		max       NaN  1.514318
		min -1.916563 -1.460076
		sum -0.182253       NaN
		
		See also
		--------
		pandas.DataFrame.apply
		pandas.DataFrame.transform
		pandas.DataFrame.groupby.aggregate
		pandas.DataFrame.resample.aggregate
		pandas.DataFrame.rolling.aggregate
	**/
	public function agg(func:Dynamic, ?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Aggregate using callable, string, dict, or list of string/callables
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		func : callable, string, dictionary, or list of string/callables
		    Function to use for aggregating the data. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted Combinations are:
		
		    - string function name
		    - function
		    - list of functions
		    - dict of column names -> functions (or list of functions)
		
		Notes
		-----
		Numpy functions mean/median/prod/sum/std/var are special cased so the
		default behavior is applying the function along axis=0
		(e.g., np.mean(arr_2d, axis=0)) as opposed to
		mimicking the default Numpy behavior (e.g., np.mean(arr_2d)).
		
		agg is an alias for aggregate. Use it.
		
		Returns
		-------
		aggregated : DataFrame
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'],
		...                   index=pd.date_range('1/1/2000', periods=10))
		>>> df.iloc[3:7] = np.nan
		
		Aggregate these functions across all columns
		
		>>> df.agg(['sum', 'min'])
		            A         B         C
		sum -0.182253 -0.614014 -2.909534
		min -1.916563 -1.460076 -1.568297
		
		Different aggregations per column
		
		>>> df.agg({'A' : ['sum', 'min'], 'B' : ['min', 'max']})
		            A         B
		max       NaN  1.514318
		min -1.916563 -1.460076
		sum -0.182253       NaN
		
		See also
		--------
		pandas.DataFrame.apply
		pandas.DataFrame.transform
		pandas.DataFrame.groupby.aggregate
		pandas.DataFrame.resample.aggregate
		pandas.DataFrame.rolling.aggregate
	**/
	public function aggregate(func:Dynamic, ?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
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
		fill_axis : {0 or 'index', 1 or 'columns'}, default 0
		    Filling axis, method and limit
		broadcast_axis : {0 or 'index', 1 or 'columns'}, default None
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
		    Include only boolean columns. If None, will attempt to use everything,
		    then use only boolean data. Not implemented for Series.
		
		Returns
		-------
		all : Series or DataFrame (if level specified)
	**/
	public function all(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Include only boolean columns. If None, will attempt to use everything,
		    then use only boolean data. Not implemented for Series.
		
		Returns
		-------
		any : Series or DataFrame (if level specified)
	**/
	public function any(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		If a list of dict/series is passed and the keys are all contained in
		the DataFrame's index, the order of the columns in the resulting
		DataFrame will be unchanged.
		
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
	public function append(other:Dynamic, ?ignore_index:Dynamic, ?verify_integrity:Dynamic):pandas.DataFrame;
	/**
		Applies function along input axis of DataFrame.
		
		Objects passed to functions are Series objects having index
		either the DataFrame's index (axis=0) or the columns (axis=1).
		Return type depends on whether passed function aggregates, or the
		reduce argument if the DataFrame is empty.
		
		Parameters
		----------
		func : function
		    Function to apply to each column/row
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    * 0 or 'index': apply function to each column
		    * 1 or 'columns': apply function to each row
		broadcast : boolean, default False
		    For aggregation functions, return object of same size with values
		    propagated
		raw : boolean, default False
		    If False, convert each row or column into a Series. If raw=True the
		    passed function will receive ndarray objects instead. If you are
		    just applying a NumPy reduction function this will achieve much
		    better performance
		reduce : boolean or None, default None
		    Try to apply reduction procedures. If the DataFrame is empty,
		    apply will use reduce to determine whether the result should be a
		    Series or a DataFrame. If reduce is None (the default), apply's
		    return value will be guessed by calling func an empty Series (note:
		    while guessing, exceptions raised by func will be ignored). If
		    reduce is True a Series will always be returned, and if False a
		    DataFrame will always be returned.
		args : tuple
		    Positional arguments to pass to function in addition to the
		    array/series
		Additional keyword arguments will be passed as keywords to the function
		
		Notes
		-----
		In the current implementation apply calls func twice on the
		first column/row to decide whether it can take a fast or slow
		code path. This can lead to unexpected behavior if func has
		side-effects, as they will take effect twice for the first
		column/row.
		
		Examples
		--------
		>>> df.apply(numpy.sqrt) # returns DataFrame
		>>> df.apply(numpy.sum, axis=0) # equiv to df.sum(0)
		>>> df.apply(numpy.sum, axis=1) # equiv to df.sum(1)
		
		See also
		--------
		DataFrame.applymap: For elementwise operations
		DataFrame.aggregate: only perform aggregating type operations
		DataFrame.transform: only perform transformating type operations
		
		Returns
		-------
		applied : Series or DataFrame
	**/
	public function apply(func:Dynamic, ?axis:Dynamic, ?broadcast:Dynamic, ?raw:Dynamic, ?reduce:Dynamic, ?args:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply a function to a DataFrame that is intended to operate
		elementwise, i.e. like doing map(func, series) for each series in the
		DataFrame
		
		Parameters
		----------
		func : function
		    Python function, returns a single value from a single value
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.random.randn(3, 3))
		>>> df
		    0         1          2
		0  -0.029638  1.081563   1.280300
		1   0.647747  0.831136  -1.549481
		2   0.513416 -0.884417   0.195343
		>>> df = df.applymap(lambda x: '%.2f' % x)
		>>> df
		    0         1          2
		0  -0.03      1.08       1.28
		1   0.65      0.83      -1.55
		2   0.51     -0.88       0.20
		
		Returns
		-------
		applied : DataFrame
		
		See also
		--------
		DataFrame.apply : For operations on rows/columns
	**/
	public function applymap(func:Dynamic):pandas.DataFrame;
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
		
		Returns the original data conformed to a new index with the specified
		frequency. ``resample`` is more appropriate if an operation, such as
		summarization, is necessary to represent the data at the new frequency.
		
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
		fill_value: scalar, optional
		    Value to use for missing values, applied during upsampling (note
		    this does not fill NaNs that already were present).
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		converted : type of caller
		
		Examples
		--------
		
		Start by creating a series with 4 one minute timestamps.
		
		>>> index = pd.date_range('1/1/2000', periods=4, freq='T')
		>>> series = pd.Series([0.0, None, 2.0, 3.0], index=index)
		>>> df = pd.DataFrame({'s':series})
		>>> df
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:01:00    NaN
		2000-01-01 00:02:00    2.0
		2000-01-01 00:03:00    3.0
		
		Upsample the series into 30 second bins.
		
		>>> df.asfreq(freq='30S')
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:00:30    NaN
		2000-01-01 00:01:00    NaN
		2000-01-01 00:01:30    NaN
		2000-01-01 00:02:00    2.0
		2000-01-01 00:02:30    NaN
		2000-01-01 00:03:00    3.0
		
		Upsample again, providing a ``fill value``.
		
		>>> df.asfreq(freq='30S', fill_value=9.0)
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:00:30    9.0
		2000-01-01 00:01:00    NaN
		2000-01-01 00:01:30    9.0
		2000-01-01 00:02:00    2.0
		2000-01-01 00:02:30    9.0
		2000-01-01 00:03:00    3.0
		
		Upsample again, providing a ``method``.
		
		>>> df.asfreq(freq='30S', method='bfill')
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:00:30    NaN
		2000-01-01 00:01:00    NaN
		2000-01-01 00:01:30    2.0
		2000-01-01 00:02:00    2.0
		2000-01-01 00:02:30    3.0
		2000-01-01 00:03:00    3.0
		
		See Also
		--------
		reindex
		
		Notes
		-----
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	public function asfreq(freq:Dynamic, ?method:Dynamic, ?how:Dynamic, ?normalize:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		The last row without any NaN is taken (or the last row without
		NaN considering only the subset of columns in the case of a DataFrame)
		
		.. versionadded:: 0.19.0 For DataFrame
		
		If there is no good value, NaN is returned for a Series
		a Series of NaN values for a DataFrame
		
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
		Assign new columns to a DataFrame, returning a new object
		(a copy) with all the original columns in addition to the new ones.
		
		.. versionadded:: 0.16.0
		
		Parameters
		----------
		kwargs : keyword, value pairs
		    keywords are the column names. If the values are
		    callable, they are computed on the DataFrame and
		    assigned to the new columns. The callable must not
		    change input DataFrame (though pandas doesn't check it).
		    If the values are not callable, (e.g. a Series, scalar, or array),
		    they are simply assigned.
		
		Returns
		-------
		df : DataFrame
		    A new DataFrame with the new columns in addition to
		    all the existing columns.
		
		Notes
		-----
		Since ``kwargs`` is a dictionary, the order of your
		arguments may not be preserved. To make things predicatable,
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
	public function assign(?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
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
		errors : {'raise', 'ignore'}, default 'raise'.
		    Control raising of exceptions on invalid data for provided dtype.
		
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		    .. versionadded:: 0.20.0
		
		raise_on_error : DEPRECATED use ``errors`` instead
		kwargs : keyword arguments to pass on to the constructor
		
		Returns
		-------
		casted : type of caller
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return a list with the row axis labels and column axis labels as the
		only members. They are returned in that order.
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
		Synonym for :meth:`DataFrame.fillna(method='bfill') <DataFrame.fillna>`
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
		return_type : {None, 'axes', 'dict', 'both'}, default None
		    The kind of object to return. The default is ``axes``
		    'axes' returns the matplotlib axes the boxplot is drawn on;
		    'dict' returns a dictionary  whose values are the matplotlib
		    Lines of the boxplot;
		    'both' returns a namedtuple with the axes and dict.
		
		    When grouping with ``by``, a Series mapping columns to ``return_type``
		    is returned, unless ``return_type`` is None, in which case a NumPy
		    array of axes is returned with the same shape as ``layout``.
		    See the prose documentation for more.
		
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
	public function boxplot(?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	public var columns : Dynamic;
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
	public function combine(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?overwrite:Dynamic):pandas.DataFrame;
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
	public function combine_first(other:Dynamic):pandas.DataFrame;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		compounded : Series or DataFrame (if level specified)
	**/
	public function compound(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
	/**
		DEPRECATED: consolidate will be an internal implementation only.
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
	public function corr(?method:Dynamic, ?min_periods:Dynamic):pandas.DataFrame;
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
	public function corrwith(other:Dynamic, ?axis:Dynamic, ?drop:Dynamic):pandas.Series;
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
	public function count(?axis:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic):Dynamic;
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
	public function cov(?min_periods:Dynamic):pandas.DataFrame;
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
		cummax : Series
		
		
		
		See also
		--------
		pandas.core.window.Expanding.max : Similar functionality
		    but ignores ``NaN`` values.
	**/
	public function cummax(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Return cumulative minimum over requested axis.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		cummin : Series
		
		
		
		See also
		--------
		pandas.core.window.Expanding.min : Similar functionality
		    but ignores ``NaN`` values.
	**/
	public function cummin(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Return cumulative product over requested axis.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		cumprod : Series
		
		
		
		See also
		--------
		pandas.core.window.Expanding.prod : Similar functionality
		    but ignores ``NaN`` values.
	**/
	public function cumprod(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Return cumulative sum over requested axis.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		cumsum : Series
		
		
		
		See also
		--------
		pandas.core.window.Expanding.sum : Similar functionality
		    but ignores ``NaN`` values.
	**/
	public function cumsum(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Generates descriptive statistics that summarize the central tendency,
		dispersion and shape of a dataset's distribution, excluding
		``NaN`` values.
		
		Analyzes both numeric and object series, as well
		as ``DataFrame`` column sets of mixed data types. The output
		will vary depending on what is provided. Refer to the notes
		below for more detail.
		
		Parameters
		----------
		percentiles : list-like of numbers, optional
		    The percentiles to include in the output. All should
		    fall between 0 and 1. The default is
		    ``[.25, .5, .75]``, which returns the 25th, 50th, and
		    75th percentiles.
		include : 'all', list-like of dtypes or None (default), optional
		    A white list of data types to include in the result. Ignored
		    for ``Series``. Here are the options:
		
		    - 'all' : All columns of the input will be included in the output.
		    - A list-like of dtypes : Limits the results to the
		      provided data types.
		      To limit the result to numeric types submit
		      ``numpy.number``. To limit it instead to categorical
		      objects submit the ``numpy.object`` data type. Strings
		      can also be used in the style of
		      ``select_dtypes`` (e.g. ``df.describe(include=['O'])``)
		    - None (default) : The result will include all numeric columns.
		exclude : list-like of dtypes or None (default), optional,
		    A black list of data types to omit from the result. Ignored
		    for ``Series``. Here are the options:
		
		    - A list-like of dtypes : Excludes the provided data types
		      from the result. To select numeric types submit
		      ``numpy.number``. To select categorical objects submit the data
		      type ``numpy.object``. Strings can also be used in the style of
		      ``select_dtypes`` (e.g. ``df.describe(include=['O'])``)
		    - None (default) : The result will exclude nothing.
		
		Returns
		-------
		summary:  Series/DataFrame of summary statistics
		
		Notes
		-----
		For numeric data, the result's index will include ``count``,
		``mean``, ``std``, ``min``, ``max`` as well as lower, ``50`` and
		upper percentiles. By default the lower percentile is ``25`` and the
		upper percentile is ``75``. The ``50`` percentile is the
		same as the median.
		
		For object data (e.g. strings or timestamps), the result's index
		will include ``count``, ``unique``, ``top``, and ``freq``. The ``top``
		is the most common value. The ``freq`` is the most common value's
		frequency. Timestamps also include the ``first`` and ``last`` items.
		
		If multiple object values have the highest count, then the
		``count`` and ``top`` results will be arbitrarily chosen from
		among those with the highest count.
		
		For mixed data types provided via a ``DataFrame``, the default is to
		return only an analysis of numeric columns. If ``include='all'``
		is provided as an option, the result will include a union of
		attributes of each type.
		
		The `include` and `exclude` parameters can be used to limit
		which columns in a ``DataFrame`` are analyzed for the output.
		The parameters are ignored when analyzing a ``Series``.
		
		Examples
		--------
		Describing a numeric ``Series``.
		
		>>> s = pd.Series([1, 2, 3])
		>>> s.describe()
		count    3.0
		mean     2.0
		std      1.0
		min      1.0
		25%      1.5
		50%      2.0
		75%      2.5
		max      3.0
		
		Describing a categorical ``Series``.
		
		>>> s = pd.Series(['a', 'a', 'b', 'c'])
		>>> s.describe()
		count     4
		unique    3
		top       a
		freq      2
		dtype: object
		
		Describing a timestamp ``Series``.
		
		>>> s = pd.Series([
		...   np.datetime64("2000-01-01"),
		...   np.datetime64("2010-01-01"),
		...   np.datetime64("2010-01-01")
		... ])
		>>> s.describe()
		count                       3
		unique                      2
		top       2010-01-01 00:00:00
		freq                        2
		first     2000-01-01 00:00:00
		last      2010-01-01 00:00:00
		dtype: object
		
		Describing a ``DataFrame``. By default only numeric fields
		are returned.
		
		>>> df = pd.DataFrame([[1, 'a'], [2, 'b'], [3, 'c']],
		...                   columns=['numeric', 'object'])
		>>> df.describe()
		       numeric
		count      3.0
		mean       2.0
		std        1.0
		min        1.0
		25%        1.5
		50%        2.0
		75%        2.5
		max        3.0
		
		Describing all columns of a ``DataFrame`` regardless of data type.
		
		>>> df.describe(include='all')
		        numeric object
		count       3.0      3
		unique      NaN      3
		top         NaN      b
		freq        NaN      1
		mean        2.0    NaN
		std         1.0    NaN
		min         1.0    NaN
		25%         1.5    NaN
		50%         2.0    NaN
		75%         2.5    NaN
		max         3.0    NaN
		
		Describing a column from a ``DataFrame`` by accessing it as
		an attribute.
		
		>>> df.numeric.describe()
		count    3.0
		mean     2.0
		std      1.0
		min      1.0
		25%      1.5
		50%      2.0
		75%      2.5
		max      3.0
		Name: numeric, dtype: float64
		
		Including only numeric columns in a ``DataFrame`` description.
		
		>>> df.describe(include=[np.number])
		       numeric
		count      3.0
		mean       2.0
		std        1.0
		min        1.0
		25%        1.5
		50%        2.0
		75%        2.5
		max        3.0
		
		Including only string columns in a ``DataFrame`` description.
		
		>>> df.describe(include=[np.object])
		       object
		count       3
		unique      3
		top         b
		freq        1
		
		Excluding numeric columns from a ``DataFrame`` description.
		
		>>> df.describe(exclude=[np.number])
		       object
		count       3
		unique      3
		top         b
		freq        1
		
		Excluding object columns from a ``DataFrame`` description.
		
		>>> df.describe(exclude=[np.object])
		       numeric
		count      3.0
		mean       2.0
		std        1.0
		min        1.0
		25%        1.5
		50%        2.0
		75%        2.5
		max        3.0
		
		See Also
		--------
		DataFrame.count
		DataFrame.max
		DataFrame.min
		DataFrame.mean
		DataFrame.std
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
	public function diff(?periods:Dynamic, ?axis:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function div(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function divide(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		inplace : boolean, default False
		    Whether to drop duplicates in place or to return a copy
		
		Returns
		-------
		deduplicated : DataFrame
	**/
	public function drop_duplicates(?subset:Dynamic, ?keep:Dynamic, ?inplace:Dynamic):pandas.DataFrame;
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
		inplace : boolean, default False
		    If True, do operation inplace and return None.
		
		Returns
		-------
		dropped : DataFrame
		
		Examples
		--------
		>>> df = pd.DataFrame([[np.nan, 2, np.nan, 0], [3, 4, np.nan, 1],
		...                    [np.nan, np.nan, np.nan, 5]],
		...                   columns=list('ABCD'))
		>>> df
		     A    B   C  D
		0  NaN  2.0 NaN  0
		1  3.0  4.0 NaN  1
		2  NaN  NaN NaN  5
		
		Drop the columns where all elements are nan:
		
		>>> df.dropna(axis=1, how='all')
		     A    B  D
		0  NaN  2.0  0
		1  3.0  4.0  1
		2  NaN  NaN  5
		
		Drop the columns where any of the elements is nan
		
		>>> df.dropna(axis=1, how='any')
		   D
		0  0
		1  1
		2  5
		
		Drop the rows where all of the elements are nan
		(there is no row to drop, so df stays the same):
		
		>>> df.dropna(axis=0, how='all')
		     A    B   C  D
		0  NaN  2.0 NaN  0
		1  3.0  4.0 NaN  1
		2  NaN  NaN NaN  5
		
		Keep only the rows with at least 2 non-na values:
		
		>>> df.dropna(thresh=2)
		     A    B   C  D
		0  NaN  2.0 NaN  0
		1  3.0  4.0 NaN  1
	**/
	public function dropna(?axis:Dynamic, ?how:Dynamic, ?thresh:Dynamic, ?subset:Dynamic, ?inplace:Dynamic):pandas.DataFrame;
	/**
		Return the dtypes in this object.
	**/
	public var dtypes : Dynamic;
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
		
		Returns
		-------
		duplicated : Series
	**/
	public function duplicated(?subset:Dynamic, ?keep:Dynamic):pandas.Series;
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
		Wrapper for flexible comparison methods eq
	**/
	public function eq(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Determines if two NDFrame objects contain the same elements. NaNs in
		the same location are considered equal.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Evaluate an expression in the context of the calling DataFrame
		instance.
		
		Parameters
		----------
		expr : string
		    The expression string to evaluate.
		inplace : bool
		    If the expression contains an assignment, whether to return a new
		    DataFrame or mutate the existing.
		
		    WARNING: inplace=None currently falls back to to True, but
		    in a future version, will default to False.  Use inplace=True
		    explicitly rather than relying on the default.
		
		    .. versionadded:: 0.18.0
		
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
		pandas.DataFrame.assign
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
	public function eval(expr:Dynamic, ?inplace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Provides exponential weighted functions
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None (DEPRECATED)
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account
		    for imbalance in relative weightings (viewing EWMA as a moving average)
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = DataFrame({'B': [0, 1, 2, np.nan, 4]})
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		>>> df.ewm(com=0.5).mean()
		          B
		0  0.000000
		1  0.750000
		2  1.615385
		3  1.615385
		4  3.670213
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		When adjust is True (default), weighted averages are calculated using
		weights (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		   weighted_average[0] = arg[0];
		   weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based
		on relative positions. For example, the weights of x and y used in
		calculating the final weighted average of [x, None, y] are 1-alpha and 1
		(if adjust is True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	public function ewm(?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?adjust:Dynamic, ?ignore_na:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Provides expanding transformations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None) (DEPRECATED)
		    Frequency to conform the data to before computing the statistic.
		    Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		axis : int or string, default 0
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = DataFrame({'B': [0, 1, 2, np.nan, 4]})
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		>>> df.expanding(2).sum()
		     B
		0  NaN
		1  1.0
		2  3.0
		3  3.0
		4  7.0
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	public function expanding(?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Synonym for :meth:`DataFrame.fillna(method='ffill') <DataFrame.fillna>`
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
		axis : {0 or 'index', 1 or 'columns'}
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
		    filled. Must be greater than 0 if not None.
		downcast : dict, default is None
		    a dict of item->dtype of what to downcast if possible,
		    or the string 'infer' which will try to downcast to an appropriate
		    equal type (e.g. float64 to int64 if possible)
		
		See Also
		--------
		reindex, asfreq
		
		Returns
		-------
		filled : DataFrame
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function floordiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Read CSV file (DISCOURAGED, please use :func:`pandas.read_csv`
		instead).
		
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
	static public function from_csv(path:Dynamic, ?header:Dynamic, ?sep:Dynamic, ?index_col:Dynamic, ?parse_dates:Dynamic, ?encoding:Dynamic, ?tupleize_cols:Dynamic, ?infer_datetime_format:Dynamic):pandas.DataFrame;
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
	static public function from_items(items:Dynamic, ?columns:Dynamic, ?orient:Dynamic):pandas.DataFrame;
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
		    Attempt to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets
		
		Returns
		-------
		df : DataFrame
	**/
	static public function from_records(data:Dynamic, ?index:Dynamic, ?exclude:Dynamic, ?columns:Dynamic, ?coerce_float:Dynamic, ?nrows:Dynamic):pandas.DataFrame;
	/**
		Return the ftypes (indication of sparse/dense and dtype)
		in this object.
	**/
	public var ftypes : Dynamic;
	/**
		Wrapper for flexible comparison methods ge
	**/
	public function ge(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
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
		to group, return result as series) or by a series of columns.
		
		Parameters
		----------
		by : mapping, function, str, or iterable
		    Used to determine the groups for the groupby.
		    If ``by`` is a function, it's called on each value of the object's
		    index. If a dict or Series is passed, the Series or dict VALUES
		    will be used to determine the groups (the Series' values are first
		    aligned; see ``.align()`` method). If an ndarray is passed, the
		    values are used as-is determine the groups. A str or list of strs
		    may be passed to group by the columns in ``self``
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
		layout : tuple, optional
		    Tuple of (rows, columns) for the layout of the histograms
		bins : integer, default 10
		    Number of histogram bins to be used
		kwds : other plotting keyword arguments
		    To be passed to hist function
	**/
	public function hist(?column:Dynamic, ?by:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?ax:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?bins:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fast integer location scalar accessor.
		
		Similarly to ``iloc``, ``iat`` provides **integer** based lookups.
		You can also set using these indexers.
	**/
	public var iat : Dynamic;
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
	public function idxmax(?axis:Dynamic, ?skipna:Dynamic):pandas.Series;
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
	public function idxmin(?axis:Dynamic, ?skipna:Dynamic):pandas.Series;
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
	public var index : Dynamic;
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
		memory_usage : boolean/string, default None
		    Specifies whether total memory usage of the DataFrame
		    elements (including index) should be displayed. None follows
		    the `display.memory_usage` setting. True or False overrides
		    the `display.memory_usage` setting. A value of 'deep' is equivalent
		    of True, with deep introspection. Memory usage is shown in
		    human-readable units (base-2 representation).
		null_counts : boolean, default None
		    Whether to show the non-null counts
		
		    - If None, then only show if the frame is smaller than
		      max_info_rows and max_info_columns.
		    - If True, always show counts.
		    - If False, never show counts.
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
		value : scalar, Series, or array-like
	**/
	public function insert(loc:Dynamic, column:Dynamic, value:Dynamic, ?allow_duplicates:Dynamic):Dynamic;
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
		    * 'krogh', 'piecewise_polynomial', 'spline', 'pchip' and 'akima'
		      are all wrappers around the scipy interpolation methods of
		      similar names. These use the actual numerical values of the
		      index. For more information on their behavior, see the
		      `scipy documentation
		      <http://docs.scipy.org/doc/scipy/reference/interpolate.html#univariate-interpolation>`__
		      and `tutorial documentation
		      <http://docs.scipy.org/doc/scipy/reference/tutorial/interpolate.html>`__
		    * 'from_derivatives' refers to BPoly.from_derivatives which
		      replaces 'piecewise_polynomial' interpolation method in
		      scipy 0.18
		
		    .. versionadded:: 0.18.1
		
		       Added support for the 'akima' method
		       Added interpolate method 'from_derivatives' which replaces
		       'piecewise_polynomial' in scipy 0.18; backwards-compatible with
		       scipy < 0.18
		
		axis : {0, 1}, default 0
		    * 0: fill column-by-column
		    * 1: fill row-by-row
		limit : int, default None.
		    Maximum number of consecutive NaNs to fill. Must be greater than 0.
		limit_direction : {'forward', 'backward', 'both'}, default 'forward'
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
		Return a boolean same-sized object indicating if the values are null.
		
		See Also
		--------
		notnull : boolean inverse of isnull
	**/
	public function isnull():Dynamic;
	/**
		Iterator over (column name, Series) pairs.
		
		See also
		--------
		iterrows : Iterate over DataFrame rows as (index, Series) pairs.
		itertuples : Iterate over DataFrame rows as namedtuples of the values.
	**/
	public function items():Dynamic;
	/**
		Iterator over (column name, Series) pairs.
		
		See also
		--------
		iterrows : Iterate over DataFrame rows as (index, Series) pairs.
		itertuples : Iterate over DataFrame rows as namedtuples of the values.
	**/
	public function iteritems():Dynamic;
	/**
		Iterate over DataFrame rows as (index, Series) pairs.
		
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
		   to use :meth:`itertuples` which returns namedtuples of the values
		   and which is generally faster than ``iterrows``.
		
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
		itertuples : Iterate over DataFrame rows as namedtuples of the values.
		iteritems : Iterate over (column name, Series) pairs.
	**/
	public function iterrows():python.NativeIterable<Dynamic>;
	/**
		Iterate over DataFrame rows as namedtuples, with index value as first
		element of the tuple.
		
		Parameters
		----------
		index : boolean, default True
		    If True, return the index as the first element of the tuple.
		name : string, default "Pandas"
		    The name of the returned namedtuples or None to return regular
		    tuples.
		
		Notes
		-----
		The column names will be renamed to positional names if they are
		invalid Python identifiers, repeated, or start with an underscore.
		With a large number of columns (>255), regular tuples are returned.
		
		See also
		--------
		iterrows : Iterate over DataFrame rows as (index, Series) pairs.
		iteritems : Iterate over (column name, Series) pairs.
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [0.1, 0.2]},
		                      index=['a', 'b'])
		>>> df
		   col1  col2
		a     1   0.1
		b     2   0.2
		>>> for row in df.itertuples():
		...     print(row)
		...
		Pandas(Index='a', col1=1, col2=0.10000000000000001)
		Pandas(Index='b', col1=2, col2=0.20000000000000001)
	**/
	public function itertuples(?index:Dynamic, ?name:Dynamic):Dynamic;
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
		    Column(s) in the caller to join on the index in other,
		    otherwise joins index-on-index. If multiples
		    columns given, the passed DataFrame must have a MultiIndex. Can
		    pass an array as the join key if not already contained in the
		    calling DataFrame. Like an Excel VLOOKUP operation
		how : {'left', 'right', 'outer', 'inner'}, default: 'left'
		    How to handle the operation of the two objects.
		
		    * left: use calling frame's index (or column if on is specified)
		    * right: use other frame's index
		    * outer: form union of calling frame's index (or column if on is
		      specified) with other frame's index, and sort it
		      lexicographically
		    * inner: form intersection of calling frame's index (or column if
		      on is specified) with other frame's index, preserving the order
		      of the calling's one
		lsuffix : string
		    Suffix to use from left frame's overlapping columns
		rsuffix : string
		    Suffix to use from right frame's overlapping columns
		sort : boolean, default False
		    Order result DataFrame lexicographically by the join key. If False,
		    the order of the join key depends on the join type (how keyword)
		
		Notes
		-----
		on, lsuffix, and rsuffix options are not supported when passing a list
		of DataFrame objects
		
		Examples
		--------
		>>> caller = pd.DataFrame({'key': ['K0', 'K1', 'K2', 'K3', 'K4', 'K5'],
		...                        'A': ['A0', 'A1', 'A2', 'A3', 'A4', 'A5']})
		
		>>> caller
		    A key
		0  A0  K0
		1  A1  K1
		2  A2  K2
		3  A3  K3
		4  A4  K4
		5  A5  K5
		
		>>> other = pd.DataFrame({'key': ['K0', 'K1', 'K2'],
		...                       'B': ['B0', 'B1', 'B2']})
		
		>>> other
		    B key
		0  B0  K0
		1  B1  K1
		2  B2  K2
		
		Join DataFrames using their indexes.
		
		>>> caller.join(other, lsuffix='_caller', rsuffix='_other')
		
		>>>     A key_caller    B key_other
		    0  A0         K0   B0        K0
		    1  A1         K1   B1        K1
		    2  A2         K2   B2        K2
		    3  A3         K3  NaN       NaN
		    4  A4         K4  NaN       NaN
		    5  A5         K5  NaN       NaN
		
		
		If we want to join using the key columns, we need to set key to be
		the index in both caller and other. The joined DataFrame will have
		key as its index.
		
		>>> caller.set_index('key').join(other.set_index('key'))
		
		>>>      A    B
		    key
		    K0   A0   B0
		    K1   A1   B1
		    K2   A2   B2
		    K3   A3  NaN
		    K4   A4  NaN
		    K5   A5  NaN
		
		Another option to join using the key columns is to use the on
		parameter. DataFrame.join always uses other's index but we can use any
		column in the caller. This method preserves the original caller's
		index in the result.
		
		>>> caller.join(other.set_index('key'), on='key')
		
		>>>     A key    B
		    0  A0  K0   B0
		    1  A1  K1   B1
		    2  A2  K2   B2
		    3  A3  K3  NaN
		    4  A4  K4  NaN
		    5  A5  K5  NaN
		
		
		See also
		--------
		DataFrame.merge : For column(s)-on-columns(s) operations
		
		Returns
		-------
		joined : DataFrame
	**/
	public function join(other:Dynamic, ?on:Dynamic, ?how:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic, ?sort:Dynamic):pandas.DataFrame;
	/**
		Get the 'info axis' (see Indexing for more)
		
		This is index for Series, columns for DataFrame and major_axis for
		Panel.
	**/
	public function keys():Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fisher's definition of
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		kurt : Series or DataFrame (if level specified)
	**/
	public function kurt(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fisher's definition of
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		kurt : Series or DataFrame (if level specified)
	**/
	public function kurtosis(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		- A ``callable`` function with one argument (the calling Series, DataFrame
		  or Panel) and that returns valid output for indexing (one of the above)
		
		``.loc`` will raise a ``KeyError`` when the items are not found.
		
		See more at :ref:`Selection by Label <indexing.label>`
	**/
	public var loc : Dynamic;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		mad : Series or DataFrame (if level specified)
	**/
	public function mad(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where cond is False and otherwise are from
		other.
		
		Parameters
		----------
		cond : boolean NDFrame, array-like, or callable
		    If cond is callable, it is computed on the NDFrame and
		    should return boolean NDFrame or array. The callable must
		    not change input NDFrame (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		        A callable can be used as cond.
		
		other : scalar, NDFrame, or callable
		    If other is callable, it is computed on the NDFrame and
		    should return scalar or NDFrame. The callable must not
		    change input NDFrame (though pandas doesn't check it).
		
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
		This method returns the maximum of the values in the object.
		            If you want the *index* of the maximum, use ``idxmax``. This is
		            the equivalent of the ``numpy.ndarray`` method ``argmax``.
		
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		max : Series or DataFrame (if level specified)
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		mean : Series or DataFrame (if level specified)
	**/
	public function mean(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		median : Series or DataFrame (if level specified)
	**/
	public function median(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		"Unpivots" a DataFrame from wide format to long format, optionally
		leaving identifier variables set.
		
		This function is useful to massage a DataFrame into a format where one
		or more columns are identifier variables (`id_vars`), while all other
		columns, considered measured variables (`value_vars`), are "unpivoted" to
		the row axis, leaving just two non-identifier columns, 'variable' and
		'value'.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		frame : DataFrame
		id_vars : tuple, list, or ndarray, optional
		    Column(s) to use as identifier variables.
		value_vars : tuple, list, or ndarray, optional
		    Column(s) to unpivot. If not specified, uses all columns that
		    are not set as `id_vars`.
		var_name : scalar
		    Name to use for the 'variable' column. If None it uses
		    ``frame.columns.name`` or 'variable'.
		value_name : scalar, default 'value'
		    Name to use for the 'value' column.
		col_level : int or string, optional
		    If columns are a MultiIndex then use this level to melt.
		
		See also
		--------
		melt
		pivot_table
		DataFrame.pivot
		
		Examples
		--------
		>>> import pandas as pd
		>>> df = pd.DataFrame({'A': {0: 'a', 1: 'b', 2: 'c'},
		...                    'B': {0: 1, 1: 3, 2: 5},
		...                    'C': {0: 2, 1: 4, 2: 6}})
		>>> df
		   A  B  C
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> df.melt(id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> df.melt(id_vars=['A'], value_vars=['B', 'C'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		3  a        C      2
		4  b        C      4
		5  c        C      6
		
		The names of 'variable' and 'value' columns can be customized:
		
		>>> df.melt(id_vars=['A'], value_vars=['B'],
		...         var_name='myVarname', value_name='myValname')
		   A myVarname  myValname
		0  a         B          1
		1  b         B          3
		2  c         B          5
		
		If you have multi-index columns:
		
		>>> df.columns = [list('ABC'), list('DEF')]
		>>> df
		   A  B  C
		   D  E  F
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> df.melt(col_level=0, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> df.melt(id_vars=[('A', 'D')], value_vars=[('B', 'E')])
		  (A, D) variable_0 variable_1  value
		0      a          B          E      1
		1      b          B          E      3
		2      c          B          E      5
	**/
	public function melt(?id_vars:Dynamic, ?value_vars:Dynamic, ?var_name:Dynamic, ?value_name:Dynamic, ?col_level:Dynamic):Dynamic;
	/**
		Memory usage of DataFrame columns.
		
		Parameters
		----------
		index : bool
		    Specifies whether to include memory usage of DataFrame's
		    index in returned Series. If `index=True` (default is False)
		    the first index of the Series is `Index`.
		deep : bool
		    Introspect the data deeply, interrogate
		    `object` dtypes for system-level memory consumption
		
		Returns
		-------
		sizes : Series
		    A series with column names as index and memory usage of
		    columns with units of bytes.
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array if deep=False
		
		See Also
		--------
		numpy.ndarray.nbytes
	**/
	public function memory_usage(?index:Dynamic, ?deep:Dynamic):pandas.Series;
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
		    * left: use only keys from left frame, similar to a SQL left outer join;
		      preserve key order
		    * right: use only keys from right frame, similar to a SQL right outer join;
		      preserve key order
		    * outer: use union of keys from both frames, similar to a SQL full outer
		      join; sort keys lexicographically
		    * inner: use intersection of keys from both frames, similar to a SQL inner
		      join; preserve the order of the left keys
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
		    Sort the join keys lexicographically in the result DataFrame. If False,
		    the order of the join keys depends on the join type (how keyword)
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
		
		>>> A.merge(B, left_on='lkey', right_on='rkey', how='outer')
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
		
		See also
		--------
		merge_ordered
		merge_asof
	**/
	public function merge(right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic):pandas.DataFrame;
	/**
		This method returns the minimum of the values in the object.
		            If you want the *index* of the minimum, use ``idxmin``. This is
		            the equivalent of the ``numpy.ndarray`` method ``argmin``.
		
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		min : Series or DataFrame (if level specified)
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function mod(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Gets the mode(s) of each element along the axis selected. Adds a row
		for each mode per label, fills in gaps with nan.
		
		Note that there could be multiple values returned for the selected
		axis (when more than one item share the maximum frequency), which is
		the reason why a dataframe is returned. If you want to impute missing
		values with the mode in a dataframe ``df``, you can just do this:
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function mul(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function multiply(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Number of axes / array dimensions
	**/
	public var ndim : Dynamic;
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
		not null.
		
		See Also
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
		Return Series with number of distinct observations over requested
		axis.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		dropna : boolean, default True
		    Don't include NaN in the counts.
		
		Returns
		-------
		nunique : Series
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 2, 3], 'B': [1, 1, 1]})
		>>> df.nunique()
		A    3
		B    1
		
		>>> df.nunique(axis=1)
		0    1
		1    2
		2    2
	**/
	public function nunique(?axis:Dynamic, ?dropna:Dynamic):pandas.Series;
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
		Reshape data (produce a "pivot" table) based on column values. Uses
		unique values from index / columns to form axes of the resulting
		DataFrame.
		
		Parameters
		----------
		index : string or object, optional
		    Column name to use to make new frame's index. If None, uses
		    existing index.
		columns : string or object
		    Column name to use to make new frame's columns
		values : string or object, optional
		    Column name to use for populating new frame's values. If not
		    specified, all remaining columns will be used and the result will
		    have hierarchically indexed columns
		
		Returns
		-------
		pivoted : DataFrame
		
		See also
		--------
		DataFrame.pivot_table : generalization of pivot that can handle
		    duplicate values for one index/column pair
		DataFrame.unstack : pivot based on the index values instead of a
		    column
		
		Notes
		-----
		For finer-tuned control, see hierarchical indexing documentation along
		with the related stack/unstack methods
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'foo': ['one','one','one','two','two','two'],
		                       'bar': ['A', 'B', 'C', 'A', 'B', 'C'],
		                       'baz': [1, 2, 3, 4, 5, 6]})
		>>> df
		    foo   bar  baz
		0   one   A    1
		1   one   B    2
		2   one   C    3
		3   two   A    4
		4   two   B    5
		5   two   C    6
		
		>>> df.pivot(index='foo', columns='bar', values='baz')
		     A   B   C
		one  1   2   3
		two  4   5   6
		
		>>> df.pivot(index='foo', columns='bar')['baz']
		     A   B   C
		one  1   2   3
		two  4   5   6
	**/
	public function pivot(?index:Dynamic, ?columns:Dynamic, ?values:Dynamic):pandas.DataFrame;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in the
		pivot table will be stored in MultiIndex objects (hierarchical indexes) on
		the index and columns of the result DataFrame
		
		Parameters
		----------
		data : DataFrame
		values : column to aggregate, optional
		index : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The list
		    can contain any of the other types (except list).
		    Keys to group by on the pivot table index.  If an array is passed, it
		    is being used as the same manner as column values.
		columns : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The list
		    can contain any of the other types (except list).
		    Keys to group by on the pivot table column.  If an array is passed, it
		    is being used as the same manner as column values.
		aggfunc : function or list of functions, default numpy.mean
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names (inferred
		    from the function objects themselves)
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
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
		
		See also
		--------
		DataFrame.pivot : pivot without aggregation that can handle
		    non-numeric data
	**/
	public function pivot_table(?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?margins_name:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function pow(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		prod : Series or DataFrame (if level specified)
	**/
	public function prod(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		prod : Series or DataFrame (if level specified)
	**/
	public function product(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return values at the given quantile over requested axis, a la
		numpy.percentile.
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		    0 <= q <= 1, the quantile(s) to compute
		axis : {0, 1, 'index', 'columns'} (default 0)
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    .. versionadded:: 0.18.0
		
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		
		    * linear: `i + (j - i) * fraction`, where `fraction` is the
		      fractional part of the index surrounded by `i` and `j`.
		    * lower: `i`.
		    * higher: `j`.
		    * nearest: `i` or `j` whichever is nearest.
		    * midpoint: (`i` + `j`) / 2.
		
		Returns
		-------
		quantiles : Series or DataFrame
		
		    - If ``q`` is an array, a DataFrame will be returned where the
		      index is ``q``, the columns are the columns of self, and the
		      values are the quantiles.
		    - If ``q`` is a float, a Series will be returned where the
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
	public function quantile(?q:Dynamic, ?axis:Dynamic, ?numeric_only:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Query the columns of a frame with a boolean expression.
		
		.. versionadded:: 0.13
		
		Parameters
		----------
		expr : string
		    The query string to evaluate.  You can refer to variables
		    in the environment by prefixing them with an '@' character like
		    ``@a + b``.
		inplace : bool
		    Whether the query should modify the data in place or return
		    a modified copy
		
		    .. versionadded:: 0.18.0
		
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
	public function query(expr:Dynamic, ?inplace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function radd(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Compute numerical data ranks (1 through n) along axis. Equal values are
		assigned a rank that is the average of the ranks of those values
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
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
		Floating division of dataframe and other, element-wise (binary operator `rtruediv`).
		
		Equivalent to ``other / dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function rdiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		Safari               404.0           0.07
		Iceweasel              NaN            NaN
		Comodo Dragon          NaN            NaN
		IE10                 404.0           0.08
		Chrome               200.0           0.02
		
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
		reindexed : DataFrame
	**/
	public function reindex(?index:Dynamic, ?columns:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
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
		axis : {0 or 'index', 1 or 'columns'}
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
		reindexed : DataFrame
	**/
	public function reindex_axis(labels:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		index, columns : scalar, list-like, dict-like or function, optional
		    Scalar or list-like will alter the ``Series.name`` attribute,
		    and raise on DataFrame or Panel.
		    dict-like or functions are transformations to apply to
		    that axis' values
		copy : boolean, default True
		    Also copy underlying data
		inplace : boolean, default False
		    Whether to return a new DataFrame. If True then value of copy is
		    ignored.
		level : int or level name, default None
		    In case of a MultiIndex, only rename labels in the specified
		    level.
		
		Returns
		-------
		renamed : DataFrame (new object)
		
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
		Traceback (most recent call last):
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
	public function rename(?index:Dynamic, ?columns:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alter index and / or columns using input function or functions.
		A scalar or list-like for ``mapper`` will alter the ``Index.name``
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
		
		Notes
		-----
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
		2000-01-01 00:00:00   0.0
		2000-01-01 00:00:30   NaN
		2000-01-01 00:01:00   1.0
		2000-01-01 00:01:30   NaN
		2000-01-01 00:02:00   2.0
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
		
		For DataFrame objects, the keyword ``on`` can be used to specify the
		column instead of the index for resampling.
		
		>>> df = pd.DataFrame(data=9*[range(4)], columns=['a', 'b', 'c', 'd'])
		>>> df['time'] = pd.date_range('1/1/2000', periods=9, freq='T')
		>>> df.resample('3T', on='time').sum()
		                     a  b  c  d
		time
		2000-01-01 00:00:00  0  3  6  9
		2000-01-01 00:03:00  0  3  6  9
		2000-01-01 00:06:00  0  3  6  9
		
		For a DataFrame with MultiIndex, the keyword ``level`` can be used to
		specify on level the resampling needs to take place.
		
		>>> time = pd.date_range('1/1/2000', periods=5, freq='T')
		>>> df2 = pd.DataFrame(data=10*[range(4)],
		                       columns=['a', 'b', 'c', 'd'],
		                       index=pd.MultiIndex.from_product([time, [1, 2]])
		                       )
		>>> df2.resample('3T', level=0).sum()
		                     a  b   c   d
		2000-01-01 00:00:00  0  6  12  18
		2000-01-01 00:03:00  0  4   8  12
	**/
	public function resample(rule:Dynamic, ?how:Dynamic, ?axis:Dynamic, ?fill_method:Dynamic, ?closed:Dynamic, ?label:Dynamic, ?convention:Dynamic, ?kind:Dynamic, ?loffset:Dynamic, ?limit:Dynamic, ?base:Dynamic, ?on:Dynamic, ?level:Dynamic):Dynamic;
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
	public function reset_index(?level:Dynamic, ?drop:Dynamic, ?inplace:Dynamic, ?col_level:Dynamic, ?col_fill:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function rfloordiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function rmod(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function rmul(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Provides rolling window calculcations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		window : int, or offset
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic. Each window will be a fixed size.
		
		    If its an offset then this will be the time period of each window. Each
		    window will be a variable sized based on the observations included in
		    the time-period. This is only valid for datetimelike indexes. This is
		    new in 0.19.0
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA). For a window that is specified by an offset,
		    this will default to 1.
		freq : string or DateOffset object, optional (default None) (DEPRECATED)
		    Frequency to conform the data to before computing the statistic.
		    Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		win_type : string, default None
		    Provide a window type. See the notes below.
		on : string, optional
		    For a DataFrame, column on which to calculate
		    the rolling window, rather than the index
		closed : string, default None
		    Make the interval closed on the 'right', 'left', 'both' or
		    'neither' endpoints.
		    For offset-based windows, it defaults to 'right'.
		    For fixed windows, defaults to 'both'. Remaining cases not implemented
		    for fixed windows.
		
		    .. versionadded:: 0.20.0
		
		axis : int or string, default 0
		
		Returns
		-------
		a Window or Rolling sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'B': [0, 1, 2, np.nan, 4]})
		>>> df
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		Rolling sum with a window length of 2, using the 'triang'
		window type.
		
		>>> df.rolling(2, win_type='triang').sum()
		     B
		0  NaN
		1  1.0
		2  2.5
		3  NaN
		4  NaN
		
		Rolling sum with a window length of 2, min_periods defaults
		to the window length.
		
		>>> df.rolling(2).sum()
		     B
		0  NaN
		1  1.0
		2  3.0
		3  NaN
		4  NaN
		
		Same as above, but explicity set the min_periods
		
		>>> df.rolling(2, min_periods=1).sum()
		     B
		0  0.0
		1  1.0
		2  3.0
		3  2.0
		4  4.0
		
		A ragged (meaning not-a-regular frequency), time-indexed DataFrame
		
		>>> df = pd.DataFrame({'B': [0, 1, 2, np.nan, 4]},
		....:                 index = [pd.Timestamp('20130101 09:00:00'),
		....:                          pd.Timestamp('20130101 09:00:02'),
		....:                          pd.Timestamp('20130101 09:00:03'),
		....:                          pd.Timestamp('20130101 09:00:05'),
		....:                          pd.Timestamp('20130101 09:00:06')])
		
		>>> df
		                       B
		2013-01-01 09:00:00  0.0
		2013-01-01 09:00:02  1.0
		2013-01-01 09:00:03  2.0
		2013-01-01 09:00:05  NaN
		2013-01-01 09:00:06  4.0
		
		
		Contrasting to an integer rolling window, this will roll a variable
		length window corresponding to the time period.
		The default for min_periods is 1.
		
		>>> df.rolling('2s').sum()
		                       B
		2013-01-01 09:00:00  0.0
		2013-01-01 09:00:02  1.0
		2013-01-01 09:00:03  3.0
		2013-01-01 09:00:05  NaN
		2013-01-01 09:00:06  4.0
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		To learn more about the offsets & frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		The recognized win_types are:
		
		* ``boxcar``
		* ``triang``
		* ``blackman``
		* ``hamming``
		* ``bartlett``
		* ``parzen``
		* ``bohman``
		* ``blackmanharris``
		* ``nuttall``
		* ``barthann``
		* ``kaiser`` (needs beta)
		* ``gaussian`` (needs std)
		* ``general_gaussian`` (needs power, width)
		* ``slepian`` (needs width).
	**/
	public function rolling(window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?on:Dynamic, ?axis:Dynamic, ?closed:Dynamic):Dynamic;
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
		
		See Also
		--------
		numpy.around
		Series.round
	**/
	public function round(?decimals:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function rpow(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function rsub(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function rtruediv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		* To select datetimes, use np.datetime64, 'datetime' or 'datetime64'
		* To select timedeltas, use np.timedelta64, 'timedelta' or
		  'timedelta64'
		* To select Pandas categorical dtypes, use 'category'
		* To select Pandas datetimetz dtypes, use 'datetimetz' (new in 0.20.0),
		  or a 'datetime64[ns, tz]' string
		
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
	public function select_dtypes(?include:Dynamic, ?exclude:Dynamic):pandas.DataFrame;
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
		ddof : int, default 1
		    degrees of freedom
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		sem : Series or DataFrame (if level specified)
	**/
	public function sem(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function set_index(keys:Dynamic, ?drop:Dynamic, ?append:Dynamic, ?inplace:Dynamic, ?verify_integrity:Dynamic):pandas.DataFrame;
	/**
		Put single value at passed column and index
		
		Parameters
		----------
		index : row label
		col : column label
		value : scalar value
		takeable : interpret the index/col as indexers, default False
		
		Returns
		-------
		frame : DataFrame
		    If label pair is contained, will be reference to calling DataFrame,
		    otherwise a new object
	**/
	public function set_value(index:Dynamic, col:Dynamic, value:Dynamic, ?takeable:Dynamic):pandas.DataFrame;
	/**
		Return a tuple representing the dimensionality of the DataFrame.
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
		axis : {0 or 'index', 1 or 'columns'}
		
		Notes
		-----
		If freq is specified then the index values are shifted but the data
		is not realigned. That is, use freq if you would like to extend the
		index when shifting and preserve the original data.
		
		Returns
		-------
		shifted : DataFrame
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):pandas.DataFrame;
	/**
		number of elements in the NDFrame
	**/
	public var size : Dynamic;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		skew : Series or DataFrame (if level specified)
	**/
	public function skew(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		axis : index, columns to direct sorting
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
		     `first` puts NaNs at the beginning, `last` puts NaNs at the end.
		     Not implemented for MultiIndex.
		sort_remaining : bool, default True
		    if true and sorting by level and index is multilevel, sort by other
		    levels too (in order) after sorting by specified level
		
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
		by : str or list of str
		    Name or list of names which refer to the axis items.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Axis to direct sorting
		ascending : bool or list of bool, default True
		     Sort ascending vs. descending. Specify list for multiple sort
		     orders.  If this is a list of bools, must match the length of
		     the by.
		inplace : bool, default False
		     if True, perform operation in-place
		kind : {'quicksort', 'mergesort', 'heapsort'}, default 'quicksort'
		     Choice of sorting algorithm. See also ndarray.np.sort for more
		     information.  `mergesort` is the only stable algorithm. For
		     DataFrames, this option is only applied when sorting on a single
		     column or label.
		na_position : {'first', 'last'}, default 'last'
		     `first` puts NaNs at the beginning, `last` puts NaNs at the end
		
		Returns
		-------
		sorted_obj : DataFrame
	**/
	public function sort_values(by:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		DEPRECATED: use :meth:`DataFrame.sort_index`
		
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
	public function sortlevel(?level:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?sort_remaining:Dynamic):pandas.DataFrame;
	/**
		Squeeze length 1 dimensions.
		
		Parameters
		----------
		axis : None, integer or string axis name, optional
		    The axis to squeeze if 1-sized.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		scalar if 1-sized, else original object
	**/
	public function squeeze(?axis:Dynamic):Dynamic;
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
		Return sample standard deviation over requested axis.
		
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
		ddof : int, default 1
		    degrees of freedom
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		std : Series or DataFrame (if level specified)
	**/
	public function std(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Property returning a Styler object containing methods for
		building a styled HTML representation fo the DataFrame.
		
		See Also
		--------
		pandas.io.formats.style.Styler
	**/
	public var style : Dynamic;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function sub(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function subtract(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		sum : Series or DataFrame (if level specified)
	**/
	public function sum(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		mode : str
		    Python write mode, default 'w'
		encoding : string, optional
		    A string representing the encoding to use in the output file,
		    defaults to 'ascii' on Python 2 and 'utf-8' on Python 3.
		compression : string, optional
		    a string representing the compression to use in the output file,
		    allowed values are 'gzip', 'bz2', 'xz',
		    only used when the first argument is a filename
		line_terminator : string, default ``'\n'``
		    The newline character or character sequence to use in the output
		    file
		quoting : optional constant from csv module
		    defaults to csv.QUOTE_MINIMAL. If you have set a `float_format`
		    then floats are converted to strings and thus csv.QUOTE_NONNUMERIC
		    will treat them as non-numeric
		quotechar : string (length 1), default '\"'
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
		    Character recognized as decimal separator. E.g. use ',' for
		    European data
		
		    .. versionadded:: 0.16.0
	**/
	public function to_csv(?path_or_buf:Dynamic, ?sep:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?columns:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?quoting:Dynamic, ?quotechar:Dynamic, ?line_terminator:Dynamic, ?chunksize:Dynamic, ?tupleize_cols:Dynamic, ?date_format:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?decimal:Dynamic):Dynamic;
	/**
		Return dense representation of NDFrame (as opposed to sparse)
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
		Write DataFrame to an excel sheet
		
		
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
		freeze_panes : tuple of integer (length 2), default None
		    Specifies the one-based bottommost row and rightmost column that
		    is to be frozen
		
		    .. versionadded:: 0.20.0
		
		Notes
		-----
		If passing an existing ExcelWriter object, then the sheet will be added
		to the existing workbook.  This can be used to save different
		DataFrames to one workbook:
		
		>>> writer = pd.ExcelWriter('output.xlsx')
		>>> df1.to_excel(writer,'Sheet1')
		>>> df2.to_excel(writer,'Sheet2')
		>>> writer.save()
		
		For compatibility with to_csv, to_excel serializes lists and dicts to
		strings before writing.
	**/
	public function to_excel(excel_writer:Dynamic, ?sheet_name:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?columns:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?startrow:Dynamic, ?startcol:Dynamic, ?engine:Dynamic, ?merge_cells:Dynamic, ?encoding:Dynamic, ?inf_rep:Dynamic, ?verbose:Dynamic, ?freeze_panes:Dynamic):Dynamic;
	/**
		write out the binary feather-format for DataFrames
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		fname : str
		    string file path
	**/
	public function to_feather(fname:Dynamic):Dynamic;
	/**
		Write a DataFrame to a Google BigQuery table.
		
		The main method a user calls to export pandas DataFrame contents to
		Google BigQuery table.
		
		Google BigQuery API Client Library v2 for Python is used.
		Documentation is available `here
		<https://developers.google.com/api-client-library/python/apis/bigquery/v2>`__
		
		Authentication to the Google BigQuery service is via OAuth 2.0.
		
		- If "private_key" is not provided:
		
		  By default "application default credentials" are used.
		
		  If default application credentials are not found or are restrictive,
		  user account credentials are used. In this case, you will be asked to
		  grant permissions for product name 'pandas GBQ'.
		
		- If "private_key" is provided:
		
		  Service account credentials will be used to authenticate.
		
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
		private_key : str (optional)
		    Service account private key in JSON format. Can be file path
		    or string contents. This is useful for remote server
		    authentication (eg. jupyter iPython notebook on remote host)
	**/
	public function to_gbq(destination_table:Dynamic, project_id:Dynamic, ?chunksize:Dynamic, ?verbose:Dynamic, ?reauth:Dynamic, ?if_exists:Dynamic, ?private_key:Dynamic):Dynamic;
	/**
		Write the contained data to an HDF5 file using HDFStore.
		
		Parameters
		----------
		path_or_buf : the path (string) or HDFStore object
		key : string
		    identifier for the group in the store
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
		complevel : int, 0-9, default 0
		    Specifies a compression level for data.
		    A value of 0 disables compression.
		complib : {'zlib', 'lzo', 'bzip2', 'blosc', None}, default None
		    Specifies the compression library to be used.
		    As of v0.20.2 these additional compressors for Blosc are supported
		    (default if no compressor specified: 'blosc:blosclz'):
		    {'blosc:blosclz', 'blosc:lz4', 'blosc:lz4hc', 'blosc:snappy',
		     'blosc:zlib', 'blosc:zstd'}.
		    Specifying a compression library which is not available issues
		    a ValueError.
		fletcher32 : bool, default False
		    If applying compression use the fletcher32 checksum
		dropna : boolean, default False.
		    If true, ALL nan rows will not be written to store.
	**/
	public function to_hdf(path_or_buf:Dynamic, key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		decimal : string, default '.'
		    Character recognized as decimal separator, e.g. ',' in Europe
		
		    .. versionadded:: 0.18.0
		border : int
		    A ``border=border`` attribute is included in the opening
		    `<table>` tag. Default ``pd.options.html.border``.
		
		    .. versionadded:: 0.19.0
		
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
		line_width : int, optional
		    Width to wrap a line in characters, default no wrap
		justify : {'left', 'right'}, default None
		    Left or right-justify the column labels. If None uses the option from
		    the print configuration (controlled by set_option), 'right' out
		    of the box.
		
		Returns
		-------
		formatted : string (or unicode, depending on data and options)
	**/
	public function to_html(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?justify:Dynamic, ?bold_rows:Dynamic, ?classes:Dynamic, ?escape:Dynamic, ?max_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic, ?notebook:Dynamic, ?decimal:Dynamic, ?border:Dynamic):Dynamic;
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
		      - table : dict like {'schema': {schema}, 'data': {data}}
		        describing the data, and the data component is
		        like ``orient='records'``.
		
		        .. versionchanged:: 0.20.0
		
		date_format : {None, 'epoch', 'iso'}
		    Type of date conversion. `epoch` = epoch milliseconds,
		    `iso` = ISO8601. The default depends on the `orient`. For
		    `orient='table'`, the default is `'iso'`. For all other orients,
		    the default is `'epoch'`.
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
		lines : boolean, default False
		    If 'orient' is 'records' write out line delimited json format. Will
		    throw ValueError if incorrect 'orient' since others are not list
		    like.
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		same type as input object with filtered info axis
		
		See Also
		--------
		pd.read_json
		
		Examples
		--------
		
		>>> df = pd.DataFrame([['a', 'b'], ['c', 'd']],
		...                   index=['row 1', 'row 2'],
		...                   columns=['col 1', 'col 2'])
		>>> df.to_json(orient='split')
		'{"columns":["col 1","col 2"],
		  "index":["row 1","row 2"],
		  "data":[["a","b"],["c","d"]]}'
		
		Encoding/decoding a Dataframe using ``'index'`` formatted JSON:
		
		>>> df.to_json(orient='index')
		'{"row 1":{"col 1":"a","col 2":"b"},"row 2":{"col 1":"c","col 2":"d"}}'
		
		Encoding/decoding a Dataframe using ``'records'`` formatted JSON.
		Note that index labels are not preserved with this encoding.
		
		>>> df.to_json(orient='records')
		'[{"col 1":"a","col 2":"b"},{"col 1":"c","col 2":"d"}]'
		
		Encoding with Table Schema
		
		>>> df.to_json(orient='table')
		'{"schema": {"fields": [{"name": "index", "type": "string"},
		                        {"name": "col 1", "type": "string"},
		                        {"name": "col 2", "type": "string"}],
		             "primaryKey": "index",
		             "pandas_version": "0.20.0"},
		  "data": [{"index": "row 1", "col 1": "a", "col 2": "b"},
		           {"index": "row 2", "col 1": "c", "col 2": "d"}]}'
	**/
	public function to_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?date_format:Dynamic, ?double_precision:Dynamic, ?force_ascii:Dynamic, ?date_unit:Dynamic, ?default_handler:Dynamic, ?lines:Dynamic):Dynamic;
	/**
		Render an object to a tabular environment table. You can splice
		this into a LaTeX document. Requires \usepackage{booktabs}.
		
		.. versionchanged:: 0.20.2
		   Added to Series
		
		`to_latex`-specific options:
		
		bold_rows : boolean, default False
		    Make the row labels bold in the output
		column_format : str, default None
		    The columns format as specified in `LaTeX table format
		    <https://en.wikibooks.org/wiki/LaTeX/Tables>`__ e.g 'rcl' for 3
		    columns
		longtable : boolean, default will be read from the pandas config module
		    Default: False.
		    Use a longtable environment instead of tabular. Requires adding
		    a \usepackage{longtable} to your LaTeX preamble.
		escape : boolean, default will be read from the pandas config module
		    Default: True.
		    When set to False prevents from escaping latex special
		    characters in column names.
		encoding : str, default None
		    A string representing the encoding to use in the output file,
		    defaults to 'ascii' on Python 2 and 'utf-8' on Python 3.
		decimal : string, default '.'
		    Character recognized as decimal separator, e.g. ',' in Europe.
		
		    .. versionadded:: 0.18.0
		
		multicolumn : boolean, default True
		    Use \multicolumn to enhance MultiIndex columns.
		    The default will be read from the config module.
		
		    .. versionadded:: 0.20.0
		
		multicolumn_format : str, default 'l'
		    The alignment for multicolumns, similar to `column_format`
		    The default will be read from the config module.
		
		    .. versionadded:: 0.20.0
		
		multirow : boolean, default False
		    Use \multirow to enhance MultiIndex rows.
		    Requires adding a \usepackage{multirow} to your LaTeX preamble.
		    Will print centered labels (instead of top-aligned)
		    across the contained rows, separating groups via clines.
		    The default will be read from the pandas config module.
		
		    .. versionadded:: 0.20.0
	**/
	public function to_latex(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?bold_rows:Dynamic, ?column_format:Dynamic, ?longtable:Dynamic, ?escape:Dynamic, ?encoding:Dynamic, ?decimal:Dynamic, ?multicolumn:Dynamic, ?multicolumn_format:Dynamic, ?multirow:Dynamic):Dynamic;
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
		Transform long (stacked) format (DataFrame) into wide (3D, Panel)
		format.
		
		Currently the index of the DataFrame must be a 2-level MultiIndex. This
		may be generalized later
		
		Returns
		-------
		panel : Panel
	**/
	public function to_panel():pandas.Panel;
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
		Pickle (serialize) object to input file path.
		
		Parameters
		----------
		path : string
		    File path
		compression : {'infer', 'gzip', 'bz2', 'xz', None}, default 'infer'
		    a string representing the compression to use in the output file
		
		    .. versionadded:: 0.20.0
	**/
	public function to_pickle(path:Dynamic, ?compression:Dynamic):Dynamic;
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
	public function to_sparse(?fill_value:Dynamic, ?kind:Dynamic):pandas.SparseDataFrame;
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
		A class for writing Stata binary dta files from array-like objects
		
		Parameters
		----------
		fname : str or buffer
		    String path of file-like object
		convert_dates : dict
		    Dictionary mapping columns containing datetime types to stata
		    internal format to use when wirting the dates. Options are 'tc',
		    'td', 'tm', 'tw', 'th', 'tq', 'ty'. Column can be either an integer
		    or a name. Datetime columns that do not have a conversion type
		    specified will be converted to 'tc'. Raises NotImplementedError if
		    a datetime column has timezone information
		write_index : bool
		    Write the index to Stata dataset.
		encoding : str
		    Default is latin-1. Unicode is not supported
		byteorder : str
		    Can be ">", "<", "little", or "big". default is `sys.byteorder`
		time_stamp : datetime
		    A datetime to use as file creation date.  Default is the current
		    time.
		dataset_label : str
		    A label for the data set.  Must be 80 characters or smaller.
		variable_labels : dict
		    Dictionary containing columns as keys and variable labels as
		    values. Each label must be 80 characters or smaller.
		
		    .. versionadded:: 0.19.0
		
		Raises
		------
		NotImplementedError
		    * If datetimes contain timezone information
		    * Column dtype is not representable in Stata
		ValueError
		    * Columns listed in convert_dates are noth either datetime64[ns]
		      or datetime.datetime
		    * Column listed in convert_dates is not in DataFrame
		    * Categorical label contains more than 32,000 characters
		
		    .. versionadded:: 0.19.0
		
		Examples
		--------
		>>> writer = StataWriter('./data_file.dta', data)
		>>> writer.write_file()
		
		Or with dates
		
		>>> writer = StataWriter('./date_data_file.dta', data, {2 : 'tw'})
		>>> writer.write_file()
	**/
	public function to_stata(fname:Dynamic, ?convert_dates:Dynamic, ?write_index:Dynamic, ?encoding:Dynamic, ?byteorder:Dynamic, ?time_stamp:Dynamic, ?data_label:Dynamic, ?variable_labels:Dynamic):Dynamic;
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
		    Write out column names. If a list of string is given, it is assumed to be aliases for the column names
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
		line_width : int, optional
		    Width to wrap a line in characters, default no wrap
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
		Call function producing a like-indexed NDFrame
		and return a NDFrame with the transformed values`
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		func : callable, string, dictionary, or list of string/callables
		    To apply to column
		
		    Accepted Combinations are:
		
		    - string function name
		    - function
		    - list of functions
		    - dict of column names -> functions (or list of functions)
		
		Returns
		-------
		transformed : NDFrame
		
		Examples
		--------
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'],
		...                   index=pd.date_range('1/1/2000', periods=10))
		df.iloc[3:7] = np.nan
		
		>>> df.transform(lambda x: (x - x.mean()) / x.std())
		                   A         B         C
		2000-01-01  0.579457  1.236184  0.123424
		2000-01-02  0.370357 -0.605875 -1.231325
		2000-01-03  1.455756 -0.277446  0.288967
		2000-01-04       NaN       NaN       NaN
		2000-01-05       NaN       NaN       NaN
		2000-01-06       NaN       NaN       NaN
		2000-01-07       NaN       NaN       NaN
		2000-01-08 -0.498658  1.274522  1.642524
		2000-01-09 -0.540524 -1.012676 -0.828968
		2000-01-10 -1.366388 -0.614710  0.005378
		
		See also
		--------
		pandas.NDFrame.aggregate
		pandas.NDFrame.apply
	**/
	public function transform(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.core.frame.NDFrame;
	/**
		Transpose index and columns
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Fill missing (NaN) values with this value. If both DataFrame
		    locations are missing, the result will be missing
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
	public function truediv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
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
		fill_value : replace NaN with this value if the unstack produces
		    missing values
		
		    .. versionadded: 0.18.0
		
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
		one  a   1.0
		     b   2.0
		two  a   3.0
		     b   4.0
		dtype: float64
		
		>>> s.unstack(level=-1)
		     a   b
		one  1.0  2.0
		two  3.0  4.0
		
		>>> s.unstack(level=0)
		   one  two
		a  1.0   3.0
		b  2.0   4.0
		
		>>> df = s.unstack(level=0)
		>>> df.unstack()
		one  a  1.0
		     b  2.0
		two  a  3.0
		     b  4.0
		dtype: float64
		
		Returns
		-------
		unstacked : DataFrame or Series
	**/
	public function unstack(?level:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		float32.  If dtypes are int32 and uint8, dtype will be upcast to
		int32. By numpy.find_common_type convention, mixing int64 and uint64
		will result in a flot64 dtype.
	**/
	public var values : Dynamic;
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
		ddof : int, default 1
		    degrees of freedom
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		var : Series or DataFrame (if level specified)
	**/
	@:native("var")
	public function _var(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where cond is True and otherwise are from
		other.
		
		Parameters
		----------
		cond : boolean NDFrame, array-like, or callable
		    If cond is callable, it is computed on the NDFrame and
		    should return boolean NDFrame or array. The callable must
		    not change input NDFrame (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		        A callable can be used as cond.
		
		other : scalar, NDFrame, or callable
		    If other is callable, it is computed on the NDFrame and
		    should return scalar or NDFrame. The callable must not
		    change input NDFrame (though pandas doesn't check it).
		
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