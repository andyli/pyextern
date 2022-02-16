/* This file is generated, do not edit! */
package pandas.core.reshape.reshape;
@:pythonImport("pandas.core.reshape.reshape") extern class Reshape_Module {
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_dummies_1d(data:Dynamic, prefix:Dynamic, ?prefix_sep:Dynamic, ?dummy_na:Dynamic, ?sparse:Dynamic, ?drop_first:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Re-orders the values when stacking multiple extension-arrays.
		
		The indirect stacking method used for EAs requires a followup
		take to get the order correct.
		
		Parameters
		----------
		arr : ExtensionArray
		n_rows, n_columns : int
		    The number of rows and columns in the original DataFrame.
		
		Returns
		-------
		taken : ExtensionArray
		    The original `arr` with elements re-ordered appropriately
		
		Examples
		--------
		>>> arr = np.array(['a', 'b', 'c', 'd', 'e', 'f'])
		>>> _reorder_for_extension_array_stack(arr, 2, 3)
		array(['a', 'c', 'e', 'b', 'd', 'f'], dtype='<U1')
		
		>>> _reorder_for_extension_array_stack(arr, 3, 2)
		array(['a', 'd', 'b', 'e', 'c', 'f'], dtype='<U1')
	**/
	static public function _reorder_for_extension_array_stack(arr:Dynamic, n_rows:Dynamic, n_columns:Dynamic):Dynamic;
	/**
		Creates a MultiIndex from the first N-1 levels of this MultiIndex.
	**/
	static public function _stack_multi_column_index(columns:Dynamic):Dynamic;
	static public function _stack_multi_columns(frame:Dynamic, ?level_num:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Unstack an ExtensionArray-backed Series.
		
		The ExtensionDtype is preserved.
		
		Parameters
		----------
		series : Series
		    A Series with an ExtensionArray for values
		level : Any
		    The level name or number.
		fill_value : Any
		    The user-level (not physical storage) fill value to use for
		    missing values introduced by the reshape. Passed to
		    ``series.values.take``.
		
		Returns
		-------
		DataFrame
		    Each column of the DataFrame will have the same dtype as
		    the input Series.
	**/
	static public function _unstack_extension_series(series:Dynamic, level:Dynamic, fill_value:Dynamic):Dynamic;
	static public function _unstack_frame(obj:Dynamic, level:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _unstack_multiple(data:Dynamic, clocs:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
	**/
	static public function compress_group_index(group_index:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Reconstruct labels from observed group ids.
		
		Parameters
		----------
		comp_ids : np.ndarray[np.intp]
		xnull : bool
		    If nulls are excluded; i.e. -1 labels are passed through.
	**/
	static public function decons_obs_group_ids(comp_ids:Dynamic, obs_ids:Dynamic, shape:Dynamic, labels:Dynamic, xnull:Dynamic):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		Factorize an input `values` into `categories` and `codes`. Preserves
		categorical dtype in `categories`.
		
		Parameters
		----------
		values : list-like
		
		Returns
		-------
		codes : ndarray
		categories : Index
		    If `values` has a categorical dtype, then `categories` is
		    a CategoricalIndex keeping the categories and order of `values`.
	**/
	static public function factorize_from_iterable(values:Dynamic):Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
		
		Parameters
		----------
		labels : list of label arrays
		sizes : tuple[int] of size of the levels
		
		Returns
		-------
		np.ndarray[np.intp]
		    comp_ids
		np.ndarray[np.int64]
		    obs_group_ids
	**/
	static public function get_compressed_ids(labels:Dynamic, sizes:Dynamic):Dynamic;
	/**
		Convert categorical variable into dummy/indicator variables.
		
		Parameters
		----------
		data : array-like, Series, or DataFrame
		    Data of which to get dummy indicators.
		prefix : str, list of str, or dict of str, default None
		    String to append DataFrame column names.
		    Pass a list with length equal to the number of columns
		    when calling get_dummies on a DataFrame. Alternatively, `prefix`
		    can be a dictionary mapping column names to prefixes.
		prefix_sep : str, default '_'
		    If appending prefix, separator/delimiter to use. Or pass a
		    list or dictionary as with `prefix`.
		dummy_na : bool, default False
		    Add a column to indicate NaNs, if False NaNs are ignored.
		columns : list-like, default None
		    Column names in the DataFrame to be encoded.
		    If `columns` is None then all the columns with
		    `object` or `category` dtype will be converted.
		sparse : bool, default False
		    Whether the dummy-encoded columns should be backed by
		    a :class:`SparseArray` (True) or a regular NumPy array (False).
		drop_first : bool, default False
		    Whether to get k-1 dummies out of k categorical levels by removing the
		    first level.
		dtype : dtype, default np.uint8
		    Data type for new columns. Only a single dtype is allowed.
		
		Returns
		-------
		DataFrame
		    Dummy-coded data.
		
		See Also
		--------
		Series.str.get_dummies : Convert Series to dummy codes.
		
		Notes
		-----
		Reference :ref:`the user guide <reshaping.dummies>` for more examples.
		
		Examples
		--------
		>>> s = pd.Series(list('abca'))
		
		>>> pd.get_dummies(s)
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		
		>>> s1 = ['a', 'b', np.nan]
		
		>>> pd.get_dummies(s1)
		   a  b
		0  1  0
		1  0  1
		2  0  0
		
		>>> pd.get_dummies(s1, dummy_na=True)
		   a  b  NaN
		0  1  0    0
		1  0  1    0
		2  0  0    1
		
		>>> df = pd.DataFrame({'A': ['a', 'b', 'a'], 'B': ['b', 'a', 'c'],
		...                    'C': [1, 2, 3]})
		
		>>> pd.get_dummies(df, prefix=['col1', 'col2'])
		   C  col1_a  col1_b  col2_a  col2_b  col2_c
		0  1       1       0       0       1       0
		1  2       0       1       1       0       0
		2  3       1       0       0       0       1
		
		>>> pd.get_dummies(pd.Series(list('abcaa')))
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		4  1  0  0
		
		>>> pd.get_dummies(pd.Series(list('abcaa')), drop_first=True)
		   b  c
		0  0  0
		1  1  0
		2  0  1
		3  0  0
		4  0  0
		
		>>> pd.get_dummies(pd.Series(list('abc')), dtype=float)
		     a    b    c
		0  1.0  0.0  0.0
		1  0.0  1.0  0.0
		2  0.0  0.0  1.0
	**/
	static public function get_dummies(data:Dynamic, ?prefix:Dynamic, ?prefix_sep:Dynamic, ?dummy_na:Dynamic, ?columns:Dynamic, ?sparse:Dynamic, ?drop_first:Dynamic, ?dtype:Dynamic):Dynamic;
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
		labels : sequence of arrays
		    Integers identifying levels at each location
		shape : tuple[int, ...]
		    Number of unique levels at each location
		sort : bool
		    If the ranks of returned ids should match lexical ranks of labels
		xnull : bool
		    If true nulls are excluded. i.e. -1 values in the labels are
		    passed through.
		
		Returns
		-------
		An array of type int64 where two elements are equal if their corresponding
		labels are equal at all location.
		
		Notes
		-----
		The length of `labels` and `shape` must be identical.
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
		
		Parameters
		----------
		group_index : np.ndarray[np.intp]
		    signed integer dtype
		ngroups : int or None, default None
		
		Returns
		-------
		np.ndarray[np.intp]
	**/
	static public function get_group_index_sorter(group_index:Dynamic, ?ngroups:Dynamic):Dynamic;
	/**
		Analogue to is_extension_array_dtype but excluding DatetimeTZDtype.
	**/
	static public function is_1d_only_ea_dtype(dtype:Dynamic):Dynamic;
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
		Find the minimal dtype that can hold both the given dtype and fill_value.
		
		Parameters
		----------
		dtype : np.dtype
		fill_value : scalar, default np.nan
		
		Returns
		-------
		dtype
		    Upcasted from dtype argument if necessary.
		fill_value
		    Upcasted from fill_value argument if necessary.
		
		Raises
		------
		ValueError
		    If fill_value is a non-scalar and dtype is not object.
	**/
	static public function maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
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
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(pd.NA)
		False
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
	static public var npt : Dynamic;
	/**
		Convert DataFrame to Series with multi-level Index. Columns become the
		second level of the resulting hierarchical index
		
		Returns
		-------
		stacked : Series
	**/
	static public function stack(frame:Dynamic, ?level:Dynamic, ?dropna:Dynamic):pandas.Series;
	static public function stack_multiple(frame:Dynamic, level:Dynamic, ?dropna:Dynamic):Dynamic;
	static public function unstack(obj:Dynamic, level:Dynamic, ?fill_value:Dynamic):Dynamic;
}