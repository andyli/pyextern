/* This file is generated, do not edit! */
package pandas.lib;
@:pythonImport("pandas.lib") extern class Lib_Module {
	static public var NaT : Dynamic;
	static public var _TYPE_MAP : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
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
	static public function convert_sql_column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function convert_timestamps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function count_level_2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dicts_to_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function duplicated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_multiget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_unique_multiple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fast_unique_multiple_list(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function group_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function has_infs_f4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function has_infs_f8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	static public function indexer_as_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function indices_fast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		we are coercing to an ndarray here
	**/
	static public function infer_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bytes_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_date_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_datetime64_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_datetime_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer_float_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_lexsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_numpy_prior_1_6_2 : Dynamic;
	static public function is_period(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_period_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_possible_datetimelike_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Checks whether
		
		Parameters
		----------
		arr : ndarray
		values : set
		
		Returns
		-------
		ismember : ndarray (boolean dtype)
	**/
	static public function ismember(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks whether
		
		Parameters
		----------
		arr : ndarray of int64
		values : set
		
		Returns
		-------
		ismember : ndarray (boolean dtype)
	**/
	static public function ismember_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ismember_nans(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x[, out])
		
		Test element-wise for NaN and return result as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
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
		isinf, isneginf, isposinf, isfinite
		
		Notes
		-----
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		Convert list to object ndarray. Seriously can't believe I had to write this
		function
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
		Type inference function-- convert strings to numeric (potentially) and
		convert to proper dtype array
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
		Paramaters
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
		replace the values in the array with replacement if they are nan_rep; return the same array 
	**/
	static public function string_array_replace_from_nan_rep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function time64_to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
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