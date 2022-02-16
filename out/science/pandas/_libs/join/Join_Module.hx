/* This file is generated, do not edit! */
package pandas._libs.join;
@:pythonImport("pandas._libs.join") extern class Join_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function asof_join_backward(left_values:Dynamic, right_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_backward_on_X_by_Y(left_values:Dynamic, right_values:Dynamic, left_by_values:Dynamic, right_by_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_forward(left_values:Dynamic, right_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_forward_on_X_by_Y(left_values:Dynamic, right_values:Dynamic, left_by_values:Dynamic, right_by_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_nearest(left_values:Dynamic, right_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_nearest_on_X_by_Y(left_values:Dynamic, right_values:Dynamic, left_by_values:Dynamic, right_by_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function ffill_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function full_outer_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function inner_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges.
		
		Both left and right are monotonic increasing but not necessarily unique.
	**/
	static public function inner_join_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges.
		
		Both left and right are monotonic increasing, but at least one of them
		is non-unique (if both were unique we'd use left_join_indexer_unique).
	**/
	static public function left_join_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Both left and right are strictly monotonic increasing.
	**/
	static public function left_join_indexer_unique(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_outer_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Both left and right are monotonic increasing but not necessarily unique.
	**/
	static public function outer_join_indexer(left:Dynamic, right:Dynamic):Dynamic;
}