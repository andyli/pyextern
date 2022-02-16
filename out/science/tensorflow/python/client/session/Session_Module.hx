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
	/**
		Explicitly convert obj based on numpy type except for string type.
	**/
	static public function _convert_to_numpy_obj(numpy_dtype:Dynamic, obj:Dynamic):Dynamic;
	/**
		Returns the list of values from an attrs instance.
	**/
	static public function _get_attrs_values(obj:Dynamic):Dynamic;
	static public function _get_feeds_for_indexed_slices(feed:Dynamic, feed_val:Dynamic):Dynamic;
	static public function _get_indexed_slices_value_from_fetches(fetched_vals:Dynamic):Dynamic;
	/**
		Returns True if the given obj is an instance of attrs-decorated class.
	**/
	static public function _is_attrs_instance(obj:Dynamic):Dynamic;
	/**
		Utility function for transitioning to the new session API.
		
		Args:
		  tensor_list: a list of `Tensor`s.
		
		Returns:
		  A list of each `Tensor`s name (as byte arrays).
	**/
	static public function _name_list(tensor_list:Dynamic):Dynamic;
	static public var _python_session_create_counter : Dynamic;
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
	/**
		Register fetch and feed conversion functions for `tf.Session.run()`.
		
		This function registers a triple of conversion functions for fetching and/or
		feeding values of user-defined types in a call to tf.Session.run().
		
		An example
		
		```python
		   class SquaredTensor(object):
		     def __init__(self, tensor):
		       self.sq = tf.square(tensor)
		   #you can define conversion functions as follows:
		   fetch_function = lambda squared_tensor:([squared_tensor.sq],
		                                           lambda val: val[0])
		   feed_function = lambda feed, feed_val: [(feed.sq, feed_val)]
		   feed_function_for_partial_run = lambda feed: [feed.sq]
		   #then after invoking this register function, you can use as follows:
		   session.run(squared_tensor1,
		               feed_dict = {squared_tensor2 : some_numpy_array})
		```
		
		Args:
		  tensor_type: The type for which you want to register a conversion function.
		  fetch_function: A callable that takes an object of type `tensor_type` and
		    returns a tuple, where the first element is a list of `tf.Tensor` objects,
		    and the second element is a callable that takes a list of ndarrays and
		    returns an object of some value type that corresponds to `tensor_type`.
		    fetch_function describes how to expand fetch into its component Tensors
		    and how to contract the fetched results back into a single return value.
		  feed_function: A callable that takes feed_key and feed_value as input, and
		    returns a list of tuples (feed_tensor, feed_val), feed_key must have type
		    `tensor_type`, and feed_tensor must have type `tf.Tensor`. Each feed
		    function describes how to unpack a single fed value and map it to feeds of
		    one or more tensors and their corresponding values.
		  feed_function_for_partial_run: A callable for specifying tensor values to
		    feed when setting up a partial run, which takes a `tensor_type` type
		    object as input, and returns a list of Tensors.
		
		Raises:
		  ValueError: If `tensor_type` has already been registered.
	**/
	static public function register_session_run_conversion_functions(tensor_type:Dynamic, fetch_function:Dynamic, ?feed_function:Dynamic, ?feed_function_for_partial_run:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}