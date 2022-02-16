/* This file is generated, do not edit! */
package pandas.core.indexing;
@:pythonImport("pandas.core.indexing") extern class Indexing_Module {
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var IndexSlice : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var _NS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _one_ellipsis_message : Dynamic;
	/**
		Given an indexer for the first dimension, create an equivalent tuple
		for indexing over all dimensions.
		
		Parameters
		----------
		ndim : int
		loc : object
		
		Returns
		-------
		tuple
	**/
	static public function _tuplify(ndim:Dynamic, loc:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Check if `indexer` is a valid array indexer for `array`.
		
		For a boolean mask, `array` and `indexer` are checked to have the same
		length. The dtype is validated, and if it is an integer or boolean
		ExtensionArray, it is checked if there are missing values present, and
		it is converted to the appropriate numpy array. Other dtypes will raise
		an error.
		
		Non-array indexers (integer, slice, Ellipsis, tuples, ..) are passed
		through as is.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		array : array-like
		    The array that is being indexed (only used for the length).
		indexer : array-like or list-like
		    The array-like that's used to index. List-like input that is not yet
		    a numpy array or an ExtensionArray is converted to one. Other input
		    types are passed through as is.
		
		Returns
		-------
		numpy.ndarray
		    The validated indexer as a numpy array that can be used to index.
		
		Raises
		------
		IndexError
		    When the lengths don't match.
		ValueError
		    When `indexer` cannot be converted to a numpy ndarray to index
		    (e.g. presence of missing values).
		
		See Also
		--------
		api.types.is_bool_dtype : Check if `key` is of boolean dtype.
		
		Examples
		--------
		When checking a boolean mask, a boolean ndarray is returned when the
		arguments are all valid.
		
		>>> mask = pd.array([True, False])
		>>> arr = pd.array([1, 2])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		An IndexError is raised when the lengths don't match.
		
		>>> mask = pd.array([True, False, True])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		Traceback (most recent call last):
		...
		IndexError: Boolean index has wrong length: 3 instead of 2.
		
		NA values in a boolean array are treated as False.
		
		>>> mask = pd.array([True, pd.NA])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		A numpy boolean mask will get passed through (if the length is correct):
		
		>>> mask = np.array([True, False])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		Similarly for integer indexers, an integer ndarray is returned when it is
		a valid indexer, otherwise an error is  (for integer indexers, a matching
		length is not required):
		
		>>> indexer = pd.array([0, 2], dtype="Int64")
		>>> arr = pd.array([1, 2, 3])
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		array([0, 2])
		
		>>> indexer = pd.array([0, pd.NA], dtype="Int64")
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		Traceback (most recent call last):
		...
		ValueError: Cannot index with an integer indexer containing NA values
		
		For non-integer/boolean dtypes, an appropriate error is raised:
		
		>>> indexer = np.array([0., 2.], dtype="float64")
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		Traceback (most recent call last):
		...
		IndexError: arrays used as indices must be of integer or boolean type
	**/
	static public function check_array_indexer(array:Dynamic, indexer:Dynamic):Dynamic;
	/**
		Check if key is a valid boolean indexer for an object with such index and
		perform reindexing or conversion if needed.
		
		This function assumes that is_bool_indexer(key) == True.
		
		Parameters
		----------
		index : Index
		    Index of the object on which the indexing is done.
		key : list-like
		    Boolean indexer to check.
		
		Returns
		-------
		np.array
		    Resulting key.
		
		Raises
		------
		IndexError
		    If the key does not have the same length as index.
		IndexingError
		    If the index of the key is unalignable to index.
	**/
	static public function check_bool_indexer(index:Dynamic, key:Dynamic):Dynamic;
	/**
		Checks if the key is a deprecated indexer.
	**/
	static public function check_deprecated_indexers(key:Dynamic):Dynamic;
	/**
		provide concatenation of an array of arrays each of which is a single
		'normalized' dtypes (in that for example, if it's object, then it is a
		non-datetimelike and provide a combined dtype for the resulting array that
		preserves the overall dtype if possible)
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		ea_compat_axis : bool, default False
		    For ExtensionArray compat, behave as if axis == 1 when determining
		    whether to drop empty arrays.
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function concat_compat(to_concat:Dynamic, ?axis:Dynamic, ?ea_compat_axis:Dynamic):Dynamic;
	/**
		Create a filtered indexer that doesn't have any missing indexers.
	**/
	static public function convert_from_missing_indexer_tuple(indexer:Dynamic, axes:Dynamic):Dynamic;
	/**
		Reverse convert a missing indexer, which is a dict
		return the scalar indexer and a boolean indicating if we converted
	**/
	static public function convert_missing_indexer(indexer:Dynamic):Dynamic;
	/**
		If we are index sliceable, then return my slicer, otherwise return None.
	**/
	static public function convert_to_index_sliceable(obj:Dynamic, key:Dynamic):Dynamic;
	/**
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
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
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		infer the fill value for the nan/NaT from the provided
		scalar/ndarray/list-like if we are a NaT, return the correct dtyped
		element to provide proper block construction
	**/
	static public function infer_fill_value(val:Dynamic):Dynamic;
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
		Check if we have an empty indexer.
		
		Parameters
		----------
		indexer : object
		arr_value : np.ndarray or ExtensionArray
		
		Returns
		-------
		bool
	**/
	static public function is_empty_indexer(indexer:Dynamic, arr_value:Dynamic):Dynamic;
	/**
		Is setting this value into this target overwriting the entire column?
		
		Parameters
		----------
		target : np.ndarray or ExtensionArray
		value : np.ndarray or ExtensionArray
		
		Returns
		-------
		bool
	**/
	static public function is_exact_shape_match(target:Dynamic, value:Dynamic):Dynamic;
	/**
		Return True if hash(obj) will succeed, False otherwise.
		
		Some types will pass a test against collections.abc.Hashable but fail when
		they are actually hashed with hash().
		
		Distinguish between these and other types by trying the call to hash() and
		seeing if they raise TypeError.
		
		Returns
		-------
		bool
		
		Examples
		--------
		>>> import collections
		>>> a = ([],)
		>>> isinstance(a, collections.abc.Hashable)
		True
		>>> is_hashable(a)
		False
	**/
	static public function is_hashable(obj:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is an iterator.
		
		This is intended for generators, not list-like objects.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_iter : bool
		    Whether `obj` is an iterator.
		
		Examples
		--------
		>>> import datetime
		>>> is_iterator((x for x in []))
		True
		>>> is_iterator([1, 2, 3])
		False
		>>> is_iterator(datetime.datetime(2017, 1, 1))
		False
		>>> is_iterator("foo")
		False
		>>> is_iterator(1)
		False
	**/
	static public function is_iterator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		bool
	**/
	static public function is_label_like(key:Dynamic):Dynamic;
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
		Check if we have a list-like indexer that is *not* a NamedTuple.
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		bool
	**/
	static public function is_list_like_indexer(key:Dynamic):Dynamic;
	/**
		Returns
		-------
		bool
	**/
	static public function is_nested_tuple(tup:Dynamic, labels:Dynamic):Dynamic;
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
		Return True if given object is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number.
		
		Returns
		-------
		bool
		    Return True if given object is scalar.
		
		Examples
		--------
		>>> import datetime
		>>> dt = datetime.datetime(2018, 10, 3)
		>>> pd.api.types.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is a sequence of objects.
		String types are not included as sequences here.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_sequence : bool
		    Whether `obj` is a sequence of objects.
		
		Examples
		--------
		>>> l = [1, 2, 3]
		>>>
		>>> is_sequence(l)
		True
		>>> is_sequence(iter(l))
		False
	**/
	static public function is_sequence(obj:Dynamic):Bool;
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
		If the value is a zerodim array, return the item it contains.
		
		Parameters
		----------
		val : object
		
		Returns
		-------
		object
		
		Examples
		--------
		>>> item_from_zerodim(1)
		1
		>>> item_from_zerodim('foobar')
		'foobar'
		>>> item_from_zerodim(np.array(1))
		1
		>>> item_from_zerodim(np.array([1]))
		array([1])
	**/
	static public function item_from_zerodim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the expected length of target[indexer]
		
		Returns
		-------
		int
	**/
	static public function length_of_indexer(indexer:Dynamic, ?target:Dynamic):Dynamic;
	/**
		We likely want to take the cross-product.
	**/
	static public function maybe_convert_ix(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns
		-------
		bool
	**/
	static public function need_slice(obj:Dynamic):Dynamic;
	/**
		Create an array.
		
		Parameters
		----------
		data : Sequence of objects
		    The scalars inside `data` should be instances of the
		    scalar type for `dtype`. It's expected that `data`
		    represents a 1-dimensional array of data.
		
		    When `data` is an Index or Series, the underlying array
		    will be extracted from `data`.
		
		dtype : str, np.dtype, or ExtensionDtype, optional
		    The dtype to use for the array. This may be a NumPy
		    dtype or an extension type registered with pandas using
		    :meth:`pandas.api.extensions.register_extension_dtype`.
		
		    If not specified, there are two possibilities:
		
		    1. When `data` is a :class:`Series`, :class:`Index`, or
		       :class:`ExtensionArray`, the `dtype` will be taken
		       from the data.
		    2. Otherwise, pandas will attempt to infer the `dtype`
		       from the data.
		
		    Note that when `data` is a NumPy array, ``data.dtype`` is
		    *not* used for inferring the array type. This is because
		    NumPy cannot represent all the types of data that can be
		    held in extension arrays.
		
		    Currently, pandas will infer an extension dtype for sequences of
		
		    ============================== =======================================
		    Scalar Type                    Array Type
		    ============================== =======================================
		    :class:`pandas.Interval`       :class:`pandas.arrays.IntervalArray`
		    :class:`pandas.Period`         :class:`pandas.arrays.PeriodArray`
		    :class:`datetime.datetime`     :class:`pandas.arrays.DatetimeArray`
		    :class:`datetime.timedelta`    :class:`pandas.arrays.TimedeltaArray`
		    :class:`int`                   :class:`pandas.arrays.IntegerArray`
		    :class:`float`                 :class:`pandas.arrays.FloatingArray`
		    :class:`str`                   :class:`pandas.arrays.StringArray` or
		                                   :class:`pandas.arrays.ArrowStringArray`
		    :class:`bool`                  :class:`pandas.arrays.BooleanArray`
		    ============================== =======================================
		
		    The ExtensionArray created when the scalar type is :class:`str` is determined by
		    ``pd.options.mode.string_storage`` if the dtype is not explicitly given.
		
		    For all other cases, NumPy's usual inference rules will be used.
		
		    .. versionchanged:: 1.0.0
		
		       Pandas infers nullable-integer dtype for integer data,
		       string dtype for string data, and nullable-boolean dtype
		       for boolean data.
		
		    .. versionchanged:: 1.2.0
		
		        Pandas now also infers nullable-floating dtype for float-like
		        input data
		
		copy : bool, default True
		    Whether to copy the data, even if not necessary. Depending
		    on the type of `data`, creating the new array may require
		    copying data, even if ``copy=False``.
		
		Returns
		-------
		ExtensionArray
		    The newly created array.
		
		Raises
		------
		ValueError
		    When `data` is not 1-dimensional.
		
		See Also
		--------
		numpy.array : Construct a NumPy array.
		Series : Construct a pandas Series.
		Index : Construct a pandas Index.
		arrays.PandasArray : ExtensionArray wrapping a NumPy array.
		Series.array : Extract the array stored within a Series.
		
		Notes
		-----
		Omitting the `dtype` argument means pandas will attempt to infer the
		best array type from the values in the data. As new array types are
		added by pandas and 3rd party libraries, the "best" array type may
		change. We recommend specifying `dtype` to ensure that
		
		1. the correct array type for the data is returned
		2. the returned array type doesn't change as new extension types
		   are added by pandas and third-party libraries
		
		Additionally, if the underlying memory representation of the returned
		array matters, we recommend specifying the `dtype` as a concrete object
		rather than a string alias or allowing it to be inferred. For example,
		a future version of pandas or a 3rd-party library may include a
		dedicated ExtensionArray for string data. In this event, the following
		would no longer return a :class:`arrays.PandasArray` backed by a NumPy
		array.
		
		>>> pd.array(['a', 'b'], dtype=str)
		<PandasArray>
		['a', 'b']
		Length: 2, dtype: str32
		
		This would instead return the new ExtensionArray dedicated for string
		data. If you really need the new array to be backed by a  NumPy array,
		specify that in the dtype.
		
		>>> pd.array(['a', 'b'], dtype=np.dtype("<U1"))
		<PandasArray>
		['a', 'b']
		Length: 2, dtype: str32
		
		Finally, Pandas has arrays that mostly overlap with NumPy
		
		  * :class:`arrays.DatetimeArray`
		  * :class:`arrays.TimedeltaArray`
		
		When data with a ``datetime64[ns]`` or ``timedelta64[ns]`` dtype is
		passed, pandas will always return a ``DatetimeArray`` or ``TimedeltaArray``
		rather than a ``PandasArray``. This is for symmetry with the case of
		timezone-aware data, which NumPy does not natively support.
		
		>>> pd.array(['2015', '2016'], dtype='datetime64[ns]')
		<DatetimeArray>
		['2015-01-01 00:00:00', '2016-01-01 00:00:00']
		Length: 2, dtype: datetime64[ns]
		
		>>> pd.array(["1H", "2H"], dtype='timedelta64[ns]')
		<TimedeltaArray>
		['0 days 01:00:00', '0 days 02:00:00']
		Length: 2, dtype: timedelta64[ns]
		
		Examples
		--------
		If a dtype is not specified, pandas will infer the best dtype from the values.
		See the description of `dtype` for the types pandas infers for.
		
		>>> pd.array([1, 2])
		<IntegerArray>
		[1, 2]
		Length: 2, dtype: Int64
		
		>>> pd.array([1, 2, np.nan])
		<IntegerArray>
		[1, 2, <NA>]
		Length: 3, dtype: Int64
		
		>>> pd.array([1.1, 2.2])
		<FloatingArray>
		[1.1, 2.2]
		Length: 2, dtype: Float64
		
		>>> pd.array(["a", None, "c"])
		<StringArray>
		['a', <NA>, 'c']
		Length: 3, dtype: string
		
		>>> with pd.option_context("string_storage", "pyarrow"):
		...     arr = pd.array(["a", None, "c"])
		...
		>>> arr
		<ArrowStringArray>
		['a', <NA>, 'c']
		Length: 3, dtype: string
		
		>>> pd.array([pd.Period('2000', freq="D"), pd.Period("2000", freq="D")])
		<PeriodArray>
		['2000-01-01', '2000-01-01']
		Length: 2, dtype: period[D]
		
		You can use the string alias for `dtype`
		
		>>> pd.array(['a', 'b', 'a'], dtype='category')
		['a', 'b', 'a']
		Categories (2, object): ['a', 'b']
		
		Or specify the actual dtype
		
		>>> pd.array(['a', 'b', 'a'],
		...          dtype=pd.CategoricalDtype(['a', 'b', 'c'], ordered=True))
		['a', 'b', 'a']
		Categories (3, object): ['a' < 'b' < 'c']
		
		If pandas does not infer a dedicated extension type a
		:class:`arrays.PandasArray` is returned.
		
		>>> pd.array([1 + 1j, 3 + 2j])
		<PandasArray>
		[(1+1j), (3+2j)]
		Length: 2, dtype: complex128
		
		As mentioned in the "Notes" section, new extension types may be added
		in the future (by pandas or 3rd party libraries), causing the return
		value to no longer be a :class:`arrays.PandasArray`. Specify the `dtype`
		as a NumPy dtype if you need to ensure there's no future change in
		behavior.
		
		>>> pd.array([1, 2], dtype=np.dtype("int32"))
		<PandasArray>
		[1, 2]
		Length: 2, dtype: int32
		
		`data` must be 1-dimensional. A ValueError is raised when the input
		has the wrong dimensionality.
		
		>>> pd.array(1)
		Traceback (most recent call last):
		  ...
		ValueError: Cannot pass scalar '1' to 'pandas.array'.
	**/
	static public function pd_array(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
}