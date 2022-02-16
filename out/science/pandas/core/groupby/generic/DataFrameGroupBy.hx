/* This file is generated, do not edit! */
package pandas.core.groupby.generic;
@:pythonImport("pandas.core.groupby.generic", "DataFrameGroupBy") extern class DataFrameGroupBy {
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
	public function __getattribute__(attr:Dynamic):Dynamic;
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
	public function ___init__(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?observed:Dynamic, ?mutated:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?observed:Dynamic, ?mutated:Dynamic, ?dropna:Dynamic):Void;
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
		Return str(self).
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
	static public var _agg_examples_doc : Dynamic;
	public function _agg_general(?numeric_only:Dynamic, ?min_count:Dynamic, alias:Dynamic, npfunc:Dynamic):Dynamic;
	/**
		Fallback to pure-python aggregation if _cython_operation raises
		NotImplementedError.
	**/
	public function _agg_py_fallback(values:Dynamic, ndim:Dynamic, alt:Dynamic):Dynamic;
	public function _aggregate_frame(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _aggregate_item_by_item(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform groupby aggregation routine with the numba engine.
		
		This routine mimics the data splitting routine of the DataSplitter class
		to generate the indices of each group in the sorted data and then passes the
		data and indices into a Numba jitted function.
	**/
	public function _aggregate_with_numba(data:Dynamic, func:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _apply_allowlist : Dynamic;
	public function _apply_filter(indices:Dynamic, dropna:Dynamic):Dynamic;
	public function _apply_to_column_groupbys(func:Dynamic, obj:Dynamic):Dynamic;
	public var _ascending_count : Dynamic;
	/**
		Shared func to call any / all Cython GroupBy implementations.
	**/
	public function _bool_agg(val_test:Dynamic, skipna:Dynamic):Dynamic;
	public function _can_use_transform_fast(result:Dynamic):Dynamic;
	public function _choose_path(fast_path:Dynamic, slow_path:Dynamic, group:Dynamic):Dynamic;
	public function _concat_objects(values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
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
	public function _cython_agg_general(how:Dynamic, alt:Dynamic, numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
	public function _cython_transform(how:Dynamic, ?numeric_only:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _define_paths(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Shared function for `pad` and `backfill` to call Cython method.
		
		Parameters
		----------
		direction : {'ffill', 'bfill'}
		    Direction passed to underlying Cython function. `bfill` will cause
		    values to be filled backwards. `ffill` and any other values will
		    default to a forward fill
		limit : int, default None
		    Maximum number of consecutive values to fill. If `None`, this
		    method will convert to -1 prior to passing to Cython
		
		Returns
		-------
		`Series` or `DataFrame` with filled values
		
		See Also
		--------
		pad : Returns Series with minimum number of char in object.
		backfill : Backward fill the missing values in the dataset.
	**/
	public function _fill(direction:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Get result for Cythonized functions.
		
		Parameters
		----------
		base_func : callable, Cythonized function to be called
		cython_dtype : np.dtype
		    Type of the array that will be modified by the Cython call.
		numeric_only : bool, default True
		    Whether only numeric datatypes should be computed
		needs_counts : bool, default False
		    Whether the counts should be a part of the Cython call
		needs_mask : bool, default False
		    Whether boolean mask needs to be part of the Cython call
		    signature
		needs_nullable : bool, default False
		    Whether a bool specifying if the input is nullable is part
		    of the Cython call signature
		pre_processing : function, default None
		    Function to be applied to `values` prior to passing to Cython.
		    Function should return a tuple where the first element is the
		    values to be passed to Cython and the second element is an optional
		    type which the values should be converted to after being returned
		    by the Cython operation. This function is also responsible for
		    raising a TypeError if the values have an invalid type. Raises
		    if `needs_values` is False.
		post_processing : function, default None
		    Function to be applied to result of Cython function. Should accept
		    an array of values as the first argument and type inferences as its
		    second argument, i.e. the signature should be
		    (ndarray, Type). If `needs_nullable=True`, a third argument should be
		    `nullable`, to allow for processing specific to nullable values.
		**kwargs : dict
		    Extra arguments to be passed back to Cython funcs
		
		Returns
		-------
		`Series` or `DataFrame`  with filled values
	**/
	public function _get_cythonized_result(base_func:Dynamic, cython_dtype:Dynamic, ?numeric_only:Dynamic, ?needs_counts:Dynamic, ?needs_nullable:Dynamic, ?needs_mask:Dynamic, ?pre_processing:Dynamic, ?post_processing:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _get_data_to_aggregate():Dynamic;
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
		sub-classes to define
		return a sliced object
		
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
		Set / reset the _group_selection_context.
	**/
	public function _group_selection_context():Dynamic;
	static public var _hidden_attrs : Dynamic;
	/**
		Wrap the dict result of a GroupBy aggregation into a DataFrame.
	**/
	public function _indexed_output_to_ndframe(output:Dynamic):Dynamic;
	public function _insert_inaxis_grouper_inplace(result:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	static public var _is_protocol : Dynamic;
	public function _iterate_column_groupbys(obj:Dynamic):Dynamic;
	public function _iterate_slices():Dynamic;
	public function _make_mask_from_int(arg:Dynamic):Dynamic;
	public function _make_mask_from_list(args:Dynamic):Dynamic;
	public function _make_mask_from_positional_indexer(arg:Dynamic):Dynamic;
	public function _make_mask_from_slice(arg:Dynamic):Dynamic;
	public function _make_mask_from_tuple(args:Dynamic):Dynamic;
	public function _make_wrapper(name:Dynamic):Dynamic;
	/**
		Return _selected_obj with mask applied to the correct axis.
		
		Parameters
		----------
		mask : np.ndarray
		    Boolean mask to apply.
		
		Returns
		-------
		Series or DataFrame
		    Filtered _selected_obj.
	**/
	public function _mask_selected_obj(mask:Dynamic):Dynamic;
	/**
		Perform groupby with a standard numerical aggregation function (e.g. mean)
		with Numba.
	**/
	public function _numba_agg_general(func:Dynamic, engine_kwargs:Dynamic, numba_cache_key_str:Dynamic, ?aggregator_args:python.VarArgs<Dynamic>):Dynamic;
	public function _numba_prep(func:Dynamic, data:Dynamic):Dynamic;
	public var _obj_1d_constructor : Dynamic;
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
	public function _python_agg_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply function f in python space
		
		Parameters
		----------
		f : callable
		    Function to apply
		data : Series or DataFrame
		    Data to apply f to
		not_indexed_same: bool, optional
		    When specified, overrides the value of not_indexed_same. Apply behaves
		    differently when the result index is equal to the input index, but
		    this can be coincidental leading to value-dependent behavior.
		
		Returns
		-------
		Series or DataFrame
		    data after applying f
	**/
	public function _python_apply_general(f:Dynamic, data:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		If we have categorical groupers, then we might want to make sure that
		we have a fully re-indexed output to the levels. This means expanding
		the output space to accommodate all values in the cartesian product of
		our groups, regardless of whether they were observed in the data or
		not. This will expand the output space if there are missing groups.
		
		The method returns early without modifying the input if the number of
		groupings is less than 2, self.observed == True or none of the groupers
		are categorical.
		
		Parameters
		----------
		output : Series or DataFrame
		    Object resulting from grouping and applying an operation.
		fill_value : scalar, default np.NaN
		    Value to use for unobserved categories if self.observed is False.
		qs : np.ndarray[float64] or None, default None
		    quantile values, only relevant for quantile.
		
		Returns
		-------
		Series or DataFrame
		    Object (potentially) re-indexed to include all possible groups.
	**/
	public function _reindex_output(output:Dynamic, ?fill_value:Dynamic, ?qs:Dynamic):Dynamic;
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
	/**
		Determine subclass-specific default value for 'numeric_only'.
		
		For SeriesGroupBy we want the default to be False (to match Series behavior).
		For DataFrameGroupBy we want it to be True (for backwards-compat).
		
		Parameters
		----------
		numeric_only : bool or lib.no_default
		
		Returns
		-------
		bool
	**/
	public function _resolve_numeric_only(numeric_only:Dynamic):Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		Create group based selection.
		
		Used when selection is not passed directly but instead via a grouper.
		
		NOTE: this should be paired with a call to _reset_group_selection
	**/
	public function _set_group_selection():Dynamic;
	public function _set_result_index_ordered(result:Dynamic):Dynamic;
	public function _transform(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _transform_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _transform_item_by_item(obj:Dynamic, wrapper:Dynamic):Dynamic;
	/**
		Perform groupby transform routine with the numba engine.
		
		This routine mimics the data splitting routine of the DataSplitter class
		to generate the indices of each group in the sorted data and then passes the
		data and indices into a Numba jitted function.
	**/
	public function _transform_with_numba(data:Dynamic, func:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _wrap_agged_manager(mgr:Dynamic):Dynamic;
	/**
		Wraps the output of GroupBy aggregations into the expected result.
		
		Parameters
		----------
		output : Series, DataFrame, or Mapping[base.OutputKey, ArrayLike]
		   Data to wrap.
		
		Returns
		-------
		Series or DataFrame
	**/
	public function _wrap_aggregated_output(output:Dynamic, ?qs:Dynamic):Dynamic;
	public function _wrap_applied_output(data:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	public function _wrap_applied_output_series(values:Dynamic, not_indexed_same:Dynamic, first_not_none:Dynamic, key_index:Dynamic):Dynamic;
	/**
		Fast transform path for aggregations.
	**/
	public function _wrap_transform_fast_result(result:Dynamic):Dynamic;
	/**
		Wraps the output of GroupBy transformations into the expected result.
		
		Parameters
		----------
		output : Mapping[base.OutputKey, ArrayLike]
		    Data to wrap.
		
		Returns
		-------
		Series or DataFrame
		    Series for SeriesGroupBy, DataFrame for DataFrameGroupBy
	**/
	public function _wrap_transformed_output(output:Dynamic):Dynamic;
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
		
		    Can also accept a Numba JIT function with
		    ``engine='numba'`` specified. Only passing a single function is supported
		    with this engine.
		
		    If the ``'numba'`` engine is chosen, the function must be
		    a user defined function with ``values`` and ``index`` as the
		    first and second arguments respectively in the function signature.
		    Each group's index will be passed to the user defined function
		    and optionally available for use.
		
		    .. versionchanged:: 1.1.0
		*args
		    Positional arguments to pass to func.
		engine : str, default None
		    * ``'cython'`` : Runs the function through C-extensions from cython.
		    * ``'numba'`` : Runs the function through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		    .. versionadded:: 1.1.0
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}`` and will be
		      applied to the function
		
		    .. versionadded:: 1.1.0
		**kwargs
		    Keyword arguments to be passed into func.
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		DataFrame.groupby.apply : Apply function func group-wise
		    and combine the results together.
		DataFrame.groupby.transform : Aggregate using one or more
		    operations over the specified axis.
		DataFrame.aggregate : Transforms the Series on each group
		    based on the given function.
		
		Notes
		-----
		When using ``engine='numba'``, there will be no "fall back" behavior internally.
		The group data and group index will be passed as numpy arrays to the JITed
		user defined function, and no alternative execution attempts will be tried.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the passed ``func``,
		    see the examples below.
		
		Examples
		--------
		>>> df = pd.DataFrame(
		...     {
		...         "A": [1, 1, 2, 2],
		...         "B": [1, 2, 3, 4],
		...         "C": [0.362838, 0.227877, 1.267767, -0.562860],
		...     }
		... )
		
		>>> df
		   A  B         C
		0  1  1  0.362838
		1  1  2  0.227877
		2  2  3  1.267767
		3  2  4 -0.562860
		
		The aggregation is for each column.
		
		>>> df.groupby('A').agg('min')
		   B         C
		A
		1  1  0.227877
		2  3 -0.562860
		
		Multiple aggregations
		
		>>> df.groupby('A').agg(['min', 'max'])
		    B             C
		  min max       min       max
		A
		1   1   2  0.227877  0.362838
		2   3   4 -0.562860  1.267767
		
		Select a column for aggregation
		
		>>> df.groupby('A').B.agg(['min', 'max'])
		   min  max
		A
		1    1    2
		2    3    4
		
		Different aggregations per column
		
		>>> df.groupby('A').agg({'B': ['min', 'max'], 'C': 'sum'})
		    B             C
		  min max       sum
		A
		1   1   2  0.590715
		2   3   4  0.704907
		
		To control the output names with different aggregations per column,
		pandas supports "named aggregation"
		
		>>> df.groupby("A").agg(
		...     b_min=pd.NamedAgg(column="B", aggfunc="min"),
		...     c_sum=pd.NamedAgg(column="C", aggfunc="sum"))
		   b_min     c_sum
		A
		1      1  0.590715
		2      3  0.704907
		
		- The keywords are the *output* column names
		- The values are tuples whose first element is the column to select
		  and the second element is the aggregation to apply to that column.
		  Pandas provides the ``pandas.NamedAgg`` namedtuple with the fields
		  ``['column', 'aggfunc']`` to make it clearer what the arguments are.
		  As usual, the aggregation can be a callable or a string alias.
		
		See :ref:`groupby.aggregate.named` for more.
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the aggregating function.
		
		>>> df.groupby("A")[["B"]].agg(lambda x: x.astype(float).min())
		      B
		A
		1   1.0
		2   3.0
	**/
	public function agg(?func:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		    Can also accept a Numba JIT function with
		    ``engine='numba'`` specified. Only passing a single function is supported
		    with this engine.
		
		    If the ``'numba'`` engine is chosen, the function must be
		    a user defined function with ``values`` and ``index`` as the
		    first and second arguments respectively in the function signature.
		    Each group's index will be passed to the user defined function
		    and optionally available for use.
		
		    .. versionchanged:: 1.1.0
		*args
		    Positional arguments to pass to func.
		engine : str, default None
		    * ``'cython'`` : Runs the function through C-extensions from cython.
		    * ``'numba'`` : Runs the function through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		    .. versionadded:: 1.1.0
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}`` and will be
		      applied to the function
		
		    .. versionadded:: 1.1.0
		**kwargs
		    Keyword arguments to be passed into func.
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		DataFrame.groupby.apply : Apply function func group-wise
		    and combine the results together.
		DataFrame.groupby.transform : Aggregate using one or more
		    operations over the specified axis.
		DataFrame.aggregate : Transforms the Series on each group
		    based on the given function.
		
		Notes
		-----
		When using ``engine='numba'``, there will be no "fall back" behavior internally.
		The group data and group index will be passed as numpy arrays to the JITed
		user defined function, and no alternative execution attempts will be tried.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the passed ``func``,
		    see the examples below.
		
		Examples
		--------
		>>> df = pd.DataFrame(
		...     {
		...         "A": [1, 1, 2, 2],
		...         "B": [1, 2, 3, 4],
		...         "C": [0.362838, 0.227877, 1.267767, -0.562860],
		...     }
		... )
		
		>>> df
		   A  B         C
		0  1  1  0.362838
		1  1  2  0.227877
		2  2  3  1.267767
		3  2  4 -0.562860
		
		The aggregation is for each column.
		
		>>> df.groupby('A').agg('min')
		   B         C
		A
		1  1  0.227877
		2  3 -0.562860
		
		Multiple aggregations
		
		>>> df.groupby('A').agg(['min', 'max'])
		    B             C
		  min max       min       max
		A
		1   1   2  0.227877  0.362838
		2   3   4 -0.562860  1.267767
		
		Select a column for aggregation
		
		>>> df.groupby('A').B.agg(['min', 'max'])
		   min  max
		A
		1    1    2
		2    3    4
		
		Different aggregations per column
		
		>>> df.groupby('A').agg({'B': ['min', 'max'], 'C': 'sum'})
		    B             C
		  min max       sum
		A
		1   1   2  0.590715
		2   3   4  0.704907
		
		To control the output names with different aggregations per column,
		pandas supports "named aggregation"
		
		>>> df.groupby("A").agg(
		...     b_min=pd.NamedAgg(column="B", aggfunc="min"),
		...     c_sum=pd.NamedAgg(column="C", aggfunc="sum"))
		   b_min     c_sum
		A
		1      1  0.590715
		2      3  0.704907
		
		- The keywords are the *output* column names
		- The values are tuples whose first element is the column to select
		  and the second element is the aggregation to apply to that column.
		  Pandas provides the ``pandas.NamedAgg`` namedtuple with the fields
		  ``['column', 'aggfunc']`` to make it clearer what the arguments are.
		  As usual, the aggregation can be a callable or a string alias.
		
		See :ref:`groupby.aggregate.named` for more.
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the aggregating function.
		
		>>> df.groupby("A")[["B"]].agg(lambda x: x.astype(float).min())
		      B
		A
		1   1.0
		2   3.0
	**/
	public function aggregate(?func:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return True if all values in the group are truthful, else False.
		
		Parameters
		----------
		skipna : bool, default True
		    Flag to ignore nan values during truth testing.
		
		Returns
		-------
		Series or DataFrame
		    DataFrame or Series of boolean values, where a value is True if all elements
		    are True within its respective group, False otherwise.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function all(?skipna:Dynamic):Dynamic;
	/**
		Return True if any value in the group is truthful, else False.
		
		Parameters
		----------
		skipna : bool, default True
		    Flag to ignore nan values during truth testing.
		
		Returns
		-------
		Series or DataFrame
		    DataFrame or Series of boolean values, where a value is True if any element
		    is True within its respective group, False otherwise.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function any(?skipna:Dynamic):Dynamic;
	/**
		Apply function ``func`` group-wise and combine the results together.
		
		The function passed to ``apply`` must take a dataframe as its first
		argument and return a DataFrame, Series or scalar. ``apply`` will
		then take care of combining the results back together into a single
		dataframe or series. ``apply`` is therefore a highly flexible
		grouping method.
		
		While ``apply`` is a very flexible method, its downside is that
		using it can be quite a bit slower than using more specific methods
		like ``agg`` or ``transform``. Pandas offers a wide range of method that will
		be much faster than using ``apply`` for their specific purposes, so try to
		use them before reaching for ``apply``.
		
		Parameters
		----------
		func : callable
		    A callable that takes a dataframe as its first argument, and
		    returns a dataframe, a series or a scalar. In addition the
		    callable may take positional and keyword arguments.
		args, kwargs : tuple and dict
		    Optional positional and keyword arguments to pass to ``func``.
		
		Returns
		-------
		applied : Series or DataFrame
		
		See Also
		--------
		pipe : Apply function to the full GroupBy object instead of to each
		    group.
		aggregate : Apply aggregate function to the GroupBy object.
		transform : Apply function column-by-column to the GroupBy object.
		Series.apply : Apply a function to a Series.
		DataFrame.apply : Apply a function to each row or column of a DataFrame.
		
		Notes
		-----
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the passed ``func``,
		    see the examples below.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'A': 'a a b'.split(),
		...                    'B': [1,2,3],
		...                    'C': [4,6,5]})
		>>> g = df.groupby('A')
		
		Notice that ``g`` has two groups, ``a`` and ``b``.
		Calling `apply` in various ways, we can get different grouping results:
		
		Example 1: below the function passed to `apply` takes a DataFrame as
		its argument and returns a DataFrame. `apply` combines the result for
		each group together into a new DataFrame:
		
		>>> g[['B', 'C']].apply(lambda x: x / x.sum())
		          B    C
		0  0.333333  0.4
		1  0.666667  0.6
		2  1.000000  1.0
		
		Example 2: The function passed to `apply` takes a DataFrame as
		its argument and returns a Series.  `apply` combines the result for
		each group together into a new DataFrame.
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the passed ``func``.
		
		>>> g[['B', 'C']].apply(lambda x: x.astype(float).max() - x.min())
		     B    C
		A
		a  1.0  2.0
		b  0.0  0.0
		
		Example 3: The function passed to `apply` takes a DataFrame as
		its argument and returns a scalar. `apply` combines the result for
		each group together into a Series, including setting the index as
		appropriate:
		
		>>> g.apply(lambda x: x.C.max() - x.B.min())
		A
		a    5
		b    2
		dtype: int64
	**/
	public function apply(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Backward fill the values.
		
		Parameters
		----------
		limit : int, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		Series or DataFrame
		    Object with missing values filled.
		
		See Also
		--------
		Series.bfill :  Backward fill the missing values in the dataset.
		DataFrame.bfill:  Backward fill the missing values in the dataset.
		Series.fillna: Fill NaN values of a Series.
		DataFrame.fillna: Fill NaN values of a DataFrame.
	**/
	public function backfill(?limit:Dynamic):Dynamic;
	/**
		Backward fill the values.
		
		Parameters
		----------
		limit : int, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		Series or DataFrame
		    Object with missing values filled.
		
		See Also
		--------
		Series.bfill :  Backward fill the missing values in the dataset.
		DataFrame.bfill:  Backward fill the missing values in the dataset.
		Series.fillna: Fill NaN values of a Series.
		DataFrame.fillna: Fill NaN values of a DataFrame.
	**/
	public function bfill(?limit:Dynamic):Dynamic;
	/**
		Make box plots from DataFrameGroupBy data.
		
		Parameters
		----------
		grouped : Grouped DataFrame
		subplots : bool
		    * ``False`` - no subplots will be used
		    * ``True`` - create a subplot for each group.
		
		column : column name or list of names, or vector
		    Can be any valid input to groupby.
		fontsize : int or str
		rot : label rotation angle
		grid : Setting this to True will show the grid
		ax : Matplotlib axis object, default None
		figsize : A tuple (width, height) in inches
		layout : tuple (optional)
		    The layout of the plot: (rows, columns).
		sharex : bool, default False
		    Whether x-axes will be shared among subplots.
		sharey : bool, default True
		    Whether y-axes will be shared among subplots.
		backend : str, default None
		    Backend to use instead of the backend specified in the option
		    ``plotting.backend``. For instance, 'matplotlib'. Alternatively, to
		    specify the ``plotting.backend`` for the whole session, set
		    ``pd.options.plotting.backend``.
		
		    .. versionadded:: 1.0.0
		
		**kwargs
		    All other plotting keyword arguments to be passed to
		    matplotlib's boxplot function.
		
		Returns
		-------
		dict of key/value = group key/DataFrame.boxplot return value
		or DataFrame.boxplot return value in case subplots=figures=False
		
		Examples
		--------
		You can create boxplots for grouped data and show them as separate subplots:
		
		.. plot::
		    :context: close-figs
		
		    >>> import itertools
		    >>> tuples = [t for t in itertools.product(range(1000), range(4))]
		    >>> index = pd.MultiIndex.from_tuples(tuples, names=['lvl0', 'lvl1'])
		    >>> data = np.random.randn(len(index),4)
		    >>> df = pd.DataFrame(data, columns=list('ABCD'), index=index)
		    >>> grouped = df.groupby(level='lvl1')
		    >>> grouped.boxplot(rot=45, fontsize=12, figsize=(8,10))  # doctest: +SKIP
		
		The ``subplots=False`` option shows the boxplots in a single figure.
		
		.. plot::
		    :context: close-figs
		
		    >>> grouped.boxplot(subplots=False, rot=45, fontsize=12)  # doctest: +SKIP
	**/
	static public function boxplot(grouped:Dynamic, ?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?backend:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute pairwise correlation of columns, excluding NA/null values.
		
		Parameters
		----------
		method : {'pearson', 'kendall', 'spearman'} or callable
		    Method of correlation:
		
		    * pearson : standard correlation coefficient
		    * kendall : Kendall Tau correlation coefficient
		    * spearman : Spearman rank correlation
		    * callable: callable with input two 1d ndarrays
		        and returning a float. Note that the returned matrix from corr
		        will have 1 along the diagonals and will be symmetric
		        regardless of the callable's behavior.
		min_periods : int, optional
		    Minimum number of observations required per pair of columns
		    to have a valid result. Currently only available for Pearson
		    and Spearman correlation.
		
		Returns
		-------
		DataFrame
		    Correlation matrix.
		
		See Also
		--------
		DataFrame.corrwith : Compute pairwise correlation with another
		    DataFrame or Series.
		Series.corr : Compute the correlation between two Series.
		
		Examples
		--------
		>>> def histogram_intersection(a, b):
		...     v = np.minimum(a, b).sum().round(decimals=1)
		...     return v
		>>> df = pd.DataFrame([(.2, .3), (.0, .6), (.6, .0), (.2, .1)],
		...                   columns=['dogs', 'cats'])
		>>> df.corr(method=histogram_intersection)
		      dogs  cats
		dogs   1.0   0.3
		cats   0.3   1.0
	**/
	public var corr : Dynamic;
	/**
		Compute pairwise correlation.
		
		Pairwise correlation is computed between rows or columns of
		DataFrame with rows or columns of Series or DataFrame. DataFrames
		are first aligned along both axes before computing the
		correlations.
		
		Parameters
		----------
		other : DataFrame, Series
		    Object with which to compute correlations.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to use. 0 or 'index' to compute column-wise, 1 or 'columns' for
		    row-wise.
		drop : bool, default False
		    Drop missing indices from result.
		method : {'pearson', 'kendall', 'spearman'} or callable
		    Method of correlation:
		
		    * pearson : standard correlation coefficient
		    * kendall : Kendall Tau correlation coefficient
		    * spearman : Spearman rank correlation
		    * callable: callable with input two 1d ndarrays
		        and returning a float.
		
		Returns
		-------
		Series
		    Pairwise correlations.
		
		See Also
		--------
		DataFrame.corr : Compute pairwise correlation of columns.
	**/
	public var corrwith : Dynamic;
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
	/**
		Compute pairwise covariance of columns, excluding NA/null values.
		
		Compute the pairwise covariance among the series of a DataFrame.
		The returned data frame is the `covariance matrix
		<https://en.wikipedia.org/wiki/Covariance_matrix>`__ of the columns
		of the DataFrame.
		
		Both NA and null values are automatically excluded from the
		calculation. (See the note below about bias from missing values.)
		A threshold can be set for the minimum number of
		observations for each value created. Comparisons with observations
		below this threshold will be returned as ``NaN``.
		
		This method is generally used for the analysis of time series data to
		understand the relationship between different measures
		across time.
		
		Parameters
		----------
		min_periods : int, optional
		    Minimum number of observations required per pair of columns
		    to have a valid result.
		
		ddof : int, default 1
		    Delta degrees of freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		    .. versionadded:: 1.1.0
		
		Returns
		-------
		DataFrame
		    The covariance matrix of the series of the DataFrame.
		
		See Also
		--------
		Series.cov : Compute covariance with another Series.
		core.window.ExponentialMovingWindow.cov: Exponential weighted sample covariance.
		core.window.Expanding.cov : Expanding sample covariance.
		core.window.Rolling.cov : Rolling sample covariance.
		
		Notes
		-----
		Returns the covariance matrix of the DataFrame's time series.
		The covariance is normalized by N-ddof.
		
		For DataFrames that have Series that are missing data (assuming that
		data is `missing at random
		<https://en.wikipedia.org/wiki/Missing_data#Missing_at_random>`__)
		the returned covariance matrix will be an unbiased estimate
		of the variance and covariance between the member Series.
		
		However, for many applications this estimate may not be acceptable
		because the estimate covariance matrix is not guaranteed to be positive
		semi-definite. This could lead to estimate correlations having
		absolute values which are greater than one, and/or a non-invertible
		covariance matrix. See `Estimation of covariance matrices
		<https://en.wikipedia.org/w/index.php?title=Estimation_of_covariance_
		matrices>`__ for more details.
		
		Examples
		--------
		>>> df = pd.DataFrame([(1, 2), (0, 3), (2, 0), (1, 1)],
		...                   columns=['dogs', 'cats'])
		>>> df.cov()
		          dogs      cats
		dogs  0.666667 -1.000000
		cats -1.000000  1.666667
		
		>>> np.random.seed(42)
		>>> df = pd.DataFrame(np.random.randn(1000, 5),
		...                   columns=['a', 'b', 'c', 'd', 'e'])
		>>> df.cov()
		          a         b         c         d         e
		a  0.998438 -0.020161  0.059277 -0.008943  0.014144
		b -0.020161  1.059352 -0.008543 -0.024738  0.009826
		c  0.059277 -0.008543  1.010670 -0.001486 -0.000271
		d -0.008943 -0.024738 -0.001486  0.921297 -0.013692
		e  0.014144  0.009826 -0.000271 -0.013692  0.977795
		
		**Minimum number of periods**
		
		This method also supports an optional ``min_periods`` keyword
		that specifies the required minimum number of non-NA observations for
		each column pair in order to have a valid result:
		
		>>> np.random.seed(42)
		>>> df = pd.DataFrame(np.random.randn(20, 3),
		...                   columns=['a', 'b', 'c'])
		>>> df.loc[df.index[:5], 'a'] = np.nan
		>>> df.loc[df.index[5:10], 'b'] = np.nan
		>>> df.cov(min_periods=12)
		          a         b         c
		a  0.316741       NaN -0.150812
		b       NaN  1.248003  0.191417
		c -0.150812  0.191417  0.895202
	**/
	public var cov : Dynamic;
	/**
		Number each item in each group from 0 to the length of that group - 1.
		
		Essentially this is equivalent to
		
		.. code-block:: python
		
		    self.apply(lambda x: pd.Series(np.arange(len(x)), x.index))
		
		Parameters
		----------
		ascending : bool, default True
		    If False, number in reverse, from length of group - 1 to 0.
		
		Returns
		-------
		Series
		    Sequence number of each element within each group.
		
		See Also
		--------
		.ngroup : Number the groups themselves.
		
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
		Cumulative max for each group.
		
		Returns
		-------
		Series or DataFrame
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function cummax(?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cumulative min for each group.
		
		Returns
		-------
		Series or DataFrame
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function cummin(?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cumulative product for each group.
		
		Returns
		-------
		Series or DataFrame
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function cumprod(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cumulative sum for each group.
		
		Returns
		-------
		Series or DataFrame
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function cumsum(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generate descriptive statistics.
		
		Descriptive statistics include those that summarize the central
		tendency, dispersion and shape of a
		dataset's distribution, excluding ``NaN`` values.
		
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
		      ``numpy.number``. To limit it instead to object columns submit
		      the ``numpy.object`` data type. Strings
		      can also be used in the style of
		      ``select_dtypes`` (e.g. ``df.describe(include=['O'])``). To
		      select pandas categorical columns, use ``'category'``
		    - None (default) : The result will include all numeric columns.
		exclude : list-like of dtypes or None (default), optional,
		    A black list of data types to omit from the result. Ignored
		    for ``Series``. Here are the options:
		
		    - A list-like of dtypes : Excludes the provided data types
		      from the result. To exclude numeric types submit
		      ``numpy.number``. To exclude object columns submit the data
		      type ``numpy.object``. Strings can also be used in the style of
		      ``select_dtypes`` (e.g. ``df.describe(exclude=['O'])``). To
		      exclude pandas categorical columns, use ``'category'``
		    - None (default) : The result will exclude nothing.
		datetime_is_numeric : bool, default False
		    Whether to treat datetime dtypes as numeric. This affects statistics
		    calculated for the column. For DataFrame input, this also
		    controls whether datetime columns are included by default.
		
		    .. versionadded:: 1.1.0
		
		Returns
		-------
		Series or DataFrame
		    Summary statistics of the Series or Dataframe provided.
		
		See Also
		--------
		DataFrame.count: Count number of non-NA/null observations.
		DataFrame.max: Maximum of the values in the object.
		DataFrame.min: Minimum of the values in the object.
		DataFrame.mean: Mean of the values.
		DataFrame.std: Standard deviation of the observations.
		DataFrame.select_dtypes: Subset of a DataFrame including/excluding
		    columns based on their dtype.
		
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
		return only an analysis of numeric columns. If the dataframe consists
		only of object and categorical data without any numeric columns, the
		default is to return an analysis of both the object and categorical
		columns. If ``include='all'`` is provided as an option, the result
		will include a union of attributes of each type.
		
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
		dtype: float64
		
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
		>>> s.describe(datetime_is_numeric=True)
		count                      3
		mean     2006-09-01 08:00:00
		min      2000-01-01 00:00:00
		25%      2004-12-31 12:00:00
		50%      2010-01-01 00:00:00
		75%      2010-01-01 00:00:00
		max      2010-01-01 00:00:00
		dtype: object
		
		Describing a ``DataFrame``. By default only numeric fields
		are returned.
		
		>>> df = pd.DataFrame({'categorical': pd.Categorical(['d','e','f']),
		...                    'numeric': [1, 2, 3],
		...                    'object': ['a', 'b', 'c']
		...                   })
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
		
		>>> df.describe(include='all')  # doctest: +SKIP
		       categorical  numeric object
		count            3      3.0      3
		unique           3      NaN      3
		top              f      NaN      a
		freq             1      NaN      1
		mean           NaN      2.0    NaN
		std            NaN      1.0    NaN
		min            NaN      1.0    NaN
		25%            NaN      1.5    NaN
		50%            NaN      2.0    NaN
		75%            NaN      2.5    NaN
		max            NaN      3.0    NaN
		
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
		
		>>> df.describe(include=[object])  # doctest: +SKIP
		       object
		count       3
		unique      3
		top         a
		freq        1
		
		Including only categorical columns from a ``DataFrame`` description.
		
		>>> df.describe(include=['category'])
		       categorical
		count            3
		unique           3
		top              d
		freq             1
		
		Excluding numeric columns from a ``DataFrame`` description.
		
		>>> df.describe(exclude=[np.number])  # doctest: +SKIP
		       categorical object
		count            3      3
		unique           3      3
		top              f      a
		freq             1      1
		
		Excluding object columns from a ``DataFrame`` description.
		
		>>> df.describe(exclude=[object])  # doctest: +SKIP
		       categorical  numeric
		count            3      3.0
		unique           3      NaN
		top              f      NaN
		freq             1      NaN
		mean           NaN      2.0
		std            NaN      1.0
		min            NaN      1.0
		25%            NaN      1.5
		50%            NaN      2.0
		75%            NaN      2.5
		max            NaN      3.0
	**/
	public function describe(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		First discrete difference of element.
		
		Calculates the difference of a Dataframe element compared with another
		element in the Dataframe (default is element in previous row).
		
		Parameters
		----------
		periods : int, default 1
		    Periods to shift for calculating difference, accepts negative
		    values.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Take difference over rows (0) or columns (1).
		
		Returns
		-------
		Dataframe
		    First differences of the Series.
		
		See Also
		--------
		Dataframe.pct_change: Percent change over given number of periods.
		Dataframe.shift: Shift index by desired number of periods with an
		    optional time freq.
		Series.diff: First discrete difference of object.
		
		Notes
		-----
		For boolean dtypes, this uses :meth:`operator.xor` rather than
		:meth:`operator.sub`.
		The result is calculated according to current dtype in Dataframe,
		however dtype of the result is always float64.
		
		Examples
		--------
		
		Difference with previous row
		
		>>> df = pd.DataFrame({'a': [1, 2, 3, 4, 5, 6],
		...                    'b': [1, 1, 2, 3, 5, 8],
		...                    'c': [1, 4, 9, 16, 25, 36]})
		>>> df
		   a  b   c
		0  1  1   1
		1  2  1   4
		2  3  2   9
		3  4  3  16
		4  5  5  25
		5  6  8  36
		
		>>> df.diff()
		     a    b     c
		0  NaN  NaN   NaN
		1  1.0  0.0   3.0
		2  1.0  1.0   5.0
		3  1.0  1.0   7.0
		4  1.0  2.0   9.0
		5  1.0  3.0  11.0
		
		Difference with previous column
		
		>>> df.diff(axis=1)
		    a  b   c
		0 NaN  0   0
		1 NaN -1   3
		2 NaN -1   7
		3 NaN -1  13
		4 NaN  0  20
		5 NaN  2  28
		
		Difference with 3rd previous row
		
		>>> df.diff(periods=3)
		     a    b     c
		0  NaN  NaN   NaN
		1  NaN  NaN   NaN
		2  NaN  NaN   NaN
		3  3.0  2.0  15.0
		4  3.0  4.0  21.0
		5  3.0  6.0  27.0
		
		Difference with following row
		
		>>> df.diff(periods=-1)
		     a    b     c
		0 -1.0  0.0  -3.0
		1 -1.0 -1.0  -5.0
		2 -1.0 -1.0  -7.0
		3 -1.0 -2.0  -9.0
		4 -1.0 -3.0 -11.0
		5  NaN  NaN   NaN
		
		Overflow in input dtype
		
		>>> df = pd.DataFrame({'a': [1, 0]}, dtype=np.uint8)
		>>> df.diff()
		       a
		0    NaN
		1  255.0
	**/
	public var diff : Dynamic;
	/**
		Return the dtypes in the DataFrame.
		
		This returns a Series with the data type of each column.
		The result's index is the original DataFrame's columns. Columns
		with mixed types are stored with the ``object`` dtype. See
		:ref:`the User Guide <basics.dtypes>` for more.
		
		Returns
		-------
		pandas.Series
		    The data type of each column.
		
		Examples
		--------
		>>> df = pd.DataFrame({'float': [1.0],
		...                    'int': [1],
		...                    'datetime': [pd.Timestamp('20180310')],
		...                    'string': ['foo']})
		>>> df.dtypes
		float              float64
		int                  int64
		datetime    datetime64[ns]
		string              object
		dtype: object
	**/
	public var dtypes : Dynamic;
	/**
		Return an ewm grouper, providing ewm functionality per group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function ewm(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an expanding grouper, providing expanding
		functionality per group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function expanding(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Forward fill the values.
		
		Parameters
		----------
		limit : int, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		Series or DataFrame
		    Object with missing values filled.
		
		See Also
		--------
		Series.ffill: Returns Series with minimum number of char in object.
		DataFrame.ffill: Object with missing values filled or None if inplace=True.
		Series.fillna: Fill NaN values of a Series.
		DataFrame.fillna: Fill NaN values of a DataFrame.
	**/
	public function ffill(?limit:Dynamic):Dynamic;
	/**
		Fill NA/NaN values using the specified method.
		
		Parameters
		----------
		value : scalar, dict, Series, or DataFrame
		    Value to use to fill holes (e.g. 0), alternately a
		    dict/Series/DataFrame of values specifying which value to use for
		    each index (for a Series) or column (for a DataFrame).  Values not
		    in the dict/Series/DataFrame will not be filled. This value cannot
		    be a list.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use next valid observation to fill gap.
		axis : {0 or 'index', 1 or 'columns'}
		    Axis along which to fill missing values.
		inplace : bool, default False
		    If True, fill in-place. Note: this will modify any
		    other views on this object (e.g., a no-copy slice for a column in a
		    DataFrame).
		limit : int, default None
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled. Must be greater than 0 if not None.
		downcast : dict, default is None
		    A dict of item->dtype of what to downcast if possible,
		    or the string 'infer' which will try to downcast to an appropriate
		    equal type (e.g. float64 to int64 if possible).
		
		Returns
		-------
		DataFrame or None
		    Object with missing values filled or None if ``inplace=True``.
		
		See Also
		--------
		interpolate : Fill NaN values using interpolation.
		reindex : Conform object to new index.
		asfreq : Convert TimeSeries to specified frequency.
		
		Examples
		--------
		>>> df = pd.DataFrame([[np.nan, 2, np.nan, 0],
		...                    [3, 4, np.nan, 1],
		...                    [np.nan, np.nan, np.nan, np.nan],
		...                    [np.nan, 3, np.nan, 4]],
		...                   columns=list("ABCD"))
		>>> df
		     A    B   C    D
		0  NaN  2.0 NaN  0.0
		1  3.0  4.0 NaN  1.0
		2  NaN  NaN NaN  NaN
		3  NaN  3.0 NaN  4.0
		
		Replace all NaN elements with 0s.
		
		>>> df.fillna(0)
		     A    B    C    D
		0  0.0  2.0  0.0  0.0
		1  3.0  4.0  0.0  1.0
		2  0.0  0.0  0.0  0.0
		3  0.0  3.0  0.0  4.0
		
		We can also propagate non-null values forward or backward.
		
		>>> df.fillna(method="ffill")
		     A    B   C    D
		0  NaN  2.0 NaN  0.0
		1  3.0  4.0 NaN  1.0
		2  3.0  4.0 NaN  1.0
		3  3.0  3.0 NaN  4.0
		
		Replace all NaN elements in column 'A', 'B', 'C', and 'D', with 0, 1,
		2, and 3 respectively.
		
		>>> values = {"A": 0, "B": 1, "C": 2, "D": 3}
		>>> df.fillna(value=values)
		     A    B    C    D
		0  0.0  2.0  2.0  0.0
		1  3.0  4.0  2.0  1.0
		2  0.0  1.0  2.0  3.0
		3  0.0  3.0  2.0  4.0
		
		Only replace the first NaN element.
		
		>>> df.fillna(value=values, limit=1)
		     A    B    C    D
		0  0.0  2.0  2.0  0.0
		1  3.0  4.0  NaN  1.0
		2  NaN  1.0  NaN  3.0
		3  NaN  3.0  NaN  4.0
		
		When filling using a DataFrame, replacement happens along
		the same column names and same indices
		
		>>> df2 = pd.DataFrame(np.zeros((4, 4)), columns=list("ABCE"))
		>>> df.fillna(df2)
		     A    B    C    D
		0  0.0  2.0  0.0  0.0
		1  3.0  4.0  0.0  1.0
		2  0.0  0.0  0.0  NaN
		3  0.0  3.0  0.0  4.0
		
		Note that column D is not affected since it is not present in df2.
	**/
	public var fillna : Dynamic;
	/**
		Return a copy of a DataFrame excluding filtered elements.
		
		Elements from groups are filtered if they do not satisfy the
		boolean criterion specified by func.
		
		Parameters
		----------
		func : function
		    Function to apply to each subframe. Should return True or False.
		dropna : Drop groups that do not pass the filter. True by default;
		    If False, groups that evaluate False are filled with NaNs.
		
		Returns
		-------
		filtered : DataFrame
		
		Notes
		-----
		Each subframe is endowed the attribute 'name' in case you need to know
		which group you are working on.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A' : ['foo', 'bar', 'foo', 'bar',
		...                           'foo', 'bar'],
		...                    'B' : [1, 2, 3, 4, 5, 6],
		...                    'C' : [2.0, 5., 8., 1., 2., 9.]})
		>>> grouped = df.groupby('A')
		>>> grouped.filter(lambda x: x['B'].mean() > 3.)
		     A  B    C
		1  bar  2  5.0
		3  bar  4  1.0
		5  bar  6  9.0
	**/
	public function filter(func:Dynamic, ?dropna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
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
	public function first(?numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
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
		Return first n rows of each group.
		
		Similar to ``.apply(lambda x: x.head(n))``, but it returns a subset of rows
		from the original DataFrame with original index and order preserved
		(``as_index`` flag is ignored).
		
		Parameters
		----------
		n : int
		    If positive: number of entries to include from start of each group.
		    If negative: number of entries to exclude from end of each group.
		
		Returns
		-------
		Series or DataFrame
		    Subset of original Series or DataFrame as determined by n.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
		
		Examples
		--------
		
		>>> df = pd.DataFrame([[1, 2], [1, 4], [5, 6]],
		...                   columns=['A', 'B'])
		>>> df.groupby('A').head(1)
		   A  B
		0  1  2
		2  5  6
		>>> df.groupby('A').head(-1)
		   A  B
		0  1  2
	**/
	public function head(?n:Dynamic):Dynamic;
	/**
		Make a histogram of the DataFrame's columns.
		
		A `histogram`_ is a representation of the distribution of data.
		This function calls :meth:`matplotlib.pyplot.hist`, on each series in
		the DataFrame, resulting in one histogram per column.
		
		.. _histogram: https://en.wikipedia.org/wiki/Histogram
		
		Parameters
		----------
		data : DataFrame
		    The pandas object holding the data.
		column : str or sequence, optional
		    If passed, will be used to limit data to a subset of columns.
		by : object, optional
		    If passed, then used to form histograms for separate groups.
		grid : bool, default True
		    Whether to show axis grid lines.
		xlabelsize : int, default None
		    If specified changes the x-axis label size.
		xrot : float, default None
		    Rotation of x axis labels. For example, a value of 90 displays the
		    x labels rotated 90 degrees clockwise.
		ylabelsize : int, default None
		    If specified changes the y-axis label size.
		yrot : float, default None
		    Rotation of y axis labels. For example, a value of 90 displays the
		    y labels rotated 90 degrees clockwise.
		ax : Matplotlib axes object, default None
		    The axes to plot the histogram on.
		sharex : bool, default True if ax is None else False
		    In case subplots=True, share x axis and set some x axis labels to
		    invisible; defaults to True if ax is None otherwise False if an ax
		    is passed in.
		    Note that passing in both an ax and sharex=True will alter all x axis
		    labels for all subplots in a figure.
		sharey : bool, default False
		    In case subplots=True, share y axis and set some y axis labels to
		    invisible.
		figsize : tuple, optional
		    The size in inches of the figure to create. Uses the value in
		    `matplotlib.rcParams` by default.
		layout : tuple, optional
		    Tuple of (rows, columns) for the layout of the histograms.
		bins : int or sequence, default 10
		    Number of histogram bins to be used. If an integer is given, bins + 1
		    bin edges are calculated and returned. If bins is a sequence, gives
		    bin edges, including left edge of first bin and right edge of last
		    bin. In this case, bins is returned unmodified.
		
		backend : str, default None
		    Backend to use instead of the backend specified in the option
		    ``plotting.backend``. For instance, 'matplotlib'. Alternatively, to
		    specify the ``plotting.backend`` for the whole session, set
		    ``pd.options.plotting.backend``.
		
		    .. versionadded:: 1.0.0
		
		legend : bool, default False
		    Whether to show the legend.
		
		    .. versionadded:: 1.1.0
		
		**kwargs
		    All other plotting keyword arguments to be passed to
		    :meth:`matplotlib.pyplot.hist`.
		
		Returns
		-------
		matplotlib.AxesSubplot or numpy.ndarray of them
		
		See Also
		--------
		matplotlib.pyplot.hist : Plot a histogram using matplotlib.
		
		Examples
		--------
		This example draws a histogram based on the length and width of
		some animals, displayed in three bins
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame({
		    ...     'length': [1.5, 0.5, 1.2, 0.9, 3],
		    ...     'width': [0.7, 0.2, 0.15, 0.2, 1.1]
		    ...     }, index=['pig', 'rabbit', 'duck', 'chicken', 'horse'])
		    >>> hist = df.hist(bins=3)
	**/
	public var hist : Dynamic;
	/**
		Return index of first occurrence of maximum over requested axis.
		
		NA/null values are excluded.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to use. 0 or 'index' for row-wise, 1 or 'columns' for column-wise.
		skipna : bool, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		
		Returns
		-------
		Series
		    Indexes of maxima along the specified axis.
		
		Raises
		------
		ValueError
		    * If the row/column is empty
		
		See Also
		--------
		Series.idxmax : Return index of the maximum element.
		
		Notes
		-----
		This method is the DataFrame version of ``ndarray.argmax``.
		
		Examples
		--------
		Consider a dataset containing food consumption in Argentina.
		
		>>> df = pd.DataFrame({'consumption': [10.51, 103.11, 55.48],
		...                    'co2_emissions': [37.2, 19.66, 1712]},
		...                    index=['Pork', 'Wheat Products', 'Beef'])
		
		>>> df
		                consumption  co2_emissions
		Pork                  10.51         37.20
		Wheat Products       103.11         19.66
		Beef                  55.48       1712.00
		
		By default, it returns the index for the maximum value in each column.
		
		>>> df.idxmax()
		consumption     Wheat Products
		co2_emissions             Beef
		dtype: object
		
		To return the index for the maximum value in each row, use ``axis="columns"``.
		
		>>> df.idxmax(axis="columns")
		Pork              co2_emissions
		Wheat Products     consumption
		Beef              co2_emissions
		dtype: object
	**/
	public function idxmax(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Return index of first occurrence of minimum over requested axis.
		
		NA/null values are excluded.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to use. 0 or 'index' for row-wise, 1 or 'columns' for column-wise.
		skipna : bool, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		
		Returns
		-------
		Series
		    Indexes of minima along the specified axis.
		
		Raises
		------
		ValueError
		    * If the row/column is empty
		
		See Also
		--------
		Series.idxmin : Return index of the minimum element.
		
		Notes
		-----
		This method is the DataFrame version of ``ndarray.argmin``.
		
		Examples
		--------
		Consider a dataset containing food consumption in Argentina.
		
		>>> df = pd.DataFrame({'consumption': [10.51, 103.11, 55.48],
		...                    'co2_emissions': [37.2, 19.66, 1712]},
		...                    index=['Pork', 'Wheat Products', 'Beef'])
		
		>>> df
		                consumption  co2_emissions
		Pork                  10.51         37.20
		Wheat Products       103.11         19.66
		Beef                  55.48       1712.00
		
		By default, it returns the index for the minimum value in each column.
		
		>>> df.idxmin()
		consumption                Pork
		co2_emissions    Wheat Products
		dtype: object
		
		To return the index for the minimum value in each row, use ``axis="columns"``.
		
		>>> df.idxmin(axis="columns")
		Pork                consumption
		Wheat Products    co2_emissions
		Beef                consumption
		dtype: object
	**/
	public function idxmin(?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Dict {group name -> group indices}.
	**/
	public var indices : Dynamic;
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
	public function last(?numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
	/**
		Return the mean absolute deviation of the values over the requested axis.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		    Axis for the function to be applied on.
		skipna : bool, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series.
		
		Returns
		-------
		Series or DataFrame (if level specified)                
	**/
	public var mad : Dynamic;
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
	public function max(?numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
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
	public function mean(?numeric_only:Dynamic, ?engine:Dynamic, ?engine_kwargs:Dynamic):Dynamic;
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
	public function median(?numeric_only:Dynamic):Dynamic;
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
	public function min(?numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
	public var ndim : Dynamic;
	/**
		Number each group from 0 to the number of groups - 1.
		
		This is the enumerative complement of cumcount.  Note that the
		numbers given to the groups match the order in which the groups
		would be seen when iterating over the groupby object, not the
		order they are first observed.
		
		Parameters
		----------
		ascending : bool, default True
		    If False, number in reverse, from number of group - 1 to 0.
		
		Returns
		-------
		Series
		    Unique numbers for each group.
		
		See Also
		--------
		.cumcount : Number the rows in each group.
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": list("aaabba")})
		>>> df
		   A
		0  a
		1  a
		2  a
		3  b
		4  b
		5  a
		>>> df.groupby('A').ngroup()
		0    0
		1    0
		2    0
		3    1
		4    1
		5    0
		dtype: int64
		>>> df.groupby('A').ngroup(ascending=False)
		0    1
		1    1
		2    1
		3    0
		4    0
		5    1
		dtype: int64
		>>> df.groupby(["A", [1,1,2,3,2,1]]).ngroup()
		0    0
		1    0
		2    1
		3    3
		4    2
		5    0
		dtype: int64
	**/
	public function ngroup(?ascending:Dynamic):Dynamic;
	public var ngroups : Dynamic;
	/**
		Take the nth row from each group if n is an int, otherwise a subset of rows.
		
		Can be either a call or an index. dropna is not available with index notation.
		Index notation accepts a comma separated list of integers and slices.
		
		If dropna, will take the nth non-null row, dropna is either
		'all' or 'any'; this is equivalent to calling dropna(how=dropna)
		before the groupby.
		
		Parameters
		----------
		n : int, slice or list of ints and slices
		    A single nth value for the row or a list of nth values or slices.
		
		    .. versionchanged:: 1.4.0
		        Added slice and lists containing slices.
		        Added index notation.
		
		dropna : {'any', 'all', None}, default None
		    Apply the specified dropna operation before counting which row is
		    the nth row. Only supported if n is an int.
		
		Returns
		-------
		Series or DataFrame
		    N-th value within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
		
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
		>>> g.nth(slice(None, -1))
		     B
		A
		1  NaN
		1  2.0
		2  3.0
		
		Index notation may also be used
		
		>>> g.nth[0, 1]
		     B
		A
		1  NaN
		1  2.0
		2  3.0
		2  5.0
		>>> g.nth[:-1]
		     B
		A
		1  NaN
		1  2.0
		2  3.0
		
		Specifying `dropna` allows count ignoring ``NaN``
		
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
		
		Specifying `as_index=False` in `groupby` keeps the original index.
		
		>>> df.groupby('A', as_index=False).nth(1)
		   A    B
		1  1  2.0
		4  2  5.0
	**/
	public function nth(n:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Return DataFrame with counts of unique elements in each position.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't include NaN in the counts.
		
		Returns
		-------
		nunique: DataFrame
		
		Examples
		--------
		>>> df = pd.DataFrame({'id': ['spam', 'egg', 'egg', 'spam',
		...                           'ham', 'ham'],
		...                    'value1': [1, 5, 5, 2, 5, 5],
		...                    'value2': list('abbaxy')})
		>>> df
		     id  value1 value2
		0  spam       1      a
		1   egg       5      b
		2   egg       5      b
		3  spam       2      a
		4   ham       5      x
		5   ham       5      y
		
		>>> df.groupby('id').nunique()
		      value1  value2
		id
		egg        1       1
		ham        1       2
		spam       2       1
		
		Check for rows with the same id but conflicting values:
		
		>>> df.groupby('id').filter(lambda g: (g.nunique() > 1).any())
		     id  value1 value2
		0  spam       1      a
		3  spam       2      a
		4   ham       5      x
		5   ham       5      y
	**/
	public function nunique(?dropna:Dynamic):pandas.DataFrame;
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
	public function ohlc():Dynamic;
	/**
		Forward fill the values.
		
		Parameters
		----------
		limit : int, optional
		    Limit of how many values to fill.
		
		Returns
		-------
		Series or DataFrame
		    Object with missing values filled.
		
		See Also
		--------
		Series.ffill: Returns Series with minimum number of char in object.
		DataFrame.ffill: Object with missing values filled or None if inplace=True.
		Series.fillna: Fill NaN values of a Series.
		DataFrame.fillna: Fill NaN values of a DataFrame.
	**/
	public function pad(?limit:Dynamic):Dynamic;
	/**
		Calculate pct_change of each value to previous entry in group.
		
		Returns
		-------
		Series or DataFrame
		    Percentage changes within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function pct_change(?periods:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?freq:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Apply a function `func` with arguments to this GroupBy object and return
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
		    Function to apply to this GroupBy object or, alternatively,
		    a `(callable, data_keyword)` tuple where `data_keyword` is a
		    string indicating the keyword of `callable` that expects the
		    GroupBy object.
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
		    full GroupBy object.
		
		Notes
		-----
		See more `here
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/groupby.html#piping-function-calls>`_
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': 'a b a b'.split(), 'B': [1, 2, 3, 4]})
		>>> df
		   A  B
		0  a  1
		1  b  2
		2  a  3
		3  b  4
		
		To get the difference between each groups maximum and minimum value in one
		pass, you can do
		
		>>> df.groupby('A').pipe(lambda x: x.max() - x.min())
		   B
		A
		a  2
		b  2
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
	public function prod(?numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
	/**
		Return group values at the given quantile, a la numpy.percentile.
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		    Value(s) between 0 and 1 providing the quantile(s) to compute.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    Method to use when the desired quantile falls between two points.
		
		Returns
		-------
		Series or DataFrame
		    Return type determined by caller of GroupBy object.
		
		See Also
		--------
		Series.quantile : Similar method for Series.
		DataFrame.quantile : Similar method for DataFrame.
		numpy.percentile : NumPy method to compute qth percentile.
		
		Examples
		--------
		>>> df = pd.DataFrame([
		...     ['a', 1], ['a', 2], ['a', 3],
		...     ['b', 1], ['b', 3], ['b', 5]
		... ], columns=['key', 'val'])
		>>> df.groupby('key').quantile()
		    val
		key
		a    2.0
		b    3.0
	**/
	public function quantile(?q:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Provide the rank of values within each group.
		
		Parameters
		----------
		method : {'average', 'min', 'max', 'first', 'dense'}, default 'average'
		    * average: average rank of group.
		    * min: lowest rank in group.
		    * max: highest rank in group.
		    * first: ranks assigned in order they appear in the array.
		    * dense: like 'min', but rank always increases by 1 between groups.
		ascending : bool, default True
		    False for ranks by high (1) to low (N).
		na_option : {'keep', 'top', 'bottom'}, default 'keep'
		    * keep: leave NA values where they are.
		    * top: smallest rank if ascending.
		    * bottom: smallest rank if descending.
		pct : bool, default False
		    Compute percentage rank of data within each group.
		axis : int, default 0
		    The axis of the object over which to compute the rank.
		
		Returns
		-------
		DataFrame with ranking of values within each group
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
		
		Examples
		--------
		>>> df = pd.DataFrame(
		...     {
		...         "group": ["a", "a", "a", "a", "a", "b", "b", "b", "b", "b"],
		...         "value": [2, 4, 2, 3, 5, 1, 2, 4, 1, 5],
		...     }
		... )
		>>> df
		  group  value
		0     a      2
		1     a      4
		2     a      2
		3     a      3
		4     a      5
		5     b      1
		6     b      2
		7     b      4
		8     b      1
		9     b      5
		>>> for method in ['average', 'min', 'max', 'dense', 'first']:
		...     df[f'{method}_rank'] = df.groupby('group')['value'].rank(method)
		>>> df
		  group  value  average_rank  min_rank  max_rank  dense_rank  first_rank
		0     a      2           1.5       1.0       2.0         1.0         1.0
		1     a      4           4.0       4.0       4.0         3.0         4.0
		2     a      2           1.5       1.0       2.0         1.0         2.0
		3     a      3           3.0       3.0       3.0         2.0         3.0
		4     a      5           5.0       5.0       5.0         4.0         5.0
		5     b      1           1.5       1.0       2.0         1.0         1.0
		6     b      2           3.0       3.0       3.0         2.0         3.0
		7     b      4           4.0       4.0       4.0         3.0         4.0
		8     b      1           1.5       1.0       2.0         1.0         2.0
		9     b      5           5.0       5.0       5.0         4.0         5.0
	**/
	public function rank(?method:Dynamic, ?ascending:Dynamic, ?na_option:Dynamic, ?pct:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Provide resampling when using a TimeGrouper.
		
		Given a grouper, the function resamples it according to a string
		"string" -> "frequency".
		
		See the :ref:`frequency aliases <timeseries.offset_aliases>`
		documentation for more details.
		
		Parameters
		----------
		rule : str or DateOffset
		    The offset string or object representing target grouper conversion.
		*args, **kwargs
		    Possible arguments are `how`, `fill_method`, `limit`, `kind` and
		    `on`, and other arguments of `TimeGrouper`.
		
		Returns
		-------
		Grouper
		    Return a new grouper with our resampler appended.
		
		See Also
		--------
		Grouper : Specify a frequency to resample with when
		    grouping by a key.
		DatetimeIndex.resample : Frequency conversion and resampling of
		    time series.
		
		Examples
		--------
		>>> idx = pd.date_range('1/1/2000', periods=4, freq='T')
		>>> df = pd.DataFrame(data=4 * [range(2)],
		...                   index=idx,
		...                   columns=['a', 'b'])
		>>> df.iloc[2, 0] = 5
		>>> df
		                    a  b
		2000-01-01 00:00:00  0  1
		2000-01-01 00:01:00  0  1
		2000-01-01 00:02:00  5  1
		2000-01-01 00:03:00  0  1
		
		Downsample the DataFrame into 3 minute bins and sum the values of
		the timestamps falling into a bin.
		
		>>> df.groupby('a').resample('3T').sum()
		                         a  b
		a
		0   2000-01-01 00:00:00  0  2
		    2000-01-01 00:03:00  0  1
		5   2000-01-01 00:00:00  5  1
		
		Upsample the series into 30 second bins.
		
		>>> df.groupby('a').resample('30S').sum()
		                    a  b
		a
		0   2000-01-01 00:00:00  0  1
		    2000-01-01 00:00:30  0  0
		    2000-01-01 00:01:00  0  1
		    2000-01-01 00:01:30  0  0
		    2000-01-01 00:02:00  0  0
		    2000-01-01 00:02:30  0  0
		    2000-01-01 00:03:00  0  1
		5   2000-01-01 00:02:00  5  1
		
		Resample by month. Values are assigned to the month of the period.
		
		>>> df.groupby('a').resample('M').sum()
		            a  b
		a
		0   2000-01-31  0  3
		5   2000-01-31  5  1
		
		Downsample the series into 3 minute bins as above, but close the right
		side of the bin interval.
		
		>>> df.groupby('a').resample('3T', closed='right').sum()
		                         a  b
		a
		0   1999-12-31 23:57:00  0  1
		    2000-01-01 00:00:00  0  2
		5   2000-01-01 00:00:00  5  1
		
		Downsample the series into 3 minute bins and close the right side of
		the bin interval, but label each bin using the right edge instead of
		the left.
		
		>>> df.groupby('a').resample('3T', closed='right', label='right').sum()
		                         a  b
		a
		0   2000-01-01 00:00:00  0  1
		    2000-01-01 00:03:00  0  2
		5   2000-01-01 00:03:00  5  1
	**/
	public function resample(rule:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a rolling grouper, providing rolling functionality per group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function rolling(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a random sample of items from each group.
		
		You can use `random_state` for reproducibility.
		
		.. versionadded:: 1.1.0
		
		Parameters
		----------
		n : int, optional
		    Number of items to return for each group. Cannot be used with
		    `frac` and must be no larger than the smallest group unless
		    `replace` is True. Default is one if `frac` is None.
		frac : float, optional
		    Fraction of items to return. Cannot be used with `n`.
		replace : bool, default False
		    Allow or disallow sampling of the same row more than once.
		weights : list-like, optional
		    Default None results in equal probability weighting.
		    If passed a list-like then values must have the same length as
		    the underlying DataFrame or Series object and will be used as
		    sampling probabilities after normalization within each group.
		    Values must be non-negative with at least one positive element
		    within each group.
		random_state : int, array-like, BitGenerator, np.random.RandomState, np.random.Generator, optional
		    If int, array-like, or BitGenerator, seed for random number generator.
		    If np.random.RandomState or np.random.Generator, use as given.
		
		    .. versionchanged:: 1.4.0
		
		        np.random.Generator objects now accepted
		
		Returns
		-------
		Series or DataFrame
		    A new object of same type as caller containing items randomly
		    sampled within each group from the caller object.
		
		See Also
		--------
		DataFrame.sample: Generate random samples from a DataFrame object.
		numpy.random.choice: Generate a random sample from a given 1-D numpy
		    array.
		
		Examples
		--------
		>>> df = pd.DataFrame(
		...     {"a": ["red"] * 2 + ["blue"] * 2 + ["black"] * 2, "b": range(6)}
		... )
		>>> df
		       a  b
		0    red  0
		1    red  1
		2   blue  2
		3   blue  3
		4  black  4
		5  black  5
		
		Select one row at random for each distinct value in column a. The
		`random_state` argument can be used to guarantee reproducibility:
		
		>>> df.groupby("a").sample(n=1, random_state=1)
		       a  b
		4  black  4
		2   blue  2
		1    red  1
		
		Set `frac` to sample fixed proportions rather than counts:
		
		>>> df.groupby("a")["b"].sample(frac=0.5, random_state=2)
		5    5
		2    2
		0    0
		Name: b, dtype: int64
		
		Control sample probabilities within groups by setting weights:
		
		>>> df.groupby("a").sample(
		...     n=1,
		...     weights=[1, 1, 1, 0, 0, 1],
		...     random_state=1,
		... )
		       a  b
		5  black  5
		2   blue  2
		0    red  0
	**/
	public function sample(?n:Dynamic, ?frac:Dynamic, ?replace:Dynamic, ?weights:Dynamic, ?random_state:Dynamic):Dynamic;
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
	public function sem(?ddof:Dynamic):Dynamic;
	/**
		Shift each group by periods observations.
		
		If freq is passed, the index will be increased using the periods and the freq.
		
		Parameters
		----------
		periods : int, default 1
		    Number of periods to shift.
		freq : str, optional
		    Frequency string.
		axis : axis to shift, default 0
		    Shift direction.
		fill_value : optional
		    The scalar value to use for newly introduced missing values.
		
		Returns
		-------
		Series or DataFrame
		    Object shifted within each group.
		
		See Also
		--------
		Index.shift : Shift values of Index.
		tshift : Shift the time index, using the index’s frequency
		    if available.
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		Return unbiased skew over requested axis.
		
		Normalized by N-1.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		    Axis for the function to be applied on.
		skipna : bool, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series.
		numeric_only : bool, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		**kwargs
		    Additional keyword arguments to be passed to the function.
		
		Returns
		-------
		Series or DataFrame (if level specified)
	**/
	public var skew : Dynamic;
	/**
		Compute standard deviation of groups, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex.
		
		Parameters
		----------
		ddof : int, default 1
		    Degrees of freedom.
		
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
		Series or DataFrame
		    Standard deviation of values within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	public function std(?ddof:Dynamic, ?engine:Dynamic, ?engine_kwargs:Dynamic):Dynamic;
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
	public function sum(?numeric_only:Dynamic, ?min_count:Dynamic, ?engine:Dynamic, ?engine_kwargs:Dynamic):Dynamic;
	/**
		Return last n rows of each group.
		
		Similar to ``.apply(lambda x: x.tail(n))``, but it returns a subset of rows
		from the original DataFrame with original index and order preserved
		(``as_index`` flag is ignored).
		
		Parameters
		----------
		n : int
		    If positive: number of entries to include from end of each group.
		    If negative: number of entries to exclude from start of each group.
		
		Returns
		-------
		Series or DataFrame
		    Subset of original Series or DataFrame as determined by n.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
		
		Examples
		--------
		
		>>> df = pd.DataFrame([['a', 1], ['a', 2], ['b', 1], ['b', 2]],
		...                   columns=['A', 'B'])
		>>> df.groupby('A').tail(1)
		   A  B
		1  a  2
		3  b  2
		>>> df.groupby('A').tail(-1)
		   A  B
		1  a  2
		3  b  2
	**/
	public function tail(?n:Dynamic):Dynamic;
	/**
		Return the elements in the given *positional* indices along an axis.
		
		This means that we are not indexing according to actual values in
		the index attribute of the object. We are indexing according to the
		actual position of the element in the object.
		
		Parameters
		----------
		indices : array-like
		    An array of ints indicating which positions to take.
		axis : {0 or 'index', 1 or 'columns', None}, default 0
		    The axis on which to select elements. ``0`` means that we are
		    selecting rows, ``1`` means that we are selecting columns.
		is_copy : bool
		    Before pandas 1.0, ``is_copy=False`` can be specified to ensure
		    that the return value is an actual copy. Starting with pandas 1.0,
		    ``take`` always returns a copy, and the keyword is therefore
		    deprecated.
		
		    .. deprecated:: 1.0.0
		**kwargs
		    For compatibility with :meth:`numpy.take`. Has no effect on the
		    output.
		
		Returns
		-------
		taken : same type as caller
		    An array-like containing the elements taken from the object.
		
		See Also
		--------
		DataFrame.loc : Select a subset of a DataFrame by labels.
		DataFrame.iloc : Select a subset of a DataFrame by positions.
		numpy.take : Take elements from an array along an axis.
		
		Examples
		--------
		>>> df = pd.DataFrame([('falcon', 'bird', 389.0),
		...                    ('parrot', 'bird', 24.0),
		...                    ('lion', 'mammal', 80.5),
		...                    ('monkey', 'mammal', np.nan)],
		...                   columns=['name', 'class', 'max_speed'],
		...                   index=[0, 2, 3, 1])
		>>> df
		     name   class  max_speed
		0  falcon    bird      389.0
		2  parrot    bird       24.0
		3    lion  mammal       80.5
		1  monkey  mammal        NaN
		
		Take elements at positions 0 and 3 along the axis 0 (default).
		
		Note how the actual indices selected (0 and 1) do not correspond to
		our selected indices 0 and 3. That's because we are selecting the 0th
		and 3rd rows, not rows whose indices equal 0 and 3.
		
		>>> df.take([0, 3])
		     name   class  max_speed
		0  falcon    bird      389.0
		1  monkey  mammal        NaN
		
		Take elements at indices 1 and 2 along the axis 1 (column selection).
		
		>>> df.take([1, 2], axis=1)
		    class  max_speed
		0    bird      389.0
		2    bird       24.0
		3  mammal       80.5
		1  mammal        NaN
		
		We may take elements using negative integers for positive indices,
		starting from the end of the object, just like with Python lists.
		
		>>> df.take([-1, -2])
		     name   class  max_speed
		1  monkey  mammal        NaN
		3    lion  mammal       80.5
	**/
	public var take : Dynamic;
	/**
		Call function producing a like-indexed DataFrame on each group and
		return a DataFrame having the same indexes as the original object
		filled with the transformed values.
		
		Parameters
		----------
		f : function
		    Function to apply to each group.
		
		    Can also accept a Numba JIT function with
		    ``engine='numba'`` specified.
		
		    If the ``'numba'`` engine is chosen, the function must be
		    a user defined function with ``values`` and ``index`` as the
		    first and second arguments respectively in the function signature.
		    Each group's index will be passed to the user defined function
		    and optionally available for use.
		
		    .. versionchanged:: 1.1.0
		*args
		    Positional arguments to pass to func.
		engine : str, default None
		    * ``'cython'`` : Runs the function through C-extensions from cython.
		    * ``'numba'`` : Runs the function through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or the global setting ``compute.use_numba``
		
		    .. versionadded:: 1.1.0
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}`` and will be
		      applied to the function
		
		    .. versionadded:: 1.1.0
		**kwargs
		    Keyword arguments to be passed into func.
		
		Returns
		-------
		DataFrame
		
		See Also
		--------
		DataFrame.groupby.apply : Apply function ``func`` group-wise and combine
		    the results together.
		DataFrame.groupby.aggregate : Aggregate using one or more
		    operations over the specified axis.
		DataFrame.transform : Call ``func`` on self producing a DataFrame with the
		    same axis shape as self.
		
		Notes
		-----
		Each group is endowed the attribute 'name' in case you need to know
		which group you are working on.
		
		The current implementation imposes three requirements on f:
		
		* f must return a value that either has the same shape as the input
		  subframe or can be broadcast to the shape of the input subframe.
		  For example, if `f` returns a scalar it will be broadcast to have the
		  same shape as the input subframe.
		* if this is a DataFrame, f must support application column-by-column
		  in the subframe. If f also supports application to the entire subframe,
		  then a fast path is used starting from the second chunk.
		* f must not mutate groups. Mutation is not supported and may
		  produce unexpected results. See :ref:`gotchas.udf-mutation` for more details.
		
		When using ``engine='numba'``, there will be no "fall back" behavior internally.
		The group data and group index will be passed as numpy arrays to the JITed
		user defined function, and no alternative execution attempts will be tried.
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the passed ``func``,
		    see the examples below.
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'A' : ['foo', 'bar', 'foo', 'bar',
		...                           'foo', 'bar'],
		...                    'B' : ['one', 'one', 'two', 'three',
		...                           'two', 'two'],
		...                    'C' : [1, 5, 5, 2, 5, 5],
		...                    'D' : [2.0, 5., 8., 1., 2., 9.]})
		>>> grouped = df.groupby('A')
		>>> grouped.transform(lambda x: (x - x.mean()) / x.std())
		          C         D
		0 -1.154701 -0.577350
		1  0.577350  0.000000
		2  0.577350  1.154701
		3 -1.154701 -1.000000
		4  0.577350 -0.577350
		5  0.577350  1.000000
		
		Broadcast result of the transformation
		
		>>> grouped.transform(lambda x: x.max() - x.min())
		   C    D
		0  4  6.0
		1  3  8.0
		2  4  6.0
		3  3  8.0
		4  4  6.0
		5  3  8.0
		
		.. versionchanged:: 1.3.0
		
		    The resulting dtype will reflect the return value of the passed ``func``,
		    for example:
		
		>>> grouped[['C', 'D']].transform(lambda x: x.astype(int).max())
		   C  D
		0  5  8
		1  5  9
		2  5  8
		3  5  9
		4  5  8
		5  5  9
	**/
	public function transform(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Shift the time index, using the index's frequency if available.
		
		.. deprecated:: 1.1.0
		    Use `shift` instead.
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative.
		freq : DateOffset, timedelta, or str, default None
		    Increment to use from the tseries module
		    or time rule expressed as a string (e.g. 'EOM').
		axis : {0 or ‘index’, 1 or ‘columns’, None}, default 0
		    Corresponds to the axis that contains the Index.
		
		Returns
		-------
		shifted : Series/DataFrame
		
		Notes
		-----
		If freq is not specified then tries to use the freq or inferred_freq
		attributes of the index. If neither of those attributes exist, a
		ValueError is thrown
	**/
	public var tshift : Dynamic;
	/**
		Return a Series or DataFrame containing counts of unique rows.
		
		.. versionadded:: 1.4.0
		
		Parameters
		----------
		subset : list-like, optional
		    Columns to use when counting unique combinations.
		normalize : bool, default False
		    Return proportions rather than frequencies.
		sort : bool, default True
		    Sort by frequencies.
		ascending : bool, default False
		    Sort in ascending order.
		dropna : bool, default True
		    Don’t include counts of rows that contain NA values.
		
		Returns
		-------
		Series or DataFrame
		    Series if the groupby as_index is True, otherwise DataFrame.
		
		See Also
		--------
		Series.value_counts: Equivalent method on Series.
		DataFrame.value_counts: Equivalent method on DataFrame.
		SeriesGroupBy.value_counts: Equivalent method on SeriesGroupBy.
		
		Notes
		-----
		- If the groupby as_index is True then the returned Series will have a
		  MultiIndex with one level per input column.
		- If the groupby as_index is False then the returned DataFrame will have an
		  additional column with the value_counts. The column is labelled 'count' or
		  'proportion', depending on the ``normalize`` parameter.
		
		By default, rows that contain any NA values are omitted from
		the result.
		
		By default, the result will be in descending order so that the
		first element of each group is the most frequently-occurring row.
		
		Examples
		--------
		>>> df = pd.DataFrame({
		...    'gender': ['male', 'male', 'female', 'male', 'female', 'male'],
		...    'education': ['low', 'medium', 'high', 'low', 'high', 'low'],
		...    'country': ['US', 'FR', 'US', 'FR', 'FR', 'FR']
		... })
		
		>>> df
		    gender      education       country
		0       male    low         US
		1       male    medium      FR
		2       female  high        US
		3       male    low         FR
		4       female  high        FR
		5       male    low         FR
		
		>>> df.groupby('gender').value_counts()
		gender  education  country
		female  high       FR         1
		                   US         1
		male    low        FR         2
		                   US         1
		        medium     FR         1
		dtype: int64
		
		>>> df.groupby('gender').value_counts(ascending=True)
		gender  education  country
		female  high       FR         1
		                   US         1
		male    low        US         1
		        medium     FR         1
		        low        FR         2
		dtype: int64
		
		>>> df.groupby('gender').value_counts(normalize=True)
		gender  education  country
		female  high       FR         0.50
		                   US         0.50
		male    low        FR         0.50
		                   US         0.25
		        medium     FR         0.25
		dtype: float64
		
		>>> df.groupby('gender', as_index=False).value_counts()
		   gender education country  count
		0  female      high      FR      1
		1  female      high      US      1
		2    male       low      FR      2
		3    male       low      US      1
		4    male    medium      FR      1
		
		>>> df.groupby('gender', as_index=False).value_counts(normalize=True)
		   gender education country  proportion
		0  female      high      FR        0.50
		1  female      high      US        0.50
		2    male       low      FR        0.50
		3    male       low      US        0.25
		4    male    medium      FR        0.25
	**/
	public function value_counts(?subset:Dynamic, ?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Compute variance of groups, excluding missing values.
		
		For multiple groupings, the result index will be a MultiIndex.
		
		Parameters
		----------
		ddof : int, default 1
		    Degrees of freedom.
		
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
		Series or DataFrame
		    Variance of values within each group.
		
		See Also
		--------
		Series.groupby : Apply a function groupby to a Series.
		DataFrame.groupby : Apply a function groupby
		    to each row or column of a DataFrame.
	**/
	@:native("var")
	public function _var(?ddof:Dynamic, ?engine:Dynamic, ?engine_kwargs:Dynamic):Dynamic;
}