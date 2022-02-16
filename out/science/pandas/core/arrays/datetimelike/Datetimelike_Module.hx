/* This file is generated, do not edit! */
package pandas.core.arrays.datetimelike;
@:pythonImport("pandas.core.arrays.datetimelike") extern class Datetimelike_Module {
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
	static public function DTScalarOrNaT(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DatetimeLikeArrayT : Dynamic;
	static public function DatetimeLikeScalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public function NpDtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function PositionalIndexer2D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function PositionalIndexerTuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ScalarIndexer(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function SequenceIndexer(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var TimelikeOpsT : Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _ceil_example : Dynamic;
	static public var _floor_example : Dynamic;
	static public var _round_doc : Dynamic;
	static public var _round_example : Dynamic;
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
		Validate that value and indexer are the same length.
		
		An special-case is allowed for when the indexer is a boolean array
		and the number of true values equals the length of ``value``. In
		this case, no exception is raised.
		
		Parameters
		----------
		indexer : sequence
		    Key for the setitem.
		value : array-like
		    Value for the setitem.
		values : array-like
		    Values being set into.
		
		Returns
		-------
		bool
		    Whether this is an empty listlike setting which is a no-op.
		
		Raises
		------
		ValueError
		    When the indexer is an ndarray or list and the lengths don't match.
	**/
	static public function check_setitem_lengths(indexer:Dynamic, value:Dynamic, values:Dynamic):Dynamic;
	/**
		Perform array addition that checks for underflow and overflow.
		
		Performs the addition of an int64 array and an int64 integer (or array)
		but checks that they do not result in overflow first. For elements that
		are indicated to be NaN, whether or not there is overflow for that element
		is automatically ignored.
		
		Parameters
		----------
		arr : array addend.
		b : array or scalar addend.
		arr_mask : np.ndarray[bool] or None, default None
		    array indicating which elements to exclude from checking
		b_mask : np.ndarray[bool] or None, default None
		    array or scalar indicating which element(s) to exclude from checking
		
		Returns
		-------
		sum : An array for elements x + b for each element x in arr if b is
		      a scalar or an array for elements x + y for each element pair
		      (x, y) in (arr, b).
		
		Raises
		------
		OverflowError if any x + y exceeds the maximum or minimum int64 value.
	**/
	static public function checked_add_with_arr(arr:Dynamic, b:Dynamic, ?arr_mask:Dynamic, ?b_mask:Dynamic):Dynamic;
	static public function delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		A decorator to indicate final methods and final classes.
		
		Use this decorator to indicate to type checkers that the decorated
		method cannot be overridden, and decorated class cannot be subclassed.
		For example:
		
		  class Base:
		      @final
		      def done(self) -> None:
		          ...
		  class Sub(Base):
		      def done(self) -> None:  # Error reported by type checker
		            ...
		
		  @final
		  class Leaf:
		      ...
		  class Other(Leaf):  # Error reported by type checker
		      ...
		
		There is no runtime checking of these properties.
	**/
	@:native("final")
	static public function _final(f:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	static public var iNaT : Dynamic;
	static public function integer_op_not_supported(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert an i8 repr to an ndarray of datetimes, date, time or Timestamp.
		
		Parameters
		----------
		arr : array of i8
		tz : str, optional
		     convert to this timezone
		freq : str/Offset, optional
		     freq to convert
		fold : bint, default is 0
		    Due to daylight saving time, one wall clock time can occur twice
		    when shifting from summer to winter time; fold describes whether the
		    datetime-like corresponds  to the first (0) or the second time (1)
		    the wall clock hits the ambiguous time
		
		    .. versionadded:: 1.1.0
		box : {'datetime', 'timestamp', 'date', 'time'}, default 'datetime'
		    * If datetime, convert to datetime.datetime
		    * If date, convert to datetime.date
		    * If time, convert to datetime.time
		    * If Timestamp, convert to pandas.Timestamp
		
		Returns
		-------
		ndarray[object] of type specified by box
	**/
	static public function ints_to_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If a comparison has mismatched types and is not necessarily meaningful,
		follow python3 conventions by:
		
		    - returning all-False for equality
		    - returning all-True for inequality
		    - raising TypeError otherwise
		
		Parameters
		----------
		left : array-like
		right : scalar, array-like
		op : operator.{eq, ne, lt, le, gt}
		
		Raises
		------
		TypeError : on inequality comparisons
	**/
	static public function invalid_comparison(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	/**
		Check if this is an array of strings that we should try parsing.
		
		Includes object-dtype ndarray containing all-strings, StringArray,
		and Categorical with all-string categories.
		Does not include numpy string dtypes.
	**/
	static public function is_all_strings(value:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		bool
		    Whether or not the array or dtype is of the datetime64 dtype.
		
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
		>>> is_datetime64_any_dtype(np.array([], dtype="datetime64[ns]"))
		True
		>>> is_datetime64_any_dtype(pd.DatetimeIndex([1, 2, 3], dtype="datetime64[ns]"))
		True
	**/
	static public function is_datetime64_any_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the datetime64 dtype.
		
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
		Check whether the provided array or dtype is of
		a timedelta64 or datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a timedelta64,
		    or datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime_or_timedelta_dtype(str)
		False
		>>> is_datetime_or_timedelta_dtype(int)
		False
		>>> is_datetime_or_timedelta_dtype(np.datetime64)
		True
		>>> is_datetime_or_timedelta_dtype(np.timedelta64)
		True
		>>> is_datetime_or_timedelta_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime_or_timedelta_dtype(pd.Series([1, 2]))
		False
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.datetime64))
		True
	**/
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether an array-like or dtype is of the Period dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Period dtype.
		
		Examples
		--------
		>>> is_period_dtype(object)
		False
		>>> is_period_dtype(PeriodDtype(freq="D"))
		True
		>>> is_period_dtype([1, 2, 3])
		False
		>>> is_period_dtype(pd.Period("2017-01-01"))
		False
		>>> is_period_dtype(pd.PeriodIndex([], freq="A"))
		True
	**/
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the string dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of the string dtype.
		
		Examples
		--------
		>>> is_string_dtype(str)
		True
		>>> is_string_dtype(object)
		True
		>>> is_string_dtype(int)
		False
		>>>
		>>> is_string_dtype(np.array(['a', 'b']))
		True
		>>> is_string_dtype(pd.Series([1, 2]))
		False
	**/
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the timedelta64 dtype.
		
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
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an unsigned integer dtype.
		
		The nullable Integer dtypes (e.g. pandas.UInt64Dtype) are also
		considered as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an unsigned integer dtype.
		
		Examples
		--------
		>>> is_unsigned_integer_dtype(str)
		False
		>>> is_unsigned_integer_dtype(int)  # signed
		False
		>>> is_unsigned_integer_dtype(float)
		False
		>>> is_unsigned_integer_dtype(np.uint64)
		True
		>>> is_unsigned_integer_dtype('uint8')
		True
		>>> is_unsigned_integer_dtype('UInt8')
		True
		>>> is_unsigned_integer_dtype(pd.UInt8Dtype)
		True
		>>> is_unsigned_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_unsigned_integer_dtype(pd.Series([1, 2]))  # signed
		False
		>>> is_unsigned_integer_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_unsigned_integer_dtype(np.array([1, 2], dtype=np.uint32))
		True
	**/
	static public function is_unsigned_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		isna check that excludes incompatible dtypes
		
		Parameters
		----------
		obj : object
		dtype : np.datetime64, np.timedelta64, DatetimeTZDtype, or PeriodDtype
		
		Returns
		-------
		bool
	**/
	static public function is_valid_na_for_dtype(obj:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Compute the isin boolean array.
		
		Parameters
		----------
		comps : array-like
		values : array-like
		
		Returns
		-------
		ndarray[bool]
		    Same length as `comps`.
	**/
	static public function isin(comps:Dynamic, values:Dynamic):Dynamic;
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
		Return a binary method that always raises a TypeError.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		invalid_op : function
	**/
	static public function make_invalid_op(name:Dynamic):Dynamic;
	/**
		Comparing a DateOffset to the string "infer" raises, so we need to
		be careful about comparisons.  Make a dummy variable `freq_infer` to
		signify the case where the given freq is "infer" and set freq to None
		to avoid comparison trouble later on.
		
		Parameters
		----------
		freq : {DateOffset, None, str}
		
		Returns
		-------
		freq : {DateOffset, None}
		freq_infer : bool
		    Whether we should inherit the freq of passed data.
	**/
	static public function maybe_infer_freq(freq:Dynamic):Dynamic;
	/**
		Returns the mode(s) of an array.
		
		Parameters
		----------
		values : array-like
		    Array over which to check for duplicate values.
		dropna : bool, default True
		    Don't consider counts of NaN/NaT.
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function mode(values:Dynamic, ?dropna:Dynamic):Dynamic;
	static public var npt : Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Convert input into a pandas only dtype object or a numpy dtype object.
		
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
	/**
		Decorator to ravel a 2D array before passing it to a cython operation,
		then reshape the result to our own shape.
	**/
	static public function ravel_compat(meth:Dynamic):Dynamic;
	/**
		Applies rounding mode at given frequency
		
		Parameters
		----------
		values : np.ndarray[int64_t]`
		mode : instance of `RoundTo` enumeration
		nanos : np.int64
		    Freq to round to, expressed in nanoseconds
		
		Returns
		-------
		np.ndarray[int64_t]
	**/
	static public function round_nsint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object.
		
		Parameters
		----------
		freq : str, datetime.timedelta, BaseOffset or None
		
		Returns
		-------
		DateOffset or None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		BaseOffset : Standard kind of date increment used for a date range.
		
		Examples
		--------
		>>> to_offset("5min")
		<5 * Minutes>
		
		>>> to_offset("1D1H")
		<25 * Hours>
		
		>>> to_offset("2W")
		<2 * Weeks: weekday=6>
		
		>>> to_offset("2B")
		<2 * BusinessDays>
		
		>>> to_offset(pd.Timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return unique values based on a hash table.
		
		Uniques are returned in order of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique for long enough sequences.
		Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		numpy.ndarray or ExtensionArray
		
		    The return can be:
		
		    * Index : when the input is an Index
		    * Categorical : when the input is a Categorical dtype
		    * ndarray : when the input is a Series/ndarray
		
		    Return numpy.ndarray or ExtensionArray.
		
		See Also
		--------
		Index.unique : Return unique values from an Index.
		Series.unique : Return unique values of Series object.
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp("20160101"), pd.Timestamp("20160101")]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(
		...     pd.Series(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		<DatetimeArray>
		['2016-01-01 00:00:00-05:00']
		Length: 1, dtype: datetime64[ns, US/Eastern]
		
		>>> pd.unique(
		...     pd.Index(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		        dtype='datetime64[ns, US/Eastern]',
		        freq=None)
		
		>>> pd.unique(list("baabc"))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"), categories=list("abc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(
		...     pd.Series(
		...         pd.Categorical(list("baabc"), categories=list("abc"), ordered=True)
		...     )
		... )
		['b', 'a', 'c']
		Categories (3, object): ['a' < 'b' < 'c']
		
		An array of tuples
		
		>>> pd.unique([("a", "b"), ("b", "a"), ("a", "c"), ("b", "a")])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique1d(values:Dynamic):Dynamic;
	/**
		Boilerplate for pandas conventions in arithmetic and comparison methods.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		decorator
	**/
	static public function unpack_zerodim_and_defer(name:Dynamic):Dynamic;
	/**
		If the user passes a freq and another freq is inferred from passed data,
		require that they match.
		
		Parameters
		----------
		freq : DateOffset or None
		inferred_freq : DateOffset or None
		freq_infer : bool
		
		Returns
		-------
		freq : DateOffset or None
		freq_infer : bool
		
		Notes
		-----
		We assume at this point that `maybe_infer_freq` has been called, so
		`freq` is either a DateOffset object or None.
	**/
	static public function validate_inferred_freq(freq:Dynamic, inferred_freq:Dynamic, freq_infer:Dynamic):Dynamic;
	/**
		If a `periods` argument is passed to the Datetime/Timedelta Array/Index
		constructor, cast it to an integer.
		
		Parameters
		----------
		periods : None, float, int
		
		Returns
		-------
		periods : None or int
		
		Raises
		------
		TypeError
		    if periods is None, float, or int
	**/
	static public function validate_periods(periods:Dynamic):Dynamic;
}