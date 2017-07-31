/* This file is generated, do not edit! */
package pandas.lib;
@:pythonImport("pandas.lib") extern class Lib_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function apply_frame_axis0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		perform an element by element comparion on 1-d object arrays
		taking into account nan positions 
	**/
	static public function array_equivalent_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function array_to_timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arrmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function astype_intsafe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function astype_str(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function astype_unicode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function checknull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function checknull_old(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Utility used in pandas.core.index._ensure_index
	**/
	static public function clean_index_list(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		replace comma separated json with line feeds, paying special attention
		to quotes & brackets
	**/
	static public function convert_json_to_lines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function convert_sql_column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function convert_timestamps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function count_level_2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dicts_to_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function downcast_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_multiget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_unique_multiple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_unique_multiple_list(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Generate a list of unique values from a generator of lists.
		
		Parameters
		----------
		gen : generator object
		    A generator of lists from which the unique list is created
		sort : boolean
		    Whether or not to sort the resulting unique list
		
		Returns
		-------
		unique_list : list of unique values
	**/
	static public function fast_unique_multiple_list_gen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		For zipping multiple ndarrays into an ndarray of tuples
	**/
	static public function fast_zip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		For zipping multiple ndarrays into an ndarray of tuples
	**/
	static public function fast_zip_fillna(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Int64 (datetime64) version of generic python version in groupby.py
	**/
	static public function generate_bins_dt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function generate_slices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Enumerate contiguous runs of integers in ndarray.
		
		Iterate over elements of `blknos` yielding ``(blkno, slice(start, stop))``
		pairs for each contiguous run found.
		
		If `group` is True and there is more than one run for a certain blkno,
		``(blkno, array)`` with an array containing positions of all elements equal
		to blkno.
		
		Returns
		-------
		iter : iterator of (int, slice or array)
	**/
	static public function get_blkno_indexers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		argsort for a single level of a multi-index, keeping the order of higher
		levels unchanged. `starts` points to starts of same-key indices w.r.t
		to leading levels; equivalent to:
		    np.hstack([label[starts[i]:starts[i+1]].argsort(kind='mergesort')
		        + starts[i] for i in range(len(starts) - 1)])
	**/
	static public function get_level_sorter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Reverse indexing operation.
		
		Given `indexer`, make `indexer_inv` of it, such that::
		
		    indexer_inv[indexer[x]] = x
		
		.. note:: If indexer is not unique, only first occurrence is accounted.
	**/
	static public function get_reverse_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_timezone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function has_infs_f4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function has_infs_f8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	static public function indexer_as_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function indices_fast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		infer if we have a datetime or timedelta array
		- date: we have *only* date and maybe strings, nulls
		- datetime: we have *only* datetimes and maybe strings, nulls
		- timedelta: we have *only* timedeltas and maybe strings, nulls
		- nat: we do not have *any* date, datetimes or timedeltas, but do have
		  at least a NaT
		- mixed: other objects (strings or actual objects)
		
		Parameters
		----------
		arr : object array
		
		Returns
		-------
		string: {datetime, timedelta, date, nat, mixed}
	**/
	static public function infer_datetimelike_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Effeciently infer the type of a passed val, or list-like
		array of values. Return a string describing the type.
		
		Parameters
		----------
		value : scalar, list, ndarray, or pandas type
		
		Returns
		-------
		string describing the common type of the input data.
		Results can include:
		
		- string
		- unicode
		- bytes
		- floating
		- integer
		- mixed-integer
		- mixed-integer-float
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
		
		Raises
		------
		TypeError if ndarray-like but cannot infer the dtype
		
		Notes
		-----
		- 'mixed' is the catchall for anything that is not otherwise
		  specialized
		- 'mixed-integer-float' are floats and integers
		- 'mixed-integer' are integers mixed with non-integers
		
		Examples
		--------
		>>> infer_dtype(['foo', 'bar'])
		'string'
		
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
		
		>>> infer_dtype([True, False])
		'boolean'
		
		>>> infer_dtype([True, False, np.nan])
		'mixed'
		
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
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bytes_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_float_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_interval_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_lexsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_numpy_prior_1_6_2 : Dynamic;
	/**
		Return a boolean if this is a Period object 
	**/
	static public function is_period(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_period_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_string_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_time_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_timedelta64_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_timedelta_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		infer with timedeltas and/or nat/none 
	**/
	static public function is_timedelta_or_timedelta64_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_unicode_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for NaN and return result as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or bool
		    For scalar input, the result is a new boolean with value True if
		    the input is NaN; otherwise the value is False.
		
		    For array input, the result is a boolean array of the same
		    dimensions as the input and the values are True if the
		    corresponding element of the input is NaN; otherwise the values are
		    False.
		
		See Also
		--------
		isinf, isneginf, isposinf, isfinite, isnat
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		
		Examples
		--------
		>>> np.isnan(np.nan)
		True
		>>> np.isnan(np.inf)
		False
		>>> np.isnan([np.log(-1.),1.,np.log(0)])
		array([ True, False, False], dtype=bool)
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isneginf_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isnullobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isnullobj2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isnullobj2d_old(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isnullobj_old(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isposinf_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		- instances of decimal.Decimal
		- Interval
	**/
	static public function isscalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If the value is a zerodim array, return the item it contains.
		
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
		Convert list to object ndarray. Seriously can't believe
		I had to write this function.
	**/
	static public function list_to_object_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function lookup_values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Produce a dict mapping the values of the input array to their respective
		locations.
		
		Example:
		    array(['hi', 'there']) --> {'hi' : 0 , 'there' : 1}
		
		Better to do this with Cython because of the enormous speed boost.
	**/
	static public function map_indices_list(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Substitute for np.vectorize with pandas-friendly dtype inference
		
		Parameters
		----------
		arr : ndarray
		f : function
		
		Returns
		-------
		mapped : ndarray
	**/
	static public function map_infer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Substitute for np.vectorize with pandas-friendly dtype inference
		
		Parameters
		----------
		arr : ndarray
		f : function
		
		Returns
		-------
		mapped : ndarray
	**/
	static public function map_infer_mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return the maximum size of elements in a 1-dim string array 
	**/
	static public function max_len_string_array(arr:Dynamic):Dynamic;
	static public function maybe_booleans_to_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function maybe_convert_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert object array to a numeric array if possible.
		
		Parameters
		----------
		values : ndarray
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
		
		Returns
		-------
		numeric_array : array of converted object values to numerical ones
	**/
	static public function maybe_convert_numeric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Type inference function-- convert object array to proper dtype
	**/
	static public function maybe_convert_objects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function maybe_indices_to_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return the memory usage of an object array in bytes,
		does not include the actual bytes of the pointers 
	**/
	static public function memory_usage_of_objects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var pandas_null : Dynamic;
	/**
		Parameters
		-----------
		arr : NDFrame object
		f : function
		axis : integer axis
		dummy : type of reduced output (series)
		labels : Index or None
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function row_bool_subset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function row_bool_subset_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function sanitize_objects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function scalar_binop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function scalar_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert slice to canonical bounded form.
	**/
	static public function slice_canonize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get (start, stop, step, length) tuple for a slice.
		
		If `objlen` is not specified, slice must be bounded, otherwise the result
		will be wrong.
	**/
	static public function slice_get_indices_ex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function slice_getitem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get length of a bounded slice.
		
		The slice must not have any "open" bounds that would create dependency on
		container size, i.e.:
		- if ``s.step is None or s.step > 0``, ``s.stop`` is not ``None``
		- if ``s.step < 0``, ``s.start`` is not ``None``
		
		Otherwise, the result is unreliable.
	**/
	static public function slice_len(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Replace the values in the array with 'replacement' if
		they are 'nan_rep'. Return the same array.
	**/
	static public function string_array_replace_from_nan_rep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function time64_to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert a list of lists into an object array.
		
		Parameters
		----------
		rows : 2-d array (N, K)
		    A list of lists to be converted into an array
		min_width : int
		    The minimum width of the object array. If a list
		    in `rows` contains fewer than `width` elements,
		    the remaining elements in the corresponding row
		    will all be `NaN`.
		
		Returns
		-------
		obj_array : numpy array of the object dtype
	**/
	static public function to_object_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function to_object_array_tuples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function to_timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_date_and_time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_dates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_datetime_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function try_parse_year_month_day(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function tuples_to_object_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function vec_binop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function vec_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function write_csv_rows(args:haxe.extern.Rest<Dynamic>):Dynamic;
}