/* This file is generated, do not edit! */
package pandas.core.internals.construction;
@:pythonImport("pandas.core.internals.construction") extern class Construction_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_object_array(content:Dynamic, columns:Dynamic, ?coerce_float:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _get_axes(N:Dynamic, K:Dynamic, index:Dynamic, columns:Dynamic):Dynamic;
	/**
		Extract combined index: return intersection or union (depending on the
		value of "intersect") of indexes on given axis, or None if all objects
		lack indexes (e.g. they are numpy arrays).
		
		Parameters
		----------
		objs : list of objects
		    Each object will only be considered if it has a _get_axis
		    attribute.
		intersect : bool, default False
		    If True, calculate the intersection between indexes. Otherwise,
		    calculate the union.
		axis : {0 or 'index', 1 or 'outer'}, default 0
		    The axis to extract indexes from.
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		
		Returns
		-------
		Index
	**/
	static public function _get_objs_combined_axis(objs:Dynamic, ?intersect:Dynamic, ?axis:Dynamic, ?sort:Dynamic):Dynamic;
	static public function _homogenize(data:Dynamic, index:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _list_of_dict_to_arrays(data:Dynamic, columns:Dynamic, ?coerce_float:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _list_of_series_to_arrays(data:Dynamic, columns:Dynamic, ?coerce_float:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _list_to_arrays(data:Dynamic, columns:Dynamic, ?coerce_float:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _try_cast(arr:Dynamic, take_fast_path:Dynamic, dtype:Dynamic, copy:Dynamic, raise_cast_failure:Dynamic):Dynamic;
	/**
		Return the union of indexes.
		
		The behavior of sort and names is not consistent.
		
		Parameters
		----------
		indexes : list of Index or list objects
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		
		Returns
		-------
		Index
	**/
	static public function _union_indexes(indexes:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Segregate Series based on type and coerce into matrices.
		
		Needs to handle a lot of exceptional cases.
	**/
	static public function arrays_to_mgr(arrays:Dynamic, arr_names:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		create a np.ndarray / pandas type of specified shape and dtype
		filled with values
		
		Parameters
		----------
		value : scalar value
		length : int
		dtype : pandas_dtype / np.dtype
		
		Returns
		-------
		np.ndarray / pandas type of length, filled with value
	**/
	static public function construct_1d_arraylike_from_scalar(value:Dynamic, length:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Construct a new ndarray, coercing `values` to `dtype`, preserving NA.
		
		Parameters
		----------
		values : Sequence
		dtype : numpy.dtype, optional
		copy : bool, default False
		    Note that copies may still be made with ``copy=False`` if casting
		    is required.
		
		Returns
		-------
		arr : ndarray[dtype]
		
		Examples
		--------
		>>> np.array([1.0, 2.0, None], dtype='str')
		array(['1.0', '2.0', 'None'], dtype='<U4')
		
		>>> construct_1d_ndarray_preserving_na([1.0, 2.0, None], dtype='str')
	**/
	static public function construct_1d_ndarray_preserving_na(values:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object.
		
		Parameters
		----------
		index : sequence
		    An Index or other sequence
		copy : bool
		
		Returns
		-------
		index : Index or MultiIndex
		
		Examples
		--------
		>>> ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex(levels=[['a'], ['b', 'c']],
		           codes=[[0, 0], [0, 1]])
		
		See Also
		--------
		ensure_index_from_sequences
	**/
	static public function ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		    For Numpy-backed ExtensionArrays, the ndarray is extracted.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		[a, b, c]
		Categories (3, object): [a, b, c]
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index a PandasArray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		<PandasArray>
		[1, 2, 3]
		Length: 3, dtype: int64
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic):Dynamic;
	static public function extract_index(data:Dynamic):Dynamic;
	static public function get_names_from_index(data:Dynamic):Dynamic;
	/**
		Gets the start, stop, and step parameters from a range object
	**/
	static public function get_range_parameters(data:Dynamic):Dynamic;
	/**
		interpret the dtype from a scalar
		
		Parameters
		----------
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from_scalar(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Segregate Series based on type and coerce into matrices.
		Needs to handle a lot of exceptional cases.
	**/
	static public function init_dict(data:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function init_ndarray(values:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
		Check whether an array-like is of a pandas extension class instance.
		
		Extension classes include categoricals, pandas sparse objects (i.e.
		classes represented within the pandas library and not ones external
		to it like scipy sparse matrices), and datetime-like arrays.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is of a pandas
		          extension class instance.
		
		Examples
		--------
		>>> is_extension_type([1, 2, 3])
		False
		>>> is_extension_type(np.array([1, 2, 3]))
		False
		>>>
		>>> cat = pd.Categorical([1, 2, 3])
		>>>
		>>> is_extension_type(cat)
		True
		>>> is_extension_type(pd.Series(cat))
		True
		>>> is_extension_type(pd.SparseArray([1, 2, 3]))
		True
		>>> is_extension_type(pd.SparseSeries([1, 2, 3]))
		True
		>>>
		>>> from scipy.sparse import bsr_matrix
		>>> is_extension_type(bsr_matrix([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_extension_type(s)
		True
	**/
	static public function is_extension_type(arr:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
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
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
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
		Check if the object is an iterator.
		
		For example, lists are considered iterators
		but not strings or datetime objects.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_iter : bool
		    Whether `obj` is an iterator.
		
		Examples
		--------
		>>> is_iterator([1, 2, 3])
		True
		>>> is_iterator(datetime(2017, 1, 1))
		False
		>>> is_iterator("foo")
		False
		>>> is_iterator(1)
		False
	**/
	static public function is_iterator(obj:Dynamic):Bool;
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
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the object dtype.
		
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
	static public function lmap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Extract from a masked rec array and create the manager.
	**/
	static public function masked_rec_array_to_mgr(data:Dynamic, index:Dynamic, columns:Dynamic, dtype:Dynamic, copy:Dynamic):Dynamic;
	/**
		try to cast the array/value to a datetimelike dtype, converting float
		nan to iNaT
	**/
	static public function maybe_cast_to_datetime(value:Dynamic, dtype:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Takes any dtype and returns the casted version, raising for when data is
		incompatible with integer/unsigned integer dtypes.
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		arr : array-like
		    The array to cast.
		dtype : str, np.dtype
		    The integer dtype to cast the array to.
		copy: boolean, default False
		    Whether to make a copy of the array before returning.
		
		Returns
		-------
		int_arr : ndarray
		    An array of integer or unsigned integer dtype
		
		Raises
		------
		OverflowError : the dtype is incompatible with the data
		ValueError : loss of precision has occurred during casting
		
		Examples
		--------
		If you try to coerce negative values to unsigned integers, it raises:
		
		>>> Series([-1], dtype="uint64")
		Traceback (most recent call last):
		    ...
		OverflowError: Trying to coerce negative values to unsigned integers
		
		Also, if you try to coerce float values to integers, it raises:
		
		>>> Series([1, 2, 3.5], dtype="int64")
		Traceback (most recent call last):
		    ...
		ValueError: Trying to coerce float values to integers
	**/
	static public function maybe_cast_to_integer_array(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic):numpy.Ndarray;
	static public function maybe_castable(arr:Dynamic):Dynamic;
	/**
		try to do platform conversion, allow ndarray or list here 
	**/
	static public function maybe_convert_platform(values:Dynamic):Dynamic;
	/**
		we might have a array (or single object) that is datetime like,
		and no dtype is passed don't change the value unless we find a
		datetime/timedelta set
		
		this is pretty strict in that a datetime/timedelta is REQUIRED
		in addition to possible nulls/string likes
		
		Parameters
		----------
		value : np.array / Series / Index / list-like
		convert_dates : boolean, default False
		   if True try really hard to convert dates (such as datetime.date), other
		   leave inferred dtype 'date' alone
	**/
	static public function maybe_infer_to_datetimelike(value:Dynamic, ?convert_dates:Dynamic):Dynamic;
	/**
		provide explicit type promotion and coercion
		
		Parameters
		----------
		values : the ndarray that we want to maybe upcast
		fill_value : what we want to fill with
		dtype : if None, then use the dtype of the values, else coerce to this type
		copy : if True always make a copy even if no upcast is required
	**/
	static public function maybe_upcast(values:Dynamic, ?fill_value:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Raises
		------
		TypeError if not a dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	/**
		Construct a new PeriodArray from a sequence of Period scalars.
		
		Parameters
		----------
		data : Sequence of Period objects
		    A sequence of Period objects. These are required to all have
		    the same ``freq.`` Missing values can be indicated by ``None``
		    or ``pandas.NaT``.
		freq : str, Tick, or Offset
		    The frequency of every element of the array. This can be specified
		    to avoid inferring the `freq` from `data`.
		copy : bool, default False
		    Whether to ensure a copy of the data is made.
		
		Returns
		-------
		PeriodArray
		
		See Also
		--------
		PeriodArray
		pandas.PeriodIndex
		
		Examples
		--------
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A')])
		<PeriodArray>
		['2017', '2018']
		Length: 2, dtype: period[A-DEC]
		
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A'),
		...               pd.NaT])
		<PeriodArray>
		['2017', '2018', 'NaT']
		Length: 3, dtype: period[A-DEC]
		
		Integers that look like years are handled
		
		>>> period_array([2000, 2001, 2002], freq='D')
		['2000-01-01', '2001-01-01', '2002-01-01']
		Length: 3, dtype: period[D]
		
		Datetime-like strings may also be passed
		
		>>> period_array(['2000-Q1', '2000-Q2', '2000-Q3', '2000-Q4'], freq='Q')
		<PeriodArray>
		['2000Q1', '2000Q2', '2000Q3', '2000Q4']
		Length: 4, dtype: period[Q-DEC]
	**/
	static public function period_array(data:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Dynamic;
	static public function prep_ndarray(values:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Raise exception with existing traceback.
		If traceback is not passed, uses sys.exc_info() to get traceback.
	**/
	static public function raise_with_traceback(exc:Dynamic, ?traceback:Dynamic):Dynamic;
	static public function reorder_arrays(arrays:Dynamic, arr_columns:Dynamic, columns:Dynamic):Dynamic;
	/**
		Sanitize input data to an ndarray, copy if specified, coerce to the
		dtype if specified.
	**/
	static public function sanitize_array(data:Dynamic, index:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?raise_cast_failure:Dynamic):Dynamic;
	/**
		Sanitize an index type to return an ndarray of the underlying, pass
		through a non-Index.
	**/
	static public function sanitize_index(data:Dynamic, index:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return list of arrays, columns.
	**/
	static public function to_arrays(data:Dynamic, columns:Dynamic, ?coerce_float:Dynamic, ?dtype:Dynamic):Dynamic;
}