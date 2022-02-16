/* This file is generated, do not edit! */
package pandas._libs.algos;
@:pythonImport("pandas._libs.algos") extern class Algos_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function backfill(old:Dynamic, _new:Dynamic, ?limit:Dynamic):Dynamic;
	static public function backfill_2d_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function backfill_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function diff_2d(arr:Dynamic, out:Dynamic, periods:Dynamic, axis:Dynamic, ?datetimelike:Dynamic):Dynamic;
	static public function ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute a 1-d indexer.
		
		The indexer is an ordering of the passed index,
		ordered by the groups.
		
		Parameters
		----------
		index: np.ndarray[np.intp]
		    Mappings from group -> position.
		ngroups: int64
		    Number of groups.
		
		Returns
		-------
		ndarray[intp_t, ndim=1]
		    Indexer
		ndarray[intp_t, ndim=1]
		    Group Counts
		
		Notes
		-----
		This is a reverse of the label factorization process.
	**/
	static public function groupsort_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_lexsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		tuple
		    is_monotonic_inc : bool
		    is_monotonic_dec : bool
		    is_unique : bool
	**/
	static public function is_monotonic(arr:Dynamic, timelike:Dynamic):Dynamic;
	/**
		Compute the kth smallest value in arr. Note that the input
		array will be modified.
		
		Parameters
		----------
		arr : numeric[::1]
		    Array to compute the kth smallest value for, must be
		    contiguous
		k : Py_ssize_t
		
		Returns
		-------
		numeric
		    The kth smallest value in arr
	**/
	static public function kth_smallest(arr:Dynamic, k:Dynamic):Dynamic;
	static public function nancorr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nancorr_spearman(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad(old:Dynamic, _new:Dynamic, ?limit:Dynamic):Dynamic;
	static public function pad_2d_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function pad_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Fast NaN-friendly version of ``scipy.stats.rankdata``.
		
		Parameters
		----------
		values : array of iu_64_floating_obj_t values to be ranked
		labels : np.ndarray[np.intp] or None
		    Array containing unique label for each group, with its ordering
		    matching up to the corresponding record in `values`. If not called
		    from a groupby operation, will be None.
		is_datetimelike : bool, default False
		    True if `values` contains datetime-like entries.
		ties_method : {'average', 'min', 'max', 'first', 'dense'}, default
		    'average'
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
		ascending : bool, default True
		    False for ranks by high (1) to low (N)
		    na_option : {'keep', 'top', 'bottom'}, default 'keep'
		pct : bool, default False
		    Compute percentage rank of data within each group
		na_option : {'keep', 'top', 'bottom'}, default 'keep'
		    * keep: leave NA values where they are
		    * top: smallest rank if ascending
		    * bottom: smallest rank if descending
	**/
	static public function rank_1d(values:Dynamic, ?labels:Dynamic, ?is_datetimelike:Dynamic, ?ties_method:Dynamic, ?ascending:Dynamic, ?pct:Dynamic, ?na_option:Dynamic):Dynamic;
	/**
		Fast NaN-friendly version of ``scipy.stats.rankdata``.
	**/
	static public function rank_2d(in_arr:Dynamic, ?axis:Dynamic, ?is_datetimelike:Dynamic, ?ties_method:Dynamic, ?ascending:Dynamic, ?na_option:Dynamic, ?pct:Dynamic):Dynamic;
	static public function take_1d_bool_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_bool_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_float32_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_float32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_float64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int16_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int16_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int16_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int16_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int32_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int32_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int64_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int8_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int8_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int8_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_int8_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_1d_object_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_bool_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_bool_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_float32_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_float32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_float64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int16_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int16_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int16_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int16_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int32_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int32_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int64_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int8_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int8_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int8_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_int8_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis0_object_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_bool_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_bool_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_float32_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_float32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_float64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int16_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int16_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int16_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int16_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int32_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int32_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int64_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int8_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int8_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int8_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_int8_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_axis1_object_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_bool_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_bool_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_float32_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_float32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_float64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int16_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int16_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int16_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int16_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int32_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int32_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int64_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int8_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int8_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int8_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_int8_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function take_2d_multi_object_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var tiebreakers : Dynamic;
	/**
		Efficiently find the unique first-differences of the given array.
		
		Parameters
		----------
		arr : ndarray[int64_t]
		
		Returns
		-------
		ndarray[int64_t]
		    An ordered ndarray[int64_t]
	**/
	static public function unique_deltas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check that the `limit` argument is a positive integer.
		
		Parameters
		----------
		nobs : int
		limit : object
		
		Returns
		-------
		int
		    The limit.
	**/
	static public function validate_limit(args:haxe.extern.Rest<Dynamic>):Dynamic;
}