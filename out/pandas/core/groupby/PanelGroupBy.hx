/* This file is generated, do not edit! */
package pandas.core.groupby;
@:pythonImport("pandas.core.groupby", "PanelGroupBy") extern class PanelGroupBy {
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
	public function ___init__(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic):Void;
	/**
		Groupby iterator
		
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
	public function _aggregate_generic(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _aggregate_item_by_item(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _aggregate_multiple_funcs(arg:Dynamic):Dynamic;
	public function _apply_filter(indices:Dynamic, dropna:Dynamic):Dynamic;
	static public var _apply_whitelist : Dynamic;
	static public var _block_agg_axis : Dynamic;
	public function _choose_path(fast_path:Dynamic, slow_path:Dynamic, group:Dynamic):Dynamic;
	public function _concat_objects(keys:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		arr is where cumcount gets its values from
		
		note: this is currently implementing sort=False (though the default is sort=True)
		      for groupby in general
	**/
	public function _cumcount_array(?arr:Dynamic, ?ascending:Dynamic):Dynamic;
	public function _cython_agg_blocks(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	public function _cython_agg_general(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	public function _decide_output_index(output:Dynamic, labels:Dynamic):Dynamic;
	public function _define_paths(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	public function _get_data_to_aggregate():Dynamic;
	/**
		safe get index, translate keys for datelike to underlying repr 
	**/
	public function _get_index(name:Dynamic):Dynamic;
	/**
		safe get multiple indices, translate keys for datelike to underlying repr 
	**/
	public function _get_indices(names:Dynamic):Dynamic;
	static public var _group_selection : Dynamic;
	/**
		Take boolean mask of index to be returned from apply, if as_index=True
	**/
	public function _index_with_as_index(b:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	public function _iterate_slices():Dynamic;
	public function _make_wrapper(name:Dynamic):Dynamic;
	static public var _obj_with_exclusions : Dynamic;
	public function _post_process_cython_aggregate(obj:Dynamic):Dynamic;
	public function _python_agg_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _python_apply_general(f:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	static public var _selected_obj : Dynamic;
	public var _selection_list : Dynamic;
	public function _set_result_index_ordered(result:Dynamic):Dynamic;
	/**
		we may need create a selection if we have non-level groupers 
	**/
	public function _set_selection_from_grouper():Dynamic;
	public function _transform_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _transform_item_by_item(obj:Dynamic, wrapper:Dynamic):Dynamic;
	/**
		try to cast the result to our obj original type,
		we may have roundtripped thru object in the mean-time
	**/
	public function _try_cast(result:Dynamic, obj:Dynamic):Dynamic;
	public function _wrap_agged_blocks(items:Dynamic, blocks:Dynamic):Dynamic;
	public function _wrap_aggregated_output(output:Dynamic, ?names:Dynamic):Dynamic;
	public function _wrap_applied_output(keys:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	public function _wrap_generic_output(result:Dynamic, obj:Dynamic):Dynamic;
	/**
		Aggregate using input function or dict of {column -> function}
		
		Parameters
		----------
		arg : function or dict
		    Function to use for aggregating groups. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply. If
		    passed a dict, the keys must be DataFrame column names.
		
		Notes
		-----
		Numpy functions mean/median/prod/sum/std/var are special cased so the
		default behavior is applying the function along axis=0
		(e.g., np.mean(arr_2d, axis=0)) as opposed to
		mimicking the default Numpy behavior (e.g., np.mean(arr_2d)).
		
		Returns
		-------
		aggregated : DataFrame
	**/
	public function agg(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregate using input function or dict of {column -> function}
		
		Parameters
		----------
		arg : function or dict
		    Function to use for aggregating groups. If a function, must either
		    work when passed a Panel or when passed to Panel.apply. If
		    pass a dict, the keys must be DataFrame column names
		
		Returns
		-------
		aggregated : Panel
	**/
	public function aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply function and combine results together in an intelligent way. The
		split-apply-combine combination rules attempt to be as common sense
		based as possible. For example:
		
		case 1:
		group DataFrame
		apply aggregation function (f(chunk) -> Series)
		yield DataFrame, with group axis having group labels
		
		case 2:
		group DataFrame
		apply transform function ((f(chunk) -> DataFrame with same indexes)
		yield DataFrame with resulting chunks glued together
		
		case 3:
		group Series
		apply function with f(chunk) -> DataFrame
		yield DataFrame with result of chunks glued together
		
		Parameters
		----------
		func : function
		
		Notes
		-----
		See online documentation for full exposition on how to use apply.
		
		In the current implementation apply calls func twice on the
		first group to decide whether it can take a fast or slow code
		path. This can lead to unexpected behavior if func has
		side-effects, as they will take effect twice for the first
		group.
		
		
		See also
		--------
		aggregate, transform
		
		Returns
		-------
		applied : type depending on grouped object and function
	**/
	public function apply(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute count of group, excluding missing values 
	**/
	public function count():Dynamic;
	/**
		Number each item in each group from 0 to the length of that group - 1.
		
		Essentially this is equivalent to
		
		>>> self.apply(lambda x: Series(np.arange(len(x)), x.index))
		
		Parameters
		----------
		ascending : bool, default True
		    If False, number in reverse, from length of group - 1 to 0.
		
		Examples
		--------
		
		>>> df = pd.DataFrame([['a'], ['a'], ['a'], ['b'], ['b'], ['a']],
		...                   columns=['A'])
		>>> df
		   A
		0  a
		1  a
		2  a
		3  b
		4  b
		5  a
		>>> df.groupby('A').cumcount()
		0    0
		1    1
		2    2
		3    0
		4    1
		5    3
		dtype: int64
		>>> df.groupby('A').cumcount(ascending=False)
		0    3
		1    2
		2    1
		3    1
		4    0
		5    0
		dtype: int64
	**/
	public function cumcount(?ascending:Dynamic):Dynamic;
	/**
		Return a copy of a DataFrame excluding elements from groups that
		do not satisfy the boolean criterion specified by func.
		
		Parameters
		----------
		f : function
		    Function to apply to each subframe. Should return True or False.
		dropna : Drop groups that do not pass the filter. True by default;
		    if False, groups that evaluate False are filled with NaNs.
		
		Notes
		-----
		Each subframe is endowed the attribute 'name' in case you need to know
		which group you are working on.
		
		Examples
		--------
		>>> grouped = df.groupby(lambda x: mapping[x])
		>>> grouped.filter(lambda x: x['A'].sum() + x['B'].sum() > 0)
	**/
	public function filter(func:Dynamic, ?dropna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute first of group values
	**/
	public function first():Dynamic;
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
		Returns first n rows of each group.
		
		Essentially equivalent to ``.apply(lambda x: x.head(n))``,
		except ignores as_index flag.
		
		Examples
		--------
		
		>>> df = DataFrame([[1, 2], [1, 4], [5, 6]],
		                    columns=['A', 'B'])
		>>> df.groupby('A', as_index=False).head(1)
		   A  B
		0  1  2
		2  5  6
		>>> df.groupby('A').head(1)
		   A  B
		0  1  2
		2  5  6
	**/
	public function head(?n:Dynamic):Dynamic;
	/**
		dict {group name -> group indices} 
	**/
	public var indices : Dynamic;
	/**
		DEPRECATED. Use ``.nth(i)`` instead
	**/
	public function irow(i:Dynamic):Dynamic;
	/**
		Compute last of group values
	**/
	public function last():Dynamic;
	/**
		Compute max of group values
	**/
	public function max():Dynamic;
	/**
		Compute mean of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
	**/
	public function mean():Dynamic;
	/**
		Compute median of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
	**/
	public function median():Dynamic;
	/**
		Compute min of group values
	**/
	public function min():Dynamic;
	public var name : Dynamic;
	public var ngroups : Dynamic;
	/**
		Take the nth row from each group if n is an int, or a subset of rows
		if n is a list of ints.
		
		If dropna, will take the nth non-null row, dropna is either
		Truthy (if a Series) or 'all', 'any' (if a DataFrame); this is equivalent
		to calling dropna(how=dropna) before the groupby.
		
		Parameters
		----------
		n : int or list of ints
		    a single nth value for the row or a list of nth values
		dropna : None or str, optional
		    apply the specified dropna operation before counting which row is
		    the nth row. Needs to be None, 'any' or 'all'
		
		Examples
		--------
		>>> df = DataFrame([[1, np.nan], [1, 4], [5, 6]], columns=['A', 'B'])
		>>> g = df.groupby('A')
		>>> g.nth(0)
		   A   B
		0  1 NaN
		2  5   6
		>>> g.nth(1)
		   A  B
		1  1  4
		>>> g.nth(-1)
		   A  B
		1  1  4
		2  5  6
		>>> g.nth(0, dropna='any')
		   B
		A
		1  4
		5  6
		>>> g.nth(1, dropna='any')  # NaNs denote group exhausted when using dropna
		    B
		A
		1 NaN
		5 NaN
	**/
	public function nth(n:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Compute sum of values, excluding missing values
		For multiple groupings, the result index will be a MultiIndex
	**/
	public function ohlc():Dynamic;
	/**
		Class implementing the .plot attribute for groupby objects
	**/
	public var plot : Dynamic;
	/**
		Compute prod of group values
	**/
	public function prod():Dynamic;
	/**
		Compute standard error of the mean of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
	**/
	public function sem(?ddof:Dynamic):Dynamic;
	/**
		Compute group sizes
	**/
	public function size():Dynamic;
	/**
		Compute standard deviation of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
	**/
	public function std(?ddof:Dynamic):Dynamic;
	/**
		Compute sum of group values
	**/
	public function sum():Dynamic;
	/**
		Returns last n rows of each group
		
		Essentially equivalent to ``.apply(lambda x: x.tail(n))``,
		except ignores as_index flag.
		
		Examples
		--------
		
		>>> df = DataFrame([['a', 1], ['a', 2], ['b', 1], ['b', 2]],
		                    columns=['A', 'B'])
		>>> df.groupby('A').tail(1)
		   A  B
		1  a  2
		3  b  2
		>>> df.groupby('A').head(1)
		   A  B
		0  a  1
		2  b  1
	**/
	public function tail(?n:Dynamic):Dynamic;
	/**
		Call function producing a like-indexed DataFrame on each group and
		return a DataFrame having the same indexes as the original object
		filled with the transformed values
		
		Parameters
		----------
		f : function
		    Function to apply to each subframe
		
		Notes
		-----
		Each subframe is endowed the attribute 'name' in case you need to know
		which group you are working on.
		
		Examples
		--------
		>>> grouped = df.groupby(lambda x: mapping[x])
		>>> grouped.transform(lambda x: (x - x.mean()) / x.std())
	**/
	public function transform(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute variance of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
	**/
	@:native("var")
	public function _var(?ddof:Dynamic):Dynamic;
}