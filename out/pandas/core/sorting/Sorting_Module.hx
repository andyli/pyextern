/* This file is generated, do not edit! */
package pandas.core.sorting;
@:pythonImport("pandas.core.sorting") extern class Sorting_Module {
	static public var PY3 : Dynamic;
	static public var _INT64_MAX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _reorder_by_uniques(uniques:Dynamic, labels:Dynamic):Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
	**/
	static public function compress_group_index(group_index:Dynamic, ?sort:Dynamic):Dynamic;
	static public function decons_group_index(comp_labels:Dynamic, shape:Dynamic):Dynamic;
	/**
		reconstruct labels from observed group ids
		
		Parameters
		----------
		xnull: boolean,
		    if nulls are excluded; i.e. -1 labels are passed through
	**/
	static public function decons_obs_group_ids(comp_ids:Dynamic, obs_ids:Dynamic, shape:Dynamic, labels:Dynamic, xnull:Dynamic):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
		
		Parameters
		----------
		labels : list of label arrays
		sizes : list of size of the levels
		
		Returns
		-------
		tuple of (comp_ids, obs_group_ids)
	**/
	static public function get_compressed_ids(labels:Dynamic, sizes:Dynamic):Dynamic;
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
	static public function indexer_from_factorized(labels:Dynamic, shape:Dynamic, ?compress:Dynamic):Dynamic;
	/**
		infer the dtype from a scalar or array
		
		Parameters
		----------
		arr : scalar or array
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, array belongs to pandas extension types
		    is inferred as object
		
		Returns
		-------
		tuple (numpy-compat/pandas-compat dtype, array)
		
		Notes
		-----
		if pandas_dtype=False. these infer to numpy dtypes
		exactly with the exception that mixed / object dtypes
		are not coerced by stringifying or conversion
		
		if pandas_dtype=True. datetime64tz-aware/categorical
		types will retain there character.
		
		Examples
		--------
		>>> np.asarray([1, '1'])
		array(['1', '1'], dtype='<U21')
		
		>>> infer_dtype_from_array([1, '1'])
		(numpy.object_, [1, '1'])
	**/
	static public function infer_dtype_from_array(arr:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
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
	static public function is_int64_overflow_possible(shape:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
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
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
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
	static public function lexsort_indexer(keys:Dynamic, ?orders:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		This is intended to be a drop-in replacement for np.argsort which
		handles NaNs. It adds ascending and na_position parameters.
		GH #6399, #5231
	**/
	static public function nargsort(items:Dynamic, ?kind:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Sort ``values`` and reorder corresponding ``labels``.
		``values`` should be unique if ``labels`` is not None.
		Safe for use with mixed types (int, str), orders ints before strs.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		values : list-like
		    Sequence; must be unique if ``labels`` is not None.
		labels : list_like
		    Indices to ``values``. All out of bound indices are treated as
		    "not found" and will be masked with ``na_sentinel``.
		na_sentinel : int, default -1
		    Value in ``labels`` to mark "not found".
		    Ignored when ``labels`` is None.
		assume_unique : bool, default False
		    When True, ``values`` are assumed to be unique, which can speed up
		    the calculation. Ignored when ``labels`` is None.
		
		Returns
		-------
		ordered : ndarray
		    Sorted ``values``
		new_labels : ndarray
		    Reordered ``labels``; returned when ``labels`` is not None.
		
		Raises
		------
		TypeError
		    * If ``values`` is not list-like or if ``labels`` is neither None
		    nor list-like
		    * If ``values`` cannot be sorted
		ValueError
		    * If ``labels`` is not None and ``values`` contain duplicates.
	**/
	static public function safe_sort(values:Dynamic, ?labels:Dynamic, ?na_sentinel:Dynamic, ?assume_unique:Dynamic):numpy.Ndarray;
	static public var string_types : Dynamic;
	/**
		indices of the first occurrences of the unique labels
		*excluding* -1. equivalent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function unique_label_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
}