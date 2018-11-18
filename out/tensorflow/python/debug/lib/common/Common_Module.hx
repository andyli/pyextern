/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.common;
@:pythonImport("tensorflow.python.debug.lib.common") extern class Common_Module {
	static public var GRPC_URL_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get a flattened list of the names in run() call feeds or fetches.
		
		Args:
		  feeds_or_fetches: Feeds or fetches of the `Session.run()` call. It maybe
		    a Tensor, an Operation or a Variable. It may also be nested lists, tuples
		    or dicts. See doc of `Session.run()` for more details.
		
		Returns:
		  (list of str) A flattened list of fetch names from `feeds_or_fetches`.
	**/
	static public function get_flattened_names(feeds_or_fetches:Dynamic):Dynamic;
	/**
		Obtain the name or string representation of a graph element.
		
		If the graph element has the attribute "name", return name. Otherwise, return
		a __str__ representation of the graph element. Certain graph elements, such as
		`SparseTensor`s, do not have the attribute "name".
		
		Args:
		  elem: The graph element in question.
		
		Returns:
		  If the attribute 'name' is available, return the name. Otherwise, return
		  str(fetch).
	**/
	static public function get_graph_element_name(elem:Dynamic):Dynamic;
	/**
		Summarize the names of feeds and fetches as a RunKey JSON string.
		
		Args:
		  feed_dict: The feed_dict given to the `Session.run()` call.
		  fetches: The fetches from the `Session.run()` call.
		
		Returns:
		  A JSON Array consisting of two items. They first items is a flattened
		  Array of the names of the feeds. The second item is a flattened Array of
		  the names of the fetches.
	**/
	static public function get_run_key(feed_dict:Dynamic, fetches:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}