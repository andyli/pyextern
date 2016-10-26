/* This file is generated, do not edit! */
package tensorflow.python.client.session;
@:pythonImport("tensorflow.python.client.session") extern class Session_Module {
	static public var _REGISTERED_EXPANSIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_feeds_for_indexed_slices(feed:Dynamic, feed_val:Dynamic):Dynamic;
	static public function _get_indexed_slices_value_from_fetches(fetched_vals:Dynamic):Dynamic;
	/**
		Uniquifies fetches from a list of fetch_mappers.
		
		This is a utility function used by _ListFetchMapper and _DictFetchMapper.  It
		gathers all the unique fetches from a list of mappers and builds a list
		containing all of them but without duplicates (unique_fetches).
		
		It also returns a 2-D list of integers (values_indices) indicating at which
		index in unique_fetches the fetches of the mappers are located.
		
		This list is as follows:
		  values_indices[mapper_index][mapper_fetch_index] = unique_fetches_index
		
		Args:
		  fetch_mappers: list of fetch mappers.
		
		Returns:
		  A list of fetches.
		  A 2-D list of integers.
	**/
	static public function _uniquify_fetches(fetch_mappers:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}