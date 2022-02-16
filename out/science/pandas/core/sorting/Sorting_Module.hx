/* This file is generated, do not edit! */
package pandas.core.sorting;
@:pythonImport("pandas.core.sorting") extern class Sorting_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DefaultDict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function IndexKeyFunc(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Shape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a new MultiIndex in which key has been applied
		to all levels specified in level (or all levels if level
		is None). Used for key sorting for MultiIndex.
		
		Parameters
		----------
		index : MultiIndex
		    Index to which to apply the key function on the
		    specified levels.
		key : Callable
		    Function that takes an Index and returns an Index of
		    the same shape. This key is applied to each level
		    separately. The name of the level can be used to
		    distinguish different levels for application.
		level : list-like, int or str, default None
		    Level or list of levels to apply the key function to.
		    If None, key function is applied to all levels. Other
		    levels are left unchanged.
		
		Returns
		-------
		labels : MultiIndex
		    Resulting MultiIndex with modified levels.
	**/
	static public function _ensure_key_mapped_multiindex(index:Dynamic, key:Dynamic, ?level:Dynamic):pandas.MultiIndex;
	/**
		See nanargminmax.__doc__.
	**/
	static public function _nanargminmax(values:Dynamic, mask:Dynamic, func:Dynamic):Dynamic;
	/**
		Parameters
		----------
		uniques : np.ndarray[np.int64]
		labels : np.ndarray[np.intp]
		
		Returns
		-------
		np.ndarray[np.int64]
		np.ndarray[np.intp]
	**/
	static public function _reorder_by_uniques(uniques:Dynamic, labels:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
	**/
	static public function compress_group_index(group_index:Dynamic, ?sort:Dynamic):Dynamic;
	static public function decons_group_index(comp_labels:Dynamic, shape:Dynamic):Dynamic;
	/**
		Reconstruct labels from observed group ids.
		
		Parameters
		----------
		comp_ids : np.ndarray[np.intp]
		xnull : bool
		    If nulls are excluded; i.e. -1 labels are passed through.
	**/
	static public function decons_obs_group_ids(comp_ids:Dynamic, obs_ids:Dynamic, shape:Dynamic, labels:Dynamic, xnull:Dynamic):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a callable key function to the values function and checks
		that the resulting value has the same shape. Can be called on Index
		subclasses, Series, DataFrames, or ndarrays.
		
		Parameters
		----------
		values : Series, DataFrame, Index subclass, or ndarray
		key : Optional[Callable], key to be called on the values array
		levels : Optional[List], if values is a MultiIndex, list of levels to
		apply the key to.
	**/
	static public function ensure_key_mapped(values:Dynamic, key:Dynamic, ?levels:Dynamic):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Map compressed group id -> key tuple.
	**/
	static public function get_flattened_list(comp_ids:Dynamic, ngroups:Dynamic, levels:Dynamic, labels:Dynamic):Dynamic;
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
		Returns
		-------
		dict:
		    Labels mapped to indexers.
	**/
	static public function get_indexer_dict(label_list:Dynamic, keys:Dynamic):Dynamic;
	/**
		Helper method that return the indexer according to input parameters for
		the sort_index method of DataFrame and Series.
		
		Parameters
		----------
		target : Index
		level : int or level name or list of ints or list of level names
		ascending : bool or list of bools, default True
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, default 'quicksort'
		na_position : {'first', 'last'}, default 'last'
		sort_remaining : bool, default True
		key : callable, optional
		
		Returns
		-------
		Optional[ndarray]
		    The indexer for the new index.
	**/
	static public function get_indexer_indexer(target:Dynamic, level:Dynamic, ascending:Dynamic, kind:Dynamic, na_position:Dynamic, sort_remaining:Dynamic, key:Dynamic):Dynamic;
	static public function indexer_from_factorized(labels:Dynamic, shape:Dynamic, ?compress:Dynamic):Dynamic;
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
	static public function is_int64_overflow_possible(shape:Dynamic):Dynamic;
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
		Performs lexical sorting on a set of keys
		
		Parameters
		----------
		keys : sequence of arrays
		    Sequence of ndarrays to be sorted by the indexer
		orders : bool or list of booleans, optional
		    Determines the sorting order for each element in keys. If a list,
		    it must be the same length as keys. This determines whether the
		    corresponding element in keys should be sorted in ascending
		    (True) or descending (False) order. if bool, applied to all
		    elements as above. if None, defaults to True.
		na_position : {'first', 'last'}, default 'last'
		    Determines placement of NA elements in the sorted list ("last" or "first")
		key : Callable, optional
		    Callable key function applied to every element in keys before sorting
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		np.ndarray[np.intp]
	**/
	static public function lexsort_indexer(keys:Dynamic, ?orders:Dynamic, ?na_position:Dynamic, ?key:Dynamic):Dynamic;
	/**
		Implementation of np.argmin/argmax but for ExtensionArray and which
		handles missing values.
		
		Parameters
		----------
		values : ExtensionArray
		method : {"argmax", "argmin"}
		axis : int, default 0
		
		Returns
		-------
		int
	**/
	static public function nargminmax(values:Dynamic, method:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Intended to be a drop-in replacement for np.argsort which handles NaNs.
		
		Adds ascending, na_position, and key parameters.
		
		(GH #6399, #5231, #27237)
		
		Parameters
		----------
		kind : str, default 'quicksort'
		ascending : bool, default True
		na_position : {'first', 'last'}, default 'last'
		key : Optional[Callable], default None
		mask : Optional[np.ndarray], default None
		    Passed when called by ExtensionArray.argsort.
		
		Returns
		-------
		np.ndarray[np.intp]
	**/
	static public function nargsort(items:Dynamic, ?kind:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic, ?key:Dynamic, ?mask:Dynamic):Dynamic;
	static public var npt : Dynamic;
	/**
		Indices of the first occurrences of the unique labels
		*excluding* -1. equivalent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function unique_label_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
}