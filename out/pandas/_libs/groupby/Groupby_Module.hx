/* This file is generated, do not edit! */
package pandas._libs.groupby;
@:pythonImport("pandas._libs.groupby") extern class Groupby_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Aggregated boolean values to show truthfulness of group elements
		
		Parameters
		----------
		out : array of values which this method will write its results to
		labels : array containing unique label for each group, with its
		    ordering matching up to the corresponding record in `values`
		values : array containing the truth value of each element
		mask : array indicating whether a value is na or not
		val_test : str {'any', 'all'}
		    String object dictating whether to use any or all truth testing
		skipna : boolean
		    Flag to ignore nan values during truth testing
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object.
		The returned values will either be 0 or 1 (False or True, respectively).
	**/
	static public function group_any_all(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function group_cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Indexes how to fill values forwards or backwards within a group
		
		Parameters
		----------
		out : array of int64_t values which this method will write its results to
		    Missing values will be written to with a value of -1
		labels : array containing unique label for each group, with its ordering
		    matching up to the corresponding record in `values`
		mask : array of int64_t values where a 1 indicates a missing value
		direction : {'ffill', 'bfill'}
		    Direction for fill to be applied (forwards or backwards, respectively)
		limit : Consecutive values to fill before stopping, or -1 for no limit
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object
	**/
	static public function group_fillna_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Provides the rank of values within each group.
		
		Parameters
		----------
		out : array of float64_t values which this method will write its results to
		values : array of float32_t values to be ranked
		labels : array containing unique label for each group, with its ordering
		    matching up to the corresponding record in `values`
		is_datetimelike : bool, default False
		    unused in this method but provided for call compatibility with other
		    Cython transformations
		ties_method : {'average', 'min', 'max', 'first', 'dense'}, default 'average'
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
		ascending : boolean, default True
		    False for ranks by high (1) to low (N)
		    na_option : {'keep', 'top', 'bottom'}, default 'keep'
		pct : boolean, default False
		    Compute percentage rank of data within each group
		na_option : {'keep', 'top', 'bottom'}, default 'keep'
		    * keep: leave NA values where they are
		    * top: smallest rank if ascending
		    * bottom: smallest rank if descending
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object
	**/
	static public function group_rank_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Provides the rank of values within each group.
		
		Parameters
		----------
		out : array of float64_t values which this method will write its results to
		values : array of float64_t values to be ranked
		labels : array containing unique label for each group, with its ordering
		    matching up to the corresponding record in `values`
		is_datetimelike : bool, default False
		    unused in this method but provided for call compatibility with other
		    Cython transformations
		ties_method : {'average', 'min', 'max', 'first', 'dense'}, default 'average'
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
		ascending : boolean, default True
		    False for ranks by high (1) to low (N)
		    na_option : {'keep', 'top', 'bottom'}, default 'keep'
		pct : boolean, default False
		    Compute percentage rank of data within each group
		na_option : {'keep', 'top', 'bottom'}, default 'keep'
		    * keep: leave NA values where they are
		    * top: smallest rank if ascending
		    * bottom: smallest rank if descending
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object
	**/
	static public function group_rank_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Provides the rank of values within each group.
		
		Parameters
		----------
		out : array of float64_t values which this method will write its results to
		values : array of int64_t values to be ranked
		labels : array containing unique label for each group, with its ordering
		    matching up to the corresponding record in `values`
		is_datetimelike : bool, default False
		    unused in this method but provided for call compatibility with other
		    Cython transformations
		ties_method : {'average', 'min', 'max', 'first', 'dense'}, default 'average'
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
		ascending : boolean, default True
		    False for ranks by high (1) to low (N)
		    na_option : {'keep', 'top', 'bottom'}, default 'keep'
		pct : boolean, default False
		    Compute percentage rank of data within each group
		na_option : {'keep', 'top', 'bottom'}, default 'keep'
		    * keep: leave NA values where they are
		    * top: smallest rank if ascending
		    * bottom: smallest rank if descending
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object
	**/
	static public function group_rank_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var tiebreakers : Dynamic;
}