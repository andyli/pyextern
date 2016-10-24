/* This file is generated, do not edit! */
package pandas.core.groupby;
@:pythonImport("pandas.core.groupby", "SeriesGroupBy") extern class SeriesGroupBy {
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
	public function ___init__(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _aggregate_named(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _apply_filter(indices:Dynamic, dropna:Dynamic):Dynamic;
	/**
		return a pass thru 
	**/
	public function _apply_to_column_groupbys(func:Dynamic):Dynamic;
	static public var _apply_whitelist : Dynamic;
	/**
		we create the grouper on instantiation
		sub-classes may have a different policy
	**/
	public function _assure_grouper():Dynamic;
	static public var _builtin_table : Dynamic;
	public function _concat_objects(keys:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		Parameters
		----------
		ascending : bool, default True
		    If False, number in reverse, from length of group - 1 to 0.
		
		Note
		----
		this is currently implementing sort=False
		(though the default is sort=True) for groupby in general
	**/
	public function _cumcount_array(?ascending:Dynamic):Dynamic;
	public function _cython_agg_general(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	public function _cython_transform(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	static public var _def_str : Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
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
	public function _make_wrapper(name:Dynamic):Dynamic;
	static public var _obj_with_exclusions : Dynamic;
	public function _python_agg_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _python_apply_general(f:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Clear group based selection. Used for methods needing to return info on
		each group regardless of whether a group selection was previously set.
	**/
	public function _reset_group_selection():Dynamic;
	static public var _see_also_template : Dynamic;
	static public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		Create group based selection. Used when selection is not passed
		directly but instead via a grouper.
	**/
	public function _set_group_selection():Dynamic;
	public function _set_result_index_ordered(result:Dynamic):Dynamic;
	/**
		return a new object with the replacement attributes 
	**/
	public function _shallow_copy(?obj:Dynamic, ?obj_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		fast version of transform, only applicable to
		builtin/cythonizable functions
	**/
	public function _transform_fast(func:Dynamic):Dynamic;
	/**
		try to cast the result to our obj original type,
		we may have roundtripped thru object in the mean-time
	**/
	public function _try_cast(result:Dynamic, obj:Dynamic):Dynamic;
	public function _wrap_aggregated_output(output:Dynamic, ?names:Dynamic):Dynamic;
	public function _wrap_applied_output(keys:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		common agg/transform wrapping logic 
	**/
	public function _wrap_output(output:Dynamic, index:Dynamic, ?names:Dynamic):Dynamic;
	public function _wrap_transformed_output(output:Dynamic, ?names:Dynamic):Dynamic;
	/**
		Apply aggregation function or functions to groups, yielding most likely
		Series but in some cases DataFrame depending on the output of the
		aggregation function
		
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
		>>> series
		bar    1.0
		baz    2.0
		qot    3.0
		qux    4.0
		
		>>> mapper = lambda x: x[0] # first letter
		>>> grouped = series.groupby(mapper)
		
		>>> grouped.aggregate(np.sum)
		b    3.0
		q    7.0
		
		>>> grouped.aggregate([np.sum, np.mean, np.std])
		   mean  std  sum
		b  1.5   0.5  3
		q  3.5   0.5  7
		
		>>> grouped.agg({'result' : lambda x: x.mean() / x.std(),
		...              'total' : np.sum})
		   result  total
		b  2.121   3
		q  4.95    7
		
		See also
		--------
		apply, transform
		
		Returns
		-------
		Series or DataFrame
	**/
	public function agg(func_or_funcs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply aggregation function or functions to groups, yielding most likely
		Series but in some cases DataFrame depending on the output of the
		aggregation function
		
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
		>>> series
		bar    1.0
		baz    2.0
		qot    3.0
		qux    4.0
		
		>>> mapper = lambda x: x[0] # first letter
		>>> grouped = series.groupby(mapper)
		
		>>> grouped.aggregate(np.sum)
		b    3.0
		q    7.0
		
		>>> grouped.aggregate([np.sum, np.mean, np.std])
		   mean  std  sum
		b  1.5   0.5  3
		q  3.5   0.5  7
		
		>>> grouped.agg({'result' : lambda x: x.mean() / x.std(),
		...              'total' : np.sum})
		   result  total
		b  2.121   3
		q  4.95    7
		
		See also
		--------
		apply, transform
		
		Returns
		-------
		Series or DataFrame
	**/
	public function aggregate(func_or_funcs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Include only boolean columns. If None, will attempt to use everything,
		    then use only boolean data. Not implemented for Series.
		
		Returns
		-------
		all : scalar or Series (if level specified)
		
		    
	**/
	public var all : Dynamic;
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
		    Include only boolean columns. If None, will attempt to use everything,
		    then use only boolean data. Not implemented for Series.
		
		Returns
		-------
		any : scalar or Series (if level specified)
		
		    
	**/
	public var any : Dynamic;
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
	**/
	public function apply(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
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
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function bfill(?limit:Dynamic):Dynamic;
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
	public var corr : Float;
	/**
		Compute count of group, excluding missing values 
	**/
	public function count():Dynamic;
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
	public var cov : Float;
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
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function cumcount(?ascending:Dynamic):Dynamic;
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
		cummax : scalar
		
		    
	**/
	public var cummax : Dynamic;
	/**
		    Return cumulative minimum over requested axis.
		
		Parameters
		----------
		axis : {index (0)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		
		Returns
		-------
		cummin : scalar
		
		    
	**/
	public var cummin : Dynamic;
	/**
		Cumulative product for each group
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function cumprod(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cumulative sum for each group
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function cumsum(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public var describe : Dynamic;
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
	public var diff : pandas.Series;
	/**
		return the dtype object of the underlying data 
	**/
	public var dtype : Dynamic;
	/**
		Return an expanding grouper, providing expanding
		functionaility per group
		
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function expanding(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function ffill(?limit:Dynamic):Dynamic;
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
		
		See Also
		--------
		reindex, asfreq
		
		Returns
		-------
		filled : Series
		
		    
	**/
	public var fillna : pandas.Series;
	/**
		Return a copy of a Series excluding elements from groups that
		do not satisfy the boolean criterion specified by func.
		
		Parameters
		----------
		func : function
		    To apply to each group. Should return True or False.
		dropna : Drop groups that do not pass the filter. True by default;
		    if False, groups that evaluate False are filled with NaNs.
		
		Examples
		--------
		>>> grouped.filter(lambda x: x.mean() > 0)
		
		Returns
		-------
		filtered : Series
	**/
	public function filter(func:Dynamic, ?dropna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
	/**
		Compute first of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
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
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
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
	public var hist : Dynamic;
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
	public var idxmax : Dynamic;
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
	public var idxmin : Dynamic;
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
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function last():Dynamic;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		mad : scalar or Series (if level specified)
		
		    
	**/
	public var mad : Dynamic;
	/**
		Compute max of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function max():Dynamic;
	/**
		Compute mean of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function mean(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute median of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function median():Dynamic;
	/**
		Compute min of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function min():Dynamic;
	/**
		since we are a series, we by definition only have
		a single name, but may be the result of a selection or
		the name of our object
	**/
	public var name : Dynamic;
	static public var ndim : Dynamic;
	public var ngroups : Dynamic;
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
		Faster than ``.sort_values(ascending=False).head(n)`` for small `n`
		relative to the size of the ``Series`` object.
		
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
	public function nlargest(?n:Dynamic, ?keep:Dynamic):pandas.Series;
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
	public function nsmallest(?n:Dynamic, ?keep:Dynamic):pandas.Series;
	/**
		Take the nth row from each group if n is an int, or a subset of rows
		if n is a list of ints.
		
		If dropna, will take the nth non-null row, dropna is either
		Truthy (if a Series) or 'all', 'any' (if a DataFrame);
		this is equivalent to calling dropna(how=dropna) before the
		groupby.
		
		Parameters
		----------
		n : int or list of ints
		    a single nth value for the row or a list of nth values
		dropna : None or str, optional
		    apply the specified dropna operation before counting which row is
		    the nth row. Needs to be None, 'any' or 'all'
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'A': [1, 1, 2, 1, 2],
		...                    'B': [np.nan, 2, 3, 4, 5]}, columns=['A', 'B'])
		>>> g = df.groupby('A')
		>>> g.nth(0)
		     B
		A
		1  NaN
		2  3.0
		>>> g.nth(1)
		     B
		A
		1  2.0
		2  5.0
		>>> g.nth(-1)
		     B
		A
		1  4.0
		2  5.0
		>>> g.nth([0, 1])
		     B
		A
		1  NaN
		1  2.0
		2  3.0
		2  5.0
		
		Specifying ``dropna`` allows count ignoring NaN
		
		>>> g.nth(0, dropna='any')
		     B
		A
		1  2.0
		2  3.0
		
		NaNs denote group exhausted when using dropna
		
		>>> g.nth(3, dropna='any')
		    B
		A
		1 NaN
		2 NaN
		
		Specifying ``as_index=False`` in ``groupby`` keeps the original index.
		
		>>> df.groupby('A', as_index=False).nth(1)
		   A    B
		1  1  2.0
		4  2  5.0
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function nth(n:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Returns number of unique elements in the group 
	**/
	public function nunique(?dropna:Dynamic):Dynamic;
	/**
		Compute sum of values, excluding missing values
		For multiple groupings, the result index will be a MultiIndex
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function ohlc():Dynamic;
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
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function pad(?limit:Dynamic):Dynamic;
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
	public var pct_change : pandas.core.frame.NDFrame;
	/**
		Class implementing the .plot attribute for groupby objects
	**/
	public var plot : Dynamic;
	/**
		Compute prod of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function prod():Dynamic;
	/**
		Return value at the given quantile, a la numpy.percentile.
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		    0 <= q <= 1, the quantile(s) to compute
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
	public var quantile : Dynamic;
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
	public var rank : Dynamic;
	/**
		Provide resampling when using a TimeGrouper
		Return a new grouper with our resampler appended
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function resample(rule:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a rolling grouper, providing rolling
		functionaility per group
		
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function rolling(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function sem(?ddof:Dynamic):Dynamic;
	/**
		Shift each group by periods observations
		
		Parameters
		----------
		periods : integer, default 1
		    number of periods to shift
		freq : frequency string
		axis : axis to shift, default 0
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute group sizes
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
	**/
	public function size():Dynamic;
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
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		skew : scalar or Series (if level specified)
		
		    
	**/
	public var skew : Dynamic;
	/**
		Compute standard deviation of groups, excluding missing values
		
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
	public function std(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute sum of group values
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
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
		
		
		See also
		--------
		pandas.Series.groupby
		pandas.DataFrame.groupby
		pandas.Panel.groupby
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
	public var take : pandas.Series;
	/**
		Call function producing a like-indexed Series on each group and return
		a Series with the transformed values
		
		Parameters
		----------
		func : function
		    To apply to each group. Should return a Series with the same index
		
		Examples
		--------
		>>> grouped.transform(lambda x: (x - x.mean()) / x.std())
		
		Returns
		-------
		transformed : Series
	**/
	public function transform(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.Series;
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
	public var tshift : pandas.core.frame.NDFrame;
	/**
		    
		Return np.ndarray of unique values in the object.
		Significantly faster than numpy.unique. Includes NA values.
		The order of the original is preserved.
		
		Returns
		-------
		uniques : np.ndarray
		
		    
	**/
	public var unique : Dynamic;
	public function value_counts(?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Compute variance of groups, excluding missing values
		
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
	@:native("var")
	public function _var(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}