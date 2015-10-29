/* This file is generated, do not edit! */
package pandas.tests;
@:pythonImport("pandas.tests.test_tseries") extern class Test_tseries {
	static public function SA(n:Dynamic):Dynamic;
	static public var USMartinLutherKingJr : Dynamic;
	static public var USMemorialDay : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check that left and right objects are almost equal.
		
		Parameters
		----------
		a : object
		b : object
		check_less_precise : bool, default False
		    Specify comparison precision.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		obj : str, default None
		    Specify object name being compared, internally used to show appropriate
		    assertion message
		lobj : str, default None
		    Specify left object name being compared, internally used to show
		    appropriate assertion message
		robj : str, default None
		    Specify right object name being compared, internally used to show
		    appropriate assertion message
	**/
	static public function assert_almost_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var nan : Dynamic;
	/**
		If holiday falls on Saturday, use following Monday instead;
		if holiday falls on Sunday, use Monday instead
	**/
	static public function next_monday(dt:Dynamic):Dynamic;
	static public function test_arrmap():Dynamic;
	static public function test_convert_infs():Dynamic;
	static public function test_convert_objects():Dynamic;
	static public function test_convert_objects_complex_number():Dynamic;
	static public function test_convert_objects_ints():Dynamic;
	static public function test_duplicated_with_nas():Dynamic;
	static public function test_ensure_platform_int():Dynamic;
	static public function test_get_reverse_indexer():Dynamic;
	static public function test_group_ohlc():Dynamic;
	static public function test_groupsort_indexer():Dynamic;
	static public function test_inner_join_indexer():Dynamic;
	static public function test_inner_join_indexer2():Dynamic;
	static public function test_is_lexsorted():Dynamic;
	static public function test_left_join_indexer():Dynamic;
	static public function test_left_join_indexer2():Dynamic;
	static public function test_left_join_indexer_unique():Dynamic;
	static public function test_left_outer_join_bug():Dynamic;
	static public function test_maybe_booleans_to_slice():Dynamic;
	static public function test_outer_join_indexer():Dynamic;
	static public function test_outer_join_indexer2():Dynamic;
	static public function test_pad_backfill_object_segfault():Dynamic;
	static public function test_rank():Dynamic;
	static public function test_series_bin_grouper():Dynamic;
	static public function test_series_grouper():Dynamic;
	static public function test_try_parse_dates():Dynamic;
}