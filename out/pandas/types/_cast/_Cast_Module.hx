/* This file is generated, do not edit! */
package pandas.types._cast;
@:pythonImport("pandas.types.cast") extern class _Cast_Module {
	static public var PY3 : Dynamic;
	static public var _DATELIKE_DTYPES : Dynamic;
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
		return a view if copy is False, but
		need to be very careful as the result shape could change! 
	**/
	static public function _astype_nansafe(arr:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		coerce the indexer input array to the smallest dtype possible 
	**/
	static public function _coerce_indexer_dtype(indexer:Dynamic, categories:Dynamic):Dynamic;
	/**
		coerce a string / np.dtype to a dtype 
	**/
	static public function _coerce_to_dtype(dtype:Dynamic):Dynamic;
	/**
		given a dtypes and a result set, coerce the result elements to the
		dtypes
	**/
	static public function _coerce_to_dtypes(result:Dynamic, dtypes:Dynamic):Dynamic;
	static public function _ensure_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find a common data type among the given dtypes.
	**/
	static public function _find_common_type(types:Dynamic):Dynamic;
	/**
		interpret the dtype from a scalar 
	**/
	static public function _infer_dtype_from_scalar(val:Dynamic):Dynamic;
	static public var _int16_max : Dynamic;
	static public var _int32_max : Dynamic;
	static public var _int64_max : Dynamic;
	static public var _int8_max : Dynamic;
	/**
		Change string like dtypes to object for
		``DataFrame.select_dtypes()``.
	**/
	static public function _invalidate_string_dtypes(dtype_set:Dynamic):Dynamic;
	/**
		Convert a python scalar to the appropriate numpy dtype if possible
		This avoids numpy directly converting according to platform preferences
	**/
	static public function _maybe_convert_scalar(values:Dynamic):Dynamic;
	/**
		Convert string-like and string-like array to convert object dtype.
		This is to avoid numpy to handle the array as str dtype.
	**/
	static public function _maybe_convert_string_to_object(values:Dynamic):Dynamic;
	static public function _maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		provide explict type promotion and coercion
		
		Parameters
		----------
		values : the ndarray that we want to maybe upcast
		fill_value : what we want to fill with
		dtype : if None, then use the dtype of the values, else coerce to this type
		copy : if True always make a copy even if no upcast is required
	**/
	static public function _maybe_upcast(values:Dynamic, ?fill_value:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		A safe version of putmask that potentially upcasts the result
		
		Parameters
		----------
		result : ndarray
		    The destination array. This will be mutated in-place if no upcasting is
		    necessary.
		mask : boolean ndarray
		other : ndarray or scalar
		    The source array or value
		
		Returns
		-------
		result : ndarray
		changed : boolean
		    Set to true if the result array was upcasted
	**/
	static public function _maybe_upcast_putmask(result:Dynamic, mask:Dynamic, other:Dynamic):Dynamic;
	static public function _possibly_cast_item(obj:Dynamic, item:Dynamic, dtype:Dynamic):Dynamic;
	/**
		try to cast the array/value to a datetimelike dtype, converting float
		nan to iNaT
	**/
	static public function _possibly_cast_to_datetime(value:Dynamic, dtype:Dynamic, ?errors:Dynamic):Dynamic;
	static public function _possibly_castable(arr:Dynamic):Dynamic;
	/**
		if we have an object dtype, try to coerce dates and/or numbers 
	**/
	static public function _possibly_convert_objects(values:Dynamic, ?convert_dates:Dynamic, ?convert_numeric:Dynamic, ?convert_timedeltas:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		try to do platform conversion, allow ndarray or list here 
	**/
	static public function _possibly_convert_platform(values:Dynamic):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function _possibly_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		we might have a array (or single object) that is datetime like,
		and no dtype is passed don't change the value unless we find a
		datetime/timedelta set
		
		this is pretty strict in that a datetime/timedelta is REQUIRED
		in addition to possible nulls/string likes
		
		ONLY strings are NOT datetimelike
		
		Parameters
		----------
		value : np.array / Series / Index / list-like
		convert_dates : boolean, default False
		   if True try really hard to convert dates (such as datetime.date), other
		   leave inferred dtype 'date' alone
	**/
	static public function _possibly_infer_to_datetimelike(value:Dynamic, ?convert_dates:Dynamic):Dynamic;
	/**
		if we have an object dtype, try to coerce dates and/or numbers 
	**/
	static public function _soft_convert_objects(values:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic, ?coerce:Dynamic, ?copy:Dynamic):Dynamic;
	static public var _string_dtypes : Dynamic;
	static public var iNaT : Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are a datetime with tz array 
	**/
	static public function is_datetimetz(array:Dynamic):Dynamic;
	/**
		return a boolean if the dtypes are equal 
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		if we are a klass that is preserved by the internals
		these are internal klasses that we represent (and don't use a np.array)
	**/
	static public function is_extension_type(value:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
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
	static public var string_types : Dynamic;
}