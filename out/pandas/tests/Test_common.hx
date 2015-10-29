/* This file is generated, do not edit! */
package pandas.tests;
@:pythonImport("pandas.tests.test_common") extern class Test_common {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _multiprocess_can_split_ : Dynamic;
	/**
		True if two arrays, left and right, have equal non-NaN elements, and NaNs in
		corresponding locations.  False otherwise. It is assumed that left and right
		are NumPy arrays of the same dtype. The behavior of this function
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
	static public function array_equivalent(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Check that the expression is true.
	**/
	static public function assert_true(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		Asia/Hong_Kong
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	static public var iNaT : Dynamic;
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
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function test_adjoin():Dynamic;
	static public function test_all_not_none():Dynamic;
	static public function test_any_none():Dynamic;
	static public function test_array_equivalent():Dynamic;
	static public function test_banner():Dynamic;
	static public function test_datetimeindex_from_empty_datetime64_array():Dynamic;
	static public function test_dict_compat():Dynamic;
	static public function test_difference():Dynamic;
	static public function test_downcast_conv():Dynamic;
	static public function test_ensure_int32():Dynamic;
	static public function test_ensure_platform_int():Dynamic;
	static public function test_get_callable_name():Dynamic;
	static public function test_groupby():Dynamic;
	static public function test_indent():Dynamic;
	static public function test_intersection():Dynamic;
	static public function test_is_hashable():Dynamic;
	static public function test_is_list_like():Dynamic;
	static public function test_is_re():Dynamic;
	static public function test_is_recompilable():Dynamic;
	static public function test_is_sequence():Dynamic;
	static public function test_isnull():Dynamic;
	static public function test_isnull_datetime():Dynamic;
	static public function test_isnull_lists():Dynamic;
	static public function test_isnull_nat():Dynamic;
	static public function test_iterpairs():Dynamic;
	static public function test_map_indices_py():Dynamic;
	static public function test_maybe_match_name():Dynamic;
	static public function test_mut_exclusive():Dynamic;
	static public function test_nan_to_nat_conversions():Dynamic;
	static public function test_notnull():Dynamic;
	static public function test_possibly_convert_objects_copy():Dynamic;
	static public function test_random_state():Dynamic;
	static public function test_repr_binary_type():Dynamic;
	static public function test_split_ranges():Dynamic;
	static public function test_union():Dynamic;
	static public function u(s:Dynamic):Dynamic;
}