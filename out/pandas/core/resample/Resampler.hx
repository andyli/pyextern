/* This file is generated, do not edit! */
package pandas.core.resample;
@:pythonImport("pandas.core.resample", "Resampler") extern class Resampler {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	public function __getattr__(attr:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function ___init__(obj:Dynamic, ?groupby:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?groupby:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Resampler iterator.
		
		Returns
		-------
		Generator yielding sequence of (name, subsetted object)
		for each group
		
		See Also
		--------
		GroupBy.__iter__
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
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
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Provide a nice str repr of our rolling object.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	static public var _agg_examples_doc : Dynamic;
	static public var _agg_see_also_doc : Dynamic;
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
	public function _apply_filter(indices:Dynamic, dropna:Dynamic):Dynamic;
	/**
		If loffset is set, offset the result index.
		
		This is NOT an idempotent routine, it will be applied
		exactly once to the result.
		
		Parameters
		----------
		result : Series or DataFrame
		    the result of resample
	**/
	public function _apply_loffset(result:Dynamic):Dynamic;
	static public var _apply_whitelist : Dynamic;
	/**
		Make sure that we are creating our binner & grouper.
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
		Provide any conversions for the object in order to correctly handle.
		
		Parameters
		----------
		obj : the object to be resampled
		
		Returns
		-------
		obj : converted object
	**/
	public function _convert_obj(obj:Dynamic):Dynamic;
	/**
		Parameters
		----------
		ascending : bool, default True
		    If False, number in reverse, from length of group - 1 to 0.
		
		Notes
		-----
		this is currently implementing sort=False
		(though the default is sort=True) for groupby in general
	**/
	public function _cumcount_array(?ascending:Dynamic):Dynamic;
	public function _cython_agg_general(how:Dynamic, ?alt:Dynamic, ?numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	public function _cython_transform(how:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add additional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	public function _downsample(f:Dynamic):Dynamic;
	/**
		Is the resampling from a DataFrame column or MultiIndex level.
	**/
	public var _from_selection : Dynamic;
	/**
		Create the BinGrouper, assume that self.set_grouper(obj)
		has already been called.
	**/
	public function _get_binner():Dynamic;
	public function _get_binner_for_time():Dynamic;
	/**
		Safe get index, translate keys for datelike to underlying repr.
	**/
	public function _get_index(name:Dynamic):Dynamic;
	/**
		Safe get multiple indices, translate keys for
		datelike to underlying repr.
	**/
	public function _get_indices(names:Dynamic):Dynamic;
	/**
		Return the correct class for resampling with groupby.
	**/
	public function _get_resampler_for_grouping(groupby:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sub-classes to define. Return a sliced object.
		
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
		Re-evaluate the obj with a groupby aggregation.
	**/
	public function _groupby_and_aggregate(how:Dynamic, ?grouper:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function _make_wrapper(name:Dynamic):Dynamic;
	public var _obj_with_exclusions : Dynamic;
	public function _python_agg_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _python_apply_general(f:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Clear group based selection.
		
		Used for methods needing to return info on each group regardless of
		whether a group selection was previously set.
	**/
	public function _reset_group_selection():Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		return a name for myself; this would ideally be called
		the 'name' property, but we cannot conflict with the
		Series.name property which can be set
	**/
	public var _selection_name : Dynamic;
	/**
		Setup our binners.
		
		Cache these as we are an immutable object
	**/
	public function _set_binner():Dynamic;
	/**
		Create group based selection.
		
		Used when selection is not passed directly but instead via a grouper.
		
		NOTE: this should be paired with a call to _reset_group_selection
	**/
	public function _set_group_selection():Dynamic;
	public function _set_result_index_ordered(result:Dynamic):Dynamic;
	/**
		return a new object with the replacement attributes
	**/
	public function _shallow_copy(?obj:Dynamic, ?obj_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters:
		-----------
		func_nm: str
		    The name of the aggregation function being performed
		
		Returns:
		--------
		bool
		    Whether transform should attempt to cast the result of aggregation
	**/
	public function _transform_should_cast(func_nm:Dynamic):Dynamic;
	/**
		if arg is a string, then try to operate on it:
		- try to find a function (or attribute) on ourselves
		- try to find a numpy function
		- raise
	**/
	public function _try_aggregate_string_function(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Try to cast the result to our obj original type,
		we may have roundtripped through object in the mean-time.
		
		If numeric_only is True, then only try to cast numerics
		and not datetimelikes.
	**/
	public function _try_cast(result:Dynamic, obj:Dynamic, ?numeric_only:Dynamic):Dynamic;
	/**
		Masquerade for compat as a Series or a DataFrame.
	**/
	public var _typ : Dynamic;
	public function _upsample(f:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic):Dynamic;
	public function _wrap_applied_output(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Potentially wrap any results.
	**/
	public function _wrap_result(result:Dynamic):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		
		
		Parameters
		----------
		func : function, str, list or dict
		    Function to use for aggregating the data. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply.
		
		    Accepted combinations are:
		
		    - function
		    - string function name
		    - list of functions and/or function names, e.g. ``[np.sum, 'mean']``
		    - dict of axis labels -> functions, function names or list of such.
		
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		DataFrame, Series or scalar
		    if DataFrame.agg is called with a single function, returns a Series
		    if DataFrame.agg is called with several functions, returns a DataFrame
		    if Series.agg is called with single function, returns a scalar
		    if Series.agg is called with several functions, returns a Series
		
		
		See Also
		--------
		pandas.DataFrame.groupby.aggregate
		pandas.DataFrame.resample.transform
		pandas.DataFrame.aggregate
		
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		
		Examples
		--------
		>>> s = pd.Series([1,2,3,4,5],
		                  index=pd.date_range('20130101', periods=5,freq='s'))
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
	**/
	public function agg(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		
		
		Parameters
		----------
		func : function, str, list or dict
		    Function to use for aggregating the data. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply.
		
		    Accepted combinations are:
		
		    - function
		    - string function name
		    - list of functions and/or function names, e.g. ``[np.sum, 'mean']``
		    - dict of axis labels -> functions, function names or list of such.
		
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		DataFrame, Series or scalar
		    if DataFrame.agg is called with a single function, returns a Series
		    if DataFrame.agg is called with several functions, returns a DataFrame
		    if Series.agg is called with single function, returns a scalar
		    if Series.agg is called with several functions, returns a Series
		
		
		See Also
		--------
		pandas.DataFrame.groupby.aggregate
		pandas.DataFrame.resample.transform
		pandas.DataFrame.aggregate
		
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		
		Examples
		--------
		>>> s = pd.Series([1,2,3,4,5],
		                  index=pd.date_range('20130101', periods=5,freq='s'))
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
	**/
	public function aggregate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		
		
		Parameters
		----------
		func : function, str, list or dict
		    Function to use for aggregating the data. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply.
		
		    Accepted combinations are:
		
		    - function
		    - string function name
		    - list of functions and/or function names, e.g. ``[np.sum, 'mean']``
		    - dict of axis labels -> functions, function names or list of such.
		
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		DataFrame, Series or scalar
		    if DataFrame.agg is called with a single function, returns a Series
		    if DataFrame.agg is called with several functions, returns a DataFrame
		    if Series.agg is called with single function, returns a scalar
		    if Series.agg is called with several functions, returns a Series
		
		
		See Also
		--------
		pandas.DataFrame.groupby.aggregate
		pandas.DataFrame.resample.transform
		pandas.DataFrame.aggregate
		
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		
		Examples
		--------
		>>> s = pd.Series([1,2,3,4,5],
		                  index=pd.date_range('20130101', periods=5,freq='s'))
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
	**/
	public function apply(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the values at the new freq, essentially a reindex.
		
		Parameters
		----------
		fill_value : scalar, optional
		    Value to use for missing values, applied during upsampling (note
		    this does not fill NaNs that already were present).
		
		    .. versionadded:: 0.20.0
		
		See Also
		--------
		Series.asfreq
		DataFrame.asfreq
	**/
	public function asfreq(?fill_value:Dynamic):Dynamic;
	public var ax : Dynamic;
	/**
		Backward fill the new missing values in the resampled data.
		
		In statistics, imputation is the process of replacing missing data with
		substituted values [1]_. When resampling data, missing values may
		appear (e.g., when the resampling frequency is higher than the original
		frequency). The backward fill will replace NaN values that appeared in
		the resampled data with the next value in the original sequence.
		Missing values that existed in the original data will not be modified.
		
		Parameters
		----------
		limit : integer, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		Series, DataFrame
		    An upsampled Series or DataFrame with backward filled NaN values.
		
		See Also
		--------
		bfill : Alias of backfill.
		fillna : Fill NaN values using the specified method, which can be
		    'backfill'.
		nearest : Fill NaN values with nearest neighbor starting from center.
		pad : Forward fill NaN values.
		pandas.Series.fillna : Fill NaN values in the Series using the
		    specified method, which can be 'backfill'.
		pandas.DataFrame.fillna : Fill NaN values in the DataFrame using the
		    specified method, which can be 'backfill'.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Imputation_(statistics)
		
		Examples
		--------
		
		Resampling a Series:
		
		>>> s = pd.Series([1, 2, 3],
		...               index=pd.date_range('20180101', periods=3, freq='h'))
		>>> s
		2018-01-01 00:00:00    1
		2018-01-01 01:00:00    2
		2018-01-01 02:00:00    3
		Freq: H, dtype: int64
		
		>>> s.resample('30min').backfill()
		2018-01-01 00:00:00    1
		2018-01-01 00:30:00    2
		2018-01-01 01:00:00    2
		2018-01-01 01:30:00    3
		2018-01-01 02:00:00    3
		Freq: 30T, dtype: int64
		
		>>> s.resample('15min').backfill(limit=2)
		2018-01-01 00:00:00    1.0
		2018-01-01 00:15:00    NaN
		2018-01-01 00:30:00    2.0
		2018-01-01 00:45:00    2.0
		2018-01-01 01:00:00    2.0
		2018-01-01 01:15:00    NaN
		2018-01-01 01:30:00    3.0
		2018-01-01 01:45:00    3.0
		2018-01-01 02:00:00    3.0
		Freq: 15T, dtype: float64
		
		Resampling a DataFrame that has missing values:
		
		>>> df = pd.DataFrame({'a': [2, np.nan, 6], 'b': [1, 3, 5]},
		...                   index=pd.date_range('20180101', periods=3,
		...                                       freq='h'))
		>>> df
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 01:00:00  NaN  3
		2018-01-01 02:00:00  6.0  5
		
		>>> df.resample('30min').backfill()
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 00:30:00  NaN  3
		2018-01-01 01:00:00  NaN  3
		2018-01-01 01:30:00  6.0  5
		2018-01-01 02:00:00  6.0  5
		
		>>> df.resample('15min').backfill(limit=2)
		                       a    b
		2018-01-01 00:00:00  2.0  1.0
		2018-01-01 00:15:00  NaN  NaN
		2018-01-01 00:30:00  NaN  3.0
		2018-01-01 00:45:00  NaN  3.0
		2018-01-01 01:00:00  NaN  3.0
		2018-01-01 01:15:00  NaN  NaN
		2018-01-01 01:30:00  6.0  5.0
		2018-01-01 01:45:00  6.0  5.0
		2018-01-01 02:00:00  6.0  5.0
	**/
	public function backfill(?limit:Dynamic):Dynamic;
	/**
		Backward fill the new missing values in the resampled data.
		
		In statistics, imputation is the process of replacing missing data with
		substituted values [1]_. When resampling data, missing values may
		appear (e.g., when the resampling frequency is higher than the original
		frequency). The backward fill will replace NaN values that appeared in
		the resampled data with the next value in the original sequence.
		Missing values that existed in the original data will not be modified.
		
		Parameters
		----------
		limit : integer, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		Series, DataFrame
		    An upsampled Series or DataFrame with backward filled NaN values.
		
		See Also
		--------
		bfill : Alias of backfill.
		fillna : Fill NaN values using the specified method, which can be
		    'backfill'.
		nearest : Fill NaN values with nearest neighbor starting from center.
		pad : Forward fill NaN values.
		pandas.Series.fillna : Fill NaN values in the Series using the
		    specified method, which can be 'backfill'.
		pandas.DataFrame.fillna : Fill NaN values in the DataFrame using the
		    specified method, which can be 'backfill'.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Imputation_(statistics)
		
		Examples
		--------
		
		Resampling a Series:
		
		>>> s = pd.Series([1, 2, 3],
		...               index=pd.date_range('20180101', periods=3, freq='h'))
		>>> s
		2018-01-01 00:00:00    1
		2018-01-01 01:00:00    2
		2018-01-01 02:00:00    3
		Freq: H, dtype: int64
		
		>>> s.resample('30min').backfill()
		2018-01-01 00:00:00    1
		2018-01-01 00:30:00    2
		2018-01-01 01:00:00    2
		2018-01-01 01:30:00    3
		2018-01-01 02:00:00    3
		Freq: 30T, dtype: int64
		
		>>> s.resample('15min').backfill(limit=2)
		2018-01-01 00:00:00    1.0
		2018-01-01 00:15:00    NaN
		2018-01-01 00:30:00    2.0
		2018-01-01 00:45:00    2.0
		2018-01-01 01:00:00    2.0
		2018-01-01 01:15:00    NaN
		2018-01-01 01:30:00    3.0
		2018-01-01 01:45:00    3.0
		2018-01-01 02:00:00    3.0
		Freq: 15T, dtype: float64
		
		Resampling a DataFrame that has missing values:
		
		>>> df = pd.DataFrame({'a': [2, np.nan, 6], 'b': [1, 3, 5]},
		...                   index=pd.date_range('20180101', periods=3,
		...                                       freq='h'))
		>>> df
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 01:00:00  NaN  3
		2018-01-01 02:00:00  6.0  5
		
		>>> df.resample('30min').backfill()
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 00:30:00  NaN  3
		2018-01-01 01:00:00  NaN  3
		2018-01-01 01:30:00  6.0  5
		2018-01-01 02:00:00  6.0  5
		
		>>> df.resample('15min').backfill(limit=2)
		                       a    b
		2018-01-01 00:00:00  2.0  1.0
		2018-01-01 00:15:00  NaN  NaN
		2018-01-01 00:30:00  NaN  3.0
		2018-01-01 00:45:00  NaN  3.0
		2018-01-01 01:00:00  NaN  3.0
		2018-01-01 01:15:00  NaN  NaN
		2018-01-01 01:30:00  6.0  5.0
		2018-01-01 01:45:00  6.0  5.0
		2018-01-01 02:00:00  6.0  5.0
	**/
	public function bfill(?limit:Dynamic):Dynamic;
	/**
		Compute count of group, excluding missing values.
		
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function count(?_method:Dynamic):Dynamic;
	/**
		Forward fill the values.
		
		Parameters
		----------
		limit : integer, optional
		    limit of how many values to fill
		
		Returns
		-------
		an upsampled Series
		
		See Also
		--------
		Series.fillna
		DataFrame.fillna
	**/
	public function ffill(?limit:Dynamic):Dynamic;
	/**
		Fill missing values introduced by upsampling.
		
		In statistics, imputation is the process of replacing missing data with
		substituted values [1]_. When resampling data, missing values may
		appear (e.g., when the resampling frequency is higher than the original
		frequency).
		
		Missing values that existed in the original data will
		not be modified.
		
		Parameters
		----------
		method : {'pad', 'backfill', 'ffill', 'bfill', 'nearest'}
		    Method to use for filling holes in resampled data
		
		    * 'pad' or 'ffill': use previous valid observation to fill gap
		      (forward fill).
		    * 'backfill' or 'bfill': use next valid observation to fill gap.
		    * 'nearest': use nearest valid observation to fill gap.
		
		limit : integer, optional
		    Limit of how many consecutive missing values to fill.
		
		Returns
		-------
		Series or DataFrame
		    An upsampled Series or DataFrame with missing values filled.
		
		See Also
		--------
		backfill : Backward fill NaN values in the resampled data.
		pad : Forward fill NaN values in the resampled data.
		nearest : Fill NaN values in the resampled data
		    with nearest neighbor starting from center.
		interpolate : Fill NaN values using interpolation.
		pandas.Series.fillna : Fill NaN values in the Series using the
		    specified method, which can be 'bfill' and 'ffill'.
		pandas.DataFrame.fillna : Fill NaN values in the DataFrame using the
		    specified method, which can be 'bfill' and 'ffill'.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Imputation_(statistics)
		
		Examples
		--------
		Resampling a Series:
		
		>>> s = pd.Series([1, 2, 3],
		...               index=pd.date_range('20180101', periods=3, freq='h'))
		>>> s
		2018-01-01 00:00:00    1
		2018-01-01 01:00:00    2
		2018-01-01 02:00:00    3
		Freq: H, dtype: int64
		
		Without filling the missing values you get:
		
		>>> s.resample("30min").asfreq()
		2018-01-01 00:00:00    1.0
		2018-01-01 00:30:00    NaN
		2018-01-01 01:00:00    2.0
		2018-01-01 01:30:00    NaN
		2018-01-01 02:00:00    3.0
		Freq: 30T, dtype: float64
		
		>>> s.resample('30min').fillna("backfill")
		2018-01-01 00:00:00    1
		2018-01-01 00:30:00    2
		2018-01-01 01:00:00    2
		2018-01-01 01:30:00    3
		2018-01-01 02:00:00    3
		Freq: 30T, dtype: int64
		
		>>> s.resample('15min').fillna("backfill", limit=2)
		2018-01-01 00:00:00    1.0
		2018-01-01 00:15:00    NaN
		2018-01-01 00:30:00    2.0
		2018-01-01 00:45:00    2.0
		2018-01-01 01:00:00    2.0
		2018-01-01 01:15:00    NaN
		2018-01-01 01:30:00    3.0
		2018-01-01 01:45:00    3.0
		2018-01-01 02:00:00    3.0
		Freq: 15T, dtype: float64
		
		>>> s.resample('30min').fillna("pad")
		2018-01-01 00:00:00    1
		2018-01-01 00:30:00    1
		2018-01-01 01:00:00    2
		2018-01-01 01:30:00    2
		2018-01-01 02:00:00    3
		Freq: 30T, dtype: int64
		
		>>> s.resample('30min').fillna("nearest")
		2018-01-01 00:00:00    1
		2018-01-01 00:30:00    2
		2018-01-01 01:00:00    2
		2018-01-01 01:30:00    3
		2018-01-01 02:00:00    3
		Freq: 30T, dtype: int64
		
		Missing values present before the upsampling are not affected.
		
		>>> sm = pd.Series([1, None, 3],
		...               index=pd.date_range('20180101', periods=3, freq='h'))
		>>> sm
		2018-01-01 00:00:00    1.0
		2018-01-01 01:00:00    NaN
		2018-01-01 02:00:00    3.0
		Freq: H, dtype: float64
		
		>>> sm.resample('30min').fillna('backfill')
		2018-01-01 00:00:00    1.0
		2018-01-01 00:30:00    NaN
		2018-01-01 01:00:00    NaN
		2018-01-01 01:30:00    3.0
		2018-01-01 02:00:00    3.0
		Freq: 30T, dtype: float64
		
		>>> sm.resample('30min').fillna('pad')
		2018-01-01 00:00:00    1.0
		2018-01-01 00:30:00    1.0
		2018-01-01 01:00:00    NaN
		2018-01-01 01:30:00    NaN
		2018-01-01 02:00:00    3.0
		Freq: 30T, dtype: float64
		
		>>> sm.resample('30min').fillna('nearest')
		2018-01-01 00:00:00    1.0
		2018-01-01 00:30:00    NaN
		2018-01-01 01:00:00    NaN
		2018-01-01 01:30:00    3.0
		2018-01-01 02:00:00    3.0
		Freq: 30T, dtype: float64
		
		DataFrame resampling is done column-wise. All the same options are
		available.
		
		>>> df = pd.DataFrame({'a': [2, np.nan, 6], 'b': [1, 3, 5]},
		...                   index=pd.date_range('20180101', periods=3,
		...                                       freq='h'))
		>>> df
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 01:00:00  NaN  3
		2018-01-01 02:00:00  6.0  5
		
		>>> df.resample('30min').fillna("bfill")
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 00:30:00  NaN  3
		2018-01-01 01:00:00  NaN  3
		2018-01-01 01:30:00  6.0  5
		2018-01-01 02:00:00  6.0  5
	**/
	public function fillna(method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Compute first of group values
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function first(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Constructs NDFrame from group with provided name.
		
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
		group : same type as obj
	**/
	public function get_group(name:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Dict {group name -> group labels}.
	**/
	public var groups : Dynamic;
	/**
		Dict {group name -> group indices}.
	**/
	public var indices : Dynamic;
	/**
		Interpolate values according to different methods.
		
		.. versionadded:: 0.18.1
		
		Please note that only ``method='linear'`` is supported for
		DataFrame/Series with a MultiIndex.
		
		Parameters
		----------
		method : str, default 'linear'
		    Interpolation technique to use. One of:
		
		    * 'linear': Ignore the index and treat the values as equally
		      spaced. This is the only method supported on MultiIndexes.
		    * 'time': Works on daily and higher resolution data to interpolate
		      given length of interval.
		    * 'index', 'values': use the actual numerical values of the index.
		    * 'pad': Fill in NaNs using existing values.
		    * 'nearest', 'zero', 'slinear', 'quadratic', 'cubic', 'spline',
		      'barycentric', 'polynomial': Passed to
		      `scipy.interpolate.interp1d`. Both 'polynomial' and 'spline'
		      require that you also specify an `order` (int),
		      e.g. ``df.interpolate(method='polynomial', order=4)``.
		      These use the numerical values of the index.
		    * 'krogh', 'piecewise_polynomial', 'spline', 'pchip', 'akima':
		      Wrappers around the SciPy interpolation methods of similar
		      names. See `Notes`.
		    * 'from_derivatives': Refers to
		      `scipy.interpolate.BPoly.from_derivatives` which
		      replaces 'piecewise_polynomial' interpolation method in
		      scipy 0.18.
		
		    .. versionadded:: 0.18.1
		
		       Added support for the 'akima' method.
		       Added interpolate method 'from_derivatives' which replaces
		       'piecewise_polynomial' in SciPy 0.18; backwards-compatible with
		       SciPy < 0.18
		
		axis : {0 or 'index', 1 or 'columns', None}, default None
		    Axis to interpolate along.
		limit : int, optional
		    Maximum number of consecutive NaNs to fill. Must be greater than
		    0.
		inplace : bool, default False
		    Update the data in place if possible.
		limit_direction : {'forward', 'backward', 'both'}, default 'forward'
		    If limit is specified, consecutive NaNs will be filled in this
		    direction.
		limit_area : {`None`, 'inside', 'outside'}, default None
		    If limit is specified, consecutive NaNs will be filled with this
		    restriction.
		
		    * ``None``: No fill restriction.
		    * 'inside': Only fill NaNs surrounded by valid values
		      (interpolate).
		    * 'outside': Only fill NaNs outside valid values (extrapolate).
		
		    .. versionadded:: 0.21.0
		
		downcast : optional, 'infer' or None, defaults to None
		    Downcast dtypes if possible.
		**kwargs
		    Keyword arguments to pass on to the interpolating function.
		
		Returns
		-------
		Series or DataFrame
		    Returns the same object type as the caller, interpolated at
		    some or all ``NaN`` values
		
		See Also
		--------
		fillna : Fill missing values using different methods.
		scipy.interpolate.Akima1DInterpolator : Piecewise cubic polynomials
		    (Akima interpolator).
		scipy.interpolate.BPoly.from_derivatives : Piecewise polynomial in the
		    Bernstein basis.
		scipy.interpolate.interp1d : Interpolate a 1-D function.
		scipy.interpolate.KroghInterpolator : Interpolate polynomial (Krogh
		    interpolator).
		scipy.interpolate.PchipInterpolator : PCHIP 1-d monotonic cubic
		    interpolation.
		scipy.interpolate.CubicSpline : Cubic spline data interpolator.
		
		Notes
		-----
		The 'krogh', 'piecewise_polynomial', 'spline', 'pchip' and 'akima'
		methods are wrappers around the respective SciPy implementations of
		similar names. These use the actual numerical values of the index.
		For more information on their behavior, see the
		`SciPy documentation
		<http://docs.scipy.org/doc/scipy/reference/interpolate.html#univariate-interpolation>`__
		and `SciPy tutorial
		<http://docs.scipy.org/doc/scipy/reference/tutorial/interpolate.html>`__.
		
		Examples
		--------
		Filling in ``NaN`` in a :class:`~pandas.Series` via linear
		interpolation.
		
		>>> s = pd.Series([0, 1, np.nan, 3])
		>>> s
		0    0.0
		1    1.0
		2    NaN
		3    3.0
		dtype: float64
		>>> s.interpolate()
		0    0.0
		1    1.0
		2    2.0
		3    3.0
		dtype: float64
		
		Filling in ``NaN`` in a Series by padding, but filling at most two
		consecutive ``NaN`` at a time.
		
		>>> s = pd.Series([np.nan, "single_one", np.nan,
		...                "fill_two_more", np.nan, np.nan, np.nan,
		...                4.71, np.nan])
		>>> s
		0              NaN
		1       single_one
		2              NaN
		3    fill_two_more
		4              NaN
		5              NaN
		6              NaN
		7             4.71
		8              NaN
		dtype: object
		>>> s.interpolate(method='pad', limit=2)
		0              NaN
		1       single_one
		2       single_one
		3    fill_two_more
		4    fill_two_more
		5    fill_two_more
		6              NaN
		7             4.71
		8             4.71
		dtype: object
		
		Filling in ``NaN`` in a Series via polynomial interpolation or splines:
		Both 'polynomial' and 'spline' methods require that you also specify
		an ``order`` (int).
		
		>>> s = pd.Series([0, 2, np.nan, 8])
		>>> s.interpolate(method='polynomial', order=2)
		0    0.000000
		1    2.000000
		2    4.666667
		3    8.000000
		dtype: float64
		
		Fill the DataFrame forward (that is, going down) along each column
		using linear interpolation.
		
		Note how the last entry in column 'a' is interpolated differently,
		because there is no entry after it to use for interpolation.
		Note how the first entry in column 'b' remains ``NaN``, because there
		is no entry befofe it to use for interpolation.
		
		>>> df = pd.DataFrame([(0.0,  np.nan, -1.0, 1.0),
		...                    (np.nan, 2.0, np.nan, np.nan),
		...                    (2.0, 3.0, np.nan, 9.0),
		...                    (np.nan, 4.0, -4.0, 16.0)],
		...                   columns=list('abcd'))
		>>> df
		     a    b    c     d
		0  0.0  NaN -1.0   1.0
		1  NaN  2.0  NaN   NaN
		2  2.0  3.0  NaN   9.0
		3  NaN  4.0 -4.0  16.0
		>>> df.interpolate(method='linear', limit_direction='forward', axis=0)
		     a    b    c     d
		0  0.0  NaN -1.0   1.0
		1  1.0  2.0 -2.0   5.0
		2  2.0  3.0 -3.0   9.0
		3  2.0  4.0 -4.0  16.0
		
		Using polynomial interpolation.
		
		>>> df['d'].interpolate(method='polynomial', order=2)
		0     1.0
		1     4.0
		2     9.0
		3    16.0
		Name: d, dtype: float64
	**/
	public function interpolate(?method:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?inplace:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute last of group values
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function last(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute max of group values
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function max(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute mean of groups, excluding missing values.
		
		Returns
		-------
		pandas.Series or pandas.DataFrame
		
		
		See Also
		--------
		pandas.Series.%(name)s
		pandas.DataFrame.%(name)s
		pandas.Panel.%(name)s
		
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 1, 2, 1, 2],
		...                    'B': [np.nan, 2, 3, 4, 5],
		...                    'C': [1, 2, 1, 1, 2]}, columns=['A', 'B', 'C'])
		
		Groupby one column and return the mean of the remaining columns in
		each group.
		
		>>> df.groupby('A').mean()
		>>>
		     B         C
		A
		1  3.0  1.333333
		2  4.0  1.500000
		
		Groupby two columns and return the mean of the remaining column.
		
		>>> df.groupby(['A', 'B']).mean()
		>>>
		       C
		A B
		1 2.0  2
		  4.0  1
		2 3.0  1
		  5.0  2
		
		Groupby one column and return the mean of only particular column in
		the group.
		
		>>> df.groupby('A')['B'].mean()
		>>>
		A
		1    3.0
		2    4.0
		Name: B, dtype: float64
	**/
	public function mean(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute median of groups, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex
		
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function median(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute min of group values
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function min(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ndim : Dynamic;
	/**
		Resample by using the nearest value.
		
		When resampling data, missing values may appear (e.g., when the
		resampling frequency is higher than the original frequency).
		The `nearest` method will replace ``NaN`` values that appeared in
		the resampled data with the value from the nearest member of the
		sequence, based on the index value.
		Missing values that existed in the original data will not be modified.
		If `limit` is given, fill only this many values in each direction for
		each of the original values.
		
		Parameters
		----------
		limit : int, optional
		    Limit of how many values to fill.
		
		    .. versionadded:: 0.21.0
		
		Returns
		-------
		Series or DataFrame
		    An upsampled Series or DataFrame with ``NaN`` values filled with
		    their nearest value.
		
		See Also
		--------
		backfill : Backward fill the new missing values in the resampled data.
		pad : Forward fill ``NaN`` values.
		
		Examples
		--------
		>>> s = pd.Series([1, 2],
		...               index=pd.date_range('20180101',
		...                                   periods=2,
		...                                   freq='1h'))
		>>> s
		2018-01-01 00:00:00    1
		2018-01-01 01:00:00    2
		Freq: H, dtype: int64
		
		>>> s.resample('15min').nearest()
		2018-01-01 00:00:00    1
		2018-01-01 00:15:00    1
		2018-01-01 00:30:00    2
		2018-01-01 00:45:00    2
		2018-01-01 01:00:00    2
		Freq: 15T, dtype: int64
		
		Limit the number of upsampled values imputed by the nearest:
		
		>>> s.resample('15min').nearest(limit=1)
		2018-01-01 00:00:00    1.0
		2018-01-01 00:15:00    1.0
		2018-01-01 00:30:00    NaN
		2018-01-01 00:45:00    2.0
		2018-01-01 01:00:00    2.0
		Freq: 15T, dtype: float64
	**/
	public function nearest(?limit:Dynamic):Dynamic;
	public var ngroups : Dynamic;
	/**
		Returns number of unique elements in the group 
	**/
	public function nunique(?_method:Dynamic):Dynamic;
	public var obj : Dynamic;
	/**
		Compute sum of values, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex
		
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function ohlc(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Forward fill the values.
		
		Parameters
		----------
		limit : integer, optional
		    limit of how many values to fill
		
		Returns
		-------
		an upsampled Series
		
		See Also
		--------
		Series.fillna
		DataFrame.fillna
	**/
	public function pad(?limit:Dynamic):Dynamic;
	/**
		Apply a function `func` with arguments to this Resampler object and return
		the function's result.
		
		.. versionadded:: 0.23.0
		
		Use `.pipe` when you want to improve readability by chaining together
		functions that expect Series, DataFrames, GroupBy or Resampler objects.
		Instead of writing
		
		>>> h(g(f(df.groupby('group')), arg1=a), arg2=b, arg3=c)
		
		You can write
		
		>>> (df.groupby('group')
		...    .pipe(f)
		...    .pipe(g, arg1=a)
		...    .pipe(h, arg2=b, arg3=c))
		
		which is much more readable.
		
		Parameters
		----------
		func : callable or tuple of (callable, string)
		    Function to apply to this Resampler object or, alternatively,
		    a `(callable, data_keyword)` tuple where `data_keyword` is a
		    string indicating the keyword of `callable` that expects the
		    Resampler object.
		args : iterable, optional
		       positional arguments passed into `func`.
		kwargs : dict, optional
		         a dictionary of keyword arguments passed into `func`.
		
		Returns
		-------
		object : the return type of `func`.
		
		See Also
		--------
		pandas.Series.pipe : Apply a function with arguments to a series.
		pandas.DataFrame.pipe: Apply a function with arguments to a dataframe.
		apply : Apply function to each group instead of to the
		    full Resampler object.
		
		Notes
		-----
		See more `here
		<http://pandas.pydata.org/pandas-docs/stable/groupby.html#piping-function-calls>`_
		
		Examples
		--------
		
		    >>> df = pd.DataFrame({'A': [1, 2, 3, 4]},
		    ...                   index=pd.date_range('2012-08-02', periods=4))
		    >>> df
		                A
		    2012-08-02  1
		    2012-08-03  2
		    2012-08-04  3
		    2012-08-05  4
		
		    To get the difference between each 2-day period's maximum and minimum
		    value in one pass, you can do
		
		    >>> df.resample('2D').pipe(lambda x: x.max() - x.min())
		                A
		    2012-08-02  1
		    2012-08-04  1
		    
	**/
	public function pipe(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Class implementing the .plot attribute for groupby objects.
	**/
	public var plot : Dynamic;
	/**
		Compute prod of group values
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function prod(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value at the given quantile.
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		
		See Also
		--------
		Series.quantile
		DataFrame.quantile
		DataFrameGroupBy.quantile
	**/
	public function quantile(?q:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute standard error of the mean of groups, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex.
		
		Parameters
		----------
		ddof : integer, default 1
		    degrees of freedom
		
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function sem(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute group sizes.
		
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function size():Dynamic;
	/**
		Compute standard deviation of groups, excluding missing values.
		
		Parameters
		----------
		ddof : integer, default 1
		degrees of freedom
	**/
	public function std(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute sum of group values
		See Also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function sum(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call function producing a like-indexed Series on each group and return
		a Series with the transformed values.
		
		Parameters
		----------
		func : function
		    To apply to each group. Should return a Series with the same index
		
		Returns
		-------
		transformed : Series
		
		Examples
		--------
		>>> resampled.transform(lambda x: (x - x.mean()) / x.std())
	**/
	public function transform(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Compute variance of groups, excluding missing values.
		
		Parameters
		----------
		ddof : integer, default 1
		    degrees of freedom
	**/
	@:native("var")
	public function _var(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}