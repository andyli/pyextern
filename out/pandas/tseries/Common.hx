/* This file is generated, do not edit! */
package pandas.tseries;
@:pythonImport("pandas.tseries.common") extern class Common {
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
	/**
		provide concatenation of an datetimelike array of arrays each of which is a single
		M8[ns], datetimet64[ns, tz] or m8[ns] dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_compat(to_concat:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Parameters
		----------
		l : list of arrays
		
		Returns
		-------
		a set of kinds that exist in this list of arrays
	**/
	static public function get_dtype_kinds(l:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return if we are datetime arraylike / DatetimeIndex 
	**/
	static public function is_datetime_arraylike(arr:Dynamic):Dynamic;
	/**
		return a boolean if we can be successfully converted to a datetimelike 
	**/
	static public function is_datetimelike(data:Dynamic):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	/**
		return if we are period arraylike / PeriodIndex 
	**/
	static public function is_period_arraylike(arr:Dynamic):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return a DelegatedClass of a Series that is datetimelike
		  (e.g. datetime64[ns],timedelta64[ns] dtype or a Series of Periods)
		raise TypeError if this is not possible.
		
		Parameters
		----------
		data : Series
		copy : boolean, default False
		       copy the input data
		
		Returns
		-------
		DelegatedClass
	**/
	static public function maybe_to_datetimelike(data:Dynamic, ?copy:Dynamic):Dynamic;
}