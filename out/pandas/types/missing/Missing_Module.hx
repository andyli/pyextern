/* This file is generated, do not edit! */
package pandas.types.missing;
@:pythonImport("pandas.types.missing") extern class Missing_Module {
	static public var NaT : Dynamic;
	static public var _DATELIKE_DTYPES : Dynamic;
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
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		infer the fill value for the nan/NaT from the provided
		scalar/ndarray/list-like if we are a NaT, return the correct dtyped
		element to provide proper block construction
	**/
	static public function _infer_fill_value(val:Dynamic):Dynamic;
	/**
		Parameters
		----------
		arr: a numpy array
		fill_value: fill value, default to np.nan
		
		Returns
		-------
		True if we can fill using this fill_value
	**/
	static public function _is_na_compat(arr:Dynamic, ?fill_value:Dynamic):Dynamic;
	static public function _isnull(obj:Dynamic):Dynamic;
	static public function _isnull_ndarraylike(obj:Dynamic):Dynamic;
	static public function _isnull_ndarraylike_old(obj:Dynamic):Dynamic;
	static public function _isnull_new(obj:Dynamic):Dynamic;
	/**
		Detect missing values. Treat None, NaN, INF, -INF as null.
		
		Parameters
		----------
		arr: ndarray or object value
		
		Returns
		-------
		boolean ndarray or boolean
	**/
	static public function _isnull_old(obj:Dynamic):Dynamic;
	/**
		if we have a compatiable fill_value and arr dtype, then fill
	**/
	static public function _maybe_fill(arr:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Option change callback for null/inf behaviour
		Choose which replacement for numpy.isnan / -numpy.isfinite is used.
		
		Parameters
		----------
		flag: bool
		    True means treat None, NaN, INF, -INF as null (old way),
		    False means None and NaN are null, but INF, -INF are not null
		    (new way).
		
		Notes
		-----
		This approach to setting global module values is discussed and
		approved here:
		
		* http://stackoverflow.com/questions/4859217/
		  programmatically-creating-variables-in-python/4859312#4859312
	**/
	static public function _use_inf_as_null(key:Dynamic):Dynamic;
	/**
		True if two arrays, left and right, have equal non-NaN elements, and NaNs
		in corresponding locations.  False otherwise. It is assumed that left and
		right are NumPy arrays of the same dtype. The behavior of this function
		(particularly with respect to NaNs) is not defined if the dtypes are
		different.
		
		Parameters
		----------
		left, right : ndarrays
		strict_nan : bool, default False
		    If True, consider NaN and None to be different.
		
		Returns
		-------
		b : bool
		    Returns True if the arrays are equivalent.
		
		Examples
		--------
		>>> array_equivalent(
		...     np.array([1, 2, np.nan]),
		...     np.array([1, 2, np.nan]))
		True
		>>> array_equivalent(
		...     np.array([1, np.nan, 2]),
		...     np.array([1, 2, np.nan]))
		False
	**/
	static public function array_equivalent(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic):Bool;
	static public var iNaT : Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetimelike(arr:Dynamic):Dynamic;
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	/**
		return a boolean if the dtypes are equal 
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	/**
		test whether the object is a null datelike, e.g. Nat
		but guard against passing a non-scalar 
	**/
	static public function is_null_datelike_scalar(other:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_string_like_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		
		Returns
		-------
		np.dtype or a pandas dtype
	**/
	static public function na_value_for_dtype(dtype:Dynamic):Dynamic;
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
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
}