/* This file is generated, do not edit! */
package pandas.core.reshape.merge;
@:pythonImport("pandas.core.reshape.merge") extern class Merge_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function IndexLabel(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Suffixes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _any(x:Dynamic):Dynamic;
	static public function _asof_by_function(direction:Dynamic):Dynamic;
	static public function _asof_function(direction:Dynamic):Dynamic;
	/**
		Encode left and right keys as enumerated types.
		
		This is used to get the join indexers to be used when merging DataFrames.
		
		Parameters
		----------
		lk : array-like
		    Left key.
		rk : array-like
		    Right key.
		sort : bool, defaults to True
		    If True, the encoding is done such that the unique elements in the
		    keys are sorted.
		how : {‘left’, ‘right’, ‘outer’, ‘inner’}, default ‘inner’
		    Type of merge.
		
		Returns
		-------
		np.ndarray[np.intp]
		    Left (resp. right if called with `key='right'`) labels, as enumerated type.
		np.ndarray[np.intp]
		    Right (resp. left if called with `key='right'`) labels, as enumerated type.
		int
		    Number of unique elements in union of left and right labels.
		
		See Also
		--------
		merge : Merge DataFrame or named Series objects
		    with a database-style join.
		algorithms.factorize : Encode the object as an enumerated type
		    or categorical variable.
		
		Examples
		--------
		>>> lk = np.array(["a", "c", "b"])
		>>> rk = np.array(["a", "c"])
		
		Here, the unique values are `'a', 'b', 'c'`. With the default
		`sort=True`, the encoding will be `{0: 'a', 1: 'b', 2: 'c'}`:
		
		>>> pd.core.reshape.merge._factorize_keys(lk, rk)
		(array([0, 2, 1]), array([0, 2]), 3)
		
		With the `sort=False`, the encoding will correspond to the order
		in which the unique elements first appear: `{0: 'a', 1: 'c', 2: 'b'}`:
		
		>>> pd.core.reshape.merge._factorize_keys(lk, rk, sort=False)
		(array([0, 1, 2]), array([0, 1]), 3)
	**/
	static public function _factorize_keys(lk:Dynamic, rk:Dynamic, ?sort:Dynamic, ?how:Dynamic):Dynamic;
	/**
		Upcast a dtype to 'int64_t', 'double', or 'object'
	**/
	static public function _get_cython_type_upcast(dtype:Dynamic):Dynamic;
	static public function _get_join_keys(llab:Dynamic, rlab:Dynamic, shape:Dynamic, sort:Dynamic):Dynamic;
	static public function _get_multiindex_indexer(join_keys:Dynamic, index:Dynamic, sort:Dynamic):Dynamic;
	static public function _get_single_indexer(join_key:Dynamic, index:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		groupby & merge; we are always performing a left-by type operation
		
		Parameters
		----------
		by: field to group
		left: DataFrame
		right: DataFrame
		merge_pieces: function for merging
	**/
	static public function _groupby_and_merge(by:Dynamic, left:Dynamic, right:Dynamic, merge_pieces:Dynamic):Dynamic;
	/**
		Suffixes type validation.
		
		If two indices overlap, add suffixes to overlapping entries.
		
		If corresponding suffix is empty, the entry is simply converted to string.
	**/
	static public function _items_overlap_with_suffix(left:Dynamic, right:Dynamic, suffixes:Dynamic):Dynamic;
	static public function _left_join_on_index(left_ax:Dynamic, right_ax:Dynamic, join_keys:Dynamic, ?sort:Dynamic):Dynamic;
	static public var _merge_doc : Dynamic;
	static public function _should_fill(lname:Dynamic, rname:Dynamic):Dynamic;
	static public function _sort_labels(uniques:Dynamic, left:Dynamic, right:Dynamic):Dynamic;
	static public var _type_casters : Dynamic;
	static public function _validate_operand(obj:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Concatenate block managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (BlockManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
		
		Returns
		-------
		BlockManager
	**/
	static public function concatenate_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	static public function ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray.
		
		extract_range : bool, default False
		    If we have a RangeIndex, return range._values if True
		    (which is a materialized integer ndarray), otherwise return unchanged.
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index the ndarray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		array([1, 2, 3])
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic, ?extract_range:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Parameters
		----------
		left_keys : ndarray, Index, Series
		right_keys : ndarray, Index, Series
		sort : bool, default False
		how : {'inner', 'outer', 'left', 'right'}, default 'inner'
		
		Returns
		-------
		np.ndarray[np.intp]
		    Indexer into the left_keys.
		np.ndarray[np.intp]
		    Indexer into the right_keys.
	**/
	static public function get_join_indexers(left_keys:Dynamic, right_keys:Dynamic, ?sort:Dynamic, ?how:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check
		
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
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a boolean dtype.
		
		Notes
		-----
		An ExtensionArray is considered boolean when the ``_is_boolean``
		attribute is set to True.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool_)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.arrays.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
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
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of a DatetimeTZDtype dtype.
		
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
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		-------
		boolean
		    Whether or not the two dtypes are equal.
		
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
		>>> is_dtype_equal(DatetimeTZDtype(tz="UTC"), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check if an object is a pandas extension array type.
		
		See the :ref:`Use Guide <extending.extension-types>` for more.
		
		Parameters
		----------
		arr_or_dtype : object
		    For array-like input, the ``.dtype`` attribute will
		    be extracted.
		
		Returns
		-------
		bool
		    Whether the `arr_or_dtype` is an extension array type.
		
		Notes
		-----
		This checks whether an object implements the pandas extension
		array interface. In pandas, this includes:
		
		* Categorical
		* Sparse
		* Interval
		* Period
		* DatetimeArray
		* TimedeltaArray
		
		Third-party libraries may implement arrays or types satisfying
		this interface as well.
		
		Examples
		--------
		>>> from pandas.api.types import is_extension_array_dtype
		>>> arr = pd.Categorical(['a', 'b'])
		>>> is_extension_array_dtype(arr)
		True
		>>> is_extension_array_dtype(arr.dtype)
		True
		
		>>> arr = np.array(['a', 'b'])
		>>> is_extension_array_dtype(arr.dtype)
		False
	**/
	static public function is_extension_array_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a float dtype.
		
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
	static public function is_int64_overflow_possible(shape:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `is_any_int_dtype`, timedelta64 instances will return False.
		
		The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an integer dtype and
		    not an instance of timedelta64.
		
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
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
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
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is a number.
		
		Returns True when the object is a number, and False if is not.
		
		Parameters
		----------
		obj : any type
		    The object to check if is a number.
		
		Returns
		-------
		is_number : bool
		    Whether `obj` is a number or not.
		
		See Also
		--------
		api.types.is_integer: Checks a subgroup of numbers.
		
		Examples
		--------
		>>> from pandas.api.types import is_number
		>>> is_number(1)
		True
		>>> is_number(7.15)
		True
		
		Booleans are valid because they are int subclass.
		
		>>> is_number(False)
		True
		
		>>> is_number("foo")
		False
		>>> is_number("5")
		False
	**/
	static public function is_number(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a numeric dtype.
		
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
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Merge DataFrame or named Series objects with a database-style join.
		
		A named Series object is treated as a DataFrame with a single named column.
		
		The join is done on columns or indexes. If joining columns on
		columns, the DataFrame indexes *will be ignored*. Otherwise if joining indexes
		on indexes or indexes on a column or columns, the index will be passed on.
		When performing a cross merge, no column specifications to merge on are
		allowed.
		
		.. warning::
		
		    If both key columns contain rows where the key is a null value, those
		    rows will be matched against each other. This is different from usual SQL
		    join behaviour and can lead to unexpected results.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame or named Series
		    Object to merge with.
		how : {'left', 'right', 'outer', 'inner', 'cross'}, default 'inner'
		    Type of merge to be performed.
		
		    * left: use only keys from left frame, similar to a SQL left outer join;
		      preserve key order.
		    * right: use only keys from right frame, similar to a SQL right outer join;
		      preserve key order.
		    * outer: use union of keys from both frames, similar to a SQL full outer
		      join; sort keys lexicographically.
		    * inner: use intersection of keys from both frames, similar to a SQL inner
		      join; preserve the order of the left keys.
		    * cross: creates the cartesian product from both frames, preserves the order
		      of the left keys.
		
		      .. versionadded:: 1.2.0
		
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
		left_index : bool, default False
		    Use the index from the left DataFrame as the join key(s). If it is a
		    MultiIndex, the number of keys in the other DataFrame (either the index
		    or a number of columns) must match the number of levels.
		right_index : bool, default False
		    Use the index from the right DataFrame as the join key. Same caveats as
		    left_index.
		sort : bool, default False
		    Sort the join keys lexicographically in the result DataFrame. If False,
		    the order of the join keys depends on the join type (how keyword).
		suffixes : list-like, default is ("_x", "_y")
		    A length-2 sequence where each element is optionally a string
		    indicating the suffix to add to overlapping column names in
		    `left` and `right` respectively. Pass a value of `None` instead
		    of a string to indicate that the column name from `left` or
		    `right` should be left as-is, with no suffix. At least one of the
		    values must not be None.
		copy : bool, default True
		    If False, avoid copy if possible.
		indicator : bool or str, default False
		    If True, adds a column to the output DataFrame called "_merge" with
		    information on the source of each row. The column can be given a different
		    name by providing a string argument. The column will have a Categorical
		    type with the value of "left_only" for observations whose merge key only
		    appears in the left DataFrame, "right_only" for observations
		    whose merge key only appears in the right DataFrame, and "both"
		    if the observation's merge key is found in both DataFrames.
		
		validate : str, optional
		    If specified, checks if merge is of specified type.
		
		    * "one_to_one" or "1:1": check if merge keys are unique in both
		      left and right datasets.
		    * "one_to_many" or "1:m": check if merge keys are unique in left
		      dataset.
		    * "many_to_one" or "m:1": check if merge keys are unique in right
		      dataset.
		    * "many_to_many" or "m:m": allowed, but does not result in checks.
		
		Returns
		-------
		DataFrame
		    A DataFrame of the two merged objects.
		
		See Also
		--------
		merge_ordered : Merge with optional filling/interpolation.
		merge_asof : Merge on nearest keys.
		DataFrame.join : Similar method using indices.
		
		Notes
		-----
		Support for specifying index levels as the `on`, `left_on`, and
		`right_on` parameters was added in version 0.23.0
		Support for merging named Series objects was added in version 0.24.0
		
		Examples
		--------
		>>> df1 = pd.DataFrame({'lkey': ['foo', 'bar', 'baz', 'foo'],
		...                     'value': [1, 2, 3, 5]})
		>>> df2 = pd.DataFrame({'rkey': ['foo', 'bar', 'baz', 'foo'],
		...                     'value': [5, 6, 7, 8]})
		>>> df1
		    lkey value
		0   foo      1
		1   bar      2
		2   baz      3
		3   foo      5
		>>> df2
		    rkey value
		0   foo      5
		1   bar      6
		2   baz      7
		3   foo      8
		
		Merge df1 and df2 on the lkey and rkey columns. The value columns have
		the default suffixes, _x and _y, appended.
		
		>>> df1.merge(df2, left_on='lkey', right_on='rkey')
		  lkey  value_x rkey  value_y
		0  foo        1  foo        5
		1  foo        1  foo        8
		2  foo        5  foo        5
		3  foo        5  foo        8
		4  bar        2  bar        6
		5  baz        3  baz        7
		
		Merge DataFrames df1 and df2 with specified left and right suffixes
		appended to any overlapping columns.
		
		>>> df1.merge(df2, left_on='lkey', right_on='rkey',
		...           suffixes=('_left', '_right'))
		  lkey  value_left rkey  value_right
		0  foo           1  foo            5
		1  foo           1  foo            8
		2  foo           5  foo            5
		3  foo           5  foo            8
		4  bar           2  bar            6
		5  baz           3  baz            7
		
		Merge DataFrames df1 and df2, but raise an exception if the DataFrames have
		any overlapping columns.
		
		>>> df1.merge(df2, left_on='lkey', right_on='rkey', suffixes=(False, False))
		Traceback (most recent call last):
		...
		ValueError: columns overlap but no suffix specified:
		    Index(['value'], dtype='object')
		
		>>> df1 = pd.DataFrame({'a': ['foo', 'bar'], 'b': [1, 2]})
		>>> df2 = pd.DataFrame({'a': ['foo', 'baz'], 'c': [3, 4]})
		>>> df1
		      a  b
		0   foo  1
		1   bar  2
		>>> df2
		      a  c
		0   foo  3
		1   baz  4
		
		>>> df1.merge(df2, how='inner', on='a')
		      a  b  c
		0   foo  1  3
		
		>>> df1.merge(df2, how='left', on='a')
		      a  b  c
		0   foo  1  3.0
		1   bar  2  NaN
		
		>>> df1 = pd.DataFrame({'left': ['foo', 'bar']})
		>>> df2 = pd.DataFrame({'right': [7, 8]})
		>>> df1
		    left
		0   foo
		1   bar
		>>> df2
		    right
		0   7
		1   8
		
		>>> df1.merge(df2, how='cross')
		   left  right
		0   foo      7
		1   foo      8
		2   bar      7
		3   bar      8
	**/
	static public function merge(left:Dynamic, right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Perform a merge by key distance.
		
		This is similar to a left-join except that we match on nearest
		key rather than equal keys. Both DataFrames must be sorted by the key.
		
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
		
		Parameters
		----------
		left : DataFrame or named Series
		right : DataFrame or named Series
		on : label
		    Field name to join on. Must be found in both DataFrames.
		    The data MUST be ordered. Furthermore this must be a numeric column,
		    such as datetimelike, integer, or float. On or left_on/right_on
		    must be given.
		left_on : label
		    Field name to join on in left DataFrame.
		right_on : label
		    Field name to join on in right DataFrame.
		left_index : bool
		    Use the index of the left DataFrame as the join key.
		right_index : bool
		    Use the index of the right DataFrame as the join key.
		by : column name or list of column names
		    Match on these columns before performing merge operation.
		left_by : column name
		    Field names to match on in the left DataFrame.
		right_by : column name
		    Field names to match on in the right DataFrame.
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively.
		tolerance : int or Timedelta, optional, default None
		    Select asof tolerance within this range; must be compatible
		    with the merge index.
		allow_exact_matches : bool, default True
		
		    - If True, allow matching with the same 'on' value
		      (i.e. less-than-or-equal-to / greater-than-or-equal-to)
		    - If False, don't match the same 'on' value
		      (i.e., strictly less-than / strictly greater-than).
		
		direction : 'backward' (default), 'forward', or 'nearest'
		    Whether to search for prior, subsequent, or closest matches.
		
		Returns
		-------
		merged : DataFrame
		
		See Also
		--------
		merge : Merge with a database-style join.
		merge_ordered : Merge with optional filling/interpolation.
		
		Examples
		--------
		>>> left = pd.DataFrame({"a": [1, 5, 10], "left_val": ["a", "b", "c"]})
		>>> left
		    a left_val
		0   1        a
		1   5        b
		2  10        c
		
		>>> right = pd.DataFrame({"a": [1, 2, 3, 6, 7], "right_val": [1, 2, 3, 6, 7]})
		>>> right
		   a  right_val
		0  1          1
		1  2          2
		2  3          3
		3  6          6
		4  7          7
		
		>>> pd.merge_asof(left, right, on="a")
		    a left_val  right_val
		0   1        a          1
		1   5        b          3
		2  10        c          7
		
		>>> pd.merge_asof(left, right, on="a", allow_exact_matches=False)
		    a left_val  right_val
		0   1        a        NaN
		1   5        b        3.0
		2  10        c        7.0
		
		>>> pd.merge_asof(left, right, on="a", direction="forward")
		    a left_val  right_val
		0   1        a        1.0
		1   5        b        6.0
		2  10        c        NaN
		
		>>> pd.merge_asof(left, right, on="a", direction="nearest")
		    a left_val  right_val
		0   1        a          1
		1   5        b          6
		2  10        c          7
		
		We can use indexed DataFrames as well.
		
		>>> left = pd.DataFrame({"left_val": ["a", "b", "c"]}, index=[1, 5, 10])
		>>> left
		   left_val
		1         a
		5         b
		10        c
		
		>>> right = pd.DataFrame({"right_val": [1, 2, 3, 6, 7]}, index=[1, 2, 3, 6, 7])
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
		
		>>> quotes = pd.DataFrame(
		...     {
		...         "time": [
		...             pd.Timestamp("2016-05-25 13:30:00.023"),
		...             pd.Timestamp("2016-05-25 13:30:00.023"),
		...             pd.Timestamp("2016-05-25 13:30:00.030"),
		...             pd.Timestamp("2016-05-25 13:30:00.041"),
		...             pd.Timestamp("2016-05-25 13:30:00.048"),
		...             pd.Timestamp("2016-05-25 13:30:00.049"),
		...             pd.Timestamp("2016-05-25 13:30:00.072"),
		...             pd.Timestamp("2016-05-25 13:30:00.075")
		...         ],
		...         "ticker": [
		...                "GOOG",
		...                "MSFT",
		...                "MSFT",
		...                "MSFT",
		...                "GOOG",
		...                "AAPL",
		...                "GOOG",
		...                "MSFT"
		...            ],
		...            "bid": [720.50, 51.95, 51.97, 51.99, 720.50, 97.99, 720.50, 52.01],
		...            "ask": [720.93, 51.96, 51.98, 52.00, 720.93, 98.01, 720.88, 52.03]
		...     }
		... )
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
		
		>>> trades = pd.DataFrame(
		...        {
		...            "time": [
		...                pd.Timestamp("2016-05-25 13:30:00.023"),
		...                pd.Timestamp("2016-05-25 13:30:00.038"),
		...                pd.Timestamp("2016-05-25 13:30:00.048"),
		...                pd.Timestamp("2016-05-25 13:30:00.048"),
		...                pd.Timestamp("2016-05-25 13:30:00.048")
		...            ],
		...            "ticker": ["MSFT", "MSFT", "GOOG", "GOOG", "AAPL"],
		...            "price": [51.95, 51.95, 720.77, 720.92, 98.0],
		...            "quantity": [75, 155, 100, 100, 100]
		...        }
		...    )
		>>> trades
		                     time ticker   price  quantity
		0 2016-05-25 13:30:00.023   MSFT   51.95        75
		1 2016-05-25 13:30:00.038   MSFT   51.95       155
		2 2016-05-25 13:30:00.048   GOOG  720.77       100
		3 2016-05-25 13:30:00.048   GOOG  720.92       100
		4 2016-05-25 13:30:00.048   AAPL   98.00       100
		
		By default we are taking the asof of the quotes
		
		>>> pd.merge_asof(trades, quotes, on="time", by="ticker")
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 2ms between the quote time and the trade time
		
		>>> pd.merge_asof(
		...     trades, quotes, on="time", by="ticker", tolerance=pd.Timedelta("2ms")
		... )
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155     NaN     NaN
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 10ms between the quote time and the trade time
		and we exclude exact matches on time. However *prior* data will
		propagate forward
		
		>>> pd.merge_asof(
		...     trades,
		...     quotes,
		...     on="time",
		...     by="ticker",
		...     tolerance=pd.Timedelta("10ms"),
		...     allow_exact_matches=False
		... )
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75     NaN     NaN
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100     NaN     NaN
		3 2016-05-25 13:30:00.048   GOOG  720.92       100     NaN     NaN
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
	**/
	static public function merge_asof(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?by:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?suffixes:Dynamic, ?tolerance:Dynamic, ?allow_exact_matches:Dynamic, ?direction:Dynamic):pandas.DataFrame;
	/**
		Perform a merge for ordered data with optional filling/interpolation.
		
		Designed for ordered data like time series data. Optionally
		perform group-wise merge (see examples).
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label or list
		    Field names to join on. Must be found in both DataFrames.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns.
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs.
		left_by : column name or list of column names
		    Group left DataFrame by group columns and merge piece by piece with
		    right DataFrame.
		right_by : column name or list of column names
		    Group right DataFrame by group columns and merge piece by piece with
		    left DataFrame.
		fill_method : {'ffill', None}, default None
		    Interpolation method for data.
		suffixes : list-like, default is ("_x", "_y")
		    A length-2 sequence where each element is optionally a string
		    indicating the suffix to add to overlapping column names in
		    `left` and `right` respectively. Pass a value of `None` instead
		    of a string to indicate that the column name from `left` or
		    `right` should be left as-is, with no suffix. At least one of the
		    values must not be None.
		
		    .. versionchanged:: 0.25.0
		how : {'left', 'right', 'outer', 'inner'}, default 'outer'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join).
		
		Returns
		-------
		DataFrame
		    The merged DataFrame output type will the be same as
		    'left', if it is a subclass of DataFrame.
		
		See Also
		--------
		merge : Merge with a database-style join.
		merge_asof : Merge on nearest keys.
		
		Examples
		--------
		>>> df1 = pd.DataFrame(
		...     {
		...         "key": ["a", "c", "e", "a", "c", "e"],
		...         "lvalue": [1, 2, 3, 1, 2, 3],
		...         "group": ["a", "a", "a", "b", "b", "b"]
		...     }
		... )
		>>> df1
		      key  lvalue group
		0   a       1     a
		1   c       2     a
		2   e       3     a
		3   a       1     b
		4   c       2     b
		5   e       3     b
		
		>>> df2 = pd.DataFrame({"key": ["b", "c", "d"], "rvalue": [1, 2, 3]})
		>>> df2
		      key  rvalue
		0   b       1
		1   c       2
		2   d       3
		
		>>> merge_ordered(df1, df2, fill_method="ffill", left_by="group")
		  key  lvalue group  rvalue
		0   a       1     a     NaN
		1   b       1     a     1.0
		2   c       2     a     2.0
		3   d       2     a     3.0
		4   e       3     a     3.0
		5   a       1     b     NaN
		6   b       1     b     1.0
		7   c       2     b     2.0
		8   d       2     b     3.0
		9   e       3     b     3.0
	**/
	static public function merge_ordered(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?fill_method:Dynamic, ?suffixes:Dynamic, ?how:Dynamic):Dynamic;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : bool, default True
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Examples
		--------
		>>> na_value_for_dtype(np.dtype('int64'))
		0
		>>> na_value_for_dtype(np.dtype('int64'), compat=False)
		nan
		>>> na_value_for_dtype(np.dtype('float64'))
		nan
		>>> na_value_for_dtype(np.dtype('bool'))
		False
		>>> na_value_for_dtype(np.dtype('datetime64[ns]'))
		numpy.datetime64('NaT')
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
	/**
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype should be converted to int64.
		
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
	static public var npt : Dynamic;
	/**
		*this is an internal non-public method*
		
		Returns the levels, labels and names of a multi-index to multi-index join.
		Depending on the type of join, this method restores the appropriate
		dropped levels of the joined multi-index.
		The method relies on lidx, rindexer which hold the index positions of
		left and right, where a join was feasible
		
		Parameters
		----------
		left : MultiIndex
		    left index
		right : MultiIndex
		    right index
		dropped_level_names : str array
		    list of non-common level names
		join_index : Index
		    the index of the join between the
		    common levels of left and right
		lindexer : np.ndarray[np.intp]
		    left indexer
		rindexer : np.ndarray[np.intp]
		    right indexer
		
		Returns
		-------
		levels : list of Index
		    levels of combined multiindexes
		labels : np.ndarray[np.intp]
		    labels of combined multiindexes
		names : List[Hashable]
		    names of combined multiindex levels
	**/
	static public function restore_dropped_levels_multijoin(left:Dynamic, right:Dynamic, dropped_level_names:Dynamic, join_index:Dynamic, lindexer:Dynamic, rindexer:Dynamic):Dynamic;
}