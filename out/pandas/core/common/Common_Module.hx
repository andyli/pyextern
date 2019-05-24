/* This file is generated, do not edit! */
package pandas.core.common;
@:pythonImport("pandas.core.common") extern class Common_Module {
	static public var PY36 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a boolean indicating if all arguments are None
	**/
	static public function _all_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a boolean indicating if all arguments are not None
	**/
	static public function _all_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a boolean indicating if any argument is None
	**/
	static public function _any_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a boolean indicating if any argument is not None
	**/
	static public function _any_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a function that will map names/labels, dependent if mapper
		is a dict, Series or just a function.
	**/
	static public function _get_rename_function(mapper:Dynamic):Dynamic;
	/**
		Check if the object is an iterable but not a string.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_iter_not_string : bool
		    Whether `obj` is a non-string iterable.
		
		Examples
		--------
		>>> _iterable_not_string([1, 2, 3])
		True
		>>> _iterable_not_string("foo")
		False
		>>> _iterable_not_string(1)
		False
	**/
	static public function _iterable_not_string(obj:Dynamic):Bool;
	/**
		Returns a generator consisting of the arguments that are not None
	**/
	static public function _not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Apply a function ``func`` to object ``obj`` either by passing obj as the
		first argument to the function or, in the case that the func is a tuple,
		interpret the first element of the tuple as a function and pass the obj to
		that function as a keyword argument whose key is the value of the second
		element of the tuple.
		
		Parameters
		----------
		func : callable or tuple of (callable, string)
		    Function to apply to this object or, alternatively, a
		    ``(callable, data_keyword)`` tuple where ``data_keyword`` is a
		    string indicating the keyword of `callable`` that expects the
		    object.
		args : iterable, optional
		    positional arguments passed into ``func``.
		kwargs : dict, optional
		    a dictionary of keyword arguments passed into ``func``.
		
		Returns
		-------
		object : the return type of ``func``.
	**/
	static public function _pipe(obj:Dynamic, func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Evaluate possibly callable input using obj and kwargs if it is callable,
		otherwise return as it is
		
		Parameters
		----------
		maybe_callable : possibly a callable
		obj : NDFrame
		**kwargs
	**/
	static public function apply_if_callable(maybe_callable:Dynamic, obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function asarray_tuplesafe(values:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		To avoid numpy DeprecationWarnings, cast float to integer where valid.
		
		Parameters
		----------
		val : scalar
		
		Returns
		-------
		outval : scalar
	**/
	static public function cast_scalar_indexer(val:Dynamic):Dynamic;
	static public function consensus_name_attr(objs:Dynamic):Dynamic;
	/**
		Transform any list-like object in a 1-dimensional numpy array of object
		dtype.
		
		Parameters
		----------
		values : any iterable which has a len()
		
		Raises
		------
		TypeError
		    * If `values` does not have a len()
		
		Returns
		-------
		1-dimensional numpy array of dtype object
	**/
	static public function construct_1d_object_array_from_listlike(values:Dynamic):Dynamic;
	/**
		Returns the count of arguments that are not None
	**/
	static public function count_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper function to convert datetimelike-keyed dicts to Timestamp-keyed dict
		
		Parameters
		----------
		d: dict like object
		
		Returns
		-------
		dict
	**/
	static public function dict_compat(d:Dynamic):Dynamic;
	static public function dict_keys_to_ordered_list(mapping:Dynamic):Dynamic;
	/**
		Flatten an arbitrarily nested sequence.
		
		Parameters
		----------
		l : sequence
		    The non string sequence to flatten
		
		Notes
		-----
		This doesn't consider strings sequences.
		
		Returns
		-------
		flattened : generator
	**/
	static public function flatten(l:Dynamic):python.NativeIterable<Dynamic>;
	static public function get_callable_name(obj:Dynamic):Dynamic;
	/**
		Transform label or iterable of labels to array, for use in Index.
		
		Parameters
		----------
		dtype : dtype
		    If specified, use as dtype of the resulting array, otherwise infer.
		
		Returns
		-------
		array
	**/
	static public function index_labels_to_array(labels:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
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
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether `key` is a valid boolean indexer.
		
		Parameters
		----------
		key : Any
		    Only list-likes may be considered boolean indexers.
		    All other types are not considered a boolean indexer.
		    For array-like input, boolean ndarrays or ExtensionArrays
		    with ``_is_boolean`` set are considered boolean indexers.
		
		Returns
		-------
		bool
		
		Raises
		------
		ValueError
		    When the array is an object-dtype ndarray or ExtensionArray
		    and contains missing values.
	**/
	static public function is_bool_indexer(key:Dynamic):Dynamic;
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
		we have a full length slice 
	**/
	static public function is_full_slice(obj:Dynamic, l:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		we have a null slice 
	**/
	static public function is_null_slice(obj:Dynamic):Dynamic;
	/**
		Find non-trivial slices in "l": return a list of booleans with same length.
	**/
	static public function is_true_slices(l:Dynamic):Dynamic;
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
	static public function isnull(obj:Dynamic):Dynamic;
	static public function iteritems(obj:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function maybe_box(indexer:Dynamic, values:Dynamic, obj:Dynamic, key:Dynamic):Dynamic;
	static public function maybe_box_datetimelike(value:Dynamic):Dynamic;
	static public function maybe_make_list(obj:Dynamic):Dynamic;
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
	static public function notnull(obj:Dynamic):Dynamic;
	/**
		Helper function for processing random_state arguments.
		
		Parameters
		----------
		state : int, np.random.RandomState, None.
		    If receives an int, passes to np.random.RandomState() as seed.
		    If receives an np.random.RandomState object, just returns object.
		    If receives `None`, returns np.random.
		    If receives anything else, raises an informative ValueError.
		    Default None.
		
		Returns
		-------
		np.random.RandomState
	**/
	static public function random_state(?state:Dynamic):Dynamic;
	static public function sentinel_factory():Dynamic;
	/**
		Helper function to standardize a supplied mapping.
		
		.. versionadded:: 0.21.0
		
		Parameters
		----------
		into : instance or subclass of collections.Mapping
		    Must be a class, an initialized collections.defaultdict,
		    or an instance of a collections.Mapping subclass.
		
		Returns
		-------
		mapping : a collections.Mapping subclass or other constructor
		    a callable object that can accept an iterator to create
		    the desired Mapping.
		
		See Also
		--------
		DataFrame.to_dict
		Series.to_dict
	**/
	static public function standardize_mapping(into:Dynamic):Dynamic;
	static public function try_sort(iterable:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
}