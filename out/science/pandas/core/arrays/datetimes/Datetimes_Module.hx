/* This file is generated, do not edit! */
package pandas.core.arrays.datetimes;
@:pythonImport("pandas.core.arrays.datetimes") extern class Datetimes_Module {
	static public var DT64NS_DTYPE : Dynamic;
	static public var INT64_DTYPE : Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _field_accessor(name:Dynamic, field:Dynamic, ?docstring:Dynamic):Dynamic;
	/**
		If a timezone is not explicitly given via `tz`, see if one can
		be inferred from the `start` and `end` endpoints.  If more than one
		of these inputs provides a timezone, require that they all agree.
		
		Parameters
		----------
		start : Timestamp
		end : Timestamp
		tz : tzinfo or None
		
		Returns
		-------
		tz : tzinfo or None
		
		Raises
		------
		TypeError : if start and end timezones do not agree
	**/
	static public function _infer_tz_from_endpoints(start:Dynamic, end:Dynamic, tz:Dynamic):Dynamic;
	/**
		If a timezone is inferred from data, check that it is compatible with
		the user-provided timezone, if any.
		
		Parameters
		----------
		tz : tzinfo or None
		inferred_tz : tzinfo or None
		
		Returns
		-------
		tz : tzinfo or None
		
		Raises
		------
		TypeError : if both timezones are present but do not match
	**/
	static public function _maybe_infer_tz(tz:Dynamic, inferred_tz:Dynamic):Dynamic;
	/**
		Localize a start or end Timestamp to the timezone of the corresponding
		start or end Timestamp
		
		Parameters
		----------
		ts : start or end Timestamp to potentially localize
		is_none : argument that should be None
		is_not_none : argument that should not be None
		freq : Tick, DateOffset, or None
		tz : str, timezone object or None
		ambiguous: str, localization behavior for ambiguous times
		nonexistent: str, localization behavior for nonexistent times
		
		Returns
		-------
		ts : Timestamp
	**/
	static public function _maybe_localize_point(ts:Dynamic, is_none:Dynamic, is_not_none:Dynamic, freq:Dynamic, tz:Dynamic, ambiguous:Dynamic, nonexistent:Dynamic):pandas.Timestamp;
	static public function _maybe_normalize_endpoints(start:Dynamic, end:Dynamic, normalize:Dynamic):Dynamic;
	static public var _midnight : Dynamic;
	/**
		Parameters
		----------
		data : list-like
		dtype : dtype, str, or None, default None
		copy : bool, default False
		tz : tzinfo, str, or None, default None
		dayfirst : bool, default False
		yearfirst : bool, default False
		ambiguous : str, bool, or arraylike, default 'raise'
		    See pandas._libs.tslibs.tzconversion.tz_localize_to_utc.
		allow_mixed : bool, default False
		    Interpret integers as timestamps when datetime objects are also present.
		require_iso8601 : bool, default False
		    Only consider ISO-8601 formats when parsing strings.
		
		Returns
		-------
		result : numpy.ndarray
		    The sequence converted to a numpy array with dtype ``datetime64[ns]``.
		tz : tzinfo or None
		    Either the user-provided tzinfo or one inferred from the data.
		inferred_freq : Tick or None
		    The inferred frequency of the sequence.
		
		Raises
		------
		TypeError : PeriodDType data is passed
	**/
	static public function _sequence_to_dt64ns(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?tz:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?ambiguous:Dynamic, ?allow_mixed:Dynamic, ?require_iso8601:Dynamic):Dynamic;
	/**
		Check that a dtype, if passed, represents either a numpy datetime64[ns]
		dtype or a pandas DatetimeTZDtype.
		
		Parameters
		----------
		dtype : object
		
		Returns
		-------
		dtype : None, numpy.dtype, or DatetimeTZDtype
		
		Raises
		------
		ValueError : invalid dtype
		
		Notes
		-----
		Unlike validate_tz_from_dtype, this does _not_ allow non-existent
		tz errors to go through
	**/
	static public function _validate_dt64_dtype(dtype:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	static public function astype_dt64_to_dt64tz(values:Dynamic, dtype:Dynamic, copy:Dynamic, ?via_utc:Dynamic):Dynamic;
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
		Generates a sequence of dates corresponding to the specified time
		offset. Similar to dateutil.rrule except uses pandas DateOffset
		objects to represent time increments.
		
		Parameters
		----------
		start : datetime, (default None)
		end : datetime, (default None)
		periods : int, (default None)
		offset : DateOffset, (default BDay())
		
		Notes
		-----
		* This method is faster for generating weekdays than dateutil.rrule
		* At least two of (start, end, periods) must be specified.
		* If both start and end are specified, the returned dates will
		satisfy start <= date <= end.
		
		Returns
		-------
		dates : generator object
	**/
	static public function generate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Generate a range of dates or timestamps with the spans between dates
		described by the given `freq` DateOffset.
		
		Parameters
		----------
		start : Timedelta, Timestamp or None
		    First point of produced date range.
		end : Timedelta, Timestamp or None
		    Last point of produced date range.
		periods : int
		    Number of periods in produced date range.
		freq : Tick
		    Describes space between dates in produced date range.
		
		Returns
		-------
		ndarray[np.int64] Representing nanoseconds.
	**/
	static public function generate_regular_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic):Dynamic;
	/**
		Alias to closest period strings BQ->Q etc.
	**/
	static public function get_period_alias(offset_str:Dynamic):Dynamic;
	static public function get_resolution(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
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
		Check if all of the given (nanosecond) timestamps are normalized to
		midnight, i.e. hour == minute == second == 0.  If the optional timezone
		`tz` is not None, then this is midnight for this timezone.
		
		Parameters
		----------
		stamps : int64 ndarray
		tz : tzinfo or None
		
		Returns
		-------
		is_normalized : bool True if all stamps are normalized
	**/
	static public function is_date_array_normalized(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Check whether an array-like is a 1-D pandas sparse array.
		
		Check that the one-dimensional array-like is a pandas sparse array.
		Returns True if it is a pandas sparse array, not another type of
		sparse array.
		
		Parameters
		----------
		arr : array-like
		    Array-like to check.
		
		Returns
		-------
		bool
		    Whether or not the array-like is a pandas sparse array.
		
		Examples
		--------
		Returns `True` if the parameter is a 1-D pandas sparse array.
		
		>>> is_sparse(pd.arrays.SparseArray([0, 0, 1, 0]))
		True
		>>> is_sparse(pd.Series(pd.arrays.SparseArray([0, 0, 1, 0])))
		True
		
		Returns `False` if the parameter is not sparse.
		
		>>> is_sparse(np.array([0, 0, 1, 0]))
		False
		>>> is_sparse(pd.Series([0, 1, 0, 0]))
		False
		
		Returns `False` if the parameter is not a pandas sparse array.
		
		>>> from scipy.sparse import bsr_matrix
		>>> is_sparse(bsr_matrix([0, 1, 0, 0]))
		False
		
		Returns `False` if the parameter has more than one dimension.
	**/
	static public function is_sparse(arr:Dynamic):Dynamic;
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
		Convert data based on dtype conventions, issuing deprecation warnings
		or errors where appropriate.
		
		Parameters
		----------
		data : np.ndarray or pd.Index
		copy : bool
		
		Returns
		-------
		data : np.ndarray or pd.Index
		copy : bool
		
		Raises
		------
		TypeError : PeriodDType data is passed
	**/
	static public function maybe_convert_dtype(data:Dynamic, copy:Dynamic):Dynamic;
	/**
		Normalize each of the (nanosecond) timezone aware timestamps in the given
		array by rounding down to the beginning of the day (i.e. midnight).
		This is midnight for timezone, `tz`.
		
		Parameters
		----------
		stamps : int64 ndarray
		tz : tzinfo or None
		
		Returns
		-------
		result : int64 ndarray of converted of normalized nanosecond timestamps
	**/
	static public function normalize_i8_timestamps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var npt : Dynamic;
	/**
		Convert data to array of timestamps.
		
		Parameters
		----------
		data : np.ndarray[object]
		dayfirst : bool
		yearfirst : bool
		utc : bool, default False
		    Whether to convert timezone-aware timestamps to UTC.
		errors : {'raise', 'ignore', 'coerce'}
		require_iso8601 : bool, default False
		allow_object : bool
		    Whether to return an object-dtype ndarray instead of raising if the
		    data contains more than one timezone.
		allow_mixed : bool, default False
		    Interpret integers as timestamps when datetime objects are also present.
		
		Returns
		-------
		result : ndarray
		    np.int64 dtype if returned values represent UTC timestamps
		    np.datetime64[ns] if returned values represent wall times
		    object if mixed timezones
		inferred_tz : tzinfo or None
		
		Raises
		------
		ValueError : if data cannot be converted to datetimes
	**/
	static public function objects_to_datetime64ns(data:Dynamic, dayfirst:Dynamic, yearfirst:Dynamic, ?utc:Dynamic, ?errors:Dynamic, ?require_iso8601:Dynamic, ?allow_object:Dynamic, ?allow_mixed:Dynamic):numpy.Ndarray;
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
		Parse/convert the passed data to either DatetimeArray or np.ndarray[object].
	**/
	static public function sequence_to_datetimes(data:Dynamic, ?require_iso8601:Dynamic):Dynamic;
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
		Return a datetime64[ns] dtype appropriate for the given timezone.
		
		Parameters
		----------
		tz : tzinfo or None
		
		Returns
		-------
		np.dtype or Datetime64TZDType
	**/
	static public function tz_to_dtype(tz:Dynamic):Dynamic;
	/**
		Check that the `inclusive` argument is among {"both", "neither", "left", "right"}.
		
		Parameters
		----------
		inclusive : {"both", "neither", "left", "right"}
		
		Returns
		-------
		left_right_inclusive : tuple[bool, bool]
		
		Raises
		------
		ValueError : if argument is not among valid values
	**/
	static public function validate_inclusive(inclusive:Dynamic):Dynamic;
	/**
		If the given dtype is a DatetimeTZDtype, extract the implied
		tzinfo object from it and check that it does not conflict with the given
		tz.
		
		Parameters
		----------
		dtype : dtype, str
		tz : None, tzinfo
		
		Returns
		-------
		tz : consensus tzinfo
		
		Raises
		------
		ValueError : on tzinfo mismatch
	**/
	static public function validate_tz_from_dtype(dtype:Dynamic, tz:Dynamic):Dynamic;
}