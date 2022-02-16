/* This file is generated, do not edit! */
package pandas.core.resample;
@:pythonImport("pandas.core.resample", "TimedeltaIndexResamplerGroupby") extern class TimedeltaIndexResamplerGroupby {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(obj:Dynamic, ?parent:Dynamic, ?groupby:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?parent:Dynamic, ?groupby:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Groupby iterator.
		
		Returns
		-------
		Generator yielding sequence of (name, subsetted object)
		for each group
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
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
	static public var __slots__ : Dynamic;
	/**
		Provide a nice str repr of our rolling object.
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		Adjust our binner when upsampling.
		
		The range of a new index is allowed to be greater than original range
		so we don't need to change the length of a binner, GH 13022
	**/
	public function _adjust_binner_for_upsample(binner:Dynamic):Dynamic;
	static public var _agg_examples_doc : Dynamic;
	static public var _agg_see_also_doc : Dynamic;
	/**
		Dispatch to _upsample; we are stripping all of the _upsample kwargs and
		performing the original function call on the grouped object.
	**/
	public function _apply(f:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _apply_allowlist : Dynamic;
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
	public var _ascending_count : Dynamic;
	static public var _attributes : Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	/**
		Provide any conversions for the object in order to correctly handle.
		
		Parameters
		----------
		obj : Series or DataFrame
		
		Returns
		-------
		Series or DataFrame
	**/
	public function _convert_obj(obj:Dynamic):Dynamic;
	public var _descending_count : Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	/**
		Dispatch to _upsample; we are stripping all of the _upsample kwargs and
		performing the original function call on the grouped object.
	**/
	public function _downsample(f:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function _get_resampler_for_grouping(groupby:Dynamic):Dynamic;
	/**
		Sub-classes to define. Return a sliced object.
		
		Parameters
		----------
		key : string / list of selections
		ndim : {1, 2}
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	static public var _group_selection : Dynamic;
	/**
		Dispatch to _upsample; we are stripping all of the _upsample kwargs and
		performing the original function call on the grouped object.
	**/
	public function _groupby_and_aggregate(f:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _hidden_attrs : Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	static public var _is_protocol : Dynamic;
	public function _make_mask_from_int(arg:Dynamic):Dynamic;
	public function _make_mask_from_list(args:Dynamic):Dynamic;
	public function _make_mask_from_positional_indexer(arg:Dynamic):Dynamic;
	public function _make_mask_from_slice(arg:Dynamic):Dynamic;
	public function _make_mask_from_tuple(args:Dynamic):Dynamic;
	public var _obj_with_exclusions : Dynamic;
	/**
		Return positional selection for each group.
		
		``groupby._positional_selector[i:j]`` is similar to
		``groupby.apply(lambda x: x.iloc[i:j])``
		but much faster and preserves the original index and order.
		
		``_positional_selector[]`` is compatible with and extends :meth:`~GroupBy.head`
		and :meth:`~GroupBy.tail`. For example:
		
		- ``head(5)``
		- ``_positional_selector[5:-5]``
		- ``tail(5)``
		
		together return all the rows.
		
		Allowed inputs for the index are:
		
		- An integer valued iterable, e.g. ``range(2, 4)``.
		- A comma separated list of integers and slices, e.g. ``5``, ``2, 4``, ``2:4``.
		
		The output format is the same as :meth:`~GroupBy.head` and
		:meth:`~GroupBy.tail`, namely
		a subset of the ``DataFrame`` or ``Series`` with the index and order preserved.
		
		Returns
		-------
		Series
		    The filtered subset of the original Series.
		DataFrame
		    The filtered subset of the original DataFrame.
		
		See Also
		--------
		DataFrame.iloc : Purely integer-location based indexing for selection by
		    position.
		GroupBy.head : Return first n rows of each group.
		GroupBy.tail : Return last n rows of each group.
		GroupBy.nth : Take the nth row from each group if n is an int, or a
		    subset of rows, if n is a list of ints.
		
		Notes
		-----
		- The slice step cannot be negative.
		- If the index specification results in overlaps, the item is not duplicated.
		- If the index specification changes the order of items, then
		  they are returned in their original order.
		  By contrast, ``DataFrame.iloc`` can change the row order.
		- ``groupby()`` parameters such as as_index and dropna are ignored.
		
		The differences between ``_positional_selector[]`` and :meth:`~GroupBy.nth`
		with ``as_index=False`` are:
		
		- Input to ``_positional_selector`` can include
		  one or more slices whereas ``nth``
		  just handles an integer or a list of integers.
		- ``_positional_selector`` can  accept a slice relative to the
		  last row of each group.
		- ``_positional_selector`` does not have an equivalent to the
		  ``nth()`` ``dropna`` parameter.
		
		Examples
		--------
		>>> df = pd.DataFrame([["a", 1], ["a", 2], ["a", 3], ["b", 4], ["b", 5]],
		...                   columns=["A", "B"])
		>>> df.groupby("A")._positional_selector[1:2]
		   A  B
		1  a  2
		4  b  5
		
		>>> df.groupby("A")._positional_selector[1, -1]
		   A  B
		1  a  2
		2  a  3
		4  b  5
	**/
	public var _positional_selector : Dynamic;
	public var _resampler_for_grouping : Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		return a new object with the replacement attributes
	**/
	public function _shallow_copy(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Dispatch to _upsample; we are stripping all of the _upsample kwargs and
		performing the original function call on the grouped object.
	**/
	public function _upsample(f:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		scalar, Series or DataFrame
		
		    The return can be:
		
		    * scalar : when Series.agg is called with single function
		    * Series : when DataFrame.agg is called with a single function
		    * DataFrame : when DataFrame.agg is called with several functions
		
		    Return scalar, Series or DataFrame.
		
		See Also
		--------
		DataFrame.groupby.aggregate : Aggregate using callable, string, dict,
		    or list of string/callables.
		DataFrame.resample.transform : Transforms the Series on each group
		    based on the given function.
		DataFrame.aggregate: Aggregate using one or more
		    operations over the specified axis.
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3, 4, 5],
		...               index=pd.date_range('20130101', periods=5, freq='s'))
		>>> s
		2013-01-01 00:00:00    1
		2013-01-01 00:00:01    2
		2013-01-01 00:00:02    3
		2013-01-01 00:00:03    4
		2013-01-01 00:00:04    5
		Freq: S, dtype: int64
		
		>>> r = s.resample('2s')
		
		>>> r.agg(np.sum)
		2013-01-01 00:00:00    3
		2013-01-01 00:00:02    7
		2013-01-01 00:00:04    5
		Freq: 2S, dtype: int64
		
		>>> r.agg(['sum', 'mean', 'max'])
		                     sum  mean  max
		2013-01-01 00:00:00    3   1.5    2
		2013-01-01 00:00:02    7   3.5    4
		2013-01-01 00:00:04    5   5.0    5
		
		>>> r.agg({'result': lambda x: x.mean() / x.std(),
		...        'total': np.sum})
		                       result  total
		2013-01-01 00:00:00  2.121320      3
		2013-01-01 00:00:02  4.949747      7
		2013-01-01 00:00:04       NaN      5
		
		>>> r.agg(average="mean", total="sum")
		                         average  total
		2013-01-01 00:00:00      1.5      3
		2013-01-01 00:00:02      3.5      7
		2013-01-01 00:00:04      5.0      5
	**/
	public function agg(?func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		scalar, Series or DataFrame
		
		    The return can be:
		
		    * scalar : when Series.agg is called with single function
		    * Series : when DataFrame.agg is called with a single function
		    * DataFrame : when DataFrame.agg is called with several functions
		
		    Return scalar, Series or DataFrame.
		
		See Also
		--------
		DataFrame.groupby.aggregate : Aggregate using callable, string, dict,
		    or list of string/callables.
		DataFrame.resample.transform : Transforms the Series on each group
		    based on the given function.
		DataFrame.aggregate: Aggregate using one or more
		    operations over the specified axis.
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3, 4, 5],
		...               index=pd.date_range('20130101', periods=5, freq='s'))
		>>> s
		2013-01-01 00:00:00    1
		2013-01-01 00:00:01    2
		2013-01-01 00:00:02    3
		2013-01-01 00:00:03    4
		2013-01-01 00:00:04    5
		Freq: S, dtype: int64
		
		>>> r = s.resample('2s')
		
		>>> r.agg(np.sum)
		2013-01-01 00:00:00    3
		2013-01-01 00:00:02    7
		2013-01-01 00:00:04    5
		Freq: 2S, dtype: int64
		
		>>> r.agg(['sum', 'mean', 'max'])
		                     sum  mean  max
		2013-01-01 00:00:00    3   1.5    2
		2013-01-01 00:00:02    7   3.5    4
		2013-01-01 00:00:04    5   5.0    5
		
		>>> r.agg({'result': lambda x: x.mean() / x.std(),
		...        'total': np.sum})
		                       result  total
		2013-01-01 00:00:00  2.121320      3
		2013-01-01 00:00:02  4.949747      7
		2013-01-01 00:00:04       NaN      5
		
		>>> r.agg(average="mean", total="sum")
		                         average  total
		2013-01-01 00:00:00      1.5      3
		2013-01-01 00:00:02      3.5      7
		2013-01-01 00:00:04      5.0      5
	**/
	public function aggregate(?func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		scalar, Series or DataFrame
		
		    The return can be:
		
		    * scalar : when Series.agg is called with single function
		    * Series : when DataFrame.agg is called with a single function
		    * DataFrame : when DataFrame.agg is called with several functions
		
		    Return scalar, Series or DataFrame.
		
		See Also
		--------
		DataFrame.groupby.aggregate : Aggregate using callable, string, dict,
		    or list of string/callables.
		DataFrame.resample.transform : Transforms the Series on each group
		    based on the given function.
		DataFrame.aggregate: Aggregate using one or more
		    operations over the specified axis.
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3, 4, 5],
		...               index=pd.date_range('20130101', periods=5, freq='s'))
		>>> s
		2013-01-01 00:00:00    1
		2013-01-01 00:00:01    2
		2013-01-01 00:00:02    3
		2013-01-01 00:00:03    4
		2013-01-01 00:00:04    5
		Freq: S, dtype: int64
		
		>>> r = s.resample('2s')
		
		>>> r.agg(np.sum)
		2013-01-01 00:00:00    3
		2013-01-01 00:00:02    7
		2013-01-01 00:00:04    5
		Freq: 2S, dtype: int64
		
		>>> r.agg(['sum', 'mean', 'max'])
		                     sum  mean  max
		2013-01-01 00:00:00    3   1.5    2
		2013-01-01 00:00:02    7   3.5    4
		2013-01-01 00:00:04    5   5.0    5
		
		>>> r.agg({'result': lambda x: x.mean() / x.std(),
		...        'total': np.sum})
		                       result  total
		2013-01-01 00:00:00  2.121320      3
		2013-01-01 00:00:02  4.949747      7
		2013-01-01 00:00:04       NaN      5
		
		>>> r.agg(average="mean", total="sum")
		                         average  total
		2013-01-01 00:00:00      1.5      3
		2013-01-01 00:00:02      3.5      7
		2013-01-01 00:00:04      5.0      5
	**/
	public function apply(?func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the values at the new freq, essentially a reindex.
		
		Parameters
		----------
		fill_value : scalar, optional
		    Value to use for missing values, applied during upsampling (note
		    this does not fill NaNs that already were present).
		
		Returns
		-------
		DataFrame or Series
		    Values at the specified freq.
		
		See Also
		--------
		Series.asfreq: Convert TimeSeries to specified frequency.
		DataFrame.asfreq: Convert TimeSeries to specified frequency.
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
		limit : int, optional
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
		ffill : Forward fill NaN values.
		Series.fillna : Fill NaN values in the Series using the
		    specified method, which can be 'backfill'.
		DataFrame.fillna : Fill NaN values in the DataFrame using the
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
		
		>>> s.resample('30min').bfill()
		2018-01-01 00:00:00    1
		2018-01-01 00:30:00    2
		2018-01-01 01:00:00    2
		2018-01-01 01:30:00    3
		2018-01-01 02:00:00    3
		Freq: 30T, dtype: int64
		
		>>> s.resample('15min').bfill(limit=2)
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
		
		>>> df.resample('30min').bfill()
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 00:30:00  NaN  3
		2018-01-01 01:00:00  NaN  3
		2018-01-01 01:30:00  6.0  5
		2018-01-01 02:00:00  6.0  5
		
		>>> df.resample('15min').bfill(limit=2)
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
		limit : int, optional
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
		ffill : Forward fill NaN values.
		Series.fillna : Fill NaN values in the Series using the
		    specified method, which can be 'backfill'.
		DataFrame.fillna : Fill NaN values in the DataFrame using the
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
		
		>>> s.resample('30min').bfill()
		2018-01-01 00:00:00    1
		2018-01-01 00:30:00    2
		2018-01-01 01:00:00    2
		2018-01-01 01:30:00    3
		2018-01-01 02:00:00    3
		Freq: 30T, dtype: int64
		
		>>> s.resample('15min').bfill(limit=2)
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
		
		>>> df.resample('30min').bfill()
		                       a  b
		2018-01-01 00:00:00  2.0  1
		2018-01-01 00:30:00  NaN  3
		2018-01-01 01:00:00  NaN  3
		2018-01-01 01:30:00  6.0  5
		2018-01-01 02:00:00  6.0  5
		
		>>> df.resample('15min').bfill(limit=2)
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
		
		Returns
		-------
		Series or DataFrame
		    Count of values within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function count():Dynamic;
	static public var exclusions : Dynamic;
	/**
		Forward fill the values.
		
		Parameters
		----------
		limit : int, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		An upsampled Series.
		
		See Also
		--------
		Series.fillna: Fill NA/NaN values using the specified method.
		DataFrame.fillna: Fill NA/NaN values using the specified method.
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
		
		limit : int, optional
		    Limit of how many consecutive missing values to fill.
		
		Returns
		-------
		Series or DataFrame
		    An upsampled Series or DataFrame with missing values filled.
		
		See Also
		--------
		bfill : Backward fill NaN values in the resampled data.
		ffill : Forward fill NaN values in the resampled data.
		nearest : Fill NaN values in the resampled data
		    with nearest neighbor starting from center.
		interpolate : Fill NaN values using interpolation.
		Series.fillna : Fill NaN values in the Series using the
		    specified method, which can be 'bfill' and 'ffill'.
		DataFrame.fillna : Fill NaN values in the DataFrame using the
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
		Compute first of group values.
		
		Parameters
		----------
		numeric_only : bool, default False
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		min_count : int, default -1
		    The required number of valid values to perform the operation. If fewer
		    than ``min_count`` non-NA values are present the result will be NA.
		
		Returns
		-------
		Series or DataFrame
		    Computed first of values within each group.
	**/
	public function first(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct DataFrame from group with provided name.
		
		Parameters
		----------
		name : object
		    The name of the group to get as a DataFrame.
		obj : DataFrame, default None
		    The DataFrame to take the DataFrame out of.  If
		    it is None, the object groupby was called on will
		    be used.
		
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
		
		Fill NaN values using an interpolation method.
		
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
		      `scipy.interpolate.interp1d`. These methods use the numerical
		      values of the index.  Both 'polynomial' and 'spline' require that
		      you also specify an `order` (int), e.g.
		      ``df.interpolate(method='polynomial', order=5)``.
		    * 'krogh', 'piecewise_polynomial', 'spline', 'pchip', 'akima',
		      'cubicspline': Wrappers around the SciPy interpolation methods of
		      similar names. See `Notes`.
		    * 'from_derivatives': Refers to
		      `scipy.interpolate.BPoly.from_derivatives` which
		      replaces 'piecewise_polynomial' interpolation method in
		      scipy 0.18.
		
		axis : {{0 or 'index', 1 or 'columns', None}}, default None
		    Axis to interpolate along.
		limit : int, optional
		    Maximum number of consecutive NaNs to fill. Must be greater than
		    0.
		inplace : bool, default False
		    Update the data in place if possible.
		limit_direction : {{'forward', 'backward', 'both'}}, Optional
		    Consecutive NaNs will be filled in this direction.
		
		    If limit is specified:
		        * If 'method' is 'pad' or 'ffill', 'limit_direction' must be 'forward'.
		        * If 'method' is 'backfill' or 'bfill', 'limit_direction' must be
		          'backwards'.
		
		    If 'limit' is not specified:
		        * If 'method' is 'backfill' or 'bfill', the default is 'backward'
		        * else the default is 'forward'
		
		    .. versionchanged:: 1.1.0
		        raises ValueError if `limit_direction` is 'forward' or 'both' and
		            method is 'backfill' or 'bfill'.
		        raises ValueError if `limit_direction` is 'backward' or 'both' and
		            method is 'pad' or 'ffill'.
		
		limit_area : {{`None`, 'inside', 'outside'}}, default None
		    If limit is specified, consecutive NaNs will be filled with this
		    restriction.
		
		    * ``None``: No fill restriction.
		    * 'inside': Only fill NaNs surrounded by valid values
		      (interpolate).
		    * 'outside': Only fill NaNs outside valid values (extrapolate).
		
		downcast : optional, 'infer' or None, defaults to None
		    Downcast dtypes if possible.
		``**kwargs`` : optional
		    Keyword arguments to pass on to the interpolating function.
		
		Returns
		-------
		Series or DataFrame or None
		    Returns the same object type as the caller, interpolated at
		    some or all ``NaN`` values or None if ``inplace=True``.
		
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
		<https://docs.scipy.org/doc/scipy/reference/interpolate.html#univariate-interpolation>`__
		and `SciPy tutorial
		<https://docs.scipy.org/doc/scipy/reference/tutorial/interpolate.html>`__.
		
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
		is no entry before it to use for interpolation.
		
		>>> df = pd.DataFrame([(0.0, np.nan, -1.0, 1.0),
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
		Compute last of group values.
		
		Parameters
		----------
		numeric_only : bool, default False
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		min_count : int, default -1
		    The required number of valid values to perform the operation. If fewer
		    than ``min_count`` non-NA values are present the result will be NA.
		
		Returns
		-------
		Series or DataFrame
		    Computed last of values within each group.
	**/
	public function last(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute max of group values.
		
		Parameters
		----------
		numeric_only : bool, default False
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		min_count : int, default -1
		    The required number of valid values to perform the operation. If fewer
		    than ``min_count`` non-NA values are present the result will be NA.
		
		Returns
		-------
		Series or DataFrame
		    Computed max of values within each group.
	**/
	public function max(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute mean of groups, excluding missing values.
		
		Parameters
		----------
		numeric_only : bool, default True
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting
		      ``compute.use_numba``
		
		    .. versionadded:: 1.4.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{{'nopython': True, 'nogil': False, 'parallel': False}}``
		
		    .. versionadded:: 1.4.0
		
		Returns
		-------
		pandas.Series or pandas.DataFrame
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 1, 2, 1, 2],
		...                    'B': [np.nan, 2, 3, 4, 5],
		...                    'C': [1, 2, 1, 1, 2]}, columns=['A', 'B', 'C'])
		
		Groupby one column and return the mean of the remaining columns in
		each group.
		
		>>> df.groupby('A').mean()
		     B         C
		A
		1  3.0  1.333333
		2  4.0  1.500000
		
		Groupby two columns and return the mean of the remaining column.
		
		>>> df.groupby(['A', 'B']).mean()
		         C
		A B
		1 2.0  2.0
		  4.0  1.0
		2 3.0  1.0
		  5.0  2.0
		
		Groupby one column and return the mean of only particular column in
		the group.
		
		>>> df.groupby('A')['B'].mean()
		A
		1    3.0
		2    4.0
		Name: B, dtype: float64
	**/
	public function mean(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute median of groups, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex
		
		Parameters
		----------
		numeric_only : bool, default True
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		
		Returns
		-------
		Series or DataFrame
		    Median of values within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function median(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute min of group values.
		
		Parameters
		----------
		numeric_only : bool, default False
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		min_count : int, default -1
		    The required number of valid values to perform the operation. If fewer
		    than ``min_count`` non-NA values are present the result will be NA.
		
		Returns
		-------
		Series or DataFrame
		    Computed min of values within each group.
	**/
	public function min(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return number of unique elements in the group.
		
		Returns
		-------
		Series
		    Number of unique values within each group.
	**/
	public function nunique(?_method:Dynamic):Dynamic;
	public var obj : Dynamic;
	/**
		Compute open, high, low and close values of a group, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex
		
		Returns
		-------
		DataFrame
		    Open, high, low and close values within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function ohlc(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Forward fill the values.
		
		Parameters
		----------
		limit : int, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		An upsampled Series.
		
		See Also
		--------
		Series.fillna: Fill NA/NaN values using the specified method.
		DataFrame.fillna: Fill NA/NaN values using the specified method.
	**/
	public function pad(?limit:Dynamic):Dynamic;
	/**
		Apply a function `func` with arguments to this Resampler object and return
		the function's result.
		
		Use `.pipe` when you want to improve readability by chaining together
		functions that expect Series, DataFrames, GroupBy or Resampler objects.
		Instead of writing
		
		>>> h(g(f(df.groupby('group')), arg1=a), arg2=b, arg3=c)  # doctest: +SKIP
		
		You can write
		
		>>> (df.groupby('group')
		...    .pipe(f)
		...    .pipe(g, arg1=a)
		...    .pipe(h, arg2=b, arg3=c))  # doctest: +SKIP
		
		which is much more readable.
		
		Parameters
		----------
		func : callable or tuple of (callable, str)
		    Function to apply to this Resampler object or, alternatively,
		    a `(callable, data_keyword)` tuple where `data_keyword` is a
		    string indicating the keyword of `callable` that expects the
		    Resampler object.
		args : iterable, optional
		       Positional arguments passed into `func`.
		kwargs : dict, optional
		         A dictionary of keyword arguments passed into `func`.
		
		Returns
		-------
		object : the return type of `func`.
		
		See Also
		--------
		Series.pipe : Apply a function with arguments to a series.
		DataFrame.pipe: Apply a function with arguments to a dataframe.
		apply : Apply function to each group instead of to the
		    full Resampler object.
		
		Notes
		-----
		See more `here
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/groupby.html#piping-function-calls>`_
		
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
		Compute prod of group values.
		
		Parameters
		----------
		numeric_only : bool, default True
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		min_count : int, default 0
		    The required number of valid values to perform the operation. If fewer
		    than ``min_count`` non-NA values are present the result will be NA.
		
		Returns
		-------
		Series or DataFrame
		    Computed prod of values within each group.
	**/
	public function prod(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value at the given quantile.
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		
		Returns
		-------
		DataFrame or Series
		    Quantile of values within each group.
		
		See Also
		--------
		Series.quantile
		    Return a series, where the index is q and the values are the quantiles.
		DataFrame.quantile
		    Return a DataFrame, where the columns are the columns of self,
		    and the values are the quantiles.
		DataFrameGroupBy.quantile
		    Return a DataFrame, where the coulmns are groupby columns,
		    and the values are its quantiles.
	**/
	public function quantile(?q:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute standard error of the mean of groups, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex.
		
		Parameters
		----------
		ddof : int, default 1
		    Degrees of freedom.
		
		Returns
		-------
		Series or DataFrame
		    Standard error of the mean of values within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function sem(?_method:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute group sizes.
		
		Returns
		-------
		DataFrame or Series
		    Number of rows in each group as a Series if as_index is True
		    or a DataFrame if as_index is False.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function size():Dynamic;
	/**
		Compute standard deviation of groups, excluding missing values.
		
		Parameters
		----------
		ddof : int, default 1
		    Degrees of freedom.
		
		Returns
		-------
		DataFrame or Series
		    Standard deviation of values within each group.
	**/
	public function std(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute sum of group values.
		
		Parameters
		----------
		numeric_only : bool, default True
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data.
		min_count : int, default 0
		    The required number of valid values to perform the operation. If fewer
		    than ``min_count`` non-NA values are present the result will be NA.
		
		Returns
		-------
		Series or DataFrame
		    Computed sum of values within each group.
	**/
	public function sum(?_method:Dynamic, ?min_count:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call function producing a like-indexed Series on each group and return
		a Series with the transformed values.
		
		Parameters
		----------
		arg : function
		    To apply to each group. Should return a Series with the same index.
		
		Returns
		-------
		transformed : Series
		
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
		
		>>> resampled = s.resample('15min')
		>>> resampled.transform(lambda x: (x - x.mean()) / x.std())
		2018-01-01 00:00:00   NaN
		2018-01-01 01:00:00   NaN
		Freq: H, dtype: float64
	**/
	public function transform(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Compute variance of groups, excluding missing values.
		
		Parameters
		----------
		ddof : int, default 1
		    Degrees of freedom.
		
		Returns
		-------
		DataFrame or Series
		    Variance of values within each group.
	**/
	@:native("var")
	public function _var(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}