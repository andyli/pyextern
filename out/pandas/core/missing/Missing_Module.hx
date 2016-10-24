/* This file is generated, do not edit! */
package pandas.core.missing;
@:pythonImport("pandas.core.missing") extern class Missing_Module {
	static public var _DATELIKE_DTYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convenience function for akima interpolation.
		xi and yi are arrays of values used to approximate some function f,
		with ``yi = f(xi)``.
		
		See `Akima1DInterpolator` for details.
		
		Parameters
		----------
		xi : array_like
		    A sorted list of x-coordinates, of length N.
		yi :  array_like
		    A 1-D array of real values.  `yi`'s length along the interpolation
		    axis must be equal to the length of `xi`. If N-D array, use axis
		    parameter to select correct axis.
		x : scalar or array_like
		    Of length M.
		der : int or list, optional
		    How many derivatives to extract; None for all potentially
		    nonzero derivatives (that is a number equal to the number
		    of points), or a list of derivatives to extract. This number
		    includes the function value as 0th derivative.
		axis : int, optional
		    Axis in the yi array corresponding to the x-coordinate values.
		
		See Also
		--------
		scipy.interpolate.Akima1DInterpolator
		
		Returns
		-------
		y : scalar or array_like
		    The result, of length R or length M or M by R,
	**/
	static public function _akima_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _backfill_1d_datetime(arr:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function _backfill_2d_datetime(arr:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _fill_methods : Dynamic;
	/**
		Convenience function for interpolate.BPoly.from_derivatives
		
		Construct a piecewise polynomial in the Bernstein basis, compatible
		with the specified values and derivatives at breakpoints.
		
		Parameters
		----------
		xi : array_like
		    sorted 1D array of x-coordinates
		yi : array_like or list of array-likes
		    yi[i][j] is the j-th derivative known at xi[i]
		orders : None or int or array_like of ints. Default: None.
		    Specifies the degree of local polynomials. If not None, some
		    derivatives are ignored.
		der : int or list
		    How many derivatives to extract; None for all potentially nonzero
		    derivatives (that is a number equal to the number of points), or a
		    list of derivatives to extract. This numberincludes the function
		    value as 0th derivative.
		 extrapolate : bool, optional
		    Whether to extrapolate to ouf-of-bounds points based on first and last
		    intervals, or to return NaNs. Default: True.
		
		See Also
		--------
		scipy.interpolate.BPoly.from_derivatives
		
		Returns
		-------
		y : scalar or array_like
		    The result, of length R or length M or M by R,
	**/
	static public function _from_derivatives(xi:Dynamic, yi:Dynamic, x:Dynamic, ?order:Dynamic, ?der:Dynamic, ?extrapolate:Dynamic):Dynamic;
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
	static public function clean_fill_method(method:Dynamic, ?allow_nearest:Dynamic):Dynamic;
	static public function clean_interp_method(method:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function clean_reindex_fill_method(method:Dynamic):Dynamic;
	/**
		if this is a reversed op, then flip x,y
		
		if we have an integer value (or array in y)
		and we have 0's, fill them with the fill,
		return the result
		
		mask the nan's from x
	**/
	static public function fill_zeros(result:Dynamic, x:Dynamic, y:Dynamic, name:Dynamic, fill:Dynamic):Dynamic;
	static public function get_fill_func(method:Dynamic):Dynamic;
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
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		numpy doesn't like to compare numeric arrays vs scalar string-likes
		
		return a boolean result if this is the case for a,b or b,a
	**/
	static public function is_numeric_v_string_like(a:Dynamic, b:Dynamic):Dynamic;
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
		Return a masking array of same size/shape as arr
		with entries equaling any member of values_to_mask set to True
	**/
	static public function mask_missing(arr:Dynamic, values_to_mask:Dynamic):Dynamic;
	static public function pad_1d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function pad_2d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}