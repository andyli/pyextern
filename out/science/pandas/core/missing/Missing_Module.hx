/* This file is generated, do not edit! */
package pandas.core.missing;
@:pythonImport("pandas.core.missing") extern class Missing_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Axis(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var F : Dynamic;
	static public var NP_METHODS : Dynamic;
	static public var SP_METHODS : Dynamic;
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
		Convenience function for akima interpolation.
		xi and yi are arrays of values used to approximate some function f,
		with ``yi = f(xi)``.
		
		See `Akima1DInterpolator` for details.
		
		Parameters
		----------
		xi : array-like
		    A sorted list of x-coordinates, of length N.
		yi : array-like
		    A 1-D array of real values.  `yi`'s length along the interpolation
		    axis must be equal to the length of `xi`. If N-D array, use axis
		    parameter to select correct axis.
		x : scalar or array-like
		    Of length M.
		der : int, optional
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
		y : scalar or array-like
		    The result, of length R or length M or M by R,
	**/
	static public function _akima_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _backfill_1d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic):Dynamic;
	static public function _backfill_2d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Convenience function for cubic spline data interpolator.
		
		See `scipy.interpolate.CubicSpline` for details.
		
		Parameters
		----------
		xi : array-like, shape (n,)
		    1-d array containing values of the independent variable.
		    Values must be real, finite and in strictly increasing order.
		yi : array-like
		    Array containing values of the dependent variable. It can have
		    arbitrary number of dimensions, but the length along ``axis``
		    (see below) must match the length of ``x``. Values must be finite.
		x : scalar or array-like, shape (m,)
		axis : int, optional
		    Axis along which `y` is assumed to be varying. Meaning that for
		    ``x[i]`` the corresponding values are ``np.take(y, i, axis=axis)``.
		    Default is 0.
		bc_type : string or 2-tuple, optional
		    Boundary condition type. Two additional equations, given by the
		    boundary conditions, are required to determine all coefficients of
		    polynomials on each segment [2]_.
		    If `bc_type` is a string, then the specified condition will be applied
		    at both ends of a spline. Available conditions are:
		    * 'not-a-knot' (default): The first and second segment at a curve end
		      are the same polynomial. It is a good default when there is no
		      information on boundary conditions.
		    * 'periodic': The interpolated functions is assumed to be periodic
		      of period ``x[-1] - x[0]``. The first and last value of `y` must be
		      identical: ``y[0] == y[-1]``. This boundary condition will result in
		      ``y'[0] == y'[-1]`` and ``y''[0] == y''[-1]``.
		    * 'clamped': The first derivative at curves ends are zero. Assuming
		      a 1D `y`, ``bc_type=((1, 0.0), (1, 0.0))`` is the same condition.
		    * 'natural': The second derivative at curve ends are zero. Assuming
		      a 1D `y`, ``bc_type=((2, 0.0), (2, 0.0))`` is the same condition.
		    If `bc_type` is a 2-tuple, the first and the second value will be
		    applied at the curve start and end respectively. The tuple values can
		    be one of the previously mentioned strings (except 'periodic') or a
		    tuple `(order, deriv_values)` allowing to specify arbitrary
		    derivatives at curve ends:
		    * `order`: the derivative order, 1 or 2.
		    * `deriv_value`: array-like containing derivative values, shape must
		      be the same as `y`, excluding ``axis`` dimension. For example, if
		      `y` is 1D, then `deriv_value` must be a scalar. If `y` is 3D with
		      the shape (n0, n1, n2) and axis=2, then `deriv_value` must be 2D
		      and have the shape (n0, n1).
		extrapolate : {bool, 'periodic', None}, optional
		    If bool, determines whether to extrapolate to out-of-bounds points
		    based on first and last intervals, or to return NaNs. If 'periodic',
		    periodic extrapolation is used. If None (default), ``extrapolate`` is
		    set to 'periodic' for ``bc_type='periodic'`` and to True otherwise.
		
		See Also
		--------
		scipy.interpolate.CubicHermiteSpline
		
		Returns
		-------
		y : scalar or array-like
		    The result, of shape (m,)
		
		References
		----------
		.. [1] `Cubic Spline Interpolation
		        <https://en.wikiversity.org/wiki/Cubic_Spline_Interpolation>`_
		        on Wikiversity.
		.. [2] Carl de Boor, "A Practical Guide to Splines", Springer-Verlag, 1978.
	**/
	static public function _cubicspline_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?axis:Dynamic, ?bc_type:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Wrapper to handle datetime64 and timedelta64 dtypes.
	**/
	static public function _datetimelike_compat(func:Dynamic):Dynamic;
	static public var _fill_methods : Dynamic;
	static public function _fillna_prep(values:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Convenience function for interpolate.BPoly.from_derivatives.
		
		Construct a piecewise polynomial in the Bernstein basis, compatible
		with the specified values and derivatives at breakpoints.
		
		Parameters
		----------
		xi : array-like
		    sorted 1D array of x-coordinates
		yi : array-like or list of array-likes
		    yi[i][j] is the j-th derivative known at xi[i]
		order: None or int or array-like of ints. Default: None.
		    Specifies the degree of local polynomials. If not None, some
		    derivatives are ignored.
		der : int or list
		    How many derivatives to extract; None for all potentially nonzero
		    derivatives (that is a number equal to the number of points), or a
		    list of derivatives to extract. This number includes the function
		    value as 0th derivative.
		 extrapolate : bool, optional
		    Whether to extrapolate to ouf-of-bounds points based on first and last
		    intervals, or to return NaNs. Default: True.
		
		See Also
		--------
		scipy.interpolate.BPoly.from_derivatives
		
		Returns
		-------
		y : scalar or array-like
		    The result, of length R or length M or M by R.
	**/
	static public function _from_derivatives(xi:Dynamic, yi:Dynamic, x:Dynamic, ?order:Dynamic, ?der:Dynamic, ?extrapolate:Dynamic):Dynamic;
	/**
		Convert Index to ndarray of indices to pass to NumPy/SciPy.
	**/
	static public function _index_to_interp_indices(index:Dynamic, method:Dynamic):Dynamic;
	/**
		Get indexers of values that won't be filled
		because they exceed the limits.
		
		Parameters
		----------
		invalid : np.ndarray[bool]
		fw_limit : int or None
		    forward limit to index
		bw_limit : int or None
		    backward limit to index
		
		Returns
		-------
		set of indexers
		
		Notes
		-----
		This is equivalent to the more readable, but slower
		
		.. code-block:: python
		
		    def _interp_limit(invalid, fw_limit, bw_limit):
		        for x in np.where(invalid)[0]:
		            if invalid[max(0, x - fw_limit):x + bw_limit + 1].all():
		                yield x
	**/
	static public function _interp_limit(invalid:Dynamic, fw_limit:Dynamic, bw_limit:Dynamic):Dynamic;
	/**
		Logic for the 1-d interpolation.  The input
		indices and yvalues will each be 1-d arrays of the same length.
		
		Bounds_error is currently hardcoded to False since non-scipy ones don't
		take it as an argument.
		
		Notes
		-----
		Fills 'yvalues' in-place.
	**/
	static public function _interpolate_1d(indices:Dynamic, yvalues:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?fill_value:Dynamic, ?bounds_error:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Column-wise application of _interpolate_1d.
		
		Notes
		-----
		Alters 'data' in-place.
		
		The signature does differ from _interpolate_1d because it only
		includes what is needed for Block.interpolate.
	**/
	static public function _interpolate_2d_with_fill(data:Dynamic, index:Dynamic, axis:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?fill_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Passed off to scipy.interpolate.interp1d. method is scipy's kind.
		Returns an array interpolated at new_x.  Add any new methods to
		the list in _clean_interp_method.
	**/
	static public function _interpolate_scipy_wrapper(x:Dynamic, y:Dynamic, new_x:Dynamic, method:Dynamic, ?fill_value:Dynamic, ?bounds_error:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply interpolation and limit_area logic to values along a to-be-specified axis.
		
		Parameters
		----------
		values: np.ndarray
		    Input array.
		method: str
		    Interpolation method. Could be "bfill" or "pad"
		limit: int, optional
		    Index limit on interpolation.
		limit_area: str
		    Limit area for interpolation. Can be "inside" or "outside"
		
		Notes
		-----
		Modifies values in-place.
	**/
	static public function _interpolate_with_limit_area(values:Dynamic, method:Dynamic, limit:Dynamic, limit_area:Dynamic):Dynamic;
	static public function _pad_1d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic):Dynamic;
	static public function _pad_2d(values:Dynamic, ?limit:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		[True, True, False, True, False], 2 ->
		
		[
		    [True,  True],
		    [True, False],
		    [False, True],
		    [True, False],
		]
	**/
	static public function _rolling_window(a:Dynamic, window:Dynamic):Dynamic;
	static public var annotations : Dynamic;
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
		Validate the size of the values passed to ExtensionArray.fillna.
	**/
	static public function check_value_size(value:Dynamic, mask:Dynamic, length:Dynamic):Dynamic;
	static public function clean_fill_method(method:Dynamic, ?allow_nearest:Dynamic):Dynamic;
	static public function clean_interp_method(method:Dynamic, index:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function clean_reindex_fill_method(method:Dynamic):Dynamic;
	/**
		Retrieves the index of the first valid value.
		
		Parameters
		----------
		values : ndarray or ExtensionArray
		how : {'first', 'last'}
		    Use this parameter to change between the first or last valid index.
		
		Returns
		-------
		int or None
	**/
	static public function find_valid_index(values:Dynamic, how:Dynamic):Dynamic;
	static public function get_fill_func(method:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Import an optional dependency.
		
		By default, if a dependency is missing an ImportError with a nice
		message will be raised. If a dependency is present, but too old,
		we raise.
		
		Parameters
		----------
		name : str
		    The module name.
		extra : str
		    Additional text to include in the ImportError message.
		errors : str {'raise', 'warn', 'ignore'}
		    What to do when a dependency is not found or its version is too old.
		
		    * raise : Raise an ImportError
		    * warn : Only applicable when a module's version is to old.
		      Warns that the version is too old and returns None
		    * ignore: If the module is not installed, return None, otherwise,
		      return the module, even if the version is too old.
		      It's expected that users validate the version locally when
		      using ``errors="ignore"`` (see. ``io/html.py``)
		min_version : str, default None
		    Specify a minimum version that is different from the global pandas
		    minimum version required.
		Returns
		-------
		maybe_module : Optional[ModuleType]
		    The imported module, when found and the version is correct.
		    None is returned when the package is not found and `errors`
		    is False, or when the package's version is too old and `errors`
		    is ``'warn'``.
	**/
	static public function import_optional_dependency(name:Dynamic, ?extra:Dynamic, ?errors:Dynamic, ?min_version:Dynamic):Dynamic;
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
		Perform an actual interpolation of values, values will be make 2-d if
		needed fills inplace, returns the result.
		
		Parameters
		----------
		values: np.ndarray
		    Input array.
		method: str, default "pad"
		    Interpolation method. Could be "bfill" or "pad"
		axis: 0 or 1
		    Interpolation axis
		limit: int, optional
		    Index limit on interpolation.
		limit_area: str, optional
		    Limit area for interpolation. Can be "inside" or "outside"
		
		Notes
		-----
		Modifies values in-place.
	**/
	static public function interpolate_2d(values:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?limit_area:Dynamic):Dynamic;
	/**
		Wrapper to dispatch to either interpolate_2d or _interpolate_2d_with_fill.
		
		Notes
		-----
		Alters 'data' in-place.
	**/
	static public function interpolate_array_2d(data:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?index:Dynamic, ?limit:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?fill_value:Dynamic, ?coerce:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return a masking array of same size/shape as arr
		with entries equaling any member of values_to_mask set to True
		
		Parameters
		----------
		arr : ArrayLike
		values_to_mask: list, tuple, or scalar
		
		Returns
		-------
		np.ndarray[bool]
	**/
	static public function mask_missing(arr:Dynamic, values_to_mask:Dynamic):Dynamic;
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
	static public var npt : Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}