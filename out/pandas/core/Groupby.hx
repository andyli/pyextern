/* This file is generated, do not edit! */
package pandas.core;
@:pythonImport("pandas.core.groupby") extern class Groupby {
	static public var _DATELIKE_DTYPES : Dynamic;
	static public var _INT64_MAX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _agg_doc : Dynamic;
	static public var _common_apply_whitelist : Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
	**/
	static public function _compress_group_index(group_index:Dynamic, ?sort:Dynamic):Dynamic;
	static public function _convert_grouper(axis:Dynamic, grouper:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	static public var _dataframe_apply_whitelist : Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _first_compat(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public var _func_table : Dynamic;
	static public function _get_axes(group:Dynamic):Dynamic;
	/**
		_algos.groupsort_indexer implements `counting sort` and it is at least
		O(ngroups), where
		    ngroups = prod(shape)
		    shape = map(len, keys)
		that is, linear in the number of combinations (cartesian product) of unique
		values of groupby keys. This can be huge when doing multi-key groupby.
		np.argsort(kind='mergesort') is O(count x log(count)) where count is the
		length of the data-frame;
		Both algorithms are `stable` sort and that is necessary for correctness of
		groupby operations. e.g. consider:
		    df.groupby(key)[col].transform('first')
	**/
	static public function _get_group_index_sorter(group_index:Dynamic, ngroups:Dynamic):Dynamic;
	/**
		create and return a BaseGrouper, which is an internal
		mapping of how to create the grouper indexers.
		This may be composed of multiple Grouping objects, indicating
		multiple groupers
		
		Groupers are ultimately index mappings. They can originate as:
		index mappings, keys to columns, functions, or Groupers
		
		Groupers enable local references to axis,level,sort, while
		the passed in axis, level, and sort are 'global'.
		
		This routine tries to figure out what the passing in references
		are and then creates a Grouping for each one, combined into
		a BaseGrouper.
	**/
	static public function _get_grouper(obj:Dynamic, ?key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?sort:Dynamic):Dynamic;
	static public function _get_indices_dict(label_list:Dynamic, keys:Dynamic):Dynamic;
	static public function _groupby_function(name:Dynamic, alias:Dynamic, npfunc:Dynamic, ?numeric_only:Dynamic, ?_convert:Dynamic):Dynamic;
	static public function _groupby_indices(values:Dynamic):Dynamic;
	static public function _indexer_from_factorized(labels:Dynamic, shape:Dynamic, ?compress:Dynamic):Dynamic;
	static public function _int64_overflow_possible(shape:Dynamic):Dynamic;
	static public function _intercept_cython(func:Dynamic):Dynamic;
	static public function _intercept_function(func:Dynamic):Dynamic;
	static public function _is_indexed_like(obj:Dynamic, axes:Dynamic):Dynamic;
	static public function _is_label_like(val:Dynamic):Dynamic;
	static public function _last_compat(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _lexsort_indexer(keys:Dynamic, ?orders:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		This is intended to be a drop-in replacement for np.argsort which handles NaNs
		It adds ascending and na_position parameters.
		GH #6399, #5231
	**/
	static public function _nargsort(items:Dynamic, ?kind:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
	static public var _plotting_methods : Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function _possibly_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	static public function _reorder_by_uniques(uniques:Dynamic, labels:Dynamic):Dynamic;
	static public var _series_apply_whitelist : Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Yields all GroupBy member defs for DataFrame/Series names in _whitelist.
		
		Parameters
		----------
		klass - class where members are defined.  Should be Series or DataFrame
		
		whitelist - list of names of klass methods to be constructed
		
		Returns
		-------
		The generator yields a sequence of strings, each suitable for exec'ing,
		that define implementations of the named methods for DataFrameGroupBy
		or SeriesGroupBy.
		
		Since we don't want to override methods explicitly defined in the
		base class, any such name is skipped.
	**/
	static public function _whitelist_method_generator(klass:Dynamic, whitelist:Dynamic):Dynamic;
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
	static public function boxplot_frame_groupby(grouped:Dynamic, ?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	static public function decons_group_index(comp_labels:Dynamic, shape:Dynamic):Dynamic;
	/**
		reconstruct labels from observed group ids
		
		Parameters
		----------
		xnull: boolean,
		    if nulls are excluded; i.e. -1 labels are passed through
	**/
	static public function decons_obs_group_ids(comp_ids:Dynamic, obs_ids:Dynamic, shape:Dynamic, labels:Dynamic, xnull:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of prefered argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		Generate bin edge offsets and bin labels for one array using another array
		which has bin edge values. Both arrays must be sorted.
		
		Parameters
		----------
		values : array of values
		binner : a comparable array of values representing bins into which to bin
		    the first array. Note, 'values' end-points must fall within 'binner'
		    end-points.
		closed : which end of bin is closed; left (default), right
		
		Returns
		-------
		bins : array of offsets (into 'values' argument) of bins.
		    Zero and last edge are excluded in result, so for instance the first
		    bin is values[0:bin[0]] and the last is values[bin[-1]:]
	**/
	static public function generate_bins_generic(values:Dynamic, binner:Dynamic, closed:Dynamic):Dynamic;
	/**
		For the particular label_list, gets the offsets into the hypothetical list
		representing the totally ordered cartesian product of all possible label
		combinations, *as long as* this space fits within int64 bounds;
		otherwise, though group indices identify unique combinations of
		labels, they cannot be deconstructed.
		- If `sort`, rank of returned ids preserve lexical ranks of labels.
		  i.e. returned id's can be used to do lexical sort on labels;
		- If `xnull` nulls (-1 labels) are passed through.
		
		Parameters
		----------
		labels: sequence of arrays
		    Integers identifying levels at each location
		shape: sequence of ints same length as labels
		    Number of unique levels at each location
		sort: boolean
		    If the ranks of returned ids should match lexical ranks of labels
		xnull: boolean
		    If true nulls are excluded. i.e. -1 values in the labels are
		    passed through
		Returns
		-------
		An array of type int64 where two elements are equal if their corresponding
		labels are equal at all location.
	**/
	static public function get_group_index(labels:Dynamic, shape:Dynamic, sort:Dynamic, xnull:Dynamic):Dynamic;
	static public function get_splitter(data:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Class for grouping and aggregating relational data. See aggregate,
		transform, and apply functions on this object.
		
		It's easiest to use obj.groupby(...) to use GroupBy, but you can also do:
		
		::
		
		    grouped = groupby(obj, ...)
		
		Parameters
		----------
		obj : pandas object
		axis : int, default 0
		level : int, default None
		    Level of MultiIndex
		groupings : list of Grouping objects
		    Most users should ignore this
		exclusions : array-like, optional
		    List of columns to exclude
		name : string
		    Most users should ignore this
		
		Notes
		-----
		After grouping, see aggregate, apply, and transform functions. Here are
		some other brief notes about usage. When grouping by multiple groups, the
		result index will be a MultiIndex (hierarchical) by default.
		
		Iteration produces (key, group) tuples, i.e. chunking the data by group. So
		you can write code like:
		
		::
		
		    grouped = obj.groupby(keys, axis=axis)
		    for key, group in grouped:
		        # do something with the data
		
		Function calls on GroupBy, if not specially implemented, "dispatch" to the
		grouped data. So if you group a DataFrame and wish to invoke the std()
		method on each group, you can simply do:
		
		::
		
		    df.groupby(mapper).std()
		
		rather than
		
		::
		
		    df.groupby(mapper).aggregate(np.std)
		
		You can pass arguments to these "wrapped" functions, too.
		
		See the online documentation for full exposition on these topics and much
		more
		
		Returns
		-------
		**Attributes**
		groups : dict
		    {group name -> group labels}
		len(grouped) : int
		    Number of groups
	**/
	static public function groupby(obj:Dynamic, by:Dynamic, kwds:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	static public function lzip(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Returns a string repr of the arg list of a func call, with any defaults
		
		Examples
		--------
		
		>>> def f(a,b,c=2) :
		>>>     return a*b*c
		>>> print(_make_signature(f))
		a,b,c=2
	**/
	static public function make_signature(func:Dynamic):Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
	static public function numpy_groupby(data:Dynamic, labels:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}