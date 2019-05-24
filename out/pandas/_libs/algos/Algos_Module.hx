/* This file is generated, do not edit! */
package pandas._libs.algos;
@:pythonImport("pandas._libs.algos") extern class Algos_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		wrap(values: 'ndarray', idx)
	**/
	static public function _take_2d_float64(values:Dynamic, idx:Dynamic):Dynamic;
	/**
		wrap(values: 'ndarray', idx)
	**/
	static public function _take_2d_int64(values:Dynamic, idx:Dynamic):Dynamic;
	/**
		wrap(values: 'ndarray', idx)
	**/
	static public function _take_2d_object(values:Dynamic, idx:Dynamic):Dynamic;
	/**
		wrap(values: 'ndarray', idx)
	**/
	static public function _take_2d_uint64(values:Dynamic, idx:Dynamic):Dynamic;
	static public function arrmap(index:Dynamic, func:Dynamic):Dynamic;
	static public function arrmap_bool(index:Dynamic, func:Dynamic):Dynamic;
	static public function arrmap_float32(index:Dynamic, func:Dynamic):Dynamic;
	static public function arrmap_float64(index:Dynamic, func:Dynamic):Dynamic;
	static public function arrmap_int32(index:Dynamic, func:Dynamic):Dynamic;
	static public function arrmap_int64(index:Dynamic, func:Dynamic):Dynamic;
	static public function arrmap_object(index:Dynamic, func:Dynamic):Dynamic;
	static public function arrmap_uint64(index:Dynamic, func:Dynamic):Dynamic;
	static public function backfill(old:Dynamic, _new:Dynamic, ?limit:Dynamic):Dynamic;
	static public function backfill_2d_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function backfill_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function diff_2d_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function diff_2d_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function diff_2d_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function diff_2d_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function diff_2d_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function diff_2d_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_uint16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_uint32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_uint8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		compute a 1-d indexer that is an ordering of the passed index,
		ordered by the groups. This is a reverse of the label
		factorization process.
		
		Parameters
		----------
		index: int64 ndarray
		    mappings from group -> position
		ngroups: int64
		    number of groups
		
		return a tuple of (1-d indexer ordered by groups, group counts)
	**/
	static public function groupsort_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_lexsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		is_monotonic_inc, is_monotonic_dec, is_unique
	**/
	static public function is_monotonic(arr:Dynamic, timelike:Dynamic):Dynamic;
	static public function kth_smallest(a:Dynamic, k:Dynamic):Dynamic;
	static public function nancorr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nancorr_spearman(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad(old:Dynamic, _new:Dynamic, ?limit:Dynamic):Dynamic;
	static public function pad_2d_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	static public function pad_inplace(values:Dynamic, mask:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_1d_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_1d_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_1d_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_1d_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_2d_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_2d_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_2d_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_2d_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		arr : ndarray[in64_t]
		
		Returns
		-------
		result : ndarray[int64_t]
		    result is sorted
	**/
	static public function unique_deltas(args:haxe.extern.Rest<Dynamic>):Dynamic;
}