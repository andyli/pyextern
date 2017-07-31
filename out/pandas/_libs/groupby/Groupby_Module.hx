/* This file is generated, do not edit! */
package pandas._libs.groupby;
@:pythonImport("pandas._libs.groupby") extern class Groupby_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _int64_max : Dynamic;
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
	static public function group_cummax_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cummax_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cummax_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cummin_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cummin_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cummin_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cumprod_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only transforms on axis=0
	**/
	static public function group_cumsum(out:Dynamic, values:Dynamic, labels:Dynamic, is_datetimelike:Dynamic):Dynamic;
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
	static public function take_2d_axis1_float64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
}