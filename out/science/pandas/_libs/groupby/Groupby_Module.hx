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
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0 using Kahan summation
	**/
	static public function group_add(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic, ?datetimelike:Dynamic):Dynamic;
	/**
		Aggregated boolean values to show truthfulness of group elements. If the
		input is a nullable type (nullable=True), the result will be computed
		using Kleene logic.
		
		Parameters
		----------
		out : np.ndarray[np.int8]
		    Values into which this method will write its results.
		labels : np.ndarray[np.intp]
		    Array containing unique label for each group, with its
		    ordering matching up to the corresponding record in `values`
		values : np.ndarray[np.int8]
		    Containing the truth value of each element.
		mask : np.ndarray[np.uint8]
		    Indicating whether a value is na or not.
		val_test : {'any', 'all'}
		    String object dictating whether to use any or all truth testing
		skipna : bool
		    Flag to ignore nan values during truth testing
		nullable : bool
		    Whether or not the input is a nullable type. If True, the
		    result will be computed using Kleene logic
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object.
		The returned values will either be 0, 1 (False or True, respectively), or
		-1 to signify a masked position in the case of a nullable input.
	**/
	static public function group_any_all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See group_cummin_max.__doc__
	**/
	static public function group_cummax(out:Dynamic, values:Dynamic, labels:Dynamic, ngroups:Dynamic, is_datetimelike:Dynamic, ?mask:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		See group_cummin_max.__doc__
	**/
	static public function group_cummin(out:Dynamic, values:Dynamic, labels:Dynamic, ngroups:Dynamic, is_datetimelike:Dynamic, ?mask:Dynamic, ?skipna:Dynamic):Dynamic;
	/**
		Cumulative product of columns of `values`, in row groups `labels`.
		
		Parameters
		----------
		out : np.ndarray[np.float64, ndim=2]
		    Array to store cumprod in.
		values : np.ndarray[np.float64, ndim=2]
		    Values to take cumprod of.
		labels : np.ndarray[np.intp]
		    Labels to group by.
		ngroups : int
		    Number of groups, larger than all entries of `labels`.
		is_datetimelike : bool
		    Always false, `values` is never datetime-like.
		skipna : bool
		    If true, ignore nans in `values`.
		
		Notes
		-----
		This method modifies the `out` parameter, rather than returning an object.
	**/
	static public function group_cumprod_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Cumulative sum of columns of `values`, in row groups `labels`.
		
		Parameters
		----------
		out : np.ndarray[ndim=2]
		    Array to store cumsum in.
		values : np.ndarray[ndim=2]
		    Values to take cumsum of.
		labels : np.ndarray[np.intp]
		    Labels to group by.
		ngroups : int
		    Number of groups, larger than all entries of `labels`.
		is_datetimelike : bool
		    True if `values` contains datetime-like entries.
		skipna : bool
		    If true, ignore nans in `values`.
		
		Notes
		-----
		This method modifies the `out` parameter, rather than returning an object.
	**/
	static public function group_cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Indexes how to fill values forwards or backwards within a group.
		
		Parameters
		----------
		out : np.ndarray[np.intp]
		    Values into which this method will write its results.
		labels : np.ndarray[np.intp]
		    Array containing unique label for each group, with its ordering
		    matching up to the corresponding record in `values`.
		sorted_labels : np.ndarray[np.intp]
		    obtained by `np.argsort(labels, kind="mergesort")`; reversed if
		    direction == "bfill"
		values : np.ndarray[np.uint8]
		    Containing the truth value of each element.
		mask : np.ndarray[np.uint8]
		    Indicating whether a value is na or not.
		direction : {'ffill', 'bfill'}
		    Direction for fill to be applied (forwards or backwards, respectively)
		limit : Consecutive values to fill before stopping, or -1 for no limit
		dropna : Flag to indicate if NaN groups should return all NaN values
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object
	**/
	static public function group_fillna_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_last(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic):Dynamic;
	/**
		See group_min_max.__doc__
	**/
	static public function group_max(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic, ?is_datetimelike:Dynamic, ?mask:Dynamic, ?result_mask:Dynamic):Dynamic;
	/**
		Compute the mean per label given a label assignment for each value.
		NaN values are ignored.
		
		Parameters
		----------
		out : np.ndarray[floating]
		    Values into which this method will write its results.
		counts : np.ndarray[int64]
		    A zeroed array of the same shape as labels,
		    populated by group sizes during algorithm.
		values : np.ndarray[floating]
		    2-d array of the values to find the mean of.
		labels : np.ndarray[np.intp]
		    Array containing unique label for each group, with its
		    ordering matching up to the corresponding record in `values`.
		min_count : Py_ssize_t
		    Only used in add and prod. Always -1.
		is_datetimelike : bool
		    True if `values` contains datetime-like entries.
		mask : ndarray[bool, ndim=2], optional
		    Not used.
		result_mask : ndarray[bool, ndim=2], optional
		    Not used.
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object.
		`counts` is modified to hold group sizes
	**/
	static public function group_mean(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic, ?is_datetimelike:Dynamic, ?mask:Dynamic, ?result_mask:Dynamic):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_median_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See group_min_max.__doc__
	**/
	static public function group_min(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic, ?is_datetimelike:Dynamic, ?mask:Dynamic, ?result_mask:Dynamic):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_nth(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic, ?rank:Dynamic):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_ohlc(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic):Dynamic;
	/**
		Only aggregates on axis=0
	**/
	static public function group_prod(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic):Dynamic;
	/**
		Calculate the quantile per group.
		
		Parameters
		----------
		out : np.ndarray[np.float64, ndim=2]
		    Array of aggregated values that will be written to.
		values : np.ndarray
		    Array containing the values to apply the function against.
		labels : ndarray[np.intp]
		    Array containing the unique group labels.
		sort_indexer : ndarray[np.intp]
		    Indices describing sort order by values and labels.
		qs : ndarray[float64_t]
		    The quantile values to search for.
		interpolation : {'linear', 'lower', 'highest', 'nearest', 'midpoint'}
		
		Notes
		-----
		Rather than explicitly returning a value, this function modifies the
		provided `out` parameter.
	**/
	static public function group_quantile(out:Dynamic, values:Dynamic, labels:Dynamic, mask:Dynamic, sort_indexer:Dynamic, qs:Dynamic, interpolation:Dynamic):Dynamic;
	/**
		Provides the rank of values within each group.
		
		Parameters
		----------
		out : np.ndarray[np.float64, ndim=2]
		    Values to which this method will write its results.
		values : np.ndarray of iu_64_floating_obj_t values to be ranked
		labels : np.ndarray[np.intp]
		    Array containing unique label for each group, with its ordering
		    matching up to the corresponding record in `values`
		ngroups : int
		    This parameter is not used, is needed to match signatures of other
		    groupby functions.
		is_datetimelike : bool
		    True if `values` contains datetime-like entries.
		ties_method : {'average', 'min', 'max', 'first', 'dense'}, default 'average'
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
		
		Notes
		-----
		This method modifies the `out` parameter rather than returning an object
	**/
	static public function group_rank(out:Dynamic, values:Dynamic, labels:Dynamic, ngroups:Dynamic, is_datetimelike:Dynamic, ?ties_method:Dynamic, ?ascending:Dynamic, ?pct:Dynamic, ?na_option:Dynamic):Dynamic;
	static public function group_shift_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function group_var(out:Dynamic, counts:Dynamic, values:Dynamic, labels:Dynamic, ?min_count:Dynamic, ?ddof:Dynamic):Dynamic;
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
	static public function take_2d_axis1_float64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
}