/* This file is generated, do not edit! */
package pandas.core.arrays.timedeltas;
@:pythonImport("pandas.core.arrays.timedeltas") extern class Timedeltas_Module {
	static public var DT64NS_DTYPE : Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public function NpDtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TD64NS_DTYPE : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _field_accessor(name:Dynamic, alias:Dynamic, docstring:Dynamic):Dynamic;
	static public function _validate_td64_dtype(dtype:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Convert an ndarray to an array of timedeltas. If errors == 'coerce',
		coerce non-convertible objects to NaT. Otherwise, raise.
		
		Returns
		-------
		np.ndarray[timedelta64ns]
	**/
	static public function array_to_timedelta64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		By pandas convention, converting to non-nano timedelta64
		returns an int64-dtyped array with ints representing multiples
		of the desired timedelta unit.  This is essentially division.
		
		Parameters
		----------
		values : np.ndarray[timedelta64[ns]]
		dtype : np.dtype
		    timedelta64 with unit not-necessarily nano
		copy : bool
		
		Returns
		-------
		np.ndarray
	**/
	static public function astype_td64_unit_conversion(values:Dynamic, dtype:Dynamic, copy:Dynamic):Dynamic;
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
		Ensure a np.timedelta64 array has dtype specifically 'timedelta64[ns]'
		
		Parameters
		----------
		arr : ndarray
		copy : bool, default True
		
		Returns
		-------
		ndarray[timedelta64[ns]]
	**/
	static public function ensure_timedelta64ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Given a int64-based timedelta index, extract the days, hrs, sec.,
		field and return an array of these values.
	**/
	static public function get_timedelta_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	/**
		convert an i8 repr to an ndarray of timedelta or Timedelta (if box ==
		True)
		
		Parameters
		----------
		arr : ndarray[int64_t]
		box : bool, default False
		
		Returns
		-------
		result : ndarray[object]
		    array of Timedelta or timedeltas objects
	**/
	static public function ints_to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Convert a object-dtyped or string-dtyped array into an
		timedelta64[ns]-dtyped array.
		
		Parameters
		----------
		data : ndarray or Index
		unit : str, default "ns"
		    The timedelta unit to treat integers as multiples of.
		    Must not be specified if the data contains a str.
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
		Parameters
		----------
		unit : str or None
		
		Returns
		-------
		str
		    Canonical unit string.
		
		Raises
		------
		ValueError : on non-parseable input
	**/
	static public function parse_timedelta_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a casting of the unit represented to nanoseconds + the precision
		to round the fractional part.
		
		Notes
		-----
		The caller is responsible for ensuring that the default value of "ns"
		takes the place of None.
	**/
	static public function precision_from_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		data : list-like
		copy : bool, default False
		unit : str, optional
		    The timedelta unit to treat integers as multiples of. For numeric
		    data this defaults to ``'ns'``.
		    Must be un-specified if the data contains a str and ``errors=="raise"``.
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
		Check that the `closed` argument is among [None, "left", "right"]
		
		Parameters
		----------
		closed : {None, "left", "right"}
		
		Returns
		-------
		left_closed : bool
		right_closed : bool
		
		Raises
		------
		ValueError : if argument is not among valid values
	**/
	static public function validate_endpoints(closed:Dynamic):Dynamic;
}