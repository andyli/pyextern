/* This file is generated, do not edit! */
package pandas.algos;
@:pythonImport("pandas.algos") extern class Algos_Module {
	static public var NIL : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _check_minp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_result_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _return_false(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _return_true(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arrmap_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arrmap_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arrmap_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arrmap_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arrmap_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function arrmap_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_2d_inplace_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_2d_inplace_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_2d_inplace_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_2d_inplace_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_2d_inplace_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_2d_inplace_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_inplace_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_inplace_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_inplace_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_inplace_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_inplace_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_inplace_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function backfill_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Compute exponentially-weighted moving average using center-of-mass.
		
		Parameters
		----------
		input : ndarray (float64 type)
		com : float64
		adjust: int
		ignore_na: int
		minp: int
		
		Returns
		-------
		y : ndarray
	**/
	static public function ewma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute exponentially-weighted moving variance using center-of-mass.
		
		Parameters
		----------
		input_x : ndarray (float64 type)
		input_y : ndarray (float64 type)
		com : float64
		adjust: int
		ignore_na: int
		minp: int
		bias: int
		
		Returns
		-------
		y : ndarray
	**/
	static public function ewmcov(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ffill_by_group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ffill_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var float16 : Dynamic;
	static public var float32 : Dynamic;
	static public var float64 : Dynamic;
	static public function full_outer_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_add_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_add_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cumprod_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cumsum(out:Dynamic, values:Dynamic, labels:Dynamic, accum:Dynamic):Dynamic;
	/**
		Compute label vector from input values and associated useful data
		
		Returns
		-------
	**/
	static public function group_labels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_last_bin_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_last_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_last_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_last_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_last_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_max_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_max_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_max_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_mean_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_mean_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_median_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_min_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_min_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_min_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_nth_bin_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_nth_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_nth_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_nth_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_nth_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_ohlc_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_ohlc_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_prod_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_prod_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_shift_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_var_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_var_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupby_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupby_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupby_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupby_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupby_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupby_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupby_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function groupsort_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function inner_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var int16 : Dynamic;
	static public var int32 : Dynamic;
	static public var int64 : Dynamic;
	static public var int8 : Dynamic;
	static public function is_lexsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		is_monotonic_inc, is_monotonic_dec
	**/
	static public function is_monotonic_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		is_monotonic_inc, is_monotonic_dec
	**/
	static public function is_monotonic_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		is_monotonic_inc, is_monotonic_dec
	**/
	static public function is_monotonic_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		is_monotonic_inc, is_monotonic_dec
	**/
	static public function is_monotonic_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		is_monotonic_inc, is_monotonic_dec
	**/
	static public function is_monotonic_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		is_monotonic_inc, is_monotonic_dec
	**/
	static public function is_monotonic_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function kth_smallest(a:Dynamic, k:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function left_join_indexer_unique_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function left_join_indexer_unique_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function left_join_indexer_unique_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function left_join_indexer_unique_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function left_join_indexer_unique_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function left_outer_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Produce a dict mapping the values of the input array to their respective
		locations.
		
		Example:
		    array(['hi', 'there']) --> {'hi' : 0 , 'there' : 1}
		
		Better to do this with Cython because of the enormous speed boost.
	**/
	static public function map_indices_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Produce a dict mapping the values of the input array to their respective
		locations.
		
		Example:
		    array(['hi', 'there']) --> {'hi' : 0 , 'there' : 1}
		
		Better to do this with Cython because of the enormous speed boost.
	**/
	static public function map_indices_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Produce a dict mapping the values of the input array to their respective
		locations.
		
		Example:
		    array(['hi', 'there']) --> {'hi' : 0 , 'there' : 1}
		
		Better to do this with Cython because of the enormous speed boost.
	**/
	static public function map_indices_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Produce a dict mapping the values of the input array to their respective
		locations.
		
		Example:
		    array(['hi', 'there']) --> {'hi' : 0 , 'there' : 1}
		
		Better to do this with Cython because of the enormous speed boost.
	**/
	static public function map_indices_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Produce a dict mapping the values of the input array to their respective
		locations.
		
		Example:
		    array(['hi', 'there']) --> {'hi' : 0 , 'there' : 1}
		
		Better to do this with Cython because of the enormous speed boost.
	**/
	static public function map_indices_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Produce a dict mapping the values of the input array to their respective
		locations.
		
		Example:
		    array(['hi', 'there']) --> {'hi' : 0 , 'there' : 1}
		
		Better to do this with Cython because of the enormous speed boost.
	**/
	static public function map_indices_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function max_subseq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A faster median
	**/
	static public function median(arr:Dynamic):Dynamic;
	static public function min_subseq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nancorr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nancorr_spearman(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function outer_join_indexer_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function outer_join_indexer_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function outer_join_indexer_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function outer_join_indexer_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function outer_join_indexer_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_2d_inplace_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_2d_inplace_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_2d_inplace_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_2d_inplace_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_2d_inplace_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_2d_inplace_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_inplace_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_inplace_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_inplace_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_inplace_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_inplace_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_inplace_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function pad_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		random() -> x in the interval [0, 1).
	**/
	static public function random(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_1d_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_1d_generic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_1d_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_2d_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_2d_generic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Fast NaN-friendly version of scipy.stats.rankdata
	**/
	static public function rank_2d_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_generic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_kurt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving max of 1d array of dtype=float64 along axis=0 ignoring NaNs.
	**/
	static public function roll_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_median_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving min of 1d array of dtype=float64 along axis=0 ignoring NaNs.
	**/
	static public function roll_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		O(N log(window)) implementation using skip list
	**/
	static public function roll_quantile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_skew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function roll_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Numerically stable implementation using Welford's method.
	**/
	static public function roll_var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Assume len(weights) << len(input)
	**/
	static public function roll_window(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}