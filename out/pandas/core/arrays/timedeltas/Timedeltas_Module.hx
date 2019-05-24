/* This file is generated, do not edit! */
package pandas.core.arrays.timedeltas;
@:pythonImport("pandas.core.arrays.timedeltas") extern class Timedeltas_Module {
	static public var NaT : Dynamic;
	static public var _BAD_DTYPE : Dynamic;
	static public var _NS_DTYPE : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _field_accessor(name:Dynamic, alias:Dynamic, ?docstring:Dynamic):Dynamic;
	static public function _generate_regular_range(start:Dynamic, end:Dynamic, periods:Dynamic, offset:Dynamic):Dynamic;
	static public function _is_convertible_to_td(key:Dynamic):Dynamic;
	/**
		Wrap comparison operations to convert timedelta-like to timedelta64
	**/
	static public function _td_array_cmp(cls:Dynamic, op:Dynamic):Dynamic;
	static public function _validate_td64_dtype(dtype:Dynamic):Dynamic;
	/**
		Convert an ndarray to an array of timedeltas. If errors == 'coerce',
		coerce non-convertible objects to NaT. Otherwise, raise.
	**/
	static public function array_to_timedelta64(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var division : Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based timedelta index, extract the days, hrs, sec.,
		field and return an array of these values.
	**/
	static public function get_timedelta_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	/**
		Convert an ndarray with integer-dtype to timedelta64[ns] dtype, treating
		the integers as multiples of the given timedelta unit.
		
		Parameters
		----------
		data : numpy.ndarray with integer-dtype
		unit : str, default "ns"
		    The timedelta unit to treat integers as multiples of.
		
		Returns
		-------
		numpy.ndarray : timedelta64[ns] array converted from data
		bool : whether a copy was made
	**/
	static public function ints_to_td64ns(data:Dynamic, ?unit:Dynamic):Dynamic;
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
		Return True if given value is scalar.
		
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
		    - Number
		
		Returns
		-------
		bool
		    Return True if given object is scalar, False otherwise
		
		Examples
		--------
		>>> dt = pd.datetime.datetime(2018, 10, 3)
		>>> pd.is_scalar(dt)
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
		Check whether the provided array or dtype is of the timedelta64[ns] dtype.
		
		This is a very specific dtype, so generic ones like `np.timedelta64`
		will return False if passed into this function.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the
		          timedelta64[ns] dtype.
		
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
		Convert a object-dtyped or string-dtyped array into an
		timedelta64[ns]-dtyped array.
		
		Parameters
		----------
		data : ndarray or Index
		unit : str, default "ns"
		    The timedelta unit to treat integers as multiples of.
		errors : {"raise", "coerce", "ignore"}, default "raise"
		    How to handle elements that cannot be converted to timedelta64[ns].
		    See ``pandas.to_timedelta`` for details.
		
		Returns
		-------
		numpy.ndarray : timedelta64[ns] array converted from data
		
		Raises
		------
		ValueError : Data cannot be converted to timedelta64[ns].
		
		Notes
		-----
		Unlike `pandas.to_timedelta`, if setting `errors=ignore` will not cause
		errors to be ignored; they are caught and subsequently ignored at a
		higher level.
	**/
	static public function objects_to_td64ns(data:Dynamic, ?unit:Dynamic, ?errors:Dynamic):Dynamic;
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
		unit : an unit string
	**/
	static public function parse_timedelta_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a casting of the unit represented to nanoseconds + the precision
		to round the fractional part.
	**/
	static public function precision_from_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		array : list-like
		copy : bool, default False
		unit : str, default "ns"
		    The timedelta unit to treat integers as multiples of.
		errors : {"raise", "coerce", "ignore"}, default "raise"
		    How to handle elements that cannot be converted to timedelta64[ns].
		    See ``pandas.to_timedelta`` for details.
		
		Returns
		-------
		converted : numpy.ndarray
		    The sequence converted to a numpy array with dtype ``timedelta64[ns]``.
		inferred_freq : Tick or None
		    The inferred frequency of the sequence.
		
		Raises
		------
		ValueError : Data cannot be converted to timedelta64[ns].
		
		Notes
		-----
		Unlike `pandas.to_timedelta`, if setting ``errors=ignore`` will not cause
		errors to be ignored; they are caught and subsequently ignored at a
		higher level.
	**/
	static public function sequence_to_td64ns(data:Dynamic, ?copy:Dynamic, ?unit:Dynamic, ?errors:Dynamic):Dynamic;
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
}