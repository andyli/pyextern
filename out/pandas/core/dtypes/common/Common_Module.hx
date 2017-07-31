/* This file is generated, do not edit! */
package pandas.core.dtypes.common;
@:pythonImport("pandas.core.dtypes.common") extern class Common_Module {
	static public var PY2 : Dynamic;
	static public var PY3 : Dynamic;
	static public var PY36 : Dynamic;
	static public var _INT64_DTYPE : Dynamic;
	static public var _NS_DTYPE : Dynamic;
	static public var _POSSIBLY_CAST_DTYPES : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Coerce a string or np.dtype to a pandas or numpy
		dtype if possible.
		
		If we cannot convert to a pandas dtype initially,
		we convert to a numpy dtype.
		
		Parameters
		----------
		dtype : The dtype that we want to coerce.
		
		Returns
		-------
		pd_or_np_dtype : The coerced dtype.
	**/
	static public function _coerce_to_dtype(dtype:Dynamic):Dynamic;
	/**
		Ensure that an array-like object is a Categorical (if not already).
		
		Parameters
		----------
		arr : array-like
		    The array that we want to convert into a Categorical.
		
		Returns
		-------
		cat_arr : The original array cast as a Categorical. If it already
		          is a Categorical, we return as is.
	**/
	static public function _ensure_categorical(arr:Dynamic):Dynamic;
	/**
		Ensure that an array object has a float dtype if possible.
		
		Parameters
		----------
		arr : array-like
		    The array whose data type we want to enforce as float.
		
		Returns
		-------
		float_arr : The original array cast to the float dtype if
		            possible. Otherwise, the original array is returned.
	**/
	static public function _ensure_float(arr:Dynamic):Dynamic;
	static public function _ensure_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the dtype instance associated with an array
		or dtype object.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype object whose dtype we want to extract.
		
		Returns
		-------
		obj_dtype : The extract dtype instance from the
		            passed in array or dtype object.
		
		Raises
		------
		TypeError : The passed in object is None.
	**/
	static public function _get_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Get a numpy dtype.type-style object for a dtype object.
		
		This methods also includes handling of the datetime64[ns] and
		datetime64[ns, TZ] objects.
		
		If no dtype can be found, we return ``object``.
		
		Parameters
		----------
		dtype : dtype, type
		    The dtype object whose numpy dtype.type-style
		    object we want to extract.
		
		Returns
		-------
		dtype_object : The extracted numpy dtype.type-style object.
	**/
	static public function _get_dtype_from_object(dtype:Dynamic):Dynamic;
	/**
		Get the type (NOT dtype) instance associated with
		an array or dtype object.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype object whose type we want to extract.
		
		Returns
		-------
		obj_type : The extract type instance from the
		           passed in array or dtype object.
	**/
	static public function _get_dtype_type(arr_or_dtype:Dynamic):Dynamic;
	static public var _is_scipy_sparse : Dynamic;
	/**
		Check if the exception raised is an unorderable exception.
		
		The error message differs for 3 <= PY <= 3.5 and PY >= 3.6, so
		we need to condition based on Python version.
		
		Parameters
		----------
		e : Exception or sub-class
		    The exception object to check.
		
		Returns
		-------
		boolean : Whether or not the exception raised is an unorderable exception.
	**/
	static public function _is_unorderable_exception(e:Dynamic):Dynamic;
	static public var _string_dtypes : Dynamic;
	/**
		Check whether the dtype is a date-like dtype. Raises an error if invalid.
		
		Parameters
		----------
		dtype : dtype, type
		    The dtype to check.
		
		Raises
		------
		TypeError : The dtype could not be casted to a date-like dtype.
		ValueError : The dtype is an illegal date-like dtype (e.g. the
		             the frequency provided is too specific)
	**/
	static public function _validate_date_like_dtype(dtype:Dynamic):Dynamic;
	/**
		DEPRECATED: This function will be removed in a future version.
		
		Check whether the provided array or dtype is of an integer dtype.
		
		In this function, timedelta64 instances are also considered "any-integer"
		type objects and will return True.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype.
		
		Examples
		--------
		>>> is_any_int_dtype(str)
		False
		>>> is_any_int_dtype(int)
		True
		>>> is_any_int_dtype(float)
		False
		>>> is_any_int_dtype(np.uint64)
		True
		>>> is_any_int_dtype(np.datetime64)
		False
		>>> is_any_int_dtype(np.timedelta64)
		True
		>>> is_any_int_dtype(np.array(['a', 'b']))
		False
		>>> is_any_int_dtype(pd.Series([1, 2]))
		True
		>>> is_any_int_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_any_int_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_any_int_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
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
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a Categorical instance.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is of a Categorical instance.
		
		Examples
		--------
		>>> is_categorical([1, 2, 3])
		False
		
		Categoricals, Series Categoricals, and CategoricalIndex will return True.
		
		>>> cat = pd.Categorical([1, 2, 3])
		>>> is_categorical(cat)
		True
		>>> is_categorical(pd.Series(cat))
		True
		>>> is_categorical(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical(arr:Dynamic):Dynamic;
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
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a complex dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a compex dtype.
		
		Examples
		--------
		>>> is_complex_dtype(str)
		False
		>>> is_complex_dtype(int)
		False
		>>> is_complex_dtype(np.complex)
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
		Check whether the provided array or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the datetime64 dtype.
		
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
		>>> is_datetime64_any_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_any_dtype(pd.DatetimeIndex([1, 2, 3],
		                            dtype=np.datetime64))
		True
	**/
	static public function is_datetime64_any_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether an array-like is a datetime array-like or DatetimeIndex.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime
		          array-like or DatetimeIndex.
		
		Examples
		--------
		>>> is_datetime_arraylike([1, 2, 3])
		False
		>>> is_datetime_arraylike(pd.Index([1, 2, 3]))
		False
		>>> is_datetime_arraylike(pd.DatetimeIndex([1, 2, 3]))
		True
	**/
	static public function is_datetime_arraylike(arr:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of
		a timedelta64 or datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a
		          timedelta64, or datetime64 dtype.
		
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
		Check whether an array-like is a datetime-like array-like.
		
		Acceptable datetime-like objects are (but not limited to) datetime
		indices, periodic indices, and timedelta indices.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime-like array-like.
		
		Examples
		--------
		>>> is_datetimelike([1, 2, 3])
		False
		>>> is_datetimelike(pd.Index([1, 2, 3]))
		False
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3]))
		True
		>>> is_datetimelike(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>> is_datetimelike(pd.PeriodIndex([], freq="A"))
		True
		>>> is_datetimelike(np.array([], dtype=np.datetime64))
		True
		>>> is_datetimelike(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimelike(s)
		True
	**/
	static public function is_datetimelike(arr:Dynamic):Dynamic;
	/**
		Check if we are comparing a datetime-like object to a numeric object.
		
		By "numeric," we mean an object that is either of an int or float dtype.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a datetime-like
		          to a numeric object.
		
		Examples
		--------
		>>> dt = np.datetime64(pd.datetime(2017, 1, 1))
		>>>
		>>> is_datetimelike_v_numeric(1, 1)
		False
		>>> is_datetimelike_v_numeric(dt, dt)
		False
		>>> is_datetimelike_v_numeric(1, dt)
		True
		>>> is_datetimelike_v_numeric(dt, 1)  # symmetric check
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), 1)
		True
		>>> is_datetimelike_v_numeric(np.array([1]), dt)
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([1]))
		True
		>>> is_datetimelike_v_numeric(np.array([1]), np.array([2]))
		False
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([dt]))
		False
	**/
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Check if we are comparing a datetime-like object to an object instance.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a datetime-like
		          to an object instance.
		
		Examples
		--------
		>>> obj = object()
		>>> dt = np.datetime64(pd.datetime(2017, 1, 1))
		>>>
		>>> is_datetimelike_v_object(obj, obj)
		False
		>>> is_datetimelike_v_object(dt, dt)
		False
		>>> is_datetimelike_v_object(obj, dt)
		True
		>>> is_datetimelike_v_object(dt, obj)  # symmetric check
		True
		>>> is_datetimelike_v_object(np.array([dt]), obj)
		True
		>>> is_datetimelike_v_object(np.array([obj]), dt)
		True
		>>> is_datetimelike_v_object(np.array([dt]), np.array([obj]))
		True
		>>> is_datetimelike_v_object(np.array([obj]), np.array([obj]))
		False
		>>> is_datetimelike_v_object(np.array([dt]), np.array([1]))
		False
		>>> is_datetimelike_v_object(np.array([dt]), np.array([dt]))
		False
	**/
	static public function is_datetimelike_v_object(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Check whether an array-like is a datetime array-like with a timezone
		component in its dtype.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime array-like with
		          a timezone component in its dtype.
		
		Examples
		--------
		>>> is_datetimetz([1, 2, 3])
		False
		
		Although the following examples are both DatetimeIndex objects,
		the first one returns False because it has no timezone component
		unlike the second one, which returns True.
		
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		The object need not be a DatetimeIndex object. It just needs to have
		a dtype which has a timezone component.
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimetz(s)
		True
	**/
	static public function is_datetimetz(arr:Dynamic):Dynamic;
	static public function is_decimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_dict_like : bool
		    Whether `obj` has dict-like properties.
		
		Examples
		--------
		>>> is_dict_like({1: 2})
		True
		>>> is_dict_like([1, 2, 3])
		False
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
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
		Check if the object is a file-like object.
		
		For objects to be considered file-like, they must
		be an iterator AND have either a `read` and/or `write`
		method as an attribute.
		
		Note: file-like objects must be iterable, but
		iterable objects need not be file-like.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_file_like : bool
		    Whether `obj` has file-like properties.
		
		Examples
		--------
		>>> buffer(StringIO("data"))
		>>> is_file_like(buffer)
		True
		>>> is_file_like([1, 2, 3])
		False
	**/
	static public function is_file_like(obj:Dynamic):Bool;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
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
		DEPRECATED: This function will be removed in a future version.
		
		Check whether the provided array or dtype is an instance of
		numpy's float dtype.
		
		Unlike, `is_float_dtype`, this check is a lot stricter, as it requires
		`isinstance` of `np.floating` and not `issubclass`.
	**/
	static public function is_floating_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if hash(obj) will succeed, False otherwise.
		
		Some types will pass a test against collections.Hashable but fail when they
		are actually hashed with hash().
		
		Distinguish between these and other types by trying the call to hash() and
		seeing if they raise TypeError.
		
		Examples
		--------
		>>> a = ([],)
		>>> isinstance(a, collections.Hashable)
		True
		>>> is_hashable(a)
		False
	**/
	static public function is_hashable(obj:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the int64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the int64 dtype.
		
		Notes
		-----
		Depending on system architecture, the return value of `is_int64_dtype(
		int)` will be True if the OS uses 64-bit integers and False if the OS
		uses 32-bit integers.
		
		Examples
		--------
		>>> is_int64_dtype(str)
		False
		>>> is_int64_dtype(np.int32)
		False
		>>> is_int64_dtype(np.int64)
		True
		>>> is_int64_dtype(float)
		False
		>>> is_int64_dtype(np.uint64)  # unsigned
		False
		>>> is_int64_dtype(np.array(['a', 'b']))
		False
		>>> is_int64_dtype(np.array([1, 2], dtype=np.int64))
		True
		>>> is_int64_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_int64_dtype(np.array([1, 2], dtype=np.uint32))  # unsigned
		False
	**/
	static public function is_int64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an
		integer, timedelta64, or datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an
		          integer, timedelta64, or datetime64 dtype.
		
		Examples
		--------
		>>> is_int_or_datetime_dtype(str)
		False
		>>> is_int_or_datetime_dtype(int)
		True
		>>> is_int_or_datetime_dtype(float)
		False
		>>> is_int_or_datetime_dtype(np.uint64)
		True
		>>> is_int_or_datetime_dtype(np.datetime64)
		True
		>>> is_int_or_datetime_dtype(np.timedelta64)
		True
		>>> is_int_or_datetime_dtype(np.array(['a', 'b']))
		False
		>>> is_int_or_datetime_dtype(pd.Series([1, 2]))
		True
		>>> is_int_or_datetime_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_int_or_datetime_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_int_or_datetime_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_int_or_datetime_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
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
	static public function is_interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like or dtype is of the Interval dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Interval dtype.
		
		Examples
		--------
		>>> is_interval_dtype(object)
		False
		>>> is_interval_dtype(IntervalDtype())
		True
		>>> is_interval_dtype([1, 2, 3])
		False
		>>>
		>>> interval = pd.Interval(1, 2, closed="right")
		>>> is_interval_dtype(interval)
		False
		>>> is_interval_dtype(pd.IntervalIndex([interval]))
		True
	**/
	static public function is_interval_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is an iterator.
		
		For example, lists are considered iterators
		but not strings or datetime objects.
		
		Parameters
		----------
		obj : The object to check.
		
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
		obj : The object to check.
		
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
	**/
	static public function is_list_like(obj:Dynamic):Bool;
	/**
		Check if the object is a named tuple.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_named_tuple : bool
		    Whether `obj` is a named tuple.
		
		Examples
		--------
		>>> Point = namedtuple("Point", ["x", "y"])
		>>> p = Point(1, 2)
		>>>
		>>> is_named_tuple(p)
		True
		>>> is_named_tuple((1, 2))
		False
	**/
	static public function is_named_tuple(obj:Dynamic):Bool;
	/**
		Check if the object is list-like, and that all of its elements
		are also list-like.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_nested_list_like([[1, 2, 3]])
		True
		>>> is_nested_list_like([{1, 2, 3}, {1, 2, 3}])
		True
		>>> is_nested_list_like(["foo"])
		False
		>>> is_nested_list_like([])
		False
		>>> is_nested_list_like([[1, 2, 3], 1])
		False
		
		Notes
		-----
		This won't reliably detect whether a consumable iterator (e. g.
		a generator) is a nested-list-like without consuming the iterator.
		To avoid consuming it, we always return False if the outer container
		doesn't define `__len__`.
		
		See Also
		--------
		is_list_like
	**/
	static public function is_nested_list_like(obj:Dynamic):Bool;
	/**
		Check if the object is a number.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_number : bool
		    Whether `obj` is a number or not.
		
		Examples
		--------
		>>> is_number(1)
		True
		>>> is_number("foo")
		False
	**/
	static public function is_number(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a numeric dtype.
		
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
		Check if we are comparing a string-like object to a numeric ndarray.
		
		NumPy doesn't like to compare such objects, especially numeric arrays
		and scalar string-likes.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a string-like
		          object to a numeric array.
		
		Examples
		--------
		>>> is_numeric_v_string_like(1, 1)
		False
		>>> is_numeric_v_string_like("foo", "foo")
		False
		>>> is_numeric_v_string_like(1, "foo")  # non-array numeric
		False
		>>> is_numeric_v_string_like(np.array([1]), "foo")
		True
		>>> is_numeric_v_string_like("foo", np.array([1]))  # symmetric check
		True
		>>> is_numeric_v_string_like(np.array([1, 2]), np.array(["foo"]))
		True
		>>> is_numeric_v_string_like(np.array(["foo"]), np.array([1, 2]))
		True
		>>> is_numeric_v_string_like(np.array([1]), np.array([2]))
		False
		>>> is_numeric_v_string_like(np.array(["foo"]), np.array(["foo"]))
		False
	**/
	static public function is_numeric_v_string_like(a:Dynamic, b:Dynamic):Dynamic;
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
		Check whether an array-like is a periodical index.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a periodical index.
		
		Examples
		--------
		>>> is_period([1, 2, 3])
		False
		>>> is_period(pd.Index([1, 2, 3]))
		False
		>>> is_period(pd.PeriodIndex(["2017-01-01"], freq="D"))
		True
	**/
	static public function is_period(arr:Dynamic):Dynamic;
	/**
		Check whether an array-like is a periodical array-like or PeriodIndex.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a periodical
		          array-like or PeriodIndex instance.
		
		Examples
		--------
		>>> is_period_arraylike([1, 2, 3])
		False
		>>> is_period_arraylike(pd.Index([1, 2, 3]))
		False
		>>> is_period_arraylike(pd.PeriodIndex(["2017-01-01"], freq="D"))
		True
	**/
	static public function is_period_arraylike(arr:Dynamic):Dynamic;
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
		Check if the object is a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_regex : bool
		    Whether `obj` is a regex pattern.
		
		Examples
		--------
		>>> is_re(re.compile(".*"))
		True
		>>> is_re("foo")
		False
	**/
	static public function is_re(obj:Dynamic):Bool;
	/**
		Check if the object can be compiled into a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_regex_compilable : bool
		    Whether `obj` can be compiled as a regex pattern.
		
		Examples
		--------
		>>> is_re_compilable(".*")
		True
		>>> is_re_compilable(1)
		False
	**/
	static public function is_re_compilable(obj:Dynamic):Bool;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
		- instances of decimal.Decimal
		- Interval
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like is a scipy.sparse.spmatrix instance.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a
		          scipy.sparse.spmatrix instance.
		
		Notes
		-----
		If scipy is not installed, this function will always return False.
		
		Examples
		--------
		>>> from scipy.sparse import bsr_matrix
		>>> is_scipy_sparse(bsr_matrix([1, 2, 3]))
		True
		>>> is_scipy_sparse(pd.SparseArray([1, 2, 3]))
		False
		>>> is_scipy_sparse(pd.SparseSeries([1, 2, 3]))
		False
	**/
	static public function is_scipy_sparse(arr:Dynamic):Dynamic;
	/**
		Check if the object is a sequence of objects.
		String types are not included as sequences here.
		
		Parameters
		----------
		obj : The object to check.
		
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
		Check whether the provided array or dtype is of a signed integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a signed integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_signed_integer_dtype(str)
		False
		>>> is_signed_integer_dtype(int)
		True
		>>> is_signed_integer_dtype(float)
		False
		>>> is_signed_integer_dtype(np.uint64)  # unsigned
		False
		>>> is_signed_integer_dtype(np.datetime64)
		False
		>>> is_signed_integer_dtype(np.timedelta64)
		False
		>>> is_signed_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_signed_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_signed_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_signed_integer_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_signed_integer_dtype(np.array([1, 2], dtype=np.uint32))  # unsigned
		False
	**/
	static public function is_signed_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a pandas sparse array.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a pandas sparse array.
		
		Examples
		--------
		>>> is_sparse(np.array([1, 2, 3]))
		False
		>>> is_sparse(pd.SparseArray([1, 2, 3]))
		True
		>>> is_sparse(pd.SparseSeries([1, 2, 3]))
		True
		
		This function checks only for pandas sparse array instances, so
		sparse arrays from other libraries will return False.
		
		>>> from scipy.sparse import bsr_matrix
		>>> is_sparse(bsr_matrix([1, 2, 3]))
		False
	**/
	static public function is_sparse(arr:Dynamic):Dynamic;
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
		Check if the object is a string.
		
		Parameters
		----------
		obj : The object to check.
		
		Examples
		--------
		>>> is_string_like("foo")
		True
		>>> is_string_like(1)
		False
		
		Returns
		-------
		is_str_like : bool
		    Whether `obj` is a string or not.
	**/
	static public function is_string_like(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a string-like dtype.
		
		Unlike `is_string_dtype`, the object dtype is excluded because it
		is a mixed dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the string dtype.
		
		Examples
		--------
		>>> is_string_like_dtype(str)
		True
		>>> is_string_like_dtype(object)
		False
		>>> is_string_like_dtype(np.array(['a', 'b']))
		True
		>>> is_string_like_dtype(pd.Series([1, 2]))
		False
	**/
	static public function is_string_like_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of an unsigned integer dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an
		          unsigned integer dtype.
		
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
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype should be converted to int64.
		
		Examples
		--------
		>>> needs_i8_conversion(str)
		False
		>>> needs_i8_conversion(np.int64)
		False
		>>> needs_i8_conversion(np.datetime64)
		True
		>>> needs_i8_conversion(np.array(['a', 'b']))
		False
		>>> needs_i8_conversion(pd.Series([1, 2]))
		False
		>>> needs_i8_conversion(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> needs_i8_conversion(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
	**/
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	static public var string_and_binary_types : Dynamic;
	static public var string_types : Dynamic;
}