/* This file is generated, do not edit! */
package pandas.core.reshape.merge;
@:pythonImport("pandas.core.reshape.merge") extern class Merge_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _any(x:Dynamic):Dynamic;
	static public function _asof_by_function(direction:Dynamic, on_type:Dynamic, by_type:Dynamic):Dynamic;
	static public function _asof_function(direction:Dynamic, on_type:Dynamic):Dynamic;
	static public var _cython_types : Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _factorize_keys(lk:Dynamic, rk:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Given a dtype, return a C name like 'int64_t' or 'double' 
	**/
	static public function _get_cython_type(dtype:Dynamic):Dynamic;
	/**
		Upcast a dtype to 'int64_t', 'double', or 'object' 
	**/
	static public function _get_cython_type_upcast(dtype:Dynamic):Dynamic;
	/**
		Get the dtype instance associated with an array
		or dtype object.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype object whose dtype we want to extract.
		
		Returns
		-------
		obj_dtype : The extract dtype instance from the
		            passed in array or dtype object.
		
		Raises
		------
		TypeError : The passed in object is None.
	**/
	static public function _get_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Parameters
		----------
		left_keys: ndarray, Index, Series
		right_keys: ndarray, Index, Series
		sort: boolean, default False
		how: string {'inner', 'outer', 'left', 'right'}, default 'inner'
		
		Returns
		-------
		tuple of (left_indexer, right_indexer)
		    indexers into the left_keys, right_keys
	**/
	static public function _get_join_indexers(left_keys:Dynamic, right_keys:Dynamic, ?sort:Dynamic, ?how:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _get_join_keys(llab:Dynamic, rlab:Dynamic, shape:Dynamic, sort:Dynamic):Dynamic;
	static public function _get_multiindex_indexer(join_keys:Dynamic, index:Dynamic, sort:Dynamic):Dynamic;
	static public function _get_single_indexer(join_key:Dynamic, index:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		groupby & merge; we are always performing a left-by type operation
		
		Parameters
		----------
		by: field to group
		on: duplicates field
		left: left frame
		right: right frame
		_merge_pieces: function for merging
		check_duplicates: boolean, default True
		    should we check & clean duplicates
	**/
	static public function _groupby_and_merge(by:Dynamic, on:Dynamic, left:Dynamic, right:Dynamic, _merge_pieces:Dynamic, ?check_duplicates:Dynamic):Dynamic;
	static public var _join_functions : Dynamic;
	static public function _left_join_on_index(left_ax:Dynamic, right_ax:Dynamic, join_keys:Dynamic, ?sort:Dynamic):Dynamic;
	static public var _merge_doc : Dynamic;
	/**
		Convert a set of codes for to a new set of categories
		
		Parameters
		----------
		codes : array
		old_categories, new_categories : Index
		
		Returns
		-------
		new_codes : array
		
		Examples
		--------
		>>> old_cat = pd.Index(['b', 'a', 'c'])
		>>> new_cat = pd.Index(['a', 'b'])
		>>> codes = np.array([0, 1, 1, 2])
		>>> _recode_for_categories(codes, old_cat, new_cat)
		array([ 1,  0,  0, -1])
	**/
	static public function _recode_for_categories(codes:Dynamic, old_categories:Dynamic, new_categories:Dynamic):Dynamic;
	static public function _right_outer_join(x:Dynamic, y:Dynamic, max_groups:Dynamic):Dynamic;
	static public function _should_fill(lname:Dynamic, rname:Dynamic):Dynamic;
	static public function _sort_labels(uniques:Dynamic, left:Dynamic, right:Dynamic):Dynamic;
	static public var _type_casters : Dynamic;
	/**
		Concatenate block managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (BlockManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
	**/
	static public function concatenate_block_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_array_like : bool
		    Whether `obj` has array-like properties.
		
		Examples
		--------
		>>> is_array_like(np.array([1, 2, 3]))
		True
		>>> is_array_like(pd.Series(["a", "b"]))
		True
		>>> is_array_like(pd.Index(["2016-01-01"]))
		True
		>>> is_array_like([1, 2, 3])
		False
		>>> is_array_like(("a", "b"))
		False
	**/
	static public function is_array_like(obj:Dynamic):Bool;
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
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          a DatetimeTZDtype dtype.
		
		Examples
		--------
		>>> is_datetime64tz_dtype(object)
		False
		>>> is_datetime64tz_dtype([1, 2, 3])
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3]))  # tz-naive
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetime64tz_dtype(dtype)
		True
		>>> is_datetime64tz_dtype(s)
		True
	**/
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		----------
		boolean : Whether or not the two dtypes are equal.
		
		Examples
		--------
		>>> is_dtype_equal(int, float)
		False
		>>> is_dtype_equal("int", int)
		True
		>>> is_dtype_equal(object, "category")
		False
		>>> is_dtype_equal(CategoricalDtype(), "category")
		True
		>>> is_dtype_equal(DatetimeTZDtype(), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the int64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the int64 dtype.
		
		Notes
		-----
		Depending on system architecture, the return value of `is_int64_dtype(
		int)` will be True if the OS uses 64-bit integers and False if the OS
		uses 32-bit integers.
		
		Examples
		--------
		>>> is_int64_dtype(str)
		False
		>>> is_int64_dtype(np.int32)
		False
		>>> is_int64_dtype(np.int64)
		True
		>>> is_int64_dtype(float)
		False
		>>> is_int64_dtype(np.uint64)  # unsigned
		False
		>>> is_int64_dtype(np.array(['a', 'b']))
		False
		>>> is_int64_dtype(np.array([1, 2], dtype=np.int64))
		True
		>>> is_int64_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_int64_dtype(np.array([1, 2], dtype=np.uint32))  # unsigned
		False
	**/
	static public function is_int64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_int64_overflow_possible(shape:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an
		integer, timedelta64, or datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an
		          integer, timedelta64, or datetime64 dtype.
		
		Examples
		--------
		>>> is_int_or_datetime_dtype(str)
		False
		>>> is_int_or_datetime_dtype(int)
		True
		>>> is_int_or_datetime_dtype(float)
		False
		>>> is_int_or_datetime_dtype(np.uint64)
		True
		>>> is_int_or_datetime_dtype(np.datetime64)
		True
		>>> is_int_or_datetime_dtype(np.timedelta64)
		True
		>>> is_int_or_datetime_dtype(np.array(['a', 'b']))
		False
		>>> is_int_or_datetime_dtype(pd.Series([1, 2]))
		True
		>>> is_int_or_datetime_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_int_or_datetime_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_int_or_datetime_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_int_or_datetime_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		If two indices overlap, add suffixes to overlapping entries.
		
		If corresponding suffix is empty, the entry is simply converted to string.
	**/
	static public function items_overlap_with_suffix(left:Dynamic, lsuffix:Dynamic, right:Dynamic, rsuffix:Dynamic):Dynamic;
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Merge DataFrame objects by performing a database-style join operation by
		columns or indexes.
		
		If joining columns on columns, the DataFrame indexes *will be
		ignored*. Otherwise if joining indexes on indexes or indexes on a column or
		columns, the index will be passed on.
		
		Parameters
		----------
		left : DataFrame
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
		    Column or index level names to join on. These must be found in both
		    DataFrames. If `on` is None and not merging on indexes then this defaults
		    to the intersection of the columns in both DataFrames.
		left_on : label or list, or array-like
		    Column or index level names to join on in the left DataFrame. Can also
		    be an array or list of arrays of the length of the left DataFrame.
		    These arrays are treated as if they are columns.
		right_on : label or list, or array-like
		    Column or index level names to join on in the right DataFrame. Can also
		    be an array or list of arrays of the length of the right DataFrame.
		    These arrays are treated as if they are columns.
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
		
		validate : string, default None
		    If specified, checks if merge is of specified type.
		
		    * "one_to_one" or "1:1": check if merge keys are unique in both
		      left and right datasets.
		    * "one_to_many" or "1:m": check if merge keys are unique in left
		      dataset.
		    * "many_to_one" or "m:1": check if merge keys are unique in right
		      dataset.
		    * "many_to_many" or "m:m": allowed, but does not result in checks.
		
		    .. versionadded:: 0.21.0
		
		Notes
		-----
		Support for specifying index levels as the `on`, `left_on`, and
		`right_on` parameters was added in version 0.23.0
		
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
		DataFrame.join
	**/
	static public function merge(left:Dynamic, right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic, ?validate:Dynamic):pandas.DataFrame;
	/**
		Perform an asof merge. This is similar to a left-join except that we
		match on nearest key rather than equal keys.
		
		Both DataFrames must be sorted by the key.
		
		For each row in the left DataFrame:
		
		  - A "backward" search selects the last row in the right DataFrame whose
		    'on' key is less than or equal to the left's key.
		
		  - A "forward" search selects the first row in the right DataFrame whose
		    'on' key is greater than or equal to the left's key.
		
		  - A "nearest" search selects the row in the right DataFrame whose 'on'
		    key is closest in absolute distance to the left's key.
		
		The default is "backward" and is compatible in versions below 0.20.0.
		The direction parameter was added in version 0.20.0 and introduces
		"forward" and "nearest".
		
		Optionally match on equivalent keys with 'by' before searching with 'on'.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label
		    Field name to join on. Must be found in both DataFrames.
		    The data MUST be ordered. Furthermore this must be a numeric column,
		    such as datetimelike, integer, or float. On or left_on/right_on
		    must be given.
		left_on : label
		    Field name to join on in left DataFrame.
		right_on : label
		    Field name to join on in right DataFrame.
		left_index : boolean
		    Use the index of the left DataFrame as the join key.
		
		    .. versionadded:: 0.19.2
		
		right_index : boolean
		    Use the index of the right DataFrame as the join key.
		
		    .. versionadded:: 0.19.2
		
		by : column name or list of column names
		    Match on these columns before performing merge operation.
		left_by : column name
		    Field names to match on in the left DataFrame.
		
		    .. versionadded:: 0.19.2
		
		right_by : column name
		    Field names to match on in the right DataFrame.
		
		    .. versionadded:: 0.19.2
		
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively.
		tolerance : integer or Timedelta, optional, default None
		    Select asof tolerance within this range; must be compatible
		    with the merge index.
		allow_exact_matches : boolean, default True
		
		    - If True, allow matching with the same 'on' value
		      (i.e. less-than-or-equal-to / greater-than-or-equal-to)
		    - If False, don't match the same 'on' value
		      (i.e., stricly less-than / strictly greater-than)
		
		direction : 'backward' (default), 'forward', or 'nearest'
		    Whether to search for prior, subsequent, or closest matches.
		
		    .. versionadded:: 0.20.0
		
		
		Returns
		-------
		merged : DataFrame
		
		Examples
		--------
		>>> left = pd.DataFrame({'a': [1, 5, 10], 'left_val': ['a', 'b', 'c']})
		>>> left
		    a left_val
		0   1        a
		1   5        b
		2  10        c
		
		>>> right = pd.DataFrame({'a': [1, 2, 3, 6, 7],
		...                       'right_val': [1, 2, 3, 6, 7]})
		>>> right
		   a  right_val
		0  1          1
		1  2          2
		2  3          3
		3  6          6
		4  7          7
		
		>>> pd.merge_asof(left, right, on='a')
		    a left_val  right_val
		0   1        a          1
		1   5        b          3
		2  10        c          7
		
		>>> pd.merge_asof(left, right, on='a', allow_exact_matches=False)
		    a left_val  right_val
		0   1        a        NaN
		1   5        b        3.0
		2  10        c        7.0
		
		>>> pd.merge_asof(left, right, on='a', direction='forward')
		    a left_val  right_val
		0   1        a        1.0
		1   5        b        6.0
		2  10        c        NaN
		
		>>> pd.merge_asof(left, right, on='a', direction='nearest')
		    a left_val  right_val
		0   1        a          1
		1   5        b          6
		2  10        c          7
		
		We can use indexed DataFrames as well.
		
		>>> left = pd.DataFrame({'left_val': ['a', 'b', 'c']}, index=[1, 5, 10])
		>>> left
		   left_val
		1         a
		5         b
		10        c
		
		>>> right = pd.DataFrame({'right_val': [1, 2, 3, 6, 7]},
		...                      index=[1, 2, 3, 6, 7])
		>>> right
		   right_val
		1          1
		2          2
		3          3
		6          6
		7          7
		
		>>> pd.merge_asof(left, right, left_index=True, right_index=True)
		   left_val  right_val
		1         a          1
		5         b          3
		10        c          7
		
		Here is a real-world times-series example
		
		>>> quotes
		                     time ticker     bid     ask
		0 2016-05-25 13:30:00.023   GOOG  720.50  720.93
		1 2016-05-25 13:30:00.023   MSFT   51.95   51.96
		2 2016-05-25 13:30:00.030   MSFT   51.97   51.98
		3 2016-05-25 13:30:00.041   MSFT   51.99   52.00
		4 2016-05-25 13:30:00.048   GOOG  720.50  720.93
		5 2016-05-25 13:30:00.049   AAPL   97.99   98.01
		6 2016-05-25 13:30:00.072   GOOG  720.50  720.88
		7 2016-05-25 13:30:00.075   MSFT   52.01   52.03
		
		>>> trades
		                     time ticker   price  quantity
		0 2016-05-25 13:30:00.023   MSFT   51.95        75
		1 2016-05-25 13:30:00.038   MSFT   51.95       155
		2 2016-05-25 13:30:00.048   GOOG  720.77       100
		3 2016-05-25 13:30:00.048   GOOG  720.92       100
		4 2016-05-25 13:30:00.048   AAPL   98.00       100
		
		By default we are taking the asof of the quotes
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker')
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 2ms between the quote time and the trade time
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('2ms'))
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155     NaN     NaN
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 10ms between the quote time and the trade time
		and we exclude exact matches on time. However *prior* data will
		propagate forward
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('10ms'),
		...                       allow_exact_matches=False)
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75     NaN     NaN
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100     NaN     NaN
		3 2016-05-25 13:30:00.048   GOOG  720.92       100     NaN     NaN
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		See also
		--------
		merge
		merge_ordered
	**/
	static public function merge_asof(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?by:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?suffixes:Dynamic, ?tolerance:Dynamic, ?allow_exact_matches:Dynamic, ?direction:Dynamic):pandas.DataFrame;
	/**
		Perform merge with optional filling/interpolation designed for ordered
		data like time series data. Optionally perform group-wise merge (see
		examples)
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label or list
		    Field names to join on. Must be found in both DataFrames.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_by : column name or list of column names
		    Group left DataFrame by group columns and merge piece by piece with
		    right DataFrame
		right_by : column name or list of column names
		    Group right DataFrame by group columns and merge piece by piece with
		    left DataFrame
		fill_method : {'ffill', None}, default None
		    Interpolation method for data
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		how : {'left', 'right', 'outer', 'inner'}, default 'outer'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		
		    .. versionadded:: 0.19.0
		
		Examples
		--------
		>>> A                      >>> B
		      key  lvalue group        key  rvalue
		0   a       1     a        0     b       1
		1   c       2     a        1     c       2
		2   e       3     a        2     d       3
		3   a       1     b
		4   c       2     b
		5   e       3     b
		
		>>> merge_ordered(A, B, fill_method='ffill', left_by='group')
		  group key  lvalue  rvalue
		0     a   a       1     NaN
		1     a   b       1     1.0
		2     a   c       2     2.0
		3     a   d       2     3.0
		4     a   e       3     3.0
		5     b   a       1     NaN
		6     b   b       1     1.0
		7     b   c       2     2.0
		8     b   d       2     3.0
		9     b   e       3     3.0
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge
		merge_asof
	**/
	static public function merge_ordered(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?fill_method:Dynamic, ?suffixes:Dynamic, ?how:Dynamic):pandas.DataFrame;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : boolean, default True
		
		Returns
		-------
		np.dtype or a pandas dtype
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
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
}