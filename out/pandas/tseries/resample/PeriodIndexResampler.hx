/* This file is generated, do not edit! */
package pandas.tseries.resample;
@:pythonImport("pandas.tseries.resample", "PeriodIndexResampler") extern class PeriodIndexResampler {
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __array__():Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __getattr__(attr:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(obj:Dynamic, groupby:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, groupby:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	public function __inv__():Dynamic;
	/**
		Groupby iterator
		
		Returns
		-------
		Generator yielding sequence of (name, subsetted object)
		for each group
	**/
	public function __iter__():Dynamic;
	public function __le__(other:Dynamic):Dynamic;
	public function __len__():Dynamic;
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pos__():Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
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
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(attr:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(attr:Dynamic, value:Dynamic):Dynamic;
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
		provide a nice str repr of our rolling object 
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
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
	public function _aggregate_multiple_funcs(arg:Dynamic, _level:Dynamic):Dynamic;
	public function _apply_filter(indices:Dynamic, dropna:Dynamic):Dynamic;
	static public var _apply_whitelist : Dynamic;
	/**
		make sure that we are creating our binner & grouper 
	**/
	public function _assure_grouper():Dynamic;
	static public var _attributes : Dynamic;
	static public var _builtin_table : Dynamic;
	public function _concat_objects(keys:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		provide any conversions for the object in order to correctly handle
		
		Parameters
		----------
		obj : the object to be resampled
	**/
	public function _convert_obj(obj:Dynamic):Dynamic;
	/**
		arr is where cumcount gets its values from
		
		Note
		----
		this is currently implementing sort=False
		(though the default is sort=True) for groupby in general
	**/
	public function _cumcount_array(?arr:Dynamic, ?ascending:Dynamic):Dynamic;
	public function _cython_agg_general(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	public function _cython_transform(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	public function _deprecated():Dynamic;
	static public var _deprecated_invalids : Dynamic;
	static public var _deprecated_valids : Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Downsample the cython defined function
		
		Parameters
		----------
		how : string / cython mapped function
		**kwargs : kw args passed to how function
	**/
	public function _downsample(how:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		create the BinGrouper, assume that self.set_grouper(obj)
		has already been called
	**/
	public function _get_binner():Dynamic;
	public function _get_binner_for_time():Dynamic;
	/**
		safe get index, translate keys for datelike to underlying repr 
	**/
	public function _get_index(name:Dynamic):Dynamic;
	/**
		safe get multiple indices, translate keys for
		datelike to underlying repr
	**/
	public function _get_indices(names:Dynamic):Dynamic;
	/**
		return our new index 
	**/
	public function _get_new_index():Dynamic;
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
	static public var _group_selection : Dynamic;
	/**
		revaluate the obj with a groupby aggregation 
	**/
	public function _groupby_and_aggregate(grouper:Dynamic, how:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Take boolean mask of index to be returned from apply, if as_index=True
	**/
	public function _index_with_as_index(b:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	public function _is_builtin_func(arg:Dynamic):Dynamic;
	/**
		if we define an internal function for this argument, return it 
	**/
	public function _is_cython_func(arg:Dynamic):Dynamic;
	public function _iterate_slices():Dynamic;
	public function _make_deprecated_binop():Dynamic;
	public function _make_deprecated_unary():Dynamic;
	public function _make_wrapper(name:Dynamic):Dynamic;
	static public var _obj_with_exclusions : Dynamic;
	public function _python_agg_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _python_apply_general(f:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	static public var _see_also_template : Dynamic;
	static public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		setup our binners
		cache these as we are an immutable object
	**/
	public function _set_binner():Dynamic;
	public function _set_result_index_ordered(result:Dynamic):Dynamic;
	/**
		we may need create a selection if we have non-level groupers 
	**/
	public function _set_selection_from_grouper():Dynamic;
	/**
		try to cast the result to our obj original type,
		we may have roundtripped thru object in the mean-time
	**/
	public function _try_cast(result:Dynamic, obj:Dynamic):Dynamic;
	/**
		masquerade for compat as a Series or a DataFrame 
	**/
	public var _typ : Dynamic;
	/**
		method : string {'backfill', 'bfill', 'pad', 'ffill'}
		    method for upsampling
		limit : int, default None
		    Maximum size gap to fill when reindexing
		
		See also
		--------
		.fillna
	**/
	public function _upsample(method:Dynamic, ?limit:Dynamic):Dynamic;
	public function _wrap_applied_output(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		potentially wrap any results 
	**/
	public function _wrap_result(result:Dynamic):Dynamic;
	/**
		Apply aggregation function or functions to resampled groups, yielding
		most likely Series but in some cases DataFrame depending on the output
		of the aggregation function
		
		Parameters
		----------
		func_or_funcs : function or list / dict of functions
		    List/dict of functions will produce DataFrame with column names
		    determined by the function names themselves (list) or the keys in
		    the dict
		
		Notes
		-----
		agg is an alias for aggregate. Use it.
		
		Examples
		--------
		>>> s = Series([1,2,3,4,5],
		                index=pd.date_range('20130101',
		                                    periods=5,freq='s'))
		2013-01-01 00:00:00    1
		2013-01-01 00:00:01    2
		2013-01-01 00:00:02    3
		2013-01-01 00:00:03    4
		2013-01-01 00:00:04    5
		Freq: S, dtype: int64
		
		>>> r = s.resample('2s')
		DatetimeIndexResampler [freq=<2 * Seconds>, axis=0, closed=left,
		                        label=left, convention=start, base=0]
		
		>>> r.agg(np.sum)
		2013-01-01 00:00:00    3
		2013-01-01 00:00:02    7
		2013-01-01 00:00:04    5
		Freq: 2S, dtype: int64
		
		>>> r.agg(['sum','mean','max'])
		                     sum  mean  max
		2013-01-01 00:00:00    3   1.5    2
		2013-01-01 00:00:02    7   3.5    4
		2013-01-01 00:00:04    5   5.0    5
		
		>>> r.agg({'result' : lambda x: x.mean() / x.std(),
		           'total' : np.sum})
		                     total    result
		2013-01-01 00:00:00      3  2.121320
		2013-01-01 00:00:02      7  4.949747
		2013-01-01 00:00:04      5       NaN
		
		See also
		--------
		transform
		
		Returns
		-------
		Series or DataFrame
	**/
	public function agg(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply aggregation function or functions to resampled groups, yielding
		most likely Series but in some cases DataFrame depending on the output
		of the aggregation function
		
		Parameters
		----------
		func_or_funcs : function or list / dict of functions
		    List/dict of functions will produce DataFrame with column names
		    determined by the function names themselves (list) or the keys in
		    the dict
		
		Notes
		-----
		agg is an alias for aggregate. Use it.
		
		Examples
		--------
		>>> s = Series([1,2,3,4,5],
		                index=pd.date_range('20130101',
		                                    periods=5,freq='s'))
		2013-01-01 00:00:00    1
		2013-01-01 00:00:01    2
		2013-01-01 00:00:02    3
		2013-01-01 00:00:03    4
		2013-01-01 00:00:04    5
		Freq: S, dtype: int64
		
		>>> r = s.resample('2s')
		DatetimeIndexResampler [freq=<2 * Seconds>, axis=0, closed=left,
		                        label=left, convention=start, base=0]
		
		>>> r.agg(np.sum)
		2013-01-01 00:00:00    3
		2013-01-01 00:00:02    7
		2013-01-01 00:00:04    5
		Freq: 2S, dtype: int64
		
		>>> r.agg(['sum','mean','max'])
		                     sum  mean  max
		2013-01-01 00:00:00    3   1.5    2
		2013-01-01 00:00:02    7   3.5    4
		2013-01-01 00:00:04    5   5.0    5
		
		>>> r.agg({'result' : lambda x: x.mean() / x.std(),
		           'total' : np.sum})
		                     total    result
		2013-01-01 00:00:00      3  2.121320
		2013-01-01 00:00:02      7  4.949747
		2013-01-01 00:00:04      5       NaN
		
		See also
		--------
		transform
		
		Returns
		-------
		Series or DataFrame
	**/
	public function aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply aggregation function or functions to resampled groups, yielding
		most likely Series but in some cases DataFrame depending on the output
		of the aggregation function
		
		Parameters
		----------
		func_or_funcs : function or list / dict of functions
		    List/dict of functions will produce DataFrame with column names
		    determined by the function names themselves (list) or the keys in
		    the dict
		
		Notes
		-----
		agg is an alias for aggregate. Use it.
		
		Examples
		--------
		>>> s = Series([1,2,3,4,5],
		                index=pd.date_range('20130101',
		                                    periods=5,freq='s'))
		2013-01-01 00:00:00    1
		2013-01-01 00:00:01    2
		2013-01-01 00:00:02    3
		2013-01-01 00:00:03    4
		2013-01-01 00:00:04    5
		Freq: S, dtype: int64
		
		>>> r = s.resample('2s')
		DatetimeIndexResampler [freq=<2 * Seconds>, axis=0, closed=left,
		                        label=left, convention=start, base=0]
		
		>>> r.agg(np.sum)
		2013-01-01 00:00:00    3
		2013-01-01 00:00:02    7
		2013-01-01 00:00:04    5
		Freq: 2S, dtype: int64
		
		>>> r.agg(['sum','mean','max'])
		                     sum  mean  max
		2013-01-01 00:00:00    3   1.5    2
		2013-01-01 00:00:02    7   3.5    4
		2013-01-01 00:00:04    5   5.0    5
		
		>>> r.agg({'result' : lambda x: x.mean() / x.std(),
		           'total' : np.sum})
		                     total    result
		2013-01-01 00:00:00      3  2.121320
		2013-01-01 00:00:02      7  4.949747
		2013-01-01 00:00:04      5       NaN
		
		See also
		--------
		transform
		
		Returns
		-------
		Series or DataFrame
	**/
	public function apply(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return the values at the new freq,
		essentially a reindex with (no filling)
	**/
	public function asfreq():Dynamic;
	public var ax : Dynamic;
	/**
		Backward fill the values
		
		Parameters
		----------
		limit : integer, optional
		    limit of how many values to fill
		
		See Also
		--------
		Series.fillna
		DataFrame.fillna
	**/
	public function backfill(?limit:Dynamic):Dynamic;
	/**
		Backward fill the values
		
		Parameters
		----------
		limit : integer, optional
		    limit of how many values to fill
		
		See Also
		--------
		Series.fillna
		DataFrame.fillna
	**/
	public function bfill(?limit:Dynamic):Dynamic;
	/**
		Compute count of group, excluding missing values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function count(?_method:Dynamic):Dynamic;
	/**
		Forward fill the values
		
		Parameters
		----------
		limit : integer, optional
		    limit of how many values to fill
		
		See Also
		--------
		Series.fillna
		DataFrame.fillna
	**/
	public function ffill(?limit:Dynamic):Dynamic;
	/**
		Fill missing values
		
		Parameters
		----------
		method : str, method of resampling ('ffill', 'bfill')
		limit : integer, optional
		    limit of how many values to fill
		
		See Also
		--------
		Series.fillna
		DataFrame.fillna
	**/
	public function fillna(method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Compute first of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function first(?_method:Dynamic):Dynamic;
	/**
		Constructs NDFrame from group with provided name
		
		Parameters
		----------
		name : object
		    the name of the group to get as a DataFrame
		obj : NDFrame, default None
		    the NDFrame to take the DataFrame out of.  If
		    it is None, the object groupby was called on will
		    be used
		
		Returns
		-------
		group : type of obj
	**/
	public function get_group(name:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		dict {group name -> group labels} 
	**/
	public var groups : Dynamic;
	/**
		dict {group name -> group indices} 
	**/
	public var indices : Dynamic;
	/**
		Compute last of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function last(?_method:Dynamic):Dynamic;
	/**
		Compute max of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function max(?_method:Dynamic):Dynamic;
	/**
		Compute mean of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function mean(?_method:Dynamic):Dynamic;
	/**
		Compute median of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function median(?_method:Dynamic):Dynamic;
	/**
		Compute min of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function min(?_method:Dynamic):Dynamic;
	public var name : Dynamic;
	static public var ndim : Dynamic;
	public var ngroups : Dynamic;
	/**
		Returns number of unique elements in the group 
	**/
	public function nunique(?_method:Dynamic):Dynamic;
	public var obj : Dynamic;
	/**
		Compute sum of values, excluding missing values
		For multiple groupings, the result index will be a MultiIndex
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function ohlc(?_method:Dynamic):Dynamic;
	/**
		Forward fill the values
		
		Parameters
		----------
		limit : integer, optional
		    limit of how many values to fill
		
		See Also
		--------
		Series.fillna
		DataFrame.fillna
	**/
	public function pad(?limit:Dynamic):Dynamic;
	/**
		Class implementing the .plot attribute for groupby objects
	**/
	public function plot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute prod of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function prod(?_method:Dynamic):Dynamic;
	/**
		Compute standard error of the mean of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
		
		Parameters
		----------
		ddof : integer, default 1
		    degrees of freedom
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function sem(?_method:Dynamic):Dynamic;
	/**
		Compute group sizes
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function size(?_method:Dynamic):Dynamic;
	/**
		Compute standard deviation of groups, excluding missing values
		
		Parameters
		----------
		ddof : integer, default 1
		degrees of freedom
	**/
	public function std(?ddof:Dynamic):Dynamic;
	/**
		Compute sum of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function sum(?_method:Dynamic):Dynamic;
	/**
		Call function producing a like-indexed Series on each group and return
		a Series with the transformed values
		
		Parameters
		----------
		func : function
		    To apply to each group. Should return a Series with the same index
		
		Examples
		--------
		>>> resampled.transform(lambda x: (x - x.mean()) / x.std())
		
		Returns
		-------
		transformed : Series
	**/
	public function transform(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Compute variance of groups, excluding missing values
		
		Parameters
		----------
		ddof : integer, default 1
		degrees of freedom
	**/
	@:native("var")
	public function _var(?ddof:Dynamic):Dynamic;
}