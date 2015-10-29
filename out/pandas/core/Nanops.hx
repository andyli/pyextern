/* This file is generated, do not edit! */
package pandas.core;
@:pythonImport("pandas.core.nanops") extern class Nanops {
	static public var _USE_BOTTLENECK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bn_ok_dtype(dt:Dynamic, name:Dynamic):Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_numeric(x:Dynamic):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_counts(mask:Dynamic, axis:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _get_counts_nanvar(mask:Dynamic, axis:Dynamic, ddof:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _get_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		return the correct fill value for the dtype of the values 
	**/
	static public function _get_fill_value(dtype:Dynamic, ?fill_value:Dynamic, ?fill_value_typ:Dynamic):Dynamic;
	/**
		utility to get the values view, mask, dtype
		if necessary copy and mask using the specified fill_value
		copy = True will force the copy 
	**/
	static public function _get_values(values:Dynamic, skipna:Dynamic, ?fill_value:Dynamic, ?fill_value_typ:Dynamic, ?isfinite:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _has_infs(result:Dynamic):Dynamic;
	static public var _int64_max : Dynamic;
	static public function _isfinite(values:Dynamic):Dynamic;
	static public function _maybe_arg_null_out(result:Dynamic, axis:Dynamic, mask:Dynamic, skipna:Dynamic):Dynamic;
	static public function _maybe_null_out(result:Dynamic, axis:Dynamic, mask:Dynamic):Dynamic;
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
	static public function _na_ok_dtype(dtype:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _view_if_needed(values:Dynamic):Dynamic;
	/**
		wrap our results if needed 
	**/
	static public function _wrap_results(result:Dynamic, dtype:Dynamic):Dynamic;
	static public function _zero_out_fperr(arg:Dynamic):Dynamic;
	static public function ensure_float(arr:Dynamic):Dynamic;
	static public function get_corr_func(method:Dynamic):Dynamic;
	static public function is_any_int_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_int_or_datetime_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function make_nancomp(op:Dynamic):Dynamic;
	static public function nanall(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanany(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Returns -1 in the NA case
	**/
	static public function nanargmax(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Returns -1 in the NA case
	**/
	static public function nanargmin(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		a, b: ndarrays
	**/
	static public function nancorr(a:Dynamic, b:Dynamic, ?method:Dynamic, ?min_periods:Dynamic):Dynamic;
	static public function nancov(a:Dynamic, b:Dynamic, ?min_periods:Dynamic):Dynamic;
	static public function naneq(x:Dynamic, y:Dynamic):Dynamic;
	static public function nange(x:Dynamic, y:Dynamic):Dynamic;
	static public function nangt(x:Dynamic, y:Dynamic):Dynamic;
	static public function nankurt(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanle(x:Dynamic, y:Dynamic):Dynamic;
	static public function nanlt(x:Dynamic, y:Dynamic):Dynamic;
	static public function nanmax(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanmean(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanmedian(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanmin(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanne(x:Dynamic, y:Dynamic):Dynamic;
	static public function nanprod(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nansem(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?ddof:Dynamic):Dynamic;
	static public function nanskew(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanstd(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?ddof:Dynamic):Dynamic;
	static public function nansum(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanvar(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?ddof:Dynamic):Dynamic;
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
		Hash table-based unique
	**/
	static public function unique1d(values:Dynamic):Dynamic;
}