/* This file is generated, do not edit! */
package pandas.core.internals.array_manager;
@:pythonImport("pandas.core.internals.array_manager") extern class Array_manager_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public var T : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		ExtensionArray-compatible implementation of array_equivalent.
	**/
	static public function array_equals(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Cast array (ndarray or ExtensionArray) to the new dtype.
		
		This basically is the implementation for DataFrame/Series.astype and
		includes all custom logic for pandas (NaN-safety, converting str to object,
		not allowing )
		
		Parameters
		----------
		values : ndarray or ExtensionArray
		dtype : str, dtype convertible
		copy : bool, default False
		    copy if indicated
		errors : str, {'raise', 'ignore'}, default 'raise'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function astype_array_safe(values:Dynamic, dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Reshape if possible to have values.ndim == ndim.
	**/
	static public function ensure_block_shape(values:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		If we have a dtype that cannot hold NA values, find the best match that can.
	**/
	static public function ensure_dtype_can_hold_na(dtype:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object.
		
		Parameters
		----------
		index_like : sequence
		    An Index or other sequence
		copy : bool, default False
		
		Returns
		-------
		index : Index or MultiIndex
		
		See Also
		--------
		ensure_index_from_sequences
		
		Examples
		--------
		>>> ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex([('a', 'b'),
		        ('a', 'c')],
		       )
	**/
	static public function ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		The array that Series.values returns (public attribute).
		
		This has some historical constraints, and is overridden in block
		subclasses to return the correct array (e.g. period returns
		object ndarray and datetimetz a datetime64[ns] ndarray instead of
		proper extension array).
	**/
	static public function external_values(values:Dynamic):Dynamic;
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
		Ensure that we don't allow PandasArray / PandasDtype in internals.
	**/
	static public function extract_pandas_array(values:Dynamic, dtype:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Interpret the dtype from a scalar.
		
		Parameters
		----------
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from_scalar(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Find the common dtype for `blocks`.
		
		Parameters
		----------
		blocks : List[DtypeObj]
		
		Returns
		-------
		dtype : np.dtype, ExtensionDtype, or None
		    None is returned when `blocks` is empty.
	**/
	static public function interleaved_dtype(dtypes:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the datetime64[ns] dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		bool
		    Whether or not the array or dtype is of the datetime64[ns] dtype.
		
		Examples
		--------
		>>> is_datetime64_ns_dtype(str)
		False
		>>> is_datetime64_ns_dtype(int)
		False
		>>> is_datetime64_ns_dtype(np.datetime64)  # no unit
		False
		>>> is_datetime64_ns_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_ns_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_ns_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_ns_dtype(np.array([], dtype="datetime64"))  # no unit
		False
		>>> is_datetime64_ns_dtype(np.array([], dtype="datetime64[ps]"))  # wrong unit
		False
		>>> is_datetime64_ns_dtype(pd.DatetimeIndex([1, 2, 3], dtype="datetime64[ns]"))
		True
	**/
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check if this is a ndarray[bool] or an ndarray[object] of bool objects.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		
		Returns
		-------
		bool
		
		Notes
		-----
		This does not include the special treatment is_bool_dtype uses for
		Categorical.
	**/
	static public function is_inferred_bool_dtype(arr:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of the timedelta64[ns] dtype.
		
		This is a very specific dtype, so generic ones like `np.timedelta64`
		will return False if passed into this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of the timedelta64[ns] dtype.
		
		Examples
		--------
		>>> is_timedelta64_ns_dtype(np.dtype('m8[ns]'))
		True
		>>> is_timedelta64_ns_dtype(np.dtype('m8[ps]'))  # Wrong frequency
		False
		>>> is_timedelta64_ns_dtype(np.array([1, 2], dtype='m8[ns]'))
		True
		>>> is_timedelta64_ns_dtype(np.array([1, 2], dtype=np.timedelta64))
		False
	**/
	static public function is_timedelta64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Input validation for values passed to __init__. Ensure that
		any datetime64/timedelta64 dtypes are in nanoseconds.  Ensure
		that we do not have string dtypes.
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		
		Returns
		-------
		values : np.ndarray or ExtensionArray
	**/
	static public function maybe_coerce_values(values:Dynamic):Dynamic;
	/**
		Attempt to convert indices into valid, positive indices.
		
		If we have negative indices, translate to positive here.
		If we have indices that are out-of-bounds, raise an IndexError.
		
		Parameters
		----------
		indices : array-like
		    Array of indices that we are to convert.
		n : int
		    Number of elements in the array that we are indexing.
		verify : bool, default True
		    Check that all entries are between 0 and n - 1, inclusive.
		
		Returns
		-------
		array-like
		    An array-like of positive indices that correspond to the ones
		    that were passed in initially to this function.
		
		Raises
		------
		IndexError
		    One of the converted indices either exceeded the number of,
		    elements (specified by `n`), or was still negative.
	**/
	static public function maybe_convert_indices(indices:Dynamic, n:Dynamic, ?verify:Dynamic):Dynamic;
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
	static public function new_block(values:Dynamic, placement:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Compute the quantiles of the given values for each quantile in `qs`.
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		qs : np.ndarray[float64]
		interpolation : str
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function quantile_compat(values:Dynamic, qs:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		Sanitize input data to an ndarray or ExtensionArray, copy if specified,
		coerce to the dtype if specified.
		
		Parameters
		----------
		data : Any
		index : Index or None, default None
		dtype : np.dtype, ExtensionDtype, or None, default None
		copy : bool, default False
		raise_cast_failure : bool, default True
		allow_2d : bool, default False
		    If False, raise if we have a 2D Arraylike.
		
		Returns
		-------
		np.ndarray or ExtensionArray
		
		Notes
		-----
		raise_cast_failure=False is only intended to be True when called from the
		DataFrame constructor, as the dtype keyword there may be interpreted as only
		applying to a subset of columns, see GH#24435.
	**/
	static public function sanitize_array(data:Dynamic, index:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?raise_cast_failure:Dynamic, ?allow_2d:Dynamic):Dynamic;
	/**
		Try to coerce datetime, timedelta, and numeric object-dtype columns
		to inferred dtype.
		
		Parameters
		----------
		values : np.ndarray[object]
		datetime : bool, default True
		numeric: bool, default True
		timedelta : bool, default True
		period : bool, default True
		copy : bool, default True
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function soft_convert_objects(values:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic, ?period:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Specialized version for 1D arrays. Differences compared to `take_nd`:
		
		- Assumes input array has already been converted to numpy array / EA
		- Assumes indexer is already guaranteed to be intp dtype ndarray
		- Only works for 1D arrays
		
		To ensure the lowest possible overhead.
		
		Note: similarly to `take_nd`, this function assumes that the indexer is
		a valid(ated) indexer with no out of bound indices.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		    Input array.
		indexer : ndarray
		    1-D array of indices to take (validated indices, intp dtype).
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		allow_fill : bool, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask. Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		mask : np.ndarray, optional, default None
		    If `allow_fill` is True, and the mask (where indexer == -1) is already
		    known, it can be passed to avoid recomputation.
	**/
	static public function take_1d(arr:Dynamic, indexer:Dynamic, ?fill_value:Dynamic, ?allow_fill:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		convert to our native types format
	**/
	static public function to_native_types(values:Dynamic, ?na_rep:Dynamic, ?quoting:Dynamic, ?float_format:Dynamic, ?decimal:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Ensure that argument passed in arg_name can be interpreted as boolean.
		
		Parameters
		----------
		value : bool
		    Value to be validated.
		arg_name : str
		    Name of the argument. To be reflected in the error message.
		none_allowed : bool, default True
		    Whether to consider None to be a valid boolean.
		int_allowed : bool, default False
		    Whether to consider integer value to be a valid boolean.
		
		Returns
		-------
		value
		    The same value as input.
		
		Raises
		------
		ValueError
		    If the value is not a valid boolean.
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic, ?none_allowed:Dynamic, ?int_allowed:Dynamic):Dynamic;
	/**
		Perform bounds-checking for an indexer.
		
		-1 is allowed for indicating missing values.
		
		Parameters
		----------
		indices : ndarray
		n : int
		    Length of the array being indexed.
		
		Raises
		------
		ValueError
		
		Examples
		--------
		>>> validate_indices(np.array([1, 2]), 3) # OK
		
		>>> validate_indices(np.array([1, -2]), 3)
		Traceback (most recent call last):
		    ...
		ValueError: negative dimensions are not allowed
		
		>>> validate_indices(np.array([1, 2, 3]), 3)
		Traceback (most recent call last):
		    ...
		IndexError: indices are out-of-bounds
		
		>>> validate_indices(np.array([-1, -1]), 0) # OK
		
		>>> validate_indices(np.array([0, 1]), 0)
		Traceback (most recent call last):
		    ...
		IndexError: indices are out-of-bounds
	**/
	static public function validate_indices(indices:Dynamic, n:Dynamic):Dynamic;
}