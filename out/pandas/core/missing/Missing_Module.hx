/* This file is generated, do not edit! */
package pandas.core.missing;
@:pythonImport("pandas.core.missing") extern class Missing_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _backfill_1d_datetime(arr:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function _backfill_2d_datetime(arr:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function _clean_fill_method(method:Dynamic, ?allow_nearest:Dynamic):Dynamic;
	static public function _clean_interp_method(method:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _clean_reindex_fill_method(method:Dynamic):Dynamic;
	static public var _fill_methods : Dynamic;
	static public function _get_fill_func(method:Dynamic):Dynamic;
	static public function _interp_wrapper(f:Dynamic, wrap_dtype:Dynamic, ?na_override:Dynamic):Dynamic;
	/**
		passed off to scipy.interpolate.interp1d. method is scipy's kind.
		Returns an array interpolated at new_x.  Add any new methods to
		the list in _clean_interp_method
	**/
	static public function _interpolate_scipy_wrapper(x:Dynamic, y:Dynamic, new_x:Dynamic, method:Dynamic, ?fill_value:Dynamic, ?bounds_error:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _pad_1d_datetime(arr:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function _pad_2d_datetime(arr:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function backfill_1d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function backfill_2d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Logic for the 1-d interpolation.  The result should be 1-d, inputs
		xvalues and yvalues will each be 1-d arrays of the same length.
		
		Bounds_error is currently hardcoded to False since non-scipy ones don't
		take it as an argumnet.
	**/
	static public function interpolate_1d(xvalues:Dynamic, yvalues:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?fill_value:Dynamic, ?bounds_error:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		perform an actual interpolation of values, values will be make 2-d if
		needed fills inplace, returns the result
	**/
	static public function interpolate_2d(values:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function pad_1d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function pad_2d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
}