/* This file is generated, do not edit! */
package pandas._libs.lib;
@:pythonImport("pandas._libs.lib") extern class Lib_Module {
	static public var _TYPE_MAP : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Perform an element by element comparison on 1-d object arrays
		taking into account nan positions.
	**/
	static public function array_equivalent_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts a 1D array of date-like values to a numpy array of either:
		    1) datetime64[ns] data
		    2) datetime.datetime objects, if OutOfBoundsDatetime or TypeError
		       is encountered
		
		Also returns a pytz.FixedOffset if an array of strings with the same
		timezone offset is passed and utc=True is not passed. Otherwise, None
		is returned
		
		Handles datetime.date, datetime.datetime, np.datetime64 objects, numeric,
		strings
		
		Parameters
		----------
		values : ndarray of object
		     date-like objects to convert
		errors : str, default 'raise'
		     error behavior when parsing
		dayfirst : bool, default False
		     dayfirst parsing behavior when encountering datetime strings
		yearfirst : bool, default False
		     yearfirst parsing behavior when encountering datetime strings
		utc : bool, default False
		     indicator whether the dates should be UTC
		require_iso8601 : bool, default False
		     indicator whether the datetime string should be iso8601
		allow_mixed : bool, default False
		    Whether to allow mixed datetimes and integers.
		
		Returns
		-------
		np.ndarray
		    May be datetime64[ns] or object dtype
		tzinfo or None
	**/
	static public function array_to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function astype_intsafe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function count_level_2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dicts_to_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Faster version for:
		
		first = types[0]
		all(is_dtype_equal(first, t) for t in types[1:])
		
		And assuming all elements in the list are np.dtype/ExtensionDtype objects
		
		See timings at https://github.com/pandas-dev/pandas/pull/44594
	**/
	static public function dtypes_all_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a new numpy array with object dtype and only strings and na values.
		
		Parameters
		----------
		arr : array-like
		    The values to be converted to str, if needed.
		na_value : Any, default np.nan
		    The value to use for na. For example, np.nan or pd.NA.
		convert_na_value : bool, default True
		    If False, existing na values will be used unchanged in the new array.
		copy : bool, default True
		    Whether to ensure that a new array is returned.
		skipna : bool, default True
		    Whether or not to coerce nulls to their stringified form
		    (e.g. if False, NaN becomes 'nan').
		
		Returns
		-------
		np.ndarray[object]
		    An array with the input array's elements casted to str or nan-like.
	**/
	static public function ensure_string_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check for `arr == key`, treating all values as not-equal to pd.NA.
		
		key is assumed to have `not isna(key)`
	**/
	static public function eq_NA_compat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_multiget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Generate a list of unique values from a list of arrays.
		
		Parameters
		----------
		list : array-like
		    List of array-like objects.
		sort : bool
		    Whether or not to sort the resulting unique list.
		
		Returns
		-------
		list of unique values
	**/
	static public function fast_unique_multiple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_unique_multiple_list(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Generate a list of unique values from a generator of lists.
		
		Parameters
		----------
		gen : generator object
		    Generator of lists from which the unique list is created.
		sort : bool
		    Whether or not to sort the resulting unique list.
		
		Returns
		-------
		list of unique values
	**/
	static public function fast_unique_multiple_list_gen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		For zipping multiple ndarrays into an ndarray of tuples.
	**/
	static public function fast_zip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Int64 (datetime64) version of generic python version in ``groupby.py``.
	**/
	static public function generate_bins_dt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function generate_slices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Argsort for a single level of a multi-index, keeping the order of higher
		levels unchanged. `starts` points to starts of same-key indices w.r.t
		to leading levels; equivalent to:
		    np.hstack([codes[starts[i]:starts[i+1]].argsort(kind='mergesort')
		        + starts[i] for i in range(len(starts) - 1)])
		
		Parameters
		----------
		codes : np.ndarray[int64_t, ndim=1]
		starts : np.ndarray[intp, ndim=1]
		
		Returns
		-------
		np.ndarray[np.int, ndim=1]
	**/
	static public function get_level_sorter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Reverse indexing operation.
		
		Given `indexer`, make `indexer_inv` of it, such that::
		
		    indexer_inv[indexer[x]] = x
		
		Parameters
		----------
		indexer : np.ndarray[np.intp]
		length : int
		
		Returns
		-------
		np.ndarray[np.intp]
		
		Notes
		-----
		If indexer is not unique, only first occurrence is accounted.
	**/
	static public function get_reverse_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function has_infs(arr:Dynamic):Dynamic;
	static public var i8max : Dynamic;
	/**
		Parameters
		----------
		index : ndarray[intp]
		labels : ndarray[int64]
		keys : list
		sorted_labels : list[ndarray[int64]]
	**/
	static public function indices_fast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Infer if we have a datetime or timedelta array.
		- date: we have *only* date and maybe strings, nulls
		- datetime: we have *only* datetimes and maybe strings, nulls
		- timedelta: we have *only* timedeltas and maybe strings, nulls
		- nat: we do not have *any* date, datetimes or timedeltas, but do have
		  at least a NaT
		- mixed: other objects (strings, a mix of tz-aware and tz-naive, or
		                        actual objects)
		
		Parameters
		----------
		arr : ndarray[object]
		
		Returns
		-------
		str: {datetime, timedelta, date, nat, mixed}
		bool
	**/
	static public function infer_datetimelike_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Efficiently infer the type of a passed val, or list-like
		array of values. Return a string describing the type.
		
		Parameters
		----------
		value : scalar, list, ndarray, or pandas type
		skipna : bool, default True
		    Ignore NaN values when inferring the type.
		
		Returns
		-------
		str
		    Describing the common type of the input data.
		Results can include:
		
		- string
		- bytes
		- floating
		- integer
		- mixed-integer
		- mixed-integer-float
		- decimal
		- complex
		- categorical
		- boolean
		- datetime64
		- datetime
		- date
		- timedelta64
		- timedelta
		- time
		- period
		- mixed
		- unknown-array
		
		Raises
		------
		TypeError
		    If ndarray-like but cannot infer the dtype
		
		Notes
		-----
		- 'mixed' is the catchall for anything that is not otherwise
		  specialized
		- 'mixed-integer-float' are floats and integers
		- 'mixed-integer' are integers mixed with non-integers
		- 'unknown-array' is the catchall for something that *is* an array (has
		  a dtype attribute), but has a dtype unknown to pandas (e.g. external
		  extension array)
		
		Examples
		--------
		>>> import datetime
		>>> infer_dtype(['foo', 'bar'])
		'string'
		
		>>> infer_dtype(['a', np.nan, 'b'], skipna=True)
		'string'
		
		>>> infer_dtype(['a', np.nan, 'b'], skipna=False)
		'mixed'
		
		>>> infer_dtype([b'foo', b'bar'])
		'bytes'
		
		>>> infer_dtype([1, 2, 3])
		'integer'
		
		>>> infer_dtype([1, 2, 3.5])
		'mixed-integer-float'
		
		>>> infer_dtype([1.0, 2.0, 3.5])
		'floating'
		
		>>> infer_dtype(['a', 1])
		'mixed-integer'
		
		>>> infer_dtype([Decimal(1), Decimal(2.0)])
		'decimal'
		
		>>> infer_dtype([True, False])
		'boolean'
		
		>>> infer_dtype([True, False, np.nan])
		'boolean'
		
		>>> infer_dtype([pd.Timestamp('20130101')])
		'datetime'
		
		>>> infer_dtype([datetime.date(2013, 1, 1)])
		'date'
		
		>>> infer_dtype([np.datetime64('2013-01-01')])
		'datetime64'
		
		>>> infer_dtype([datetime.timedelta(0, 1, 1)])
		'timedelta'
		
		>>> infer_dtype(pd.Series(list('aabc')).astype('category'))
		'categorical'
	**/
	static public function infer_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Should we treat these as levels of a MultiIndex, as opposed to Index items?
	**/
	static public function is_all_arraylike(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if this list contains only bool or np.bool_ objects.
		
		This is appreciably faster than checking `np.array(obj).dtype == bool`
		
		obj1 = [True, False] * 100
		obj2 = obj1 * 100
		obj3 = obj2 * 100
		obj4 = [True, None] + obj1
		
		for obj in [obj1, obj2, obj3, obj4]:
		    %timeit is_bool_list(obj)
		    %timeit np.array(obj).dtype.kind == "b"
		
		340 ns ± 8.22 ns
		8.78 µs ± 253 ns
		
		28.8 µs ± 704 ns
		813 µs ± 17.8 µs
		
		3.4 ms ± 168 µs
		78.4 ms ± 1.05 ms
		
		48.1 ns ± 1.26 ns
		8.1 µs ± 198 ns
	**/
	static public function is_bool_list(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is complex.
		
		Returns
		-------
		bool
	**/
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_date_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_datetime64_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_datetime_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check values have the same tzinfo attribute.
		Doesn't check values are datetime-like types.
	**/
	static public function is_datetime_with_singletz_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_decimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is float.
		
		Returns
		-------
		bool
	**/
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is this an ndarray of Interval (or np.nan) with a single dtype?
	**/
	static public function is_interval_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return True if given object is Period.
		
		Returns
		-------
		bool
	**/
	static public function is_period(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function is_string_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_time_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Infer with timedeltas and/or nat/none.
	**/
	static public function is_timedelta_or_timedelta64_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If the value is a zerodim array, return the item it contains.
		
		Parameters
		----------
		val : object
		
		Returns
		-------
		object
		
		Examples
		--------
		>>> item_from_zerodim(1)
		1
		>>> item_from_zerodim('foobar')
		'foobar'
		>>> item_from_zerodim(np.array(1))
		1
		>>> item_from_zerodim(np.array([1]))
		array([1])
	**/
	static public function item_from_zerodim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Substitute for np.vectorize with pandas-friendly dtype inference.
		
		Parameters
		----------
		arr : ndarray
		f : function
		convert : bint
		ignore_na : bint
		    If True, NA values will not have f applied
		
		Returns
		-------
		np.ndarray
	**/
	static public function map_infer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Substitute for np.vectorize with pandas-friendly dtype inference.
		
		Parameters
		----------
		arr : ndarray
		f : function
		mask : ndarray
		    uint8 dtype ndarray indicating values not to apply `f` to.
		convert : bool, default True
		    Whether to call `maybe_convert_objects` on the resulting ndarray
		na_value : Any, optional
		    The result value to use for masked values. By default, the
		    input value is used
		dtype : numpy.dtype
		    The numpy dtype to use for the result ndarray.
		
		Returns
		-------
		np.ndarray
	**/
	static public function map_infer_mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function maybe_booleans_to_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert object array to a numeric array if possible.
		
		Parameters
		----------
		values : ndarray[object]
		    Array of object elements to convert.
		na_values : set
		    Set of values that should be interpreted as NaN.
		convert_empty : bool, default True
		    If an empty array-like object is encountered, whether to interpret
		    that element as NaN or not. If set to False, a ValueError will be
		    raised if such an element is encountered and 'coerce_numeric' is False.
		coerce_numeric : bool, default False
		    If initial attempts to convert to numeric have failed, whether to
		    force conversion to numeric via alternative methods or by setting the
		    element to NaN. Otherwise, an Exception will be raised when such an
		    element is encountered.
		
		    This boolean also has an impact on how conversion behaves when a
		    numeric array has no suitable numerical dtype to return (i.e. uint64,
		    int32, uint8). If set to False, the original object array will be
		    returned. Otherwise, a ValueError will be raised.
		convert_to_masked_nullable : bool, default False
		    Whether to return a mask for the converted values. This also disables
		    upcasting for ints with nulls to float64.
		Returns
		-------
		np.ndarray
		    Array of converted object values to numerical ones.
		
		Optional[np.ndarray]
		    If convert_to_masked_nullable is True,
		    returns a boolean mask for the converted values, otherwise returns None.
	**/
	static public function maybe_convert_numeric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Type inference function-- convert object array to proper dtype
		
		Parameters
		----------
		objects : ndarray[object]
		    Array of object elements to convert.
		try_float : bool, default False
		    If an array-like object contains only float or NaN values is
		    encountered, whether to convert and return an array of float dtype.
		safe : bool, default False
		    Whether to upcast numeric type (e.g. int cast to float). If set to
		    True, no upcasting will be performed.
		convert_datetime : bool, default False
		    If an array-like object contains only datetime values or NaT is
		    encountered, whether to convert and return an array of M8[ns] dtype.
		convert_timedelta : bool, default False
		    If an array-like object contains only timedelta values or NaT is
		    encountered, whether to convert and return an array of m8[ns] dtype.
		convert_period : bool, default False
		    If an array-like object contains only (homogeneous-freq) Period values
		    or NaT, whether to convert and return a PeriodArray.
		convert_interval : bool, default False
		    If an array-like object contains only Interval objects (with matching
		    dtypes and closedness) or NaN, whether to convert to IntervalArray.
		convert_to_nullable_integer : bool, default False
		    If an array-like object contains only integer values (and NaN) is
		    encountered, whether to convert and return an IntegerArray.
		dtype_if_all_nat : np.dtype, ExtensionDtype, or None, default None
		    Dtype to cast to if we have all-NaT.
		
		Returns
		-------
		np.ndarray or ExtensionArray
		    Array of converted object values to more specific dtypes if applicable.
	**/
	static public function maybe_convert_objects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function maybe_indices_to_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the memory usage of an object array in bytes.
		
		Does not include the actual bytes of the pointers
	**/
	static public function memory_usage_of_objects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var no_default : Dynamic;
	/**
		Convert a list of lists into an object array.
		
		Parameters
		----------
		rows : 2-d array (N, K)
		    List of lists to be converted into an array.
		min_width : int
		    Minimum width of the object array. If a list
		    in `rows` contains fewer than `width` elements,
		    the remaining elements in the corresponding row
		    will all be `NaN`.
		
		Returns
		-------
		np.ndarray[object, ndim=2]
	**/
	static public function to_object_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert a list of tuples into an object array. Any subclass of
		tuple in `rows` will be casted to tuple.
		
		Parameters
		----------
		rows : 2-d array (N, K)
		    List of tuples to be converted into an array.
		
		Returns
		-------
		np.ndarray[object, ndim=2]
	**/
	static public function to_object_array_tuples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function tuples_to_object_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var u8max : Dynamic;
}