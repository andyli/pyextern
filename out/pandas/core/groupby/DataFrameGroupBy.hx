/* This file is generated, do not edit! */
package pandas.core.groupby;
@:pythonImport("pandas.core.groupby", "DataFrameGroupBy") extern class DataFrameGroupBy {
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	public function _aggregate_generic(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _aggregate_item_by_item(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _aggregate_multiple_funcs(arg:Dynamic):Dynamic;
	public function _apply_filter(indices:Dynamic, dropna:Dynamic):Dynamic;
	public function _apply_to_column_groupbys(func:Dynamic):Dynamic;
	static public var _apply_whitelist : Dynamic;
	static public var _block_agg_axis : Dynamic;
	public function _choose_path(fast_path:Dynamic, slow_path:Dynamic, group:Dynamic):Dynamic;
	public function _concat_objects(keys:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	static public var _constructor : Dynamic;
	/**
		arr is where cumcount gets its values from
		
		note: this is currently implementing sort=False (though the default is sort=True)
		      for groupby in general
	**/
	public function _cumcount_array(?arr:Dynamic, ?ascending:Dynamic):Dynamic;
	public function _cython_agg_blocks(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	public function _cython_agg_general(how:Dynamic, ?numeric_only:Dynamic):Dynamic;
	public function _decide_output_index(output:Dynamic, labels:Dynamic):Dynamic;
	static public var _def_str : Dynamic;
	public function _define_paths(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function _insert_inaxis_grouper_inplace(result:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	public function _iterate_column_groupbys():Dynamic;
	public function _iterate_slices():Dynamic;
	public function _make_wrapper(name:Dynamic):Dynamic;
	static public var _obj_with_exclusions : Dynamic;
	public function _post_process_cython_aggregate(obj:Dynamic):Dynamic;
	public function _python_agg_general(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _python_apply_general(f:Dynamic):Dynamic;
	/**
		if we have categorical groupers, then we want to make sure that
		we have a fully reindex-output to the levels. These may have not participated in
		the groupings (e.g. may have all been nan groups)
		
		This can re-expand the output space
	**/
	public function _reindex_output(result:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	static public var _selected_obj : Dynamic;
	static public var _selection_list : Dynamic;
	public function _set_result_index_ordered(result:Dynamic):Dynamic;
	/**
		we may need create a selection if we have non-level groupers 
	**/
	public function _set_selection_from_grouper():Dynamic;
	public function _transform_general(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function agg(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function aggregate(arg:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var all : Dynamic;
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
	static public var any : Dynamic;
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
	public function apply(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Synonym for NDFrame.fillna(method='bfill')
	**/
	static public var bfill : Dynamic;
	/**
		Make box plots from DataFrameGroupBy data.
		
		Parameters
		----------
		grouped : Grouped DataFrame
		subplots :
		    * ``False`` - no subplots will be used
		    * ``True`` - create a subplot for each group
		column : column name or list of names, or vector
		    Can be any valid input to groupby
		fontsize : int or string
		rot : label rotation angle
		grid : Setting this to True will show the grid
		ax : Matplotlib axis object, default None
		figsize : A tuple (width, height) in inches
		layout : tuple (optional)
		    (rows, columns) for the layout of the plot
		kwds : other plotting keyword arguments to be passed to matplotlib boxplot
		       function
		
		Returns
		-------
		dict of key/value = group key/DataFrame.boxplot return value
		or DataFrame.boxplot return value in case subplots=figures=False
		
		Examples
		--------
		>>> import pandas
		>>> import numpy as np
		>>> import itertools
		>>>
		>>> tuples = [t for t in itertools.product(range(1000), range(4))]
		>>> index = pandas.MultiIndex.from_tuples(tuples, names=['lvl0', 'lvl1'])
		>>> data = np.random.randn(len(index),4)
		>>> df = pandas.DataFrame(data, columns=list('ABCD'), index=index)
		>>>
		>>> grouped = df.groupby(level='lvl1')
		>>> boxplot_frame_groupby(grouped)
		>>>
		>>> grouped = df.unstack(level='lvl1').groupby(level=0, axis=1)
		>>> boxplot_frame_groupby(grouped, subplots=False)
	**/
	public function boxplot(?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, kwds:Dynamic):Dynamic;
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
	static public var corr : Dynamic;
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
	static public var corrwith : Dynamic;
	/**
		Compute count of group, excluding missing values 
	**/
	public function count():Dynamic;
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
	static public var cov : Dynamic;
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
	static public var cummax : Dynamic;
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
	static public var cummin : Dynamic;
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
	static public var cumprod : Dynamic;
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
		sum : Series
		
		    
	**/
	static public var cumsum : Dynamic;
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
	static public var describe : Dynamic;
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
	static public var diff : Dynamic;
	/**
		Return the dtypes in this object 
	**/
	static public var dtypes : Dynamic;
	/**
		Synonym for NDFrame.fillna(method='ffill')
	**/
	static public var ffill : Dynamic;
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
	static public var fillna : Dynamic;
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
	public function filter(func:Dynamic, ?dropna:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var groups : Dynamic;
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
	static public var hist : Dynamic;
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
	static public var idxmax : Dynamic;
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
	static public var idxmin : Dynamic;
	/**
		dict {group name -> group indices} 
	**/
	static public var indices : Dynamic;
	/**
		DEPRECATED. Use ``.nth(i)`` instead
	**/
	public function irow(i:Dynamic):Dynamic;
	/**
		Compute last of group values
	**/
	public function last():Dynamic;
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
	static public var mad : Dynamic;
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
	static public var name : Dynamic;
	static public var ngroups : Dynamic;
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
	static public var pct_change : Dynamic;
	/**
		Class implementing the .plot attribute for groupby objects
	**/
	static public var plot : Dynamic;
	/**
		Compute prod of group values
	**/
	public function prod():Dynamic;
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
	static public var quantile : Dynamic;
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
	static public var rank : Dynamic;
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
	static public var resample : Dynamic;
	/**
		Compute standard error of the mean of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
	**/
	public function sem(?ddof:Dynamic):Dynamic;
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
	static public var shift : Dynamic;
	/**
		Compute group sizes
	**/
	public function size():Dynamic;
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
	static public var skew : Dynamic;
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
	static public var take : Dynamic;
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
	public function transform(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var tshift : Dynamic;
	/**
		Compute variance of groups, excluding missing values
		
		For multiple groupings, the result index will be a MultiIndex
	**/
	@:native("var")
	public function _var(?ddof:Dynamic):Dynamic;
}