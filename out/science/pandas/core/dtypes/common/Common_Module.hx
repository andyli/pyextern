/* This file is generated, do not edit! */
package pandas.core.dtypes.common;
@:pythonImport("pandas.core.dtypes.common") extern class Common_Module {
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
	static public var DT64NS_DTYPE : Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var INT64_DTYPE : Dynamic;
	static public var TD64NS_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return true if the condition is satisfied for the arr_or_dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like, str, np.dtype, or ExtensionArrayType
		    The array-like or dtype object whose dtype we want to extract.
		condition : callable[Union[np.dtype, ExtensionDtype]]
		
		Returns
		-------
		bool
	**/
	static public function _is_dtype(arr_or_dtype:Dynamic, condition:Dynamic):Dynamic;
	/**
		Return true if the condition is satisfied for the arr_or_dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype object whose dtype we want to extract.
		condition : callable[Union[np.dtype, ExtensionDtypeType]]
		
		Returns
		-------
		bool : if the condition is satisfied for the arr_or_dtype
	**/
	static public function _is_dtype_type(arr_or_dtype:Dynamic, condition:Dynamic):Dynamic;
	static public var _is_scipy_sparse : Dynamic;
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
		             frequency provided is too specific)
	**/
	static public function _validate_date_like_dtype(dtype:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Evaluate if the tipo is a subclass of the klasses.
	**/
	static public function classes(?klasses:python.VarArgs<Dynamic>):Dynamic;
	/**
		Evaluate if the tipo is a subclass of the klasses
		and not a datetimelike.
	**/
	static public function classes_and_not_datetimelike(?klasses:python.VarArgs<Dynamic>):Dynamic;
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
	static public function ensure_float(arr:Dynamic):Dynamic;
	static public function ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Ensure that a value is a python int.
		
		Parameters
		----------
		value: int or numpy.integer
		
		Returns
		-------
		int
		
		Raises
		------
		TypeError: if the value isn't an int or can't be converted to one.
	**/
	static public function ensure_python_int(value:Dynamic):Dynamic;
	/**
		Ensure that bytes and non-strings get converted into ``str`` objects.
	**/
	static public function ensure_str(value:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Get the dtype instance associated with an array
		or dtype object.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype object whose dtype we want to extract.
		
		Returns
		-------
		obj_dtype : The extract dtype instance from the
		            passed in array or dtype object.
		
		Raises
		------
		TypeError : The passed in object is None.
	**/
	static public function get_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		type
	**/
	static public function infer_dtype_from_object(dtype:Dynamic):Dynamic;
	/**
		Analogue to is_extension_array_dtype but excluding DatetimeTZDtype.
	**/
	static public function is_1d_only_ea_dtype(dtype:Dynamic):Dynamic;
	/**
		ExtensionArray that does not support 2D, or more specifically that does
		not use HybridBlock.
	**/
	static public function is_1d_only_ea_obj(obj:Dynamic):Dynamic;
	/**
		Check if this is an array of strings that we should try parsing.
		
		Includes object-dtype ndarray containing all-strings, StringArray,
		and Categorical with all-string categories.
		Does not include numpy string dtypes.
	**/
	static public function is_all_strings(value:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		In this function, timedelta64 instances are also considered "any-integer"
		type objects and will return True.
		
		This function is internal and should not be exposed in the public API.
		
		The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an integer dtype.
		
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
		Check whether an array-like is a Categorical instance.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like is of a Categorical instance.
		
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
		Checks if the object is a data-class instance
		
		Parameters
		----------
		item : object
		
		Returns
		--------
		is_dataclass : bool
		    True if the item is an instance of a data-class,
		    will return false if you pass the data class itself
		
		Examples
		--------
		>>> from dataclasses import dataclass
		>>> @dataclass
		... class Point:
		...     x: int
		...     y: int
		
		>>> is_dataclass(Point)
		False
		>>> is_dataclass(Point(0,2))
		True
	**/
	static public function is_dataclass(item:Dynamic):Bool;
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
		boolean
		    Whether we return a comparing a datetime-like to a numeric object.
		
		Examples
		--------
		>>> from datetime import datetime
		>>> dt = np.datetime64(datetime(2017, 1, 1))
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
	static public function is_decimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check
		
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
		>>> is_dict_like(dict)
		False
		>>> is_dict_like(dict())
		True
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
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
		Check for ExtensionDtype, datetime64 dtype, or timedelta64 dtype.
		
		Notes
		-----
		Checks only for dtype objects, not dtype-castable strings or types.
	**/
	static public function is_ea_or_datetimelike_dtype(dtype:Dynamic):Dynamic;
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
		
		.. deprecated:: 1.0.0
		    Use ``is_extension_array_dtype`` instead.
		
		Extension classes include categoricals, pandas sparse objects (i.e.
		classes represented within the pandas library and not ones external
		to it like scipy sparse matrices), and datetime-like arrays.
		
		Parameters
		----------
		arr : array-like, scalar
		    The array-like to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like is of a pandas extension class instance.
		
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
		>>> is_extension_type(pd.arrays.SparseArray([1, 2, 3]))
		True
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
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_file_like : bool
		    Whether `obj` has file-like properties.
		
		Examples
		--------
		>>> import io
		>>> buffer = io.StringIO("data")
		>>> is_file_like(buffer)
		True
		>>> is_file_like([1, 2, 3])
		False
	**/
	static public function is_file_like(obj:Dynamic):Bool;
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
		Check whether the provided array or dtype is of the int64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of the int64 dtype.
		
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
		>>> is_int64_dtype('int8')
		False
		>>> is_int64_dtype('Int8')
		False
		>>> is_int64_dtype(pd.Int64Dtype)
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
	static public function is_interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like or dtype is of the Interval dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Interval dtype.
		
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
		Check if the object is a named tuple.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_named_tuple : bool
		    Whether `obj` is a named tuple.
		
		Examples
		--------
		>>> from collections import namedtuple
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
		
		Parameters
		----------
		obj : The object to check
		
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
		
		Returns True when the object is a number, and False if is not.
		
		Parameters
		----------
		obj : any type
		    The object to check if is a number.
		
		Returns
		-------
		is_number : bool
		    Whether `obj` is a number or not.
		
		See Also
		--------
		api.types.is_integer: Checks a subgroup of numbers.
		
		Examples
		--------
		>>> from pandas.api.types import is_number
		>>> is_number(1)
		True
		>>> is_number(7.15)
		True
		
		Booleans are valid because they are int subclass.
		
		>>> is_number(False)
		True
		
		>>> is_number("foo")
		False
		>>> is_number("5")
		False
	**/
	static public function is_number(obj:Dynamic):Bool;
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
		boolean
		    Whether we return a comparing a string-like object to a numeric array.
		
		Examples
		--------
		>>> is_numeric_v_string_like(np.array([1]), "foo")
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
		Check if the object is a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check
		
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
		obj : The object to check
		
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
		Check whether an array-like is a scipy.sparse.spmatrix instance.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like is a scipy.sparse.spmatrix instance.
		
		Notes
		-----
		If scipy is not installed, this function will always return False.
		
		Examples
		--------
		>>> from scipy.sparse import bsr_matrix
		>>> is_scipy_sparse(bsr_matrix([1, 2, 3]))
		True
		>>> is_scipy_sparse(pd.arrays.SparseArray([1, 2, 3]))
		False
	**/
	static public function is_scipy_sparse(arr:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of a signed integer dtype.
		
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
		    Whether or not the array or dtype is of a signed integer dtype
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
		>>> is_signed_integer_dtype('int8')
		True
		>>> is_signed_integer_dtype('Int8')
		True
		>>> is_signed_integer_dtype(pd.Int8Dtype)
		True
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
		Faster alternative to is_string_dtype, assumes we have a np.dtype object.
	**/
	static public function is_string_or_object_np_dtype(dtype:Dynamic):Dynamic;
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
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype should be converted to int64.
		
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
	static public var registry : Dynamic;
	/**
		Return None if all args are hashable, else raise a TypeError.
		
		Parameters
		----------
		*args
		    Arguments to validate.
		error_name : str, optional
		    The name to use if error
		
		Raises
		------
		TypeError : If an argument is not hashable
		
		Returns
		-------
		None
	**/
	static public function validate_all_hashable(?args:python.VarArgs<Dynamic>, ?error_name:Dynamic):Dynamic;
}