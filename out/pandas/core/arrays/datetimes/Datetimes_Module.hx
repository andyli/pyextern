/* This file is generated, do not edit! */
package pandas.core.arrays.datetimes;
@:pythonImport("pandas.core.arrays.datetimes") extern class Datetimes_Module {
	static public var NaT : Dynamic;
	static public var _INT64_DTYPE : Dynamic;
	static public var _NS_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wrap comparison operations to convert datetime-like to datetime64
	**/
	static public function _dt_array_cmp(cls:Dynamic, op:Dynamic):Dynamic;
	static public function _field_accessor(name:Dynamic, field:Dynamic, ?docstring:Dynamic):Dynamic;
	static public var _i8_message : Dynamic;
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
		Localize a start or end Timestamp to the timezone of the corresponding
		start or end Timestamp
		
		Parameters
		----------
		ts : start or end Timestamp to potentially localize
		is_none : argument that should be None
		is_not_none : argument that should not be None
		freq : Tick, DateOffset, or None
		tz : str, timezone object or None
		
		Returns
		-------
		ts : Timestamp
	**/
	static public function _maybe_localize_point(ts:Dynamic, is_none:Dynamic, is_not_none:Dynamic, freq:Dynamic, tz:Dynamic):pandas.Timestamp;
	static public function _maybe_normalize_endpoints(start:Dynamic, end:Dynamic, normalize:Dynamic):Dynamic;
	static public var _midnight : Dynamic;
	/**
		Timestamp-like => dt64
	**/
	static public function _to_M8(key:Dynamic, ?tz:Dynamic):Dynamic;
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
		arr_mask : boolean array or None
		    array indicating which elements to exclude from checking
		b_mask : boolean array or boolean or None
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
		Generate a range of dates with the spans between dates described by
		the given `freq` DateOffset.
		
		Parameters
		----------
		start : Timestamp or None
		    first point of produced date range
		end : Timestamp or None
		    last point of produced date range
		periods : int
		    number of periods in produced date range
		freq : DateOffset
		    describes space between dates in produced date range
		
		Returns
		-------
		ndarray[np.int64] representing nanosecond unix timestamps
	**/
	static public function generate_regular_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic):Dynamic;
	/**
		alias to closest period strings BQ->Q etc
	**/
	static public function get_period_alias(offset_str:Dynamic):Dynamic;
	static public var iNaT : Dynamic;
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
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
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
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the datetime64[ns] dtype.
		
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
		>>> is_datetime64_ns_dtype(np.array([], dtype=np.datetime64))  # no unit
		False
		>>> is_datetime64_ns_dtype(np.array([],
		                           dtype="datetime64[ps]"))  # wrong unit
		False
		>>> is_datetime64_ns_dtype(pd.DatetimeIndex([1, 2, 3],
		                           dtype=np.datetime64))  # has 'ns' unit
		True
	**/
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether an array-like or dtype is of the Period dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the Period dtype.
		
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
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the string dtype.
		
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
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
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
	static public function maybe_infer_tz(tz:Dynamic, inferred_tz:Dynamic):Dynamic;
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Parameters
		----------
		dt : date, datetime, or Timestamp
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
		
		Raises
		------
		TypeError : if input is not datetime.date, datetime.datetime, or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert data to array of timestamps.
		
		Parameters
		----------
		data : np.ndarray[object]
		dayfirst : bool
		yearfirst : bool
		utc : bool, default False
		    Whether to convert timezone-aware timestamps to UTC
		errors : {'raise', 'ignore', 'coerce'}
		allow_object : bool
		    Whether to return an object-dtype ndarray instead of raising if the
		    data contains more than one timezone.
		
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
	static public function objects_to_datetime64ns(data:Dynamic, dayfirst:Dynamic, yearfirst:Dynamic, ?utc:Dynamic, ?errors:Dynamic, ?require_iso8601:Dynamic, ?allow_object:Dynamic):numpy.Ndarray;
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
		Parameters
		----------
		data : list-like
		dtype : dtype, str, or None, default None
		copy : bool, default False
		tz : tzinfo, str, or None, default None
		dayfirst : bool, default False
		yearfirst : bool, default False
		ambiguous : str, bool, or arraylike, default 'raise'
		    See pandas._libs.tslibs.conversion.tz_localize_to_utc
		int_as_wall_time : bool, default False
		    Whether to treat ints as wall time in specified timezone, or as
		    nanosecond-precision UNIX epoch (wall time in UTC).
		    This is used in DatetimeIndex.__init__ to deprecate the wall-time
		    behaviour.
		
		    ..versionadded:: 0.24.0
		
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
	static public function sequence_to_dt64ns(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?tz:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic, ?ambiguous:Dynamic, ?int_as_wall_time:Dynamic):Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object
		
		Parameters
		----------
		freq : str, tuple, datetime.timedelta, DateOffset or None
		
		Returns
		-------
		delta : DateOffset
		    None if freq is None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		pandas.DateOffset
		
		Examples
		--------
		>>> to_offset('5min')
		<5 * Minutes>
		
		>>> to_offset('1D1H')
		<25 * Hours>
		
		>>> to_offset(('W', 2))
		<2 * Weeks: weekday=6>
		
		>>> to_offset((2, 'B'))
		<2 * BusinessDays>
		
		>>> to_offset(datetime.timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(freq:Dynamic):pandas.DateOffset;
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
	static public var utc : Dynamic;
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