/* This file is generated, do not edit! */
package pandas.core.tools.numeric;
@:pythonImport("pandas.core.tools.numeric") extern class Numeric_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function is_decimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Convert argument to a numeric type.
		
		The default return dtype is `float64` or `int64`
		depending on the data supplied. Use the `downcast` parameter
		to obtain other dtypes.
		
		Please note that precision loss may occur if really large numbers
		are passed in. Due to the internal limitations of `ndarray`, if
		numbers smaller than `-9223372036854775808` (np.iinfo(np.int64).min)
		or larger than `18446744073709551615` (np.iinfo(np.uint64).max) are
		passed in, it is very likely they will be converted to float so that
		they can stored in an `ndarray`. These warnings apply similarly to
		`Series` since it internally leverages `ndarray`.
		
		Parameters
		----------
		arg : scalar, list, tuple, 1-d array, or Series
		    Argument to be converted.
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception.
		    - If 'coerce', then invalid parsing will be set as NaN.
		    - If 'ignore', then invalid parsing will return the input.
		downcast : str, default None
		    Can be 'integer', 'signed', 'unsigned', or 'float'.
		    If not None, and if the data has been successfully cast to a
		    numerical dtype (or if the data was numeric to begin with),
		    downcast that resulting data to the smallest numerical dtype
		    possible according to the following rules:
		
		    - 'integer' or 'signed': smallest signed int dtype (min.: np.int8)
		    - 'unsigned': smallest unsigned int dtype (min.: np.uint8)
		    - 'float': smallest float dtype (min.: np.float32)
		
		    As this behaviour is separate from the core conversion to
		    numeric values, any errors raised during the downcasting
		    will be surfaced regardless of the value of the 'errors' input.
		
		    In addition, downcasting will only occur if the size
		    of the resulting data's dtype is strictly larger than
		    the dtype it is to be cast to, so if none of the dtypes
		    checked satisfy that specification, no downcasting will be
		    performed on the data.
		
		Returns
		-------
		ret
		    Numeric if parsing succeeded.
		    Return type depends on input.  Series if Series, otherwise ndarray.
		
		See Also
		--------
		DataFrame.astype : Cast argument to a specified dtype.
		to_datetime : Convert argument to datetime.
		to_timedelta : Convert argument to timedelta.
		numpy.ndarray.astype : Cast a numpy array to a specified type.
		DataFrame.convert_dtypes : Convert dtypes.
		
		Examples
		--------
		Take separate series and convert to numeric, coercing when told to
		
		>>> s = pd.Series(['1.0', '2', -3])
		>>> pd.to_numeric(s)
		0    1.0
		1    2.0
		2   -3.0
		dtype: float64
		>>> pd.to_numeric(s, downcast='float')
		0    1.0
		1    2.0
		2   -3.0
		dtype: float32
		>>> pd.to_numeric(s, downcast='signed')
		0    1
		1    2
		2   -3
		dtype: int8
		>>> s = pd.Series(['apple', '1.0', '2', -3])
		>>> pd.to_numeric(s, errors='ignore')
		0    apple
		1      1.0
		2        2
		3       -3
		dtype: object
		>>> pd.to_numeric(s, errors='coerce')
		0    NaN
		1    1.0
		2    2.0
		3   -3.0
		dtype: float64
		
		Downcasting of nullable integer and floating dtypes is supported:
		
		>>> s = pd.Series([1, 2, 3], dtype="Int64")
		>>> pd.to_numeric(s, downcast="integer")
		0    1
		1    2
		2    3
		dtype: Int8
		>>> s = pd.Series([1.0, 2.1, 3.0], dtype="Float64")
		>>> pd.to_numeric(s, downcast="float")
		0    1.0
		1    2.1
		2    3.0
		dtype: Float32
	**/
	static public function to_numeric(arg:Dynamic, ?errors:Dynamic, ?downcast:Dynamic):Dynamic;
}