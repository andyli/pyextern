/* This file is generated, do not edit! */
package pandas.core.groupby;
@:pythonImport("pandas.core.groupby") extern class Groupby_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _common_apply_whitelist : Dynamic;
	static public function _convert_grouper(axis:Dynamic, grouper:Dynamic):Dynamic;
	static public var _cython_transforms : Dynamic;
	static public var _dataframe_apply_whitelist : Dynamic;
	static public function _default_index(n:Dynamic):Dynamic;
	static public var _doc_template : Dynamic;
	/**
		Ensure that an array-like object is a Categorical (if not already).
		
		Parameters
		----------
		arr : array-like
		    The array that we want to convert into a Categorical.
		
		Returns
		-------
		cat_arr : The original array cast as a Categorical. If it already
		          is a Categorical, we return as is.
	**/
	static public function _ensure_categorical(arr:Dynamic):Dynamic;
	/**
		Ensure that an array object has a float dtype if possible.
		
		Parameters
		----------
		arr : array-like
		    The array whose data type we want to enforce as float.
		
		Returns
		-------
		float_arr : The original array cast to the float dtype if
		            possible. Otherwise, the original array is returned.
	**/
	static public function _ensure_float(arr:Dynamic):Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_axes(group:Dynamic):Dynamic;
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
	static public function _get_grouper(obj:Dynamic, ?key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?sort:Dynamic, ?mutated:Dynamic):Dynamic;
	static public function _is_indexed_like(obj:Dynamic, axes:Dynamic):Dynamic;
	static public function _is_label_like(val:Dynamic):Dynamic;
	/**
		if we have a compatiable fill_value and arr dtype, then fill
	**/
	static public function _maybe_fill(arr:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public var _np_version_under1p8 : Dynamic;
	static public var _plotting_methods : Dynamic;
	static public var _series_apply_whitelist : Dynamic;
	static public var _shared_docs : Dynamic;
	static public var _transform_template : Dynamic;
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
	static public function boxplot_frame_groupby(grouped:Dynamic, ?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
	**/
	static public function compress_group_index(group_index:Dynamic, ?sort:Dynamic):Dynamic;
	static public function count_level_2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reconstruct labels from observed group ids
		
		Parameters
		----------
		xnull: boolean,
		    if nulls are excluded; i.e. -1 labels are passed through
	**/
	static public function decons_obs_group_ids(comp_ids:Dynamic, obs_ids:Dynamic, shape:Dynamic, labels:Dynamic, xnull:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
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
	static public function get_flattened_iterator(comp_ids:Dynamic, ngroups:Dynamic, levels:Dynamic, labels:Dynamic):Dynamic;
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
	/**
		algos.groupsort_indexer implements `counting sort` and it is at least
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
	static public function get_group_index_sorter(group_index:Dynamic, ngroups:Dynamic):Dynamic;
	/**
		return a diction of {labels} -> {indexers} 
	**/
	static public function get_indexer_dict(label_list:Dynamic, keys:Dynamic):Dynamic;
	static public function get_splitter(data:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function groupby(obj:Dynamic, by:Dynamic, ?kwds:python.KwArgs<Dynamic>):Int;
	static public var iNaT : Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a complex dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a compex dtype.
		
		Examples
		--------
		>>> is_complex_dtype(str)
		False
		>>> is_complex_dtype(int)
		False
		>>> is_complex_dtype(np.complex)
		True
		>>> is_complex_dtype(np.array(['a', 'b']))
		False
		>>> is_complex_dtype(pd.Series([1, 2]))
		False
		>>> is_complex_dtype(np.array([1 + 1j, 5]))
		True
	**/
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_any_dtype(str)
		False
		>>> is_datetime64_any_dtype(int)
		False
		>>> is_datetime64_any_dtype(np.datetime64)  # can be tz-naive
		True
		>>> is_datetime64_any_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_any_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_any_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_any_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_any_dtype(pd.DatetimeIndex([1, 2, 3],
		                            dtype=np.datetime64))
		True
	**/
	static public function is_datetime64_any_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a datetime-like array-like.
		
		Acceptable datetime-like objects are (but not limited to) datetime
		indices, periodic indices, and timedelta indices.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime-like array-like.
		
		Examples
		--------
		>>> is_datetimelike([1, 2, 3])
		False
		>>> is_datetimelike(pd.Index([1, 2, 3]))
		False
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3]))
		True
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>> is_datetimelike(pd.PeriodIndex([], freq="A"))
		True
		>>> is_datetimelike(np.array([], dtype=np.datetime64))
		True
		>>> is_datetimelike(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimelike(s)
		True
	**/
	static public function is_datetimelike(arr:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Interval dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Interval dtype.
		
		Examples
		--------
		>>> is_interval_dtype(object)
		False
		>>> is_interval_dtype(IntervalDtype())
		True
		>>> is_interval_dtype([1, 2, 3])
		False
		>>>
		>>> interval = pd.Interval(1, 2, closed="right")
		>>> is_interval_dtype(interval)
		False
		>>> is_interval_dtype(pd.IntervalIndex([interval]))
		True
	**/
	static public function is_interval_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
	**/
	static public function is_list_like(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
		- instances of decimal.Decimal
		- Interval
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
	**/
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
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function maybe_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype should be converted to int64.
		
		Examples
		--------
		>>> needs_i8_conversion(str)
		False
		>>> needs_i8_conversion(np.int64)
		False
		>>> needs_i8_conversion(np.datetime64)
		True
		>>> needs_i8_conversion(np.array(['a', 'b']))
		False
		>>> needs_i8_conversion(pd.Series([1, 2]))
		False
		>>> needs_i8_conversion(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> needs_i8_conversion(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
	**/
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
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
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Bind the name/qualname attributes of the function 
	**/
	static public function set_function_name(f:Dynamic, name:Dynamic, cls:Dynamic):Dynamic;
	/**
		Checks whether parameters passed to the **kwargs argument in a
		function `fname` are valid parameters as specified in `*compat_args`
		and whether or not they are set to their default values.
		
		Parameters
		----------
		fname: str
		    The name of the function being passed the `**kwargs` parameter
		
		kwargs: dict
		    The `**kwargs` parameter passed into `fname`
		
		compat_args: dict
		    A dictionary of keys that `kwargs` is allowed to have and their
		    associated default values
		
		Raises
		------
		TypeError if `kwargs` contains keys not in `compat_args`
		ValueError if `kwargs` contains keys in `compat_args` that do not
		map to the default values specified in `compat_args`
	**/
	static public function validate_kwargs(fname:Dynamic, kwargs:Dynamic, compat_args:Dynamic):Dynamic;
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