/* This file is generated, do not edit! */
package pandas.core.dtypes._cast;
@:pythonImport("pandas.core.dtypes.cast") extern class _Cast_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DT64NS_DTYPE : Dynamic;
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public var NumpyArrayT : Dynamic;
	static public function Scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sized(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		numpy allows np.array(dt64values, dtype="timedelta64[ns]") and
		vice-versa, but we do not want to allow this, so we need to
		check explicitly
	**/
	static public function _disallow_mismatched_datetimelike(value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		maybe_infer_dtype_type infers to int64 (and float64 for very large endpoints),
		but in many cases a range can be held by a smaller integer dtype.
		Check if this is one of those cases.
	**/
	static public function _dtype_can_hold_range(rng:Dynamic, dtype:Dynamic):Dynamic;
	static public var _dtype_obj : Dynamic;
	/**
		Ensure that the given value is an instance of the given dtype.
		
		e.g. if out dtype is np.complex64_, we should have an instance of that
		as opposed to a python complex object.
		
		Parameters
		----------
		value : object
		dtype : np.dtype
		
		Returns
		-------
		object
	**/
	static public function _ensure_dtype_type(value:Dynamic, dtype:Dynamic):Dynamic;
	static public var _int16_max : Dynamic;
	static public var _int32_max : Dynamic;
	static public var _int64_max : Dynamic;
	static public var _int8_max : Dynamic;
	static public function _maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _maybe_promote_cached(dtype:Dynamic, fill_value:Dynamic, fill_value_type:Dynamic):Dynamic;
	/**
		Check that we can losslessly insert the given value into an array
		with the given dtype.
		
		Parameters
		----------
		dtype : np.dtype
		value : scalar
		
		Raises
		------
		ValueError
	**/
	static public function _validate_numeric_casting(dtype:Dynamic, value:Dynamic):Dynamic;
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
		Cast array (ndarray or ExtensionArray) to the new dtype.
		
		Parameters
		----------
		values : ndarray or ExtensionArray
		dtype : dtype object
		copy : bool, default False
		    copy if indicated
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function astype_array(values:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
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
	static public function astype_dt64_to_dt64tz(values:Dynamic, dtype:Dynamic, copy:Dynamic, ?via_utc:Dynamic):Dynamic;
	/**
		astype with a check preventing converting NaN to an meaningless integer value.
	**/
	static public function astype_float_to_int_nansafe(values:Dynamic, dtype:Dynamic, copy:Dynamic):Dynamic;
	/**
		Cast the elements of an array to a given dtype a nan-safe manner.
		
		Parameters
		----------
		arr : ndarray
		dtype : np.dtype or ExtensionDtype
		copy : bool, default True
		    If False, a view will be attempted but may fail, if
		    e.g. the item sizes don't align.
		skipna: bool, default False
		    Whether or not we should skip NaN when casting as a string-type.
		
		Raises
		------
		ValueError
		    The dtype was a datetime64/timedelta64 dtype, but it had no unit.
	**/
	static public function astype_nansafe(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic, ?skipna:Dynamic):Dynamic;
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
		Can we do an inplace setitem with this element in an array with this dtype?
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		element : Any
		
		Returns
		-------
		bool
	**/
	static public function can_hold_element(arr:Dynamic, element:Dynamic):Dynamic;
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
		coerce the indexer input array to the smallest dtype possible
	**/
	static public function coerce_indexer_dtype(indexer:Dynamic, categories:Dynamic):Dynamic;
	/**
		create a np.ndarray / pandas type of specified shape and dtype
		filled with values
		
		Parameters
		----------
		value : scalar value
		length : int
		dtype : pandas_dtype or np.dtype
		
		Returns
		-------
		np.ndarray / pandas type of length, filled with value
	**/
	static public function construct_1d_arraylike_from_scalar(value:Dynamic, length:Dynamic, dtype:Dynamic):Dynamic;
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
	static public function construct_2d_arraylike_from_scalar(value:Dynamic, length:Dynamic, width:Dynamic, dtype:Dynamic, copy:Dynamic):Dynamic;
	/**
		Convert objects to best possible type, and optionally,
		to types supporting ``pd.NA``.
		
		Parameters
		----------
		input_array : ExtensionArray or np.ndarray
		convert_string : bool, default True
		    Whether object dtypes should be converted to ``StringDtype()``.
		convert_integer : bool, default True
		    Whether, if possible, conversion can be done to integer extension types.
		convert_boolean : bool, defaults True
		    Whether object dtypes should be converted to ``BooleanDtypes()``.
		convert_floating : bool, defaults True
		    Whether, if possible, conversion can be done to floating extension types.
		    If `convert_integer` is also True, preference will be give to integer
		    dtypes if the floats can be faithfully casted to integers.
		
		Returns
		-------
		np.dtype, or ExtensionDtype
	**/
	static public function convert_dtypes(input_array:Dynamic, ?convert_string:Dynamic, ?convert_integer:Dynamic, ?convert_boolean:Dynamic, ?convert_floating:Dynamic):Dynamic;
	/**
		Convert datetimelike scalar if we are setting into a datetime64
		or timedelta64 ndarray.
		
		Parameters
		----------
		scalar : scalar
		dtype : np.dtype
		
		Returns
		-------
		scalar
	**/
	static public function convert_scalar_for_putitemlike(scalar:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Convert datetimelike-keyed dicts to a Timestamp-keyed dict.
		
		Parameters
		----------
		d: dict-like object
		
		Returns
		-------
		dict
	**/
	static public function dict_compat(d:Dynamic):Dynamic;
	/**
		If we have a dtype that cannot hold NA values, find the best match that can.
	**/
	static public function ensure_dtype_can_hold_na(dtype:Dynamic):Dynamic;
	static public function ensure_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert dtypes with granularity less than nanosecond to nanosecond
		
		>>> ensure_nanosecond_dtype(np.dtype("M8[s]"))
		dtype('<M8[ns]')
		
		>>> ensure_nanosecond_dtype(np.dtype("m8[ps]"))
		Traceback (most recent call last):
		    ...
		TypeError: cannot convert timedeltalike to dtype [timedelta64[ps]]
	**/
	static public function ensure_nanosecond_dtype(dtype:Dynamic):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Ensure that bytes and non-strings get converted into ``str`` objects.
	**/
	static public function ensure_str(value:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Interpret the dtype from a scalar or array.
		
		Parameters
		----------
		val : object
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar/array belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Infer the dtype from an array.
		
		Parameters
		----------
		arr : array
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, array belongs to pandas extension types
		    is inferred as object
		
		Returns
		-------
		tuple (numpy-compat/pandas-compat dtype, array)
		
		Notes
		-----
		if pandas_dtype=False. these infer to numpy dtypes
		exactly with the exception that mixed / object dtypes
		are not coerced by stringifying or conversion
		
		if pandas_dtype=True. datetime64tz-aware/categorical
		types will retain there character.
		
		Examples
		--------
		>>> np.asarray([1, '1'])
		array(['1', '1'], dtype='<U21')
		
		>>> infer_dtype_from_array([1, '1'])
		(dtype('O'), [1, '1'])
	**/
	static public function infer_dtype_from_array(arr:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
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
		Change string like dtypes to object for
		``DataFrame.select_dtypes()``.
	**/
	static public function invalidate_string_dtypes(dtype_set:Dynamic):Dynamic;
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return True if given object is complex.
		
		Returns
		-------
		bool
	**/
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a complex dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a complex dtype.
		
		Examples
		--------
		>>> is_complex_dtype(str)
		False
		>>> is_complex_dtype(int)
		False
		>>> is_complex_dtype(np.complex_)
		True
		>>> is_complex_dtype(np.array(['a', 'b']))
		False
		>>> is_complex_dtype(pd.Series([1, 2]))
		False
		>>> is_complex_dtype(np.array([1 + 1j, 5]))
		True
	**/
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Return True if given object is float.
		
		Returns
		-------
		bool
	**/
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		return a boolean if we have a nested object, e.g. a Series with 1 or
		more Series elements
		
		This may not be necessarily be performant.
	**/
	static public function is_nested_object(obj:Dynamic):Dynamic;
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
		Cast scalar to Timestamp or Timedelta if scalar is datetime-like
		and dtype is not object.
		
		Parameters
		----------
		value : scalar
		dtype : Dtype, optional
		
		Returns
		-------
		scalar
	**/
	static public function maybe_box_datetimelike(value:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		If passed a scalar cast the scalar to a python native type.
		
		Parameters
		----------
		value : scalar or Series
		
		Returns
		-------
		scalar or Series
	**/
	static public function maybe_box_native(value:Dynamic):Dynamic;
	/**
		Try casting result of a pointwise operation back to the original dtype if
		appropriate.
		
		Parameters
		----------
		result : array-like
		    Result to cast.
		dtype : np.dtype or ExtensionDtype
		    Input Series from which result was calculated.
		numeric_only : bool, default False
		    Whether to cast only numerics or datetimes as well.
		same_dtype : bool, default True
		    Specify dtype when calling _from_sequence
		
		Returns
		-------
		result : array-like
		    result maybe casted to the dtype.
	**/
	static public function maybe_cast_pointwise_result(result:Dynamic, dtype:Dynamic, ?numeric_only:Dynamic, ?same_dtype:Dynamic):Dynamic;
	/**
		try to cast the array/value to a datetimelike dtype, converting float
		nan to iNaT
		
		We allow a list *only* when dtype is not None.
	**/
	static public function maybe_cast_to_datetime(value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Call to `_from_sequence` that returns the object unchanged on Exception.
		
		Parameters
		----------
		cls : class, subclass of ExtensionArray
		obj : arraylike
		    Values to pass to cls._from_sequence
		dtype : ExtensionDtype, optional
		
		Returns
		-------
		ExtensionArray or obj
	**/
	static public function maybe_cast_to_extension_array(cls:Dynamic, obj:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Takes any dtype and returns the casted version, raising for when data is
		incompatible with integer/unsigned integer dtypes.
		
		Parameters
		----------
		arr : np.ndarray or list
		    The array to cast.
		dtype : np.dtype
		    The integer dtype to cast the array to.
		copy: bool, default False
		    Whether to make a copy of the array before returning.
		
		Returns
		-------
		ndarray
		    Array of integer or unsigned integer dtype.
		
		Raises
		------
		OverflowError : the dtype is incompatible with the data
		ValueError : loss of precision has occurred during casting
		
		Examples
		--------
		If you try to coerce negative values to unsigned integers, it raises:
		
		>>> pd.Series([-1], dtype="uint64")
		Traceback (most recent call last):
		    ...
		OverflowError: Trying to coerce negative values to unsigned integers
		
		Also, if you try to coerce float values to integers, it raises:
		
		>>> pd.Series([1, 2, 3.5], dtype="int64")
		Traceback (most recent call last):
		    ...
		ValueError: Trying to coerce float values to integers
	**/
	static public function maybe_cast_to_integer_array(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		try to do platform conversion, allow ndarray or list here
	**/
	static public function maybe_convert_platform(values:Dynamic):Dynamic;
	/**
		Subset of maybe_downcast_to_dtype restricted to numeric dtypes.
		
		Parameters
		----------
		result : ndarray or ExtensionArray
		dtype : np.dtype or ExtensionDtype
		do_round : bool
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function maybe_downcast_numeric(result:Dynamic, dtype:Dynamic, ?do_round:Dynamic):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function maybe_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Try to infer an object's dtype, for use in arithmetic ops.
		
		Uses `element.dtype` if that's available.
		Objects implementing the iterator protocol are cast to a NumPy array,
		and from there the array's type is used.
		
		Parameters
		----------
		element : object
		    Possibly has a `.dtype` attribute, and possibly the iterator
		    protocol.
		
		Returns
		-------
		tipo : type
		
		Examples
		--------
		>>> from collections import namedtuple
		>>> Foo = namedtuple("Foo", "dtype")
		>>> maybe_infer_dtype_type(Foo(np.dtype("i8")))
		dtype('int64')
	**/
	static public function maybe_infer_dtype_type(element:Dynamic):Dynamic;
	/**
		we might have a array (or single object) that is datetime like,
		and no dtype is passed don't change the value unless we find a
		datetime/timedelta set
		
		this is pretty strict in that a datetime/timedelta is REQUIRED
		in addition to possible nulls/string likes
		
		Parameters
		----------
		value : np.ndarray[object]
		
		Returns
		-------
		np.ndarray, DatetimeArray, TimedeltaArray, PeriodArray, or IntervalArray
	**/
	static public function maybe_infer_to_datetimelike(value:Dynamic):Dynamic;
	/**
		Find the minimal dtype that can hold both the given dtype and fill_value.
		
		Parameters
		----------
		dtype : np.dtype
		fill_value : scalar, default np.nan
		
		Returns
		-------
		dtype
		    Upcasted from dtype argument if necessary.
		fill_value
		    Upcasted from fill_value argument if necessary.
		
		Raises
		------
		ValueError
		    If fill_value is a non-scalar and dtype is not object.
	**/
	static public function maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Convert a Timedelta or Timestamp to timedelta64 or datetime64 for setting
		into a numpy array.  Failing to unbox would risk dropping nanoseconds.
		
		Notes
		-----
		Caller is responsible for checking dtype.kind in ["m", "M"]
	**/
	static public function maybe_unbox_datetimelike(value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Wrap maybe_unbox_datetimelike with a check for a timezone-aware Timestamp
		along with a timezone-naive datetime64 dtype, which is deprecated.
	**/
	static public function maybe_unbox_datetimelike_tz_deprecation(value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Provide explicit type promotion and coercion.
		
		Parameters
		----------
		values : np.ndarray
		    The array that we may want to upcast.
		fill_value : what we want to fill with
		copy : bool, default True
		    If True always make a copy even if no upcast is required.
		
		Returns
		-------
		values: np.ndarray
		    the original array, possibly upcast
		fill_value:
		    the fill value, possibly upcast
	**/
	static public function maybe_upcast(values:Dynamic, ?fill_value:Dynamic, ?copy:Dynamic):Dynamic;
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
		
		>>> pd.notna(pd.NA)
		False
		
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
	static public function notna(obj:Dynamic):Dynamic;
	/**
		Raise if we cannot losslessly set this element into an ndarray with this dtype.
		
		Specifically about places where we disagree with numpy.  i.e. there are
		cases where numpy will raise in doing the setitem that we do not check
		for here, e.g. setting str "X" into a numeric ndarray.
		
		Returns
		-------
		Any
		    The element, potentially cast to the dtype.
		
		Raises
		------
		ValueError : If we cannot losslessly store this element with this dtype.
	**/
	static public function np_can_hold_element(dtype:Dynamic, element:Dynamic):Dynamic;
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
		Safely convert non-nanosecond datetime64 or timedelta64 values to nanosecond.
	**/
	static public function sanitize_to_nanoseconds(values:Dynamic, ?copy:Dynamic):Dynamic;
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
}